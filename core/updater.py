"""
Update System
Check for updates from GitHub repository
"""

import json
import urllib.request
from typing import Optional, Dict

class Updater:
    """Check for updates from GitHub"""
    
    # Update URLs
    ANDROID_UPDATE_URL = "https://raw.githubusercontent.com/gooseteam-hackers/Bobomb/refs/heads/static/android_update.json"
    CLI_UPDATE_URL = "https://raw.githubusercontent.com/gooseteam-hackers/Bobomb/refs/heads/static/cli_update.json"
    SERVICES_UPDATE_URL = "https://raw.githubusercontent.com/gooseteam-hackers/Bobomb/refs/heads/static/services_update.json"
    
    CURRENT_VERSION = 1
    CURRENT_VERSION_NAME = "1.0"
    
    def __init__(self):
        self.android_update: Optional[Dict] = None
        self.cli_update: Optional[Dict] = None
        self.services_update: Optional[Dict] = None
    
    def fetch_json(self, url: str) -> Optional[Dict]:
        """Fetch JSON from URL"""
        try:
            with urllib.request.urlopen(url, timeout=5) as response:
                return json.loads(response.read().decode())
        except Exception as e:
            return None
    
    def check_updates(self, verbose: bool = True):
        """Check for all updates"""
        if verbose:
            print("\n[cyan]Checking for updates...[/cyan]")
        
        # Fetch updates
        self.android_update = self.fetch_json(self.ANDROID_UPDATE_URL)
        self.cli_update = self.fetch_json(self.CLI_UPDATE_URL)
        self.services_update = self.fetch_json(self.SERVICES_UPDATE_URL)
        
        # Check CLI update
        if self.cli_update:
            cli_version = self.cli_update.get("updates", {}).get("versionCode", 0)
            if cli_version > self.CURRENT_VERSION:
                desc = self.cli_update.get("updates", {}).get("description", {})
                desc_text = list(desc.values())[0] if desc else "New version available"
                print(f"\n[yellow]✦ CLI Update Available![/yellow]")
                print(f"  {desc_text}")
                print(f"  Version: {cli_version}")
        
        # Check services update
        if self.services_update:
            services_desc = self.services_update.get("updates", {}).get("description", {})
            if services_desc:
                desc_text = list(services_desc.values())[0]
                print(f"\n[green]✦ Services Update:[/green]")
                print(f"  {desc_text}")
        
        if verbose:
            print("[dim]Update check complete[/dim]\n")
    
    def get_android_version(self) -> Optional[Dict]:
        """Get Android update info"""
        if not self.android_update:
            return None
        return self.android_update.get("updates", {})
    
    def get_services_url(self) -> Optional[str]:
        """Get services download URL"""
        if not self.services_update:
            return None
        return self.services_update.get("updates", {}).get("directUrl")
    
    def get_experiments(self) -> list:
        """Get remote experiments"""
        experiments = []
        if self.cli_update:
            experiments.extend(self.cli_update.get("experiments", []))
        if self.android_update:
            experiments.extend(self.android_update.get("experiments", []))
        return experiments
