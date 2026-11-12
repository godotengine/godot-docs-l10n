:github_url: hide

.. _class_GLTFSkin:

GLTFSkin
========

**Успадковує:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

.. container:: contribute

	There is currently no description for this class. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Завантаження та збереження файлів під час виконання <../tutorials/io/runtime_file_loading_and_saving>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------------------------------+-----------------------------------------------------------------+------------------------+
   | :ref:`Skin<class_Skin>`                         | :ref:`godot_skin<class_GLTFSkin_property_godot_skin>`           |                        |
   +-------------------------------------------------+-----------------------------------------------------------------+------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`joints<class_GLTFSkin_property_joints>`                   | ``PackedInt32Array()`` |
   +-------------------------------------------------+-----------------------------------------------------------------+------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`joints_original<class_GLTFSkin_property_joints_original>` | ``PackedInt32Array()`` |
   +-------------------------------------------------+-----------------------------------------------------------------+------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`non_joints<class_GLTFSkin_property_non_joints>`           | ``PackedInt32Array()`` |
   +-------------------------------------------------+-----------------------------------------------------------------+------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`roots<class_GLTFSkin_property_roots>`                     | ``PackedInt32Array()`` |
   +-------------------------------------------------+-----------------------------------------------------------------+------------------------+
   | :ref:`int<class_int>`                           | :ref:`skeleton<class_GLTFSkin_property_skeleton>`               | ``-1``                 |
   +-------------------------------------------------+-----------------------------------------------------------------+------------------------+
   | :ref:`int<class_int>`                           | :ref:`skin_root<class_GLTFSkin_property_skin_root>`             | ``-1``                 |
   +-------------------------------------------------+-----------------------------------------------------------------+------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +--------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Transform3D<class_Transform3D>`\] | :ref:`get_inverse_binds<class_GLTFSkin_method_get_inverse_binds>`\ (\ )                                                                                     |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                                | :ref:`get_joint_i_to_bone_i<class_GLTFSkin_method_get_joint_i_to_bone_i>`\ (\ )                                                                             |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                                | :ref:`get_joint_i_to_name<class_GLTFSkin_method_get_joint_i_to_name>`\ (\ )                                                                                 |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`set_inverse_binds<class_GLTFSkin_method_set_inverse_binds>`\ (\ inverse_binds\: :ref:`Array<class_Array>`\[:ref:`Transform3D<class_Transform3D>`\]\ ) |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`set_joint_i_to_bone_i<class_GLTFSkin_method_set_joint_i_to_bone_i>`\ (\ joint_i_to_bone_i\: :ref:`Dictionary<class_Dictionary>`\ )                    |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`set_joint_i_to_name<class_GLTFSkin_method_set_joint_i_to_name>`\ (\ joint_i_to_name\: :ref:`Dictionary<class_Dictionary>`\ )                          |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_GLTFSkin_property_godot_skin:

.. rst-class:: classref-property

:ref:`Skin<class_Skin>` **godot_skin** :ref:`🔗<class_GLTFSkin_property_godot_skin>`

.. rst-class:: classref-property-setget

- |void| **set_godot_skin**\ (\ value\: :ref:`Skin<class_Skin>`\ )
- :ref:`Skin<class_Skin>` **get_godot_skin**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFSkin_property_joints:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **joints** = ``PackedInt32Array()`` :ref:`🔗<class_GLTFSkin_property_joints>`

.. rst-class:: classref-property-setget

- |void| **set_joints**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_joints**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt32Array<class_PackedInt32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_GLTFSkin_property_joints_original:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **joints_original** = ``PackedInt32Array()`` :ref:`🔗<class_GLTFSkin_property_joints_original>`

.. rst-class:: classref-property-setget

- |void| **set_joints_original**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_joints_original**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt32Array<class_PackedInt32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_GLTFSkin_property_non_joints:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **non_joints** = ``PackedInt32Array()`` :ref:`🔗<class_GLTFSkin_property_non_joints>`

.. rst-class:: classref-property-setget

- |void| **set_non_joints**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_non_joints**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt32Array<class_PackedInt32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_GLTFSkin_property_roots:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **roots** = ``PackedInt32Array()`` :ref:`🔗<class_GLTFSkin_property_roots>`

.. rst-class:: classref-property-setget

- |void| **set_roots**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_roots**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt32Array<class_PackedInt32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_GLTFSkin_property_skeleton:

.. rst-class:: classref-property

:ref:`int<class_int>` **skeleton** = ``-1`` :ref:`🔗<class_GLTFSkin_property_skeleton>`

.. rst-class:: classref-property-setget

- |void| **set_skeleton**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_skeleton**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFSkin_property_skin_root:

.. rst-class:: classref-property

:ref:`int<class_int>` **skin_root** = ``-1`` :ref:`🔗<class_GLTFSkin_property_skin_root>`

.. rst-class:: classref-property-setget

- |void| **set_skin_root**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_skin_root**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_GLTFSkin_method_get_inverse_binds:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Transform3D<class_Transform3D>`\] **get_inverse_binds**\ (\ ) :ref:`🔗<class_GLTFSkin_method_get_inverse_binds>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFSkin_method_get_joint_i_to_bone_i:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_joint_i_to_bone_i**\ (\ ) :ref:`🔗<class_GLTFSkin_method_get_joint_i_to_bone_i>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFSkin_method_get_joint_i_to_name:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_joint_i_to_name**\ (\ ) :ref:`🔗<class_GLTFSkin_method_get_joint_i_to_name>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFSkin_method_set_inverse_binds:

.. rst-class:: classref-method

|void| **set_inverse_binds**\ (\ inverse_binds\: :ref:`Array<class_Array>`\[:ref:`Transform3D<class_Transform3D>`\]\ ) :ref:`🔗<class_GLTFSkin_method_set_inverse_binds>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFSkin_method_set_joint_i_to_bone_i:

.. rst-class:: classref-method

|void| **set_joint_i_to_bone_i**\ (\ joint_i_to_bone_i\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GLTFSkin_method_set_joint_i_to_bone_i>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFSkin_method_set_joint_i_to_name:

.. rst-class:: classref-method

|void| **set_joint_i_to_name**\ (\ joint_i_to_name\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GLTFSkin_method_set_joint_i_to_name>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
