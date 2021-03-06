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
    # TODO после выполнения https://github.com/artbear/1bdd/issues/80 вернуть - Допустим я выполнил сценарий "..."
    # Допустим я выполнил сценарий "Загрузить конфигурацию из хранилища 1С во временную файловую базу"
    Допустим я добавляю каталог сборки как параметр команды продукта
    И подготовил тестовое хранилище
    И я добавляю пользователя и пароль тестового хранилища как параметр команды продукта
    И я добавляю каталог тестового хранилища как параметр команды продукта
    И я выполняю команду продукта "load-repo" c передачей параметров "-verbose on"
    # завершение сценария
    И я очистил параметры команды продукта
    И я добавляю каталог сборки как параметр команды продукта
    И я включил отладку логов
    Когда я выполняю команду продукта "syntax-check" c передачей параметров '-verbose on -ThinClient -WebClient -Server -ExternalConnection -ThickClientOrdinaryApplication '
    И я выключил отладку логов
    Тогда в лог-файле запуска продукта есть строка "/CheckConfig -ThinClient -WebClient -Server -ExternalConnection -ThickClientOrdinaryApplication"
    Тогда в лог-файле запуска продукта есть строка "Результат проверки Ошибок не обнаружено"
    Тогда в лог-файле запуска продукта есть строка 'testsuite name="Синтаксическая проверка конфигурации"'
