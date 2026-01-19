:github_url: hide

.. _class_OpenXRAndroidThreadSettingsExtension:

OpenXRAndroidThreadSettingsExtension
====================================

**Наследует:** :ref:`OpenXRExtensionWrapper<class_OpenXRExtensionWrapper>` **<** :ref:`Object<class_Object>`

Оборачивает расширение `XR_KHR_android_thread_settings <https://registry.khronos.org/OpenXR/specs/1.1/html/xrspec.html#XR_KHR_android_thread_settings>`__.

.. rst-class:: classref-introduction-group

Описание
----------------

Для комфортной работы XR-технологий важно, чтобы приложения быстро и стабильно доставляли кадры. Чтобы гарантировать, что важные потоки приложения получат свою полную долю времени, эти потоки должны быть идентифицированы для системы, которая соответствующим образом скорректирует их приоритет планирования.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`set_application_thread_type<class_OpenXRAndroidThreadSettingsExtension_method_set_application_thread_type>`\ (\ thread_type\: :ref:`ThreadType<enum_OpenXRAndroidThreadSettingsExtension_ThreadType>`, thread_id\: :ref:`int<class_int>` = 0\ ) |
   +-------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_OpenXRAndroidThreadSettingsExtension_ThreadType:

.. rst-class:: classref-enumeration

enum **ThreadType**: :ref:`🔗<enum_OpenXRAndroidThreadSettingsExtension_ThreadType>`

.. _class_OpenXRAndroidThreadSettingsExtension_constant_THREAD_TYPE_APPLICATION_MAIN:

.. rst-class:: classref-enumeration-constant

:ref:`ThreadType<enum_OpenXRAndroidThreadSettingsExtension_ThreadType>` **THREAD_TYPE_APPLICATION_MAIN** = ``0``

Это указывает среде выполнения XR на то, что поток выполняет критически важные по времени задачи ЦП.

.. _class_OpenXRAndroidThreadSettingsExtension_constant_THREAD_TYPE_APPLICATION_WORKER:

.. rst-class:: classref-enumeration-constant

:ref:`ThreadType<enum_OpenXRAndroidThreadSettingsExtension_ThreadType>` **THREAD_TYPE_APPLICATION_WORKER** = ``1``

Это указывает среде выполнения XR на то, что поток выполняет фоновые задачи ЦП.

.. _class_OpenXRAndroidThreadSettingsExtension_constant_THREAD_TYPE_RENDERER_MAIN:

.. rst-class:: classref-enumeration-constant

:ref:`ThreadType<enum_OpenXRAndroidThreadSettingsExtension_ThreadType>` **THREAD_TYPE_RENDERER_MAIN** = ``2``

Это указывает среде выполнения XR на то, что поток выполняет критически важные по времени задачи для графического устройства.

.. _class_OpenXRAndroidThreadSettingsExtension_constant_THREAD_TYPE_RENDERER_WORKER:

.. rst-class:: classref-enumeration-constant

:ref:`ThreadType<enum_OpenXRAndroidThreadSettingsExtension_ThreadType>` **THREAD_TYPE_RENDERER_WORKER** = ``3``

Это указывает среде выполнения XR на то, что поток выполняет фоновые задачи для графических устройств.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_OpenXRAndroidThreadSettingsExtension_method_set_application_thread_type:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **set_application_thread_type**\ (\ thread_type\: :ref:`ThreadType<enum_OpenXRAndroidThreadSettingsExtension_ThreadType>`, thread_id\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_OpenXRAndroidThreadSettingsExtension_method_set_application_thread_type>`

Устанавливает тип потока для заданного потока, чтобы среда выполнения XR могла соответствующим образом скорректировать свой приоритет планирования.

\ ``thread_id`` относится к идентификатору потока ОС (т.е. из ``gettid()``). Если ``thread_id`` равно ``0``, это устанавливает тип потока для текущего потока.

\ **ПРИМЕЧАНИЕ:** Идентификатор, возвращаемый :ref:`Thread.get_id()<class_Thread_method_get_id>`, несовместим с ``thread_id``.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
