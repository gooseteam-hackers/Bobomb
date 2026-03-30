"""
Internationalization (i18n) Module
Russian and English language support
"""

import json
import os
from pathlib import Path

class I18N:
    """Localization manager"""

    # Language names
    LANGUAGES = {
        "ru": "Русский",
        "en": "English"
    }

    # All translations
    TRANSLATIONS = {
        "ru": {
            # Banner
            "banner_subtitle": "Открытый SMS бомбер - TUI версия",
            "version": "Версия",
            "copyright": "(c) 2025-2026 GooseTeam",
            "tagline": "Открытый SMS бомбер на Android нового поколения",
            
            # Main menu
            "main_menu": "Главное меню",
            "menu_start_attack": "[1] Начать атаку",
            "menu_drip_attack": "[2] Атака в режиме капель 💧",
            "menu_devtools": "[3] DevTools 🔧",
            "menu_settings": "[4] Настройки ⚙️",
            "menu_exit": "[0] Выход",
            "select_option": "Выберите опцию",
            
            # Attack
            "attack_config": "Настройка атаки",
            "enter_phone": "Введите номер телефона (например, 79123456789)",
            "enter_repeats": "Количество повторений (1-10)",
            "starting_attack": "Начало атаки на +{phone}...",
            "attack_complete": "✓ Атака завершена!",
            "attack_interrupted": "Прервано пользователем",
            "cycle": "Цикл",
            "success": "Успешно",
            "failed": "Неудачно",
            
            # Drip mode
            "drip_mode": "💧 Режим капель",
            "drip_config": "Настройка режима капель",
            "drip_delay": "Задержка в минутах (по умолчанию 15)",
            "drip_activated": "💧 Режим капель активирован!",
            "drip_delay_info": "Задержка: {minutes} минут",
            "waiting": "Ожидание",
            
            # DevTools
            "devtools": "DevTools 🔧",
            "devtools_title": "Инструменты разработчика",
            "devtools_test_service": "[1] Тестировать сервис",
            "devtools_test_all": "[2] Тестировать все сервисы",
            "devtools_remove_dupes": "[3] Удалить дубликаты",
            "devtools_filter_working": "[4] Фильтр рабочих (HTTP 200/201)",
            "devtools_filter_failed": "[5] Фильтр нерабочих",
            "devtools_export_json": "[6] Экспорт отчёта (JSON)",
            "devtools_export_bsl": "[7] Экспорт сервисов",
            "devtools_back": "[0] Назад",
            "enter_url": "Введите URL сервиса",
            "enter_test_phone": "Введите тестовый номер",
            "enter_filename": "Введите имя файла",
            "testing_service": "Тестирование сервиса",
            "service_working": "✓ Сервис работает!",
            "service_failed": "✗ Сервис не работает!",
            "working": "Рабочих",
            "removed_dupes": "Удалено дубликатов",
            
            # Settings
            "settings": "Настройки ⚙️",
            "settings_title": "Текущие настройки",
            "setting_verbose": "Режим подробного вывода",
            "setting_services": "Сервисов загружено",
            "setting_timeout": "Таймаут",
            "setting_language": "Язык",
            "setting_theme": "Тема",
            "setting_cheats": "Активные читы",
            "settings_saved": "✓ Настройки сохранены",
            
            # Labs
            "labs": "🧪 Экспериментальные лаборатории",
            "labs_welcome": "Добро пожаловать в лабораторию экспериментов!",
            "labs_info": "Здесь вы можете тестировать экспериментальные функции",
            "labs_locked": "🔒 Экспериментальные лаборатории заблокированы!",
            "labs_cheat_info": "Введите чит-код 'I_WANT_TO_SEE_THE_LABS!' для разблокировки",
            "labs_monospace": "[1] Включить моноширинный шрифт",
            "labs_debug": "[2] Включить режим отладки",
            "labs_verbose": "[3] Включить подробное логирование",
            "labs_network": "[4] Отладка сети",
            "labs_ssl_skip": "[5] Пропуск SSL (ОПАСНО)",
            "labs_back": "[0] Назад",
            "enabled": "Включено",
            "disabled": "Отключено",
            "warning": "⚠ ПРЕДУПРЕЖДЕНИЕ",
            "danger": "ОПАСНО!",
            
            # Cheat codes
            "cheat_menu": "Чит-коды",
            "cheat_enter": "Введите чит-код для разблокировки функций",
            "cheat_activated": "✓ Чит активирован",
            "cheat_invalid": "✗ Неверный чит-код",
            "cheat_labs_unlocked": "🧪 Экспериментальные лаборатории разблокированы!",
            
            # Themes
            "theme_default": "Стандартная",
            "theme_dark": "Тёмная",
            "theme_light": "Светлая",
            "theme_matrix": "Матрица 🟢⬛",
            
            # Messages
            "goodbye": "До свидания! 👋",
            "press_enter": "Нажмите Enter для продолжения",
            "error": "Ошибка",
            "loading": "Загрузка",
            "complete": "Готово",
            
            # Attack modes
            "mode_normal": "Обычный",
            "mode_drip": "Капельный",
            "mode_scheduled": "По расписанию",
            
            # Status
            "status_on": "ВКЛ",
            "status_off": "ВЫКЛ",
        },
        "en": {
            # Banner
            "banner_subtitle": "Open Source SMS Bomber - TUI Edition",
            "version": "Version",
            "copyright": "(c) 2025-2026 GooseTeam",
            "tagline": "Next-gen Open Source SMS Bomber for Android",
            
            # Main menu
            "main_menu": "Main Menu",
            "menu_start_attack": "[1] Start Attack",
            "menu_drip_attack": "[2] Drip Mode Attack 💧",
            "menu_devtools": "[3] DevTools 🔧",
            "menu_settings": "[4] Settings ⚙️",
            "menu_exit": "[0] Exit",
            "select_option": "Select option",
            
            # Attack
            "attack_config": "Attack Configuration",
            "enter_phone": "Enter phone number (e.g., 79123456789)",
            "enter_repeats": "Number of repeats (1-10)",
            "starting_attack": "Starting attack on +{phone}...",
            "attack_complete": "✓ Attack complete!",
            "attack_interrupted": "Interrupted by user",
            "cycle": "Cycle",
            "success": "Success",
            "failed": "Failed",
            
            # Drip mode
            "drip_mode": "💧 Drip Mode",
            "drip_config": "Drip Mode Configuration",
            "drip_delay": "Delay in minutes (default 15)",
            "drip_activated": "💧 Drip Mode Activated!",
            "drip_delay_info": "Delay: {minutes} minutes",
            "waiting": "Waiting",
            
            # DevTools
            "devtools": "DevTools 🔧",
            "devtools_title": "Developer Tools",
            "devtools_test_service": "[1] Test Service",
            "devtools_test_all": "[2] Test All Services",
            "devtools_remove_dupes": "[3] Remove Duplicates",
            "devtools_filter_working": "[4] Filter Working (HTTP 200/201)",
            "devtools_filter_failed": "[5] Filter Failed",
            "devtools_export_json": "[6] Export Report (JSON)",
            "devtools_export_bsl": "[7] Export Services",
            "devtools_back": "[0] Back",
            "enter_url": "Enter service URL",
            "enter_test_phone": "Enter test phone",
            "enter_filename": "Enter filename",
            "testing_service": "Testing service",
            "service_working": "✓ Service is working!",
            "service_failed": "✗ Service failed!",
            "working": "Working",
            "removed_dupes": "Removed duplicates",
            
            # Settings
            "settings": "Settings ⚙️",
            "settings_title": "Current Settings",
            "setting_verbose": "Verbose mode",
            "setting_services": "Services loaded",
            "setting_timeout": "Timeout",
            "setting_language": "Language",
            "setting_theme": "Theme",
            "setting_cheats": "Active cheats",
            "settings_saved": "✓ Settings saved",
            
            # Labs
            "labs": "🧪 Experiment Labs",
            "labs_welcome": "Welcome to the Experiment Labs!",
            "labs_info": "Here you can test experimental features",
            "labs_locked": "🔒 Experiment Labs are locked!",
            "labs_cheat_info": "Enter cheat code 'I_WANT_TO_SEE_THE_LABS!' to unlock",
            "labs_monospace": "[1] Enable Monospace Font",
            "labs_debug": "[2] Enable Debug Mode",
            "labs_verbose": "[3] Enable Verbose Logging",
            "labs_network": "[4] Network Debug",
            "labs_ssl_skip": "[5] SSL Skip (DANGEROUS)",
            "labs_back": "[0] Back",
            "enabled": "Enabled",
            "disabled": "Disabled",
            "warning": "⚠ WARNING",
            "danger": "DANGEROUS!",
            
            # Cheat codes
            "cheat_menu": "Cheat Codes",
            "cheat_enter": "Enter cheat code to unlock features",
            "cheat_activated": "✓ Cheat activated",
            "cheat_invalid": "✗ Invalid cheat code",
            "cheat_labs_unlocked": "🧪 Experiment Labs unlocked!",
            
            # Themes
            "theme_default": "Default",
            "theme_dark": "Dark",
            "theme_light": "Light",
            "theme_matrix": "Matrix 🟢⬛",
            
            # Messages
            "goodbye": "Goodbye! 👋",
            "press_enter": "Press Enter to continue",
            "error": "Error",
            "loading": "Loading",
            "complete": "Complete",
            
            # Attack modes
            "mode_normal": "Normal",
            "mode_drip": "Drip",
            "mode_scheduled": "Scheduled",
            
            # Status
            "status_on": "ON",
            "status_off": "OFF",
        }
    }

    def __init__(self, language: str = "ru"):
        """Initialize i18n with default language"""
        self.language = language if language in self.TRANSLATIONS else "ru"
        self.config_path = Path(__file__).parent.parent / "config" / "i18n.json"
        self.load_language()

    def load_language(self):
        """Load language from config file"""
        if self.config_path.exists():
            try:
                with open(self.config_path, 'r', encoding='utf-8') as f:
                    config = json.load(f)
                    self.language = config.get("language", "ru")
            except:
                pass

    def save_language(self):
        """Save language to config file"""
        self.config_path.parent.mkdir(parents=True, exist_ok=True)
        with open(self.config_path, 'w', encoding='utf-8') as f:
            json.dump({"language": self.language}, f, indent=2, ensure_ascii=False)

    def set_language(self, lang: str):
        """Set current language"""
        if lang in self.TRANSLATIONS:
            self.language = lang
            self.save_language()
            return True
        return False

    def get(self, key: str, **kwargs) -> str:
        """Get translation by key with optional format arguments"""
        translation = self.TRANSLATIONS.get(self.language, {}).get(key, key)
        if kwargs:
            try:
                translation = translation.format(**kwargs)
            except:
                pass
        return translation

    def get_all_languages(self) -> dict:
        """Get available languages"""
        return self.LANGUAGES.copy()

    def get_current_language(self) -> str:
        """Get current language code"""
        return self.language

    def get_current_language_name(self) -> str:
        """Get current language name"""
        return self.LANGUAGES.get(self.language, self.language)


# Global instance
_i18n_instance = None

def get_i18n() -> I18N:
    """Get global i18n instance"""
    global _i18n_instance
    if _i18n_instance is None:
        _i18n_instance = I18N()
    return _i18n_instance

def _(key: str, **kwargs) -> str:
    """Shorthand for translation"""
    return get_i18n().get(key, **kwargs)
