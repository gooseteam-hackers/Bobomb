#!/usr/bin/env python3
"""
Bobomb CLI/TUI - Modular SMS Bomber
Open Source SMS Bomber for terminal
Version 2.0 - CLI Edition with i18n support
"""

import sys
import os

# Add all modules to path
sys.path.insert(0, os.path.join(os.path.dirname(__file__), 'core'))
sys.path.insert(0, os.path.join(os.path.dirname(__file__), 'ui'))
sys.path.insert(0, os.path.join(os.path.dirname(__file__), 'utils'))
sys.path.insert(0, os.path.join(os.path.dirname(__file__), 'commands'))

from utils.banner import show_banner
from core.updater import Updater
from core.config import get_config, Config
from utils.i18n import get_i18n, I18N
from ui.tui import TUI

def main():
    """Main entry point"""
    # Initialize config and i18n first
    config = get_config()
    i18n = get_i18n()
    
    # Set language from config
    lang = config.get_language()
    i18n.set_language(lang)
    
    # Show banner
    show_banner()

    # Check for updates
    updater = Updater()
    updater.check_updates()

    # Start TUI
    tui = TUI()
    tui.run()

if __name__ == "__main__":
    try:
        main()
    except KeyboardInterrupt:
        from utils.i18n import _
        print("\n\n[yellow]{}[/yellow]".format(_("attack_interrupted")))
        sys.exit(0)
    except Exception as e:
        from utils.i18n import _
        print(f"\n[red]{_('error')}: {e}[/red]")
        import traceback
        traceback.print_exc()
        sys.exit(1)
