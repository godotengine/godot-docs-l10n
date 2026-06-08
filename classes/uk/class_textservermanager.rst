:github_url: hide

.. _class_TextServerManager:

TextServerManager
=================

**Успадковує:** :ref:`Object<class_Object>`

Універсал для управління :ref:`TextServer<class_TextServer>`.

.. rst-class:: classref-introduction-group

Опис
--------

**TextServerManager** є API-підтвердженням для завантаження, обміну та перемикання :ref:`TextServer<class_TextServer>`\ s.

\ **Примітка:** Переключення текстового сервера в режимі runtime можливо, але недійсним буде всі шрифти та текстові буфери. Щоб перевантажити всі елементи керування, шрифти та теми, перш ніж це зробити.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`add_interface<class_TextServerManager_method_add_interface>`\ (\ interface\: :ref:`TextServer<class_TextServer>`\ )             |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TextServer<class_TextServer>`                              | :ref:`find_interface<class_TextServerManager_method_find_interface>`\ (\ name\: :ref:`String<class_String>`\ ) |const|                |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TextServer<class_TextServer>`                              | :ref:`get_interface<class_TextServerManager_method_get_interface>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                         |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`get_interface_count<class_TextServerManager_method_get_interface_count>`\ (\ ) |const|                                          |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`get_interfaces<class_TextServerManager_method_get_interfaces>`\ (\ ) |const|                                                    |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TextServer<class_TextServer>`                              | :ref:`get_primary_interface<class_TextServerManager_method_get_primary_interface>`\ (\ ) |const|                                      |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`remove_interface<class_TextServerManager_method_remove_interface>`\ (\ interface\: :ref:`TextServer<class_TextServer>`\ )       |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_primary_interface<class_TextServerManager_method_set_primary_interface>`\ (\ index\: :ref:`TextServer<class_TextServer>`\ ) |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигнали
--------------

.. _class_TextServerManager_signal_interface_added:

.. rst-class:: classref-signal

**interface_added**\ (\ interface_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_TextServerManager_signal_interface_added>`

При додаванні нового інтерфейсу.

.. rst-class:: classref-item-separator

----

.. _class_TextServerManager_signal_interface_removed:

.. rst-class:: classref-signal

**interface_removed**\ (\ interface_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_TextServerManager_signal_interface_removed>`

При видаленні інтерфейсу.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_TextServerManager_method_add_interface:

.. rst-class:: classref-method

|void| **add_interface**\ (\ interface\: :ref:`TextServer<class_TextServer>`\ ) :ref:`🔗<class_TextServerManager_method_add_interface>`

Зареєструвати інтерфейс :ref:`TextServer<class_TextServer>`.

.. rst-class:: classref-item-separator

----

.. _class_TextServerManager_method_find_interface:

.. rst-class:: classref-method

:ref:`TextServer<class_TextServer>` **find_interface**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_TextServerManager_method_find_interface>`

Знайдіть інтерфейс за назвою ``name``.

.. rst-class:: classref-item-separator

----

.. _class_TextServerManager_method_get_interface:

.. rst-class:: classref-method

:ref:`TextServer<class_TextServer>` **get_interface**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TextServerManager_method_get_interface>`

Повертає інтерфейс, зареєстрований в даній позиції.

.. rst-class:: classref-item-separator

----

.. _class_TextServerManager_method_get_interface_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_interface_count**\ (\ ) |const| :ref:`🔗<class_TextServerManager_method_get_interface_count>`

Повертаємо кількість інтерфейсів, які в даний час реєструються.

.. rst-class:: classref-item-separator

----

.. _class_TextServerManager_method_get_interfaces:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_interfaces**\ (\ ) |const| :ref:`🔗<class_TextServerManager_method_get_interfaces>`

Повертає список доступних інтерфейсів, з індексом і назвою кожного інтерфейсу.

.. rst-class:: classref-item-separator

----

.. _class_TextServerManager_method_get_primary_interface:

.. rst-class:: classref-method

:ref:`TextServer<class_TextServer>` **get_primary_interface**\ (\ ) |const| :ref:`🔗<class_TextServerManager_method_get_primary_interface>`

Повертає інтерфейс початкового :ref:`TextServer<class_TextServer>` в даний час у використанні.

.. rst-class:: classref-item-separator

----

.. _class_TextServerManager_method_remove_interface:

.. rst-class:: classref-method

|void| **remove_interface**\ (\ interface\: :ref:`TextServer<class_TextServer>`\ ) :ref:`🔗<class_TextServerManager_method_remove_interface>`

Видалити інтерфейс. Усі шрифти та форми текстові кеши повинні бути звільнені до видалення інтерфейсу.

.. rst-class:: classref-item-separator

----

.. _class_TextServerManager_method_set_primary_interface:

.. rst-class:: classref-method

|void| **set_primary_interface**\ (\ index\: :ref:`TextServer<class_TextServer>`\ ) :ref:`🔗<class_TextServerManager_method_set_primary_interface>`

Налаштування інтерфейсу :ref:`TextServer<class_TextServer>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
