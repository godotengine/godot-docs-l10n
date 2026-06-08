:github_url: hide

.. _class_OpenXRSpatialCapabilityConfigurationAprilTag:

OpenXRSpatialCapabilityConfigurationAprilTag
============================================

**Експериментальний:** This class may be changed or removed in future versions.

**Успадковує:** :ref:`OpenXRSpatialCapabilityConfigurationBaseHeader<class_OpenXRSpatialCapabilityConfigurationBaseHeader>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Заголовок конфігурації для маркерів тегів за квітень.

.. rst-class:: classref-introduction-group

Опис
--------

Заголовок конфігурації для маркерів квітневих тегів. Передайте його до :ref:`OpenXRSpatialEntityExtension.create_spatial_context()<class_OpenXRSpatialEntityExtension_method_create_spatial_context>`, щоб створити просторовий контекст, який може виявляти квітневі теги.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------+-------+
   | :ref:`AprilTagDict<enum_OpenXRSpatialCapabilityConfigurationAprilTag_AprilTagDict>` | :ref:`april_dict<class_OpenXRSpatialCapabilityConfigurationAprilTag_property_april_dict>` | ``4`` |
   +-------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt64Array<class_PackedInt64Array>` | :ref:`get_enabled_components<class_OpenXRSpatialCapabilityConfigurationAprilTag_method_get_enabled_components>`\ (\ ) |const| |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_OpenXRSpatialCapabilityConfigurationAprilTag_AprilTagDict:

.. rst-class:: classref-enumeration

enum **AprilTagDict**: :ref:`🔗<enum_OpenXRSpatialCapabilityConfigurationAprilTag_AprilTagDict>`

.. _class_OpenXRSpatialCapabilityConfigurationAprilTag_constant_APRIL_TAG_DICT_16H5:

.. rst-class:: classref-enumeration-constant

:ref:`AprilTagDict<enum_OpenXRSpatialCapabilityConfigurationAprilTag_AprilTagDict>` **APRIL_TAG_DICT_16H5** = ``1``

4 на 4 біти, мінімальна відстань Хеммінга між будь-якими двома кодами = 5, 30 кодів.

.. _class_OpenXRSpatialCapabilityConfigurationAprilTag_constant_APRIL_TAG_DICT_25H9:

.. rst-class:: classref-enumeration-constant

:ref:`AprilTagDict<enum_OpenXRSpatialCapabilityConfigurationAprilTag_AprilTagDict>` **APRIL_TAG_DICT_25H9** = ``2``

5 на 5 бітів, мінімальна відстань Хеммінга між будь-якими двома кодами = 9, 35 кодів.

.. _class_OpenXRSpatialCapabilityConfigurationAprilTag_constant_APRIL_TAG_DICT_36H10:

.. rst-class:: classref-enumeration-constant

:ref:`AprilTagDict<enum_OpenXRSpatialCapabilityConfigurationAprilTag_AprilTagDict>` **APRIL_TAG_DICT_36H10** = ``3``

6 by 6 bits, minimum Hamming distance between any two codes = 10, 2320 codes.

.. _class_OpenXRSpatialCapabilityConfigurationAprilTag_constant_APRIL_TAG_DICT_36H11:

.. rst-class:: classref-enumeration-constant

:ref:`AprilTagDict<enum_OpenXRSpatialCapabilityConfigurationAprilTag_AprilTagDict>` **APRIL_TAG_DICT_36H11** = ``4``

6 на 6 бітів, мінімальна відстань Хеммінга між будь-якими двома кодами = 11 587 кодів.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_OpenXRSpatialCapabilityConfigurationAprilTag_property_april_dict:

.. rst-class:: classref-property

:ref:`AprilTagDict<enum_OpenXRSpatialCapabilityConfigurationAprilTag_AprilTagDict>` **april_dict** = ``4`` :ref:`🔗<class_OpenXRSpatialCapabilityConfigurationAprilTag_property_april_dict>`

.. rst-class:: classref-property-setget

- |void| **set_april_dict**\ (\ value\: :ref:`AprilTagDict<enum_OpenXRSpatialCapabilityConfigurationAprilTag_AprilTagDict>`\ )
- :ref:`AprilTagDict<enum_OpenXRSpatialCapabilityConfigurationAprilTag_AprilTagDict>` **get_april_dict**\ (\ )

Словник для декодування тегів квітня.

\ **Примітка:** Потрібно встановити перед використанням цієї конфігурації для створення просторового контексту.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_OpenXRSpatialCapabilityConfigurationAprilTag_method_get_enabled_components:

.. rst-class:: classref-method

:ref:`PackedInt64Array<class_PackedInt64Array>` **get_enabled_components**\ (\ ) |const| :ref:`🔗<class_OpenXRSpatialCapabilityConfigurationAprilTag_method_get_enabled_components>`

Повертає компоненти, увімкнені цією конфігурацією.

\ **Примітка:** Дійсно лише після того, як ця конфігурація була використана для створення просторового контексту.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
