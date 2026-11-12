:github_url: hide

.. meta::
	:keywords: distribute, spread, skin, scale

.. _class_BoneSpaceAdjuster3D:

BoneSpaceAdjuster3D
===================

**Успадковує:** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Inputs a scale and converts it to the position of a child bone.

.. rst-class:: classref-introduction-group

Опис
--------

Inputs a scale and converts it to the position of a child bone. Intended for use in combination with :ref:`Skeleton3D.set_bone_skin_scale()<class_Skeleton3D_method_set_bone_skin_scale>`.

This modifier repositions child bones to follow the skin transformation by :ref:`Skeleton3D.set_bone_skin_scale()<class_Skeleton3D_method_set_bone_skin_scale>` in cases when you want to adjust bone length using :ref:`Skeleton3D.set_bone_skin_scale()<class_Skeleton3D_method_set_bone_skin_scale>` or when the bone has multiple child bones.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`   | :ref:`setting_size<class_BoneSpaceAdjuster3D_property_setting_size>`                                           |          |
   +-------------------------+----------------------------------------------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>` | :ref:`use_bone_skin_scale_for_all_bones<class_BoneSpaceAdjuster3D_property_use_bone_skin_scale_for_all_bones>` | ``true`` |
   +-------------------------+----------------------------------------------------------------------------------------------------------------+----------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`clear_setting<class_BoneSpaceAdjuster3D_method_clear_setting>`\ (\ )                                                                                       |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`get_bone<class_BoneSpaceAdjuster3D_method_get_bone>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                          |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>` | :ref:`get_bone_name<class_BoneSpaceAdjuster3D_method_get_bone_name>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`       | :ref:`get_bone_scale<class_BoneSpaceAdjuster3D_method_get_bone_scale>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                              |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_using_bone_skin_scale<class_BoneSpaceAdjuster3D_method_is_using_bone_skin_scale>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                          |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`set_bone<class_BoneSpaceAdjuster3D_method_set_bone>`\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ )                                    |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`set_bone_name<class_BoneSpaceAdjuster3D_method_set_bone_name>`\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`StringName<class_StringName>`\ )       |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`set_bone_scale<class_BoneSpaceAdjuster3D_method_set_bone_scale>`\ (\ index\: :ref:`int<class_int>`, scale\: :ref:`Vector3<class_Vector3>`\ )               |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`set_use_bone_skin_scale<class_BoneSpaceAdjuster3D_method_set_use_bone_skin_scale>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_BoneSpaceAdjuster3D_property_setting_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **setting_size** :ref:`🔗<class_BoneSpaceAdjuster3D_property_setting_size>`

.. rst-class:: classref-property-setget

- |void| **set_setting_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_setting_size**\ (\ )

Кількість налаштувань у модифікаторі.

.. rst-class:: classref-item-separator

----

.. _class_BoneSpaceAdjuster3D_property_use_bone_skin_scale_for_all_bones:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_bone_skin_scale_for_all_bones** = ``true`` :ref:`🔗<class_BoneSpaceAdjuster3D_property_use_bone_skin_scale_for_all_bones>`

.. rst-class:: classref-property-setget

- |void| **set_use_bone_skin_scale_for_all_bones**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **are_all_bones_using_bone_skin_scale**\ (\ )

If ``true``, this modifier processes all bones for which :ref:`Skeleton3D.get_bone_skin_scale()<class_Skeleton3D_method_get_bone_skin_scale>` is not ``Vector3(1, 1, 1)``.

If ``false``, this modifier allows you to configure whether to process bone skin scaling individually in the settings.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_BoneSpaceAdjuster3D_method_clear_setting:

.. rst-class:: classref-method

|void| **clear_setting**\ (\ ) :ref:`🔗<class_BoneSpaceAdjuster3D_method_clear_setting>`

Очищає всі налаштування.

.. rst-class:: classref-item-separator

----

.. _class_BoneSpaceAdjuster3D_method_get_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_bone**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneSpaceAdjuster3D_method_get_bone>`

Returns the scaled bone of the setting at ``index``.

.. rst-class:: classref-item-separator

----

.. _class_BoneSpaceAdjuster3D_method_get_bone_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_bone_name**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneSpaceAdjuster3D_method_get_bone_name>`

Returns the scaled bone name of the setting at ``index``.

.. rst-class:: classref-item-separator

----

.. _class_BoneSpaceAdjuster3D_method_get_bone_scale:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_bone_scale**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneSpaceAdjuster3D_method_get_bone_scale>`

Returns the scale of the setting at ``index``.

.. rst-class:: classref-item-separator

----

.. _class_BoneSpaceAdjuster3D_method_is_using_bone_skin_scale:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_using_bone_skin_scale**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneSpaceAdjuster3D_method_is_using_bone_skin_scale>`

Returns whether to use the ``skin_scale`` property of a :ref:`Skeleton3D<class_Skeleton3D>`'s bone of the setting at ``index``.

.. rst-class:: classref-item-separator

----

.. _class_BoneSpaceAdjuster3D_method_set_bone:

.. rst-class:: classref-method

|void| **set_bone**\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ ) :ref:`🔗<class_BoneSpaceAdjuster3D_method_set_bone>`

Sets the scaled bone of the setting at ``index``.

.. rst-class:: classref-item-separator

----

.. _class_BoneSpaceAdjuster3D_method_set_bone_name:

.. rst-class:: classref-method

|void| **set_bone_name**\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_BoneSpaceAdjuster3D_method_set_bone_name>`

Sets the scaled bone name of the setting at ``index``.

.. rst-class:: classref-item-separator

----

.. _class_BoneSpaceAdjuster3D_method_set_bone_scale:

.. rst-class:: classref-method

|void| **set_bone_scale**\ (\ index\: :ref:`int<class_int>`, scale\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_BoneSpaceAdjuster3D_method_set_bone_scale>`

When :ref:`is_using_bone_skin_scale()<class_BoneSpaceAdjuster3D_method_is_using_bone_skin_scale>` returns ``false``, sets the scale of the setting at ``index``.

\ **Note:** The ``scale`` value is recommended to be non-zero.

.. rst-class:: classref-item-separator

----

.. _class_BoneSpaceAdjuster3D_method_set_use_bone_skin_scale:

.. rst-class:: classref-method

|void| **set_use_bone_skin_scale**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_BoneSpaceAdjuster3D_method_set_use_bone_skin_scale>`

Sets whether to use the ``skin_scale`` property of a :ref:`Skeleton3D<class_Skeleton3D>`'s bone of the setting at ``index``.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
