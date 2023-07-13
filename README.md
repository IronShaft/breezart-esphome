# breezart-esphome
Конфигурационный файл для ESPHome для вентиляции Breezart на контроллере RCCU

## Отказ от ответственности
Данная инструкция не является полной документацией. Для одключения необходим доступ к вентустановке.
Существует опасность поражения электрическим током, любые работы должны производиться квалифицированным персоналом.
Ваши действия могут привести к повреждению вентустановки, поэтому выполняются на свой страх и риск.

## Подключение
Подключение производится посредством витой пары по интерфейсу RS-485 в порт связи 1 вентустановки
Данная конфигурация использует WeMos D1 mini или совместимый аналог
Для подключения используется преобразователь интерфейса UART-RS485
Для питания контроллера используется 12В вентустановки, обязательно проверяйте максимальные допустимые напряжения
питания используемого контроллера или используйте внешние источники питания!

![alt text](https://github.com/ironshaft/breezart-esphome/blob/main/d1-rs485?raw=true)

## Использованная документация
[Описание контроллера RCCU](https://breezart.ru/tech/automation_breezart.pdf)
[Краткая инструкция по подключению к системе "Умный дом"](https://breezart.ru/tech/breezart_smart_home_rccu.pdf)

## Компиляция и загрузка
Для сборки прошивки используется docker образ ESPHome. Соответствующие скрипты прилагаются.

## Известные ограничения
- Используются сенсоры, выключатели, кнопки.
- Компонент Climate не реализован
- Не реализована поддержка VAV, увлажнителя, охладителя
- Не реализовано управление планировщиком
