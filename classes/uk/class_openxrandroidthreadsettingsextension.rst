:github_url: hide

.. _class_OpenXRAndroidThreadSettingsExtension:

OpenXRAndroidThreadSettingsExtension
====================================

**Успадковує:** :ref:`OpenXRExtensionWrapper<class_OpenXRExtensionWrapper>` **<** :ref:`Object<class_Object>`

Огортає розширення `XR_KHR_android_thread_settings <https://registry.khronos.org/OpenXR/specs/1.1/html/xrspec.html#XR_KHR_android_thread_settings>`__.

.. rst-class:: classref-introduction-group

Опис
--------

Для зручності XR важливо, щоб програми швидко та послідовно доставляли кадри. Щоб важливі потоки програми отримували повну частку часу, ці потоки повинні бути ідентифіковані системою, яка відповідно налаштує їхній пріоритет планування.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`set_application_thread_type<class_OpenXRAndroidThreadSettingsExtension_method_set_application_thread_type>`\ (\ thread_type\: :ref:`ThreadType<enum_OpenXRAndroidThreadSettingsExtension_ThreadType>`, thread_id\: :ref:`int<class_int>` = 0\ ) |
   +-------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_OpenXRAndroidThreadSettingsExtension_ThreadType:

.. rst-class:: classref-enumeration

enum **ThreadType**: :ref:`🔗<enum_OpenXRAndroidThreadSettingsExtension_ThreadType>`

.. _class_OpenXRAndroidThreadSettingsExtension_constant_THREAD_TYPE_APPLICATION_MAIN:

.. rst-class:: classref-enumeration-constant

:ref:`ThreadType<enum_OpenXRAndroidThreadSettingsExtension_ThreadType>` **THREAD_TYPE_APPLICATION_MAIN** = ``0``

Підказує середовищу виконання XR, що потік виконує критично важливі для часу завдання процесора.

.. _class_OpenXRAndroidThreadSettingsExtension_constant_THREAD_TYPE_APPLICATION_WORKER:

.. rst-class:: classref-enumeration-constant

:ref:`ThreadType<enum_OpenXRAndroidThreadSettingsExtension_ThreadType>` **THREAD_TYPE_APPLICATION_WORKER** = ``1``

Підказує середовищу виконання XR, що потік виконує фонові завдання процесора.

.. _class_OpenXRAndroidThreadSettingsExtension_constant_THREAD_TYPE_RENDERER_MAIN:

.. rst-class:: classref-enumeration-constant

:ref:`ThreadType<enum_OpenXRAndroidThreadSettingsExtension_ThreadType>` **THREAD_TYPE_RENDERER_MAIN** = ``2``

Підказує середовищу виконання XR, що потік виконує критично важливі для часу завдання графічного пристрою.

.. _class_OpenXRAndroidThreadSettingsExtension_constant_THREAD_TYPE_RENDERER_WORKER:

.. rst-class:: classref-enumeration-constant

:ref:`ThreadType<enum_OpenXRAndroidThreadSettingsExtension_ThreadType>` **THREAD_TYPE_RENDERER_WORKER** = ``3``

Підказує середовищу виконання XR, що потік виконує фонові завдання графічного пристрою.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_OpenXRAndroidThreadSettingsExtension_method_set_application_thread_type:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **set_application_thread_type**\ (\ thread_type\: :ref:`ThreadType<enum_OpenXRAndroidThreadSettingsExtension_ThreadType>`, thread_id\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_OpenXRAndroidThreadSettingsExtension_method_set_application_thread_type>`

Встановлює тип заданого потоку, щоб середовище виконання XR могло відповідно налаштувати свій пріоритет планування.

\ ``thread_id`` посилається на ідентифікатор потоку ОС (тобто з ``gettid()``). Коли ``thread_id`` дорівнює ``0``, він встановлює тип поточного потоку.

\ **ПРИМІТКА:** Ідентифікатор, повернутий :ref:`Thread.get_id()<class_Thread_method_get_id>`, несумісний з ``thread_id``.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
