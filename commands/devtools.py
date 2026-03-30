#!/usr/bin/env python3
"""
Bobomb DevTools - Developer Tools for Service Testing
Advanced testing, filtering, and debugging for Bobomb services
"""

import asyncio
import aiohttp
import json
import re
import sys
from datetime import datetime
from pathlib import Path
from typing import List, Dict, Tuple, Optional
from dataclasses import dataclass

try:
    from rich.console import Console
    from rich.table import Table
    from rich.progress import Progress, SpinnerColumn, TextColumn, BarColumn
    from rich.panel import Panel
    from rich import print as rprint
    RICH_AVAILABLE = True
except ImportError:
    RICH_AVAILABLE = False
    print("Installing rich...")
    import os
    os.system("pip install rich")
    from rich.console import Console
    from rich.table import Table
    from rich.progress import Progress, SpinnerColumn, TextColumn, BarColumn
    from rich.panel import Panel
    from rich import print as rprint
    RICH_AVAILABLE = True

console = Console()

@dataclass
class ServiceTestResult:
    """Result of testing a single service"""
    name: str
    url: str
    status_code: int
    response_time: float
    error: Optional[str] = None
    success: bool = False

class DevTools:
    """Advanced developer tools for Bobomb"""
    
    SUCCESS_CODES = [200, 201, 202, 204]  # HTTP success codes
    
    def __init__(self, services_file: str = "services/services.bsl"):
        self.services_file = Path(services_file)
        self.results: List[ServiceTestResult] = []
        
    def parse_services(self) -> List[Dict]:
        """Parse services from .bsl file"""
        if not self.services_file.exists():
            console.print(f"[red]✗ File not found: {self.services_file}[/red]")
            return []
        
        console.print(f"\n[cyan]📦 Parsing services from {self.services_file}...[/cyan]")
        
        services = []
        current_service = None
        
        with open(self.services_file, 'r', encoding='utf-8') as f:
            for line in f:
                line = line.strip()
                
                # Skip comments and empty lines
                if not line or line.startswith('//'):
                    continue
                
                # Parse SERVICE block
                if line.startswith('SERVICE '):
                    if current_service:
                        services.append(current_service)
                    
                    parts = line.replace('SERVICE ', '').split(':')
                    current_service = {
                        'id': parts[0] if len(parts) > 0 else 'unknown',
                        'name': parts[1] if len(parts) > 1 else parts[0],
                        'country': parts[2] if len(parts) > 2 else '7',
                        'url': '',
                        'method': 'POST',
                        'data': []
                    }
                
                # Parse URL
                elif line.startswith('URL ') and current_service:
                    current_service['url'] = line.replace('URL ', '').strip()
                
                # Parse METHOD
                elif line.startswith('METHOD ') and current_service:
                    current_service['method'] = line.replace('METHOD ', '').strip()
                
                # Parse DATA
                elif line.startswith('DATA ') and current_service:
                    current_service['data'].append(line.replace('DATA ', '').strip())
                
                # End of SERVICE block
                elif line == 'END' and current_service:
                    services.append(current_service)
                    current_service = None
        
        if current_service:
            services.append(current_service)
        
        console.print(f"[green]✓ Parsed {len(services)} services[/green]")
        return services
    
    async def test_service(self, service: Dict, test_phone: str = "79991234567") -> ServiceTestResult:
        """Test a single service"""
        url = service.get('url', '')
        method = service.get('method', 'POST').upper()
        
        # Replace placeholders
        url = url.replace('{phone}', test_phone)
        url = url.replace('{country_code}', '7')
        
        start_time = datetime.now()
        
        try:
            async with aiohttp.ClientSession() as session:
                if method == 'POST':
                    async with session.post(url, timeout=aiohttp.ClientTimeout(total=10)) as resp:
                        elapsed = (datetime.now() - start_time).total_seconds()
                        return ServiceTestResult(
                            name=service['name'],
                            url=url,
                            status_code=resp.status,
                            response_time=elapsed,
                            success=resp.status in self.SUCCESS_CODES
                        )
                else:
                    async with session.get(url, timeout=aiohttp.ClientTimeout(total=10)) as resp:
                        elapsed = (datetime.now() - start_time).total_seconds()
                        return ServiceTestResult(
                            name=service['name'],
                            url=url,
                            status_code=resp.status,
                            response_time=elapsed,
                            success=resp.status in self.SUCCESS_CODES
                        )
        except asyncio.TimeoutError:
            return ServiceTestResult(
                name=service['name'],
                url=url,
                status_code=0,
                response_time=10.0,
                error="Timeout",
                success=False
            )
        except Exception as e:
            return ServiceTestResult(
                name=service['name'],
                url=url,
                status_code=0,
                response_time=0.0,
                error=str(e)[:50],
                success=False
            )
    
    async def test_all_services(self, services: List[Dict], test_phone: str = "79991234567", verbose: bool = False):
        """Test all services with progress bar"""
        console.print(f"\n[bold cyan]🧪 Testing {len(services)} services...[/bold cyan]\n")
        
        self.results = []
        
        with Progress(
            SpinnerColumn(),
            TextColumn("[progress.description]{task.description}"),
            BarColumn(),
            TextColumn("[progress.percentage]{task.percentage:>3.0f}%"),
            console=console
        ) as progress:
            
            task = progress.add_task(f"Testing...", total=len(services))
            
            # Test in batches to avoid overwhelming
            batch_size = 10
            for i in range(0, len(services), batch_size):
                batch = services[i:i + batch_size]
                tasks = [self.test_service(svc, test_phone) for svc in batch]
                results = await asyncio.gather(*tasks)
                
                self.results.extend(results)
                
                if verbose:
                    for result in results:
                        status = "✓" if result.success else "✗"
                        color = "green" if result.success else "red"
                        console.print(f"  [{color}]{status} {result.name}: {result.status_code} ({result.response_time*1000:.0f}ms)[/{color}]")
                
                progress.update(task, advance=len(batch))
        
        # Show summary
        self.show_summary()
    
    def show_summary(self):
        """Show test results summary"""
        total = len(self.results)
        success = sum(1 for r in self.results if r.success)
        failed = total - success
        avg_time = sum(r.response_time for r in self.results) / total if total > 0 else 0
        
        console.print(f"\n[bold]📊 Summary:[/bold]")
        console.print(f"  Total: {total}")
        console.print(f"  [green]✓ Success: {success}[/green]")
        console.print(f"  [red]✗ Failed: {failed}[/red]")
        console.print(f"  Avg response time: {avg_time*1000:.0f}ms")
        
        # Show failed services
        failed_services = [r for r in self.results if not r.success]
        if failed_services:
            console.print(f"\n[bold red]Failed services:[/bold red]")
            for result in failed_services[:10]:  # Show first 10
                console.print(f"  [red]✗ {result.name}: {result.error or f'HTTP {result.status_code}'}[/red]")
            if len(failed_services) > 10:
                console.print(f"  [dim]... and {len(failed_services) - 10} more[/dim]")
    
    def filter_duplicates(self, services: List[Dict]) -> List[Dict]:
        """Remove duplicate services (by URL)"""
        seen_urls = set()
        unique = []
        duplicates = 0
        
        for service in services:
            url = service.get('url', '')
            if url not in seen_urls:
                seen_urls.add(url)
                unique.append(service)
            else:
                duplicates += 1
        
        console.print(f"\n[cyan]🗑️ Removed {duplicates} duplicate services[/cyan]")
        console.print(f"  Original: {len(services)}")
        console.print(f"  Filtered: {len(unique)}")
        
        return unique
    
    def filter_by_status(self, services: List[Dict], success_only: bool = True) -> List[Dict]:
        """Filter services by test results"""
        if not self.results:
            console.print("[yellow]⚠ No test results available. Run tests first.[/yellow]")
            return services
        
        success_urls = {r.url for r in self.results if r.success}
        filtered = []
        
        for service in services:
            url = service.get('url', '')
            if success_only:
                if url in success_urls:
                    filtered.append(service)
            else:
                if url not in success_urls:
                    filtered.append(service)
        
        console.print(f"\n[cyan]📝 Filtered services:[/cyan]")
        console.print(f"  Original: {len(services)}")
        console.print(f"  Filtered: {len(filtered)}")
        
        return filtered
    
    def export_report(self, filename: str = "test_report.json"):
        """Export test results to JSON"""
        report = {
            'timestamp': datetime.now().isoformat(),
            'total': len(self.results),
            'success': sum(1 for r in self.results if r.success),
            'failed': sum(1 for r in self.results if not r.success),
            'results': [
                {
                    'name': r.name,
                    'url': r.url,
                    'status_code': r.status_code,
                    'response_time_ms': round(r.response_time * 1000, 2),
                    'success': r.success,
                    'error': r.error
                }
                for r in self.results
            ]
        }
        
        with open(filename, 'w', encoding='utf-8') as f:
            json.dump(report, f, indent=2, ensure_ascii=False)
        
        console.print(f"\n[green]✓ Report exported to {filename}[/green]")
    
    def export_filtered_services(self, services: List[Dict], filename: str = "services_filtered.bsl"):
        """Export filtered services to .bsl file"""
        # Read original file and write only filtered services
        with open(self.services_file, 'r', encoding='utf-8') as f:
            content = f.read()
        
        # Keep only services in the filtered list
        filtered_ids = {s['id'] for s in services}
        
        # Simple approach: write header + filtered services
        with open(filename, 'w', encoding='utf-8') as f:
            f.write(f"// Filtered services from {self.services_file}\n")
            f.write(f"// Total: {len(services)}\n")
            f.write(f"// Generated: {datetime.now().isoformat()}\n\n")
            
            # Write services (simplified - just copy from original)
            current_service = []
            current_id = None
            
            for line in content.split('\n'):
                if line.strip().startswith('SERVICE '):
                    if current_id and current_id in filtered_ids:
                        f.write('\n'.join(current_service) + '\n')
                    current_service = [line]
                    current_id = line.replace('SERVICE ', '').split(':')[0]
                elif current_service is not None:
                    current_service.append(line)
                    if line.strip() == 'END':
                        if current_id in filtered_ids:
                            f.write('\n'.join(current_service) + '\n\n')
                        current_service = []
                        current_id = None
        
        console.print(f"[green]✓ Exported {len(services)} services to {filename}[/green]")


