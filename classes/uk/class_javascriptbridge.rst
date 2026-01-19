:github_url: hide

.. _class_JavaScriptBridge:

JavaScriptBridge
================

**Успадковує:** :ref:`Object<class_Object>`

Однотон, який з'єднує двигун з JavaScript-інтерфейсом браузера в Інтернеті.

.. rst-class:: classref-introduction-group

Опис
--------

Сінглтон JavaScriptBridge реалізований тільки в експорті Web. Він використовується для доступу до контексту JavaScript браузера. Це дозволяє взаємодіяти з вбудованими сторінками або викликати сторонні API JavaScript.

\ **Примітка:** Цей синглтон можна вимкнути під час компіляції для підвищення безпеки. За замовчуванням синглтон JavaScriptBridge увімкнено. В офіційних шаблонах експорту також увімкнено синглтон JavaScriptBridge. Докладнішу інформацію див. у розділі :doc:`Компіляція для веб-сайтів <../engine_details/development/compiling/compiling_for_web>` документації.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Синглтон JavaScriptBridge <../tutorials/platform/web/javascript_bridge>`

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`JavaScriptObject<class_JavaScriptObject>` | :ref:`create_callback<class_JavaScriptBridge_method_create_callback>`\ (\ callable\: :ref:`Callable<class_Callable>`\ )                                                                                                                  |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                   | :ref:`create_object<class_JavaScriptBridge_method_create_object>`\ (\ object\: :ref:`String<class_String>`, ...\ ) |vararg|                                                                                                              |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`download_buffer<class_JavaScriptBridge_method_download_buffer>`\ (\ buffer\: :ref:`PackedByteArray<class_PackedByteArray>`, name\: :ref:`String<class_String>`, mime\: :ref:`String<class_String>` = "application/octet-stream"\ ) |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                   | :ref:`eval<class_JavaScriptBridge_method_eval>`\ (\ code\: :ref:`String<class_String>`, use_global_execution_context\: :ref:`bool<class_bool>` = false\ )                                                                                |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`force_fs_sync<class_JavaScriptBridge_method_force_fs_sync>`\ (\ )                                                                                                                                                                  |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`JavaScriptObject<class_JavaScriptObject>` | :ref:`get_interface<class_JavaScriptBridge_method_get_interface>`\ (\ interface\: :ref:`String<class_String>`\ )                                                                                                                         |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`is_js_buffer<class_JavaScriptBridge_method_is_js_buffer>`\ (\ javascript_object\: :ref:`JavaScriptObject<class_JavaScriptObject>`\ )                                                                                               |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`   | :ref:`js_buffer_to_packed_byte_array<class_JavaScriptBridge_method_js_buffer_to_packed_byte_array>`\ (\ javascript_buffer\: :ref:`JavaScriptObject<class_JavaScriptObject>`\ )                                                           |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`pwa_needs_update<class_JavaScriptBridge_method_pwa_needs_update>`\ (\ ) |const|                                                                                                                                                    |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`           | :ref:`pwa_update<class_JavaScriptBridge_method_pwa_update>`\ (\ )                                                                                                                                                                        |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигнали
--------------

.. _class_JavaScriptBridge_signal_pwa_update_available:

.. rst-class:: classref-signal

**pwa_update_available**\ (\ ) :ref:`🔗<class_JavaScriptBridge_signal_pwa_update_available>`

Увімкнено, коли було виявлено оновлення цього прогресивного веб-застосунку, але очікується, що попередній варіант активний. Див. :ref:`pwa_update()<class_JavaScriptBridge_method_pwa_update>`, щоб змусити оновлення відбуватися негайно.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_JavaScriptBridge_method_create_callback:

.. rst-class:: classref-method

:ref:`JavaScriptObject<class_JavaScriptObject>` **create_callback**\ (\ callable\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_JavaScriptBridge_method_create_callback>`

Створює посилання на :ref:`Callable<class_Callable>`, який може використовуватися як зворотний виклик JavaScript. Посилання має зберігатися, доки не відбудеться зворотний виклик, інакше воно не буде викликано взагалі. Перегляньте :ref:`JavaScriptObject<class_JavaScriptObject>` для використання. 

\ **Примітка.** Функція зворотного виклику має приймати рівно один аргумент :ref:`Array<class_Array>`, який буде `об’єктом аргументів <https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/arguments>`__ JavaScript, перетвореним на масив.

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_create_object:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **create_object**\ (\ object\: :ref:`String<class_String>`, ...\ ) |vararg| :ref:`🔗<class_JavaScriptBridge_method_create_object>`

