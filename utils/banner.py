"""
Banner and ASCII Art
With i18n support
"""

try:
    import pyfiglet
    FIGLET_AVAILABLE = True
except ImportError:
    FIGLET_AVAILABLE = False

from utils.i18n import _

def show_banner():
    """Show beautiful banner with i18n support"""
    if FIGLET_AVAILABLE:
        try:
            # Try bigmoney-nw first
            banner = pyfiglet.figlet_format("BOBOMB", font="bigmoney-nw")
            print(f"\033[96m{banner}\033[0m")
        except:
            try:
                # Fallback to slant
                banner = pyfiglet.figlet_format("BOBOMB", font="slant")
                print(f"\033[96m{banner}\033[0m")
            except:
                # Plain text fallback
                print(r"""
\033[96m
  ____  _                       _
 | __ )| | __ _ _ __  ___  _ __| |_
 |  _ \| |/ _` | '_ \/ __|/ _ \ __|
 | |_) | | (_| | | | \__ \  __/ |_
 |____/|_|\__,_|_| |_|___/\___|\__|
\033[0m""")
    else:
        print(r"""
\033[96m
  ____  _                       _
 | __ )| | __ _ _ __  ___  _ __| |_
 |  _ \| |/ _` | '_ \/ __|/ _ \ __|
 | |_) | | (_| | | | \__ \  __/ |_
 |____/|_|\__,_|_| |_|___/\___|\__|
\033[0m""")

    print(f"\033[93m{_('banner_subtitle')}\033[0m")
    print(f"\033[92m{_('version')} 2.0 | {_('copyright')}\033[0m")
    print(f"\033[90m{_('tagline')}\033[0m\n")
