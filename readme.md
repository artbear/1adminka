# 1adminka

Поддержка автоматической сборки и развертывания конфигураций 1с

иными словами, Continuous Integration(CI) и Continuous Delivery (CD) для 1С

# Командная строка запуска

```
Использование:
        1adminka <команда> <параметры команды> [ключи]
        oscript 1adminka.os <команда> <параметры команды> [ключи]
Возможные команды:
        clean - Очистка временной базы                                                                                              

        load-repo - Загрузить конфигурацию из хранилища 1C
                1adminka load-repo -repo-dir <ЛокальныйПутьККаталогуХранилища1С> [ключи]
                        ЛокальныйПутьККаталогуХранилища1С - локальный путь к каталогу хранилища 1С.                                                                                             
                                Например, C:\Storage1C.                                                                          
                возможные ключи:
                        -repo-user <логин> - Имя пользователя хранилища 1С.
                        -repo-password <пароль> - Пароль пользователя хранилища 1С.

        syntax-check - Проверка синтаксиса конфигурации в различных режимах
                1adminka syntax-check [общие ключи] <ключи проверки синтаксиса через пробел>
                        "ключи проверки синтаксиса через пробел" - набор ключей проверки синтаксиса (подробнее в синтакс-помощнике 1С Конфигуратора).                                                                                             
                                Например, "-ThinClient -WebClient -Server -ExternalConnection -ThickClientOrdinaryApplication"

Возможные общие, необязательные ключи:
        -dir <Путь каталога сборки>. Путь временного или постоянного каталога сборки, в котором будут созданы необходимые файлы
        -v8version <Маска версии 1С>. Например, 8., 8.2, 8.3.6, 8.3.9.1919
        -out <путь лог-файла>
        -verbose <on|off> - включается полный лог

Для подсказки по конкретной команде наберите bdd help <команда>                                                                                              