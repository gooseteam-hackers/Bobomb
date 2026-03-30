"""
Attack System
Core attack functionality
"""

import asyncio
import aiohttp
from typing import List

class Attack:
    """SMS Attack handler"""
    
    def __init__(self, phone: str, services: List = None, mode: str = "normal",
                 repeats: int = 1, drip_delay: int = 900000, verbose: bool = False):
        self.phone = phone
        self.services = services or []
        self.mode = mode
        self.repeats = repeats
        self.drip_delay = drip_delay
        self.verbose = verbose
        self.success = 0
        self.failed = 0
    
    async def send_request(self, session: aiohttp.ClientSession, url: str, phone: str):
        """Send single request"""
        try:
            async with session.post(url, data={"phone": phone}, timeout=10) as resp:
                return resp.status == 200
        except:
            return False
    
    async def run_normal(self, session: aiohttp.ClientSession):
        """Normal attack - fast parallel"""
        for cycle in range(self.repeats):
            print(f"\n\033[94mCycle {cycle + 1}/{self.repeats}\033[0m")
            
            # Simulate services (placeholder)
            tasks = [self.send_request(session, "https://example.com", self.phone) for _ in range(5)]
            results = await asyncio.gather(*tasks)
            
            self.success += sum(results)
            self.failed += len(results) - sum(results)
    
    async def run_drip(self, session: aiohttp.ClientSession):
        """Drip mode - slow with delays"""
        print(f"\n\033[96m💧 Drip Mode Activated!\033[0m")
        print(f"  Delay: {self.drip_delay // 60000} minutes")
        
        for cycle in range(self.repeats):
            print(f"\n\033[92mCycle {cycle + 1}\033[0m")
            # Simulate drip attack
            await asyncio.sleep(1)  # Placeholder
    
    async def run(self):
        """Run attack"""
        print(f"\n\033[93mStarting attack on +{self.phone}\033[0m")
        print(f"  Mode: \033[1m{self.mode}\033[0m")
        print(f"  Repeats: {self.repeats}")
        
        async with aiohttp.ClientSession() as session:
            if self.mode == "drip":
                await self.run_drip(session)
            else:
                await self.run_normal(session)
        
        print(f"\n\033[92m✓ Attack complete!\033[0m")
        print(f"  Success: {self.success} | Failed: {self.failed}")