def main():
    """Main DevTools CLI"""
    console.print("""
[bold cyan]
╔═══════════════════════════════════════════╗
║     Bobomb DevTools - Developer Tools     ║
║     Service Testing & Filtering Suite     ║
╚═══════════════════════════════════════════╝
[/bold cyan]
""")
    
    if len(sys.argv) < 2:
        console.print("[yellow]Usage: python devtools.py <command> [options][/yellow]")
        console.print("\nCommands:")
        console.print("  test              Test all services")
        console.print("  filter-dupes      Remove duplicate services")
        console.print("  filter-success    Keep only working services (HTTP 200/201)")
        console.print("  filter-failed     Keep only failed services")
        console.print("  export-report     Export test results to JSON")
        console.print("  export-services   Export filtered services to .bsl")
        console.print("\nOptions:")
        console.print("  --phone NUMBER    Test phone number (default: 79991234567)")
        console.print("  --verbose         Show detailed output")
        console.print("  --output FILE     Output file for exports")
        sys.exit(1)
    
    command = sys.argv[1]
    
    # Parse options
    test_phone = "79991234567"
    verbose = False
    output_file = None
    
    i = 2
    while i < len(sys.argv):
        if sys.argv[i] == '--phone' and i + 1 < len(sys.argv):
            test_phone = sys.argv[i + 1]
            i += 2
        elif sys.argv[i] == '--verbose':
            verbose = True
            i += 1
        elif sys.argv[i] == '--output' and i + 1 < len(sys.argv):
            output_file = sys.argv[i + 1]
            i += 2
        else:
            i += 1
    
    devtools = DevTools()
    
    if command == 'test':
        services = devtools.parse_services()
        if services:
            asyncio.run(devtools.test_all_services(services, test_phone, verbose))
    
    elif command == 'filter-dupes':
        services = devtools.parse_services()
        if services:
            unique = devtools.filter_duplicates(services)
            if output_file:
                devtools.export_filtered_services(unique, output_file)
            else:
                devtools.export_filtered_services(unique, "services_filtered.bsl")
    
    elif command == 'filter-success':
        services = devtools.parse_services()
        if services:
            console.print("[yellow]⚠ Running tests first...[/yellow]")
            asyncio.run(devtools.test_all_services(services, test_phone, verbose))
            filtered = devtools.filter_by_status(services, success_only=True)
            if output_file:
                devtools.export_filtered_services(filtered, output_file)
            else:
                devtools.export_filtered_services(filtered, "services_working.bsl")
    
    elif command == 'filter-failed':
        services = devtools.parse_services()
        if services:
            console.print("[yellow]⚠ Running tests first...[/yellow]")
            asyncio.run(devtools.test_all_services(services, test_phone, verbose))
            filtered = devtools.filter_by_status(services, success_only=False)
            if output_file:
                devtools.export_filtered_services(filtered, output_file)
            else:
                devtools.export_filtered_services(filtered, "services_failed.bsl")
    
    elif command == 'export-report':
        if output_file:
            devtools.export_report(output_file)
        else:
            devtools.export_report("test_report.json")
    
    elif command == 'export-services':
        services = devtools.parse_services()
        if services:
            if output_file:
                devtools.export_filtered_services(services, output_file)
            else:
                devtools.export_filtered_services(services, "services_export.bsl")
    
    else:
        console.print(f"[red]✗ Unknown command: {command}[/red]")
        sys.exit(1)


if __name__ == "__main__":
    try:
        main()
    except KeyboardInterrupt:
        console.print("\n\n[yellow]⚠ Interrupted by user[/yellow]")
        sys.exit(0)
    except Exception as e:
        console.print(f"\n[red]✗ Error: {e}[/red]")
        import traceback
        traceback.print_exc()
        sys.exit(1)
