"""
Configuration Manager
Handles all user settings and preferences
"""

import json
import os
from pathlib import Path
from typing import Any, Optional

class Config:
    """Configuration manager for Bobomb"""

    DEFAULT_CONFIG = {
        # General
        "language": "ru",
        "theme": "default",
        
        # Attack settings
        "default_repeats": 1,
        "default_drip_delay": 15,  # minutes
        "timeout": 10,  # seconds
        
        # Display
        "verbose": True,
        "show_banner": True,
        "monospace_font": False,
        
        # DevTools
        "auto_remove_dupes": False,
        "save_reports": True,
        
        # Security
        "ssl_verify": True,
        "skip_warnings": False,
        
        # Labs (unlocked via cheats)
        "labs_unlocked": False,
        "debug_mode": False,
        "network_debug": False,
    }

    THEMES = {
        "default": {
            "name": "Default",
            "name_ru": "Стандартная",
            "primary": "cyan",
            "secondary": "yellow",
            "success": "green",
            "error": "red",
            "warning": "yellow",
            "dim": "dim",
            "bg": "default"
        },
        "dark": {
            "name": "Dark",
            "name_ru": "Тёмная",
            "primary": "bright_cyan",
            "secondary": "bright_yellow",
            "success": "bright_green",
            "error": "bright_red",
            "warning": "bright_yellow",
            "dim": "dim",
            "bg": "black"
        },
        "light": {
            "name": "Light",
            "name_ru": "Светлая",
            "primary": "blue",
            "secondary": "magenta",
            "success": "green",
            "error": "red",
            "warning": "yellow",
            "dim": "dim",
            "bg": "white"
        },
        "matrix": {
            "name": "Matrix",
            "name_ru": "Матрица",
            "primary": "green",
            "secondary": "bright_green",
            "success": "bright_green",
            "error": "red",
            "warning": "yellow",
            "dim": "dim",
            "bg": "black"
        }
    }

    def __init__(self, config_path: Optional[str] = None):
        """Initialize configuration"""
        if config_path:
            self.config_path = Path(config_path)
        else:
            self.config_path = Path(__file__).parent.parent / "config" / "config.json"
        
        self.config = self.DEFAULT_CONFIG.copy()
        self.load()

    def load(self):
        """Load configuration from file"""
        if self.config_path.exists():
            try:
                with open(self.config_path, 'r', encoding='utf-8') as f:
                    saved_config = json.load(f)
                    # Merge with defaults
                    for key, value in saved_config.items():
                        if key in self.config:
                            self.config[key] = value
            except Exception as e:
                print(f"Warning: Could not load config: {e}")

    def save(self):
        """Save configuration to file"""
        self.config_path.parent.mkdir(parents=True, exist_ok=True)
        with open(self.config_path, 'w', encoding='utf-8') as f:
            json.dump(self.config, f, indent=2, ensure_ascii=False)

    def get(self, key: str, default: Any = None) -> Any:
        """Get configuration value"""
        return self.config.get(key, default)

    def set(self, key: str, value: Any):
        """Set configuration value"""
        if key in self.config:
            self.config[key] = value
            self.save()
            return True
        return False

    def reset(self):
        """Reset to default configuration"""
        self.config = self.DEFAULT_CONFIG.copy()
        self.save()

    def get_theme(self, theme_name: str = None) -> dict:
        """Get theme colors"""
        if theme_name is None:
            theme_name = self.config.get("theme", "default")
        return self.THEMES.get(theme_name, self.THEMES["default"])

    def get_all_themes(self) -> dict:
        """Get all available themes"""
        return self.THEMES.copy()

    def set_theme(self, theme_name: str):
        """Set current theme"""
        if theme_name in self.THEMES:
            self.config["theme"] = theme_name
            self.save()
            return True
        return False

    def set_language(self, lang: str):
        """Set language"""
        if lang in ["ru", "en"]:
            self.config["language"] = lang
            self.save()
            return True
        return False

    def get_language(self) -> str:
        """Get current language"""
        return self.config.get("language", "ru")

    def is_verbose(self) -> bool:
        """Check if verbose mode is enabled"""
        return self.config.get("verbose", True)

    def is_labs_unlocked(self) -> bool:
        """Check if labs are unlocked"""
        return self.config.get("labs_unlocked", False)

    def unlock_labs(self):
        """Unlock experiment labs"""
        self.config["labs_unlocked"] = True
        self.save()

    def get_timeout(self) -> int:
        """Get request timeout"""
        return self.config.get("timeout", 10)

    def set_timeout(self, timeout: int):
        """Set request timeout"""
        if 1 <= timeout <= 60:
            self.config["timeout"] = timeout
            self.save()
            return True
        return False


# Global instance
_config_instance = None

def get_config() -> Config:
    """Get global config instance"""
    global _config_instance
    if _config_instance is None:
        _config_instance = Config()
    return _config_instance
