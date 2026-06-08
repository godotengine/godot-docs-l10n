:github_url: hide

.. _class_OpenXRInteractionProfile:

OpenXRInteractionProfile
========================

**Успадковує:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Підібрані обов'язки об'єкта OpenXR.

.. rst-class:: classref-introduction-group

Опис
--------

Цей об'єкт пропонує зв'язки для профілю взаємодії. Профільи взаємодії визначають метадані для відстеженого пристрою XR, таких як контролер XR.

Для отримання додаткової інформації див. `interaction profiles info in the OpenXR специфікація <https://www.khronos.org/registry/OpenXR/specs/1.0/html/xrspec.html#semantic-path-interaction-profiles>`__.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`Array<class_Array>`   | :ref:`binding_modifiers<class_OpenXRInteractionProfile_property_binding_modifiers>`               | ``[]`` |
   +-----------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`Array<class_Array>`   | :ref:`bindings<class_OpenXRInteractionProfile_property_bindings>`                                 | ``[]`` |
   +-----------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>` | :ref:`interaction_profile_path<class_OpenXRInteractionProfile_property_interaction_profile_path>` | ``""`` |
   +-----------------------------+---------------------------------------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +---------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRIPBinding<class_OpenXRIPBinding>`                 | :ref:`get_binding<class_OpenXRInteractionProfile_method_get_binding>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                   |
   +---------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                         | :ref:`get_binding_count<class_OpenXRInteractionProfile_method_get_binding_count>`\ (\ ) |const|                                      |
   +---------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRIPBindingModifier<class_OpenXRIPBindingModifier>` | :ref:`get_binding_modifier<class_OpenXRInteractionProfile_method_get_binding_modifier>`\ (\ index\: :ref:`int<class_int>`\ ) |const| |
   +---------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                         | :ref:`get_binding_modifier_count<class_OpenXRInteractionProfile_method_get_binding_modifier_count>`\ (\ ) |const|                    |
   +---------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_OpenXRInteractionProfile_property_binding_modifiers:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **binding_modifiers** = ``[]`` :ref:`🔗<class_OpenXRInteractionProfile_property_binding_modifiers>`

.. rst-class:: classref-property-setget

- |void| **set_binding_modifiers**\ (\ value\: :ref:`Array<class_Array>`\ )
- :ref:`Array<class_Array>` **get_binding_modifiers**\ (\ )

Модифікатори прив’язки для цього профілю взаємодії.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInteractionProfile_property_bindings:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **bindings** = ``[]`` :ref:`🔗<class_OpenXRInteractionProfile_property_bindings>`

.. rst-class:: classref-property-setget

- |void| **set_bindings**\ (\ value\: :ref:`Array<class_Array>`\ )
- :ref:`Array<class_Array>` **get_bindings**\ (\ )

Включення дій для даного профілю взаємодії.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInteractionProfile_property_interaction_profile_path:

.. rst-class:: classref-property

:ref:`String<class_String>` **interaction_profile_path** = ``""`` :ref:`🔗<class_OpenXRInteractionProfile_property_interaction_profile_path>`

.. rst-class:: classref-property-setget

- |void| **set_interaction_profile_path**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_interaction_profile_path**\ (\ )

Шлях профілю взаємодії виявлення пристрою XR.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_OpenXRInteractionProfile_method_get_binding:

.. rst-class:: classref-method

:ref:`OpenXRIPBinding<class_OpenXRIPBinding>` **get_binding**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRInteractionProfile_method_get_binding>`

Отримати обов'язки в цьому індексі.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInteractionProfile_method_get_binding_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_binding_count**\ (\ ) |const| :ref:`🔗<class_OpenXRInteractionProfile_method_get_binding_count>`

Отримати кількість посилань в цьому профілі взаємодії.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInteractionProfile_method_get_binding_modifier:

.. rst-class:: classref-method

:ref:`OpenXRIPBindingModifier<class_OpenXRIPBindingModifier>` **get_binding_modifier**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRInteractionProfile_method_get_binding_modifier>`

Отримайте :ref:`OpenXRBindingModifier<class_OpenXRBindingModifier>` за цим індексом.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInteractionProfile_method_get_binding_modifier_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_binding_modifier_count**\ (\ ) |const| :ref:`🔗<class_OpenXRInteractionProfile_method_get_binding_modifier_count>`

Отримайте кількість модифікаторів прив’язки в цьому профілі взаємодії.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
