"""
Cheat Codes System
Unlock secret features with cheat codes
"""

class CheatCodes:
    """Cheat codes manager"""
    
    CHEAT_CODES = {
        "BANZER": {
            "name": "Banzer Mode",
            "description": "Unlock all features",
            "enabled": False
        },
        "MOM_I_AM_A_HACKER": {
            "name": "Hacker Mode",
            "description": "Enable hacker aesthetics",
            "enabled": False
        },
        "1337h4x0r": {
            "name": "Leet Mode",
            "description": "1337 h4x0r m0d3",
            "enabled": False
        },
        "OpenSourceRulesTheWorld": {
            "name": "Open Source",
            "description": "Open source forever!",
            "enabled": False
        },
        "I_WANT_TO_SEE_THE_LABS!": {
            "name": "Laboratory Access",
            "description": "Unlock Experiment Labs",
            "enabled": False
        }
    }
    
    def __init__(self):
        self.active_cheats = []
    
    def activate(self, code: str) -> bool:
        """Activate cheat code"""
        code = code.upper().strip()
        if code in self.CHEAT_CODES:
            self.CHEAT_CODES[code]["enabled"] = True
            self.active_cheats.append(code)
            return True
        return False
    
    def is_active(self, code: str) -> bool:
        """Check if cheat is active"""
        return self.CHEAT_CODES.get(code.upper(), {}).get("enabled", False)
    
    def get_active_cheats(self) -> list:
        """Get list of active cheats"""
        return self.active_cheats
    
    def show_labs(self) -> bool:
        """Check if labs should be shown"""
        return self.is_active("I_WANT_TO_SEE_THE_LABS!") or self.is_active("BANZER")
