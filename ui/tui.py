"""
TUI - Terminal User Interface
Main interactive interface with i18n support
"""

import sys
import os
import asyncio
from core.cheat_codes import CheatCodes
from core.config import get_config
from utils.i18n import get_i18n, _
from commands.attacks import Attack
from commands.devtools import DevTools
from utils.banner import show_banner

class TUI:
    """Terminal User Interface with localization"""

    def __init__(self):
        self.cheats = CheatCodes()
        self.config = get_config()
        self.i18n = get_i18n()
        self.labs_unlocked = self.config.is_labs_unlocked() or self.cheats.show_labs()

    def clear(self):
        """Clear screen"""
        os.system('clear' if os.name != 'nt' else 'cls')

    def c(self, color: str) -> str:
        """Get color code from theme"""
        theme = self.config.get_theme()
        return theme.get(color, color)

    def main_menu(self) -> str:
        """Show main menu"""
        print(f"\n\033[1m{_('main_menu')}:\033[0m")
        print(f"  {_('menu_start_attack')}")
        print(f"  {_('menu_drip_attack')}")
        print(f"  {_('menu_devtools')}")
        print(f"  {_('menu_settings')}")
        print(f"  {_('menu_exit')}")

        return input(f"\n{_('select_option')}: ")

    def cheat_menu(self):
        """Enter cheat code - hidden feature"""
        print(f"\n\033[95m═══ ═══\033[0m")
        print(_("cheat_enter"))
        print("(or press Enter to go back)\n")

        code = input("\n> ").strip()

        if code:
            if self.cheats.activate(code):
                cheat_info = self.cheats.CHEAT_CODES.get(code.upper(), {})
                print(f"\n\033[92m✓ {_('cheat_activated')}: {cheat_info.get('name', 'Unknown')}\033[0m")
                print(f"  {cheat_info.get('description', '')}")

                if code.upper() == "I_WANT_TO_SEE_THE_LABS!" or code.upper() == "BANZER":
                    self.labs_unlocked = True
                    self.config.unlock_labs()
                    print(f"\n\033[95m✓ {_('cheat_labs_unlocked')}\033[0m")
            else:
                print(f"\n\033[91m✗ {_('cheat_invalid')}\033[0m")

        input(f"\n{_('press_enter')}...")

    def attack_menu(self):
        """Attack configuration"""
        print(f"\n\033[1m═══ {_('attack_config')} ═══\033[0m")

        phone = input(f"\n{_('enter_phone')}: ")
        repeats = int(input(f"{_('enter_repeats')}: ") or "1")

        print(f"\n\033[93m{_('starting_attack', phone=phone)}\033[0m")

        attack = Attack(phone, repeats=repeats, verbose=self.config.is_verbose())
        attack.run()

        input(f"\n{_('press_enter')}...")

    def drip_menu(self):
        """Drip mode configuration"""
        print(f"\n\033[96m══{_('drip_mode')}═ {_('drip_config')} ═{_('drip_mode')}══\033[0m")

        phone = input(f"\n{_('enter_phone')}: ")
        delay_min = int(input(f"{_('drip_delay')}: ") or "15")
        repeats = int(input(f"{_('enter_repeats')}: ") or "1")

        print(f"\n\033[96m💧 {_('drip_activated')}\033[0m")

        attack = Attack(phone, repeats=repeats, mode="drip", drip_delay=delay_min*60*1000, verbose=self.config.is_verbose())
        attack.run()

        input(f"\n{_('press_enter')}...")

    def labs_menu(self):
        """Experiment Labs - hidden menu"""
        if not self.labs_unlocked:
            print(f"\n\033[91m🔒 {_('labs_locked')}\033[0m")
            input(f"\n{_('press_enter')}...")
            return

        print(f"\n\033[95m══{_('labs')}══\033[0m")
        print(f"\n{_('labs_welcome')}")
        print(_("labs_info") + "\n")

        print(f"  {_('labs_monospace')}")
        print(f"  {_('labs_debug')}")
        print(f"  {_('labs_verbose')}")
        print(f"  {_('labs_network')}")
        print(f"  {_('labs_ssl_skip')}")
        print(f"  {_('labs_back')}")

        choice = input(f"\n{_('select_option')}: ")

        if choice == "1":
            self.config.set("monospace_font", not self.config.get("monospace_font"))
            status = _("enabled") if self.config.get("monospace_font") else _("disabled")
            print(f"\n\033[92m✓ {_('labs_monospace')}: {status}\033[0m")
        elif choice == "2":
            self.config.set("debug_mode", not self.config.get("debug_mode"))
            status = _("enabled") if self.config.get("debug_mode") else _("disabled")
            print(f"\n\033[92m✓ {_('labs_debug')}: {status}\033[0m")
        elif choice == "3":
            self.config.set("verbose", not self.config.get("verbose"))
            status = _("enabled") if self.config.get("verbose") else _("disabled")
            print(f"\n\033[92m✓ {_('labs_verbose')}: {status}\033[0m")
        elif choice == "4":
            self.config.set("network_debug", not self.config.get("network_debug"))
            status = _("enabled") if self.config.get("network_debug") else _("disabled")
            print(f"\n\033[92m✓ {_('labs_network')}: {status}\033[0m")
        elif choice == "5":
            self.config.set("ssl_verify", not self.config.get("ssl_verify"))
            status = _("disabled") if self.config.get("ssl_verify") else _("enabled")
            print(f"\n\033[91m⚠ {_('labs_ssl_skip')}: SSL {_('status_on') if not self.config.get('ssl_verify') else _('status_off')}\033[0m")

        input(f"\n{_('press_enter')}...")

    def devtools_menu(self):
        """DevTools menu"""
        print(f"\n\033[1m══🔧═ {_('devtools')} ═🔧══\033[0m")
        print(f"\n{_('devtools_title')}\n")

        print(f"  {_('devtools_test_service')}")
        print(f"  {_('devtools_test_all')}")
        print(f"  {_('devtools_remove_dupes')}")
        print(f"  {_('devtools_filter_working')}")
        print(f"  {_('devtools_filter_failed')}")
        print(f"  {_('devtools_export_json')}")
        print(f"  {_('devtools_export_bsl')}")
        print(f"  {_('devtools_back')}")

        choice = input(f"\n{_('select_option')}: ")

        if choice == "1":
            url = input(f"{_('enter_url')}: ")
            phone = input(f"{_('enter_test_phone')}: ")
            DevTools.test_service(url, phone)
        elif choice == "2":
            phone = input(f"{_('enter_test_phone')}: ")
            asyncio.run(DevTools.test_all_services(phone))
        elif choice == "3":
            DevTools.remove_duplicates()
        elif choice == "4":
            phone = input(f"{_('enter_test_phone')}: ")
            asyncio.run(DevTools.filter_working(phone))
        elif choice == "5":
            phone = input(f"{_('enter_test_phone')}: ")
            asyncio.run(DevTools.filter_failed(phone))
        elif choice == "6":
            filename = input(f"{_('enter_filename')} (default: test_report.json): ") or "test_report.json"
            DevTools.export_report(filename)
        elif choice == "7":
            filename = input(f"{_('enter_filename')} (default: services_filtered.bsl): ") or "services_filtered.bsl"
            DevTools.export_services(filename)
        elif choice == "0":
            return

        input(f"\n{_('press_enter')}...")

    def settings_menu(self):
        """Extended settings menu"""
        while True:
            self.clear()
            show_banner()
            
            print(f"\n\033[1m══⚙️═ {_('settings')} ═⚙️══\033[0m")
            print(f"\n{_('settings_title')}:\n")
            
            # Current settings
            verbose_status = _("status_on") if self.config.is_verbose() else _("status_off")
            language_name = self.i18n.get_current_language_name()
            theme_info = self.config.get_theme()
            theme_name = theme_info.get("name_ru" if self.i18n.get_current_language() == "ru" else "name")
            timeout = self.config.get_timeout()
            
            print(f"  [{_('setting_language')}] {language_name}")
            print(f"  [{_('setting_theme')}] {theme_name}")
            print(f"  [{_('setting_verbose')}] [{_('status_on')}/{_('status_off')}] - {verbose_status}")
            print(f"  [{_('setting_timeout')}] {timeout}s")
            
            print(f"\n  [1] {_('setting_language')}")
            print(f"  [2] {_('setting_theme')}")
            print(f"  [3] {_('setting_verbose')}")
            print(f"  [4] {_('setting_timeout')}")
            print(f"  [0] {_('devtools_back')}")
            
            choice = input(f"\n{_('select_option')}: ")
            
            if choice == "0":
                return
            elif choice == "1":
                self.language_menu()
            elif choice == "2":
                self.theme_menu()
            elif choice == "3":
                current = self.config.is_verbose()
                self.config.set("verbose", not current)
                print(f"\n\033[92m✓ {_('setting_verbose')}: {_('status_on') if not current else _('status_off')}\033[0m")
                input(f"\n{_('press_enter')}...")
            elif choice == "4":
                try:
                    timeout = int(input(f"\n{_('setting_timeout')} (1-60): ") or "10")
                    if self.config.set_timeout(timeout):
                        print(f"\n\033[92m✓ {_('setting_timeout')}: {timeout}s\033[0m")
                    else:
                        print(f"\n\033[91m✗ {_('error')}: Invalid timeout\033[0m")
                except ValueError:
                    print(f"\n\033[91m✗ {_('error')}: Invalid number\033[0m")
                input(f"\n{_('press_enter')}...")

    def language_menu(self):
        """Language selection menu"""
        self.clear()
        show_banner()
        
        print(f"\n\033[1m══🌐 Language / Язык ══\033[0m\n")
        
        languages = self.i18n.get_all_languages()
        current = self.i18n.get_current_language()
        
        for i, (code, name) in enumerate(languages.items(), 1):
            marker = "✓" if code == current else " "
            print(f"  [{i}] {marker} {name}")
        
        print(f"\n  [0] {_('devtools_back')}")
        
        choice = input(f"\n{_('select_option')}: ")
        
        if choice == "0":
            return
        
        try:
            idx = int(choice) - 1
            langs = list(languages.keys())
            if 0 <= idx < len(langs):
                new_lang = langs[idx]
                if new_lang != current:
                    self.i18n.set_language(new_lang)
                    self.config.set_language(new_lang)
                    print(f"\n\033[92m✓ Language changed / Язык изменён: {languages[new_lang]}\033[0m")
                    input(f"\n{_('press_enter')}...")
        except ValueError:
            pass

    def theme_menu(self):
        """Theme selection menu"""
        self.clear()
        show_banner()
        
        print(f"\n\033[1m══🎨 {_('setting_theme')} ══\033[0m\n")
        
        themes = self.config.get_all_themes()
        current = self.config.get("theme", "default")
        lang = self.i18n.get_current_language()
        
        for i, (code, theme) in enumerate(themes.items(), 1):
            marker = "✓" if code == current else " "
            name = theme.get("name_ru" if lang == "ru" else "name")
            print(f"  [{i}] {marker} {name}")
        
        print(f"\n  [0] {_('devtools_back')}")
        
        choice = input(f"\n{_('select_option')}: ")
        
        if choice == "0":
            return
        
        try:
            idx = int(choice) - 1
            theme_codes = list(themes.keys())
            if 0 <= idx < len(theme_codes):
                new_theme = theme_codes[idx]
                if new_theme != current:
                    self.config.set_theme(new_theme)
                    theme_name = themes[new_theme].get("name_ru" if lang == "ru" else "name")
                    print(f"\n\033[92m✓ {_('setting_theme')}: {theme_name}\033[0m")
                    input(f"\n{_('press_enter')}...")
        except ValueError:
            pass

    def run(self):
        """Main TUI loop"""
        while True:
            try:
                choice = self.main_menu()

                if choice == "1":
                    self.attack_menu()
                elif choice == "2":
                    self.drip_menu()
                elif choice == "3":
                    # DevTools (was 4, now 3 after removing labs)
                    self.devtools_menu()
                elif choice == "4":
                    # Settings (was 5, now 4)
                    self.settings_menu()
                elif choice == "0":
                    print(f"\n\033[93m{_('goodbye')}\033[0m")
                    sys.exit(0)
                elif choice == "99":
                    # Hidden labs menu
                    self.labs_menu()
                elif choice == "88":
                    # Hidden cheat menu
                    self.cheat_menu()

            except KeyboardInterrupt:
                print(f"\n\n\033[93m{_('attack_interrupted')}\033[0m")
                sys.exit(0)
            except Exception as e:
                print(f"\n\033[91m{_('error')}: {e}\033[0m")