Створення нового об'єкту JavaScript за допомогою конструктора `` i ``. ``window``. Див. :ref:`JavaScriptObject<class_JavaScriptObject>` для використання.

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_download_buffer:

.. rst-class:: classref-method

|void| **download_buffer**\ (\ buffer\: :ref:`PackedByteArray<class_PackedByteArray>`, name\: :ref:`String<class_String>`, mime\: :ref:`String<class_String>` = "application/octet-stream"\ ) :ref:`🔗<class_JavaScriptBridge_method_download_buffer>`

Проконсультує користувача для завантаження файлу, що містить зазначений ``buffer``. Файл буде надана ``name`` і ``mime`` тип.

\ **Примітка:** Веб-сайт: http://en.wikipedia.org/wiki/Media_type]MIME type/url надана на основі файлу ``name``.

\ **Примітка:** Браузери можуть блокувати завантаження, якщо :ref:`download_buffer()<class_JavaScriptBridge_method_download_buffer>` не називаються з взаємодії користувача (наприклад, кнопка натисніть кнопку).

\ **Примітка:** Браузери можуть попросити користувача дозвіл або заблокувати завантаження, якщо кілька запитів для завантаження зроблені в швидкому успіху.

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_eval:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **eval**\ (\ code\: :ref:`String<class_String>`, use_global_execution_context\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_JavaScriptBridge_method_eval>`

Виконувати рядок ``code`` як JavaScript-код у вікні браузера. Зателефонуйте до реальної глобальної функції JavaScript ``eval()``.

Якщо ``use_global_execution_context`` є ``true``, код буде оцінювати в умовах глобального виконання. В іншому випадку він оцінюється в контексті виконання функції в умовах пускового середовища двигуна.

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_force_fs_sync:

.. rst-class:: classref-method

|void| **force_fs_sync**\ (\ ) :ref:`🔗<class_JavaScriptBridge_method_force_fs_sync>`

Синхронізація стійкості файлової системи (при включенні).

\ **Примітка:** Це тільки корисний для модулів або розширення, які не можуть використовуватися :ref:`FileAccess<class_FileAccess>` для запису файлів.

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_get_interface:

.. rst-class:: classref-method

:ref:`JavaScriptObject<class_JavaScriptObject>` **get_interface**\ (\ interface\: :ref:`String<class_String>`\ ) :ref:`🔗<class_JavaScriptBridge_method_get_interface>`

Повертаємо інтерфейс на об'єкт JavaScript, який можна використовувати за допомогою скриптів. ``window``. Зворотній зв'язок повинен прийняти один аргумент :ref:`Array<class_Array>`, який міститиме JavaScript ``arguments``. Див. :ref:`JavaScriptObject<class_JavaScriptObject>` для використання.

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_is_js_buffer:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_js_buffer**\ (\ javascript_object\: :ref:`JavaScriptObject<class_JavaScriptObject>`\ ) :ref:`🔗<class_JavaScriptBridge_method_is_js_buffer>`

Повертає ``true``, якщо заданий ``параметр javascript_object`` має тип `[code]ArrayBuffer[/code] <https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/ArrayBuffer>`__, `[code]DataView[/code] <https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/DataView>`__ або один із багатьох типізованих масивів ` об'єктів <https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/TypedArray>`__.

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_js_buffer_to_packed_byte_array:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **js_buffer_to_packed_byte_array**\ (\ javascript_buffer\: :ref:`JavaScriptObject<class_JavaScriptObject>`\ ) :ref:`🔗<class_JavaScriptBridge_method_js_buffer_to_packed_byte_array>`

Повертає копію вмісту ``javascript_buffer`` як :ref:`PackedByteArray<class_PackedByteArray>`. Дивіться також :ref:`is_js_buffer()<class_JavaScriptBridge_method_is_js_buffer>`.

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_pwa_needs_update:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **pwa_needs_update**\ (\ ) |const| :ref:`🔗<class_JavaScriptBridge_method_pwa_needs_update>`

Повернення ``true``, якщо активується нова версія прогресивного веб-застосунку.

\ **Примітка:** Тільки актуальні при експорті як прогресивний веб-додаток.

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_pwa_update:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **pwa_update**\ (\ ) :ref:`🔗<class_JavaScriptBridge_method_pwa_update>`

Виконує оновлення веб-застосунку. Здійснення нової версії, яка буде встановлена, і сторінка буде перевантажена.

\ **Примітка:** Ваше додаток буде **завантажено в усіх браузерах **.

\ **Примітка:** Тільки актуально при експорті як прогресивний веб-додаток і :ref:`pwa_needs_update()<class_JavaScriptBridge_method_pwa_needs_update>` повертає ``true``.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
