# language: ru

Функционал: Проверка синтаксиса
	Как Разработчик/Инженер по тестированию
	Я Хочу иметь возможность автоматической проверки синтаксиса конфигурации
    Чтобы удостовериться в качестве подготовленной конфигурации

Контекст: Подготовка временной файловой базы
    Допустим я подготовил тестовый каталог как каталог сборки
    И создаю временную файловую базу
    и я очистил параметры команды продукта
    
Сценарий: Синтаксическая проверка временной файловой базы
    Допустим я выполнил сценарий "Загрузить конфигурацию из хранилища 1С во временную файловую базу"
    # Допустим я добавляю каталог сборки как параметр команды продукта
    # И подготовил тестовое хранилище
    # И я добавляю пользователя и пароль тестового хранилища как параметр команды продукта
    # И я добавляю каталог тестового хранилища как параметр команды продукта
    # Когда я выполняю команду продукта "load-repo" c передачей параметров "-verbose on"
    И в лог-файле запуска продукта есть строка, подходящая под шаблон "Обновление конфигурации\s*(базы данных)?\s*успешно завершено"
