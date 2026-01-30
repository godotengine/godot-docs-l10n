:github_url: hide

.. _class_GLTFSkeleton:

GLTFSkeleton
============

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

.. container:: contribute

	There is currently no description for this class. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-introduction-group

教程
----

- :doc:`运行时文件加载与保存 <../tutorials/io/runtime_file_loading_and_saving>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------------------------+---------------------------------------------------+------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`joints<class_GLTFSkeleton_property_joints>` | ``PackedInt32Array()`` |
   +-------------------------------------------------+---------------------------------------------------+------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`roots<class_GLTFSkeleton_property_roots>`   | ``PackedInt32Array()`` |
   +-------------------------------------------------+---------------------------------------------------+------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +----------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`BoneAttachment3D<class_BoneAttachment3D>`          | :ref:`get_bone_attachment<class_GLTFSkeleton_method_get_bone_attachment>`\ (\ idx\: :ref:`int<class_int>`\ )                                       |
   +----------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                    | :ref:`get_bone_attachment_count<class_GLTFSkeleton_method_get_bone_attachment_count>`\ (\ )                                                        |
   +----------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                      | :ref:`get_godot_bone_node<class_GLTFSkeleton_method_get_godot_bone_node>`\ (\ )                                                                    |
   +----------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Skeleton3D<class_Skeleton3D>`                      | :ref:`get_godot_skeleton<class_GLTFSkeleton_method_get_godot_skeleton>`\ (\ )                                                                      |
   +----------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`String<class_String>`\] | :ref:`get_unique_names<class_GLTFSkeleton_method_get_unique_names>`\ (\ )                                                                          |
   +----------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`set_godot_bone_node<class_GLTFSkeleton_method_set_godot_bone_node>`\ (\ godot_bone_node\: :ref:`Dictionary<class_Dictionary>`\ )             |
   +----------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`set_unique_names<class_GLTFSkeleton_method_set_unique_names>`\ (\ unique_names\: :ref:`Array<class_Array>`\[:ref:`String<class_String>`\]\ ) |
   +----------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_GLTFSkeleton_property_joints:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **joints** = ``PackedInt32Array()`` :ref:`🔗<class_GLTFSkeleton_property_joints>`

.. rst-class:: classref-property-setget

- |void| **set_joints**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_joints**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt32Array<class_PackedInt32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_GLTFSkeleton_property_roots:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **roots** = ``PackedInt32Array()`` :ref:`🔗<class_GLTFSkeleton_property_roots>`

.. rst-class:: classref-property-setget

- |void| **set_roots**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_roots**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt32Array<class_PackedInt32Array>` for more details.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_GLTFSkeleton_method_get_bone_attachment:

.. rst-class:: classref-method

:ref:`BoneAttachment3D<class_BoneAttachment3D>` **get_bone_attachment**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_GLTFSkeleton_method_get_bone_attachment>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFSkeleton_method_get_bone_attachment_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_bone_attachment_count**\ (\ ) :ref:`🔗<class_GLTFSkeleton_method_get_bone_attachment_count>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFSkeleton_method_get_godot_bone_node:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_godot_bone_node**\ (\ ) :ref:`🔗<class_GLTFSkeleton_method_get_godot_bone_node>`

返回将骨架的骨骼索引映射到 glTF 节点索引的 :ref:`Dictionary<class_Dictionary>`\ 。导入时不使用该属性，仅在导出时设置。在 glTF 文件中，骨骼是一种节点，因此 Godot 将骨架中的骨骼转换为 glTF 节点。

.. rst-class:: classref-item-separator

----

.. _class_GLTFSkeleton_method_get_godot_skeleton:

.. rst-class:: classref-method

:ref:`Skeleton3D<class_Skeleton3D>` **get_godot_skeleton**\ (\ ) :ref:`🔗<class_GLTFSkeleton_method_get_godot_skeleton>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFSkeleton_method_get_unique_names:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`String<class_String>`\] **get_unique_names**\ (\ ) :ref:`🔗<class_GLTFSkeleton_method_get_unique_names>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFSkeleton_method_set_godot_bone_node:

.. rst-class:: classref-method

|void| **set_godot_bone_node**\ (\ godot_bone_node\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GLTFSkeleton_method_set_godot_bone_node>`

设置将骨架的骨骼索引映射到 glTF 节点索引的 :ref:`Dictionary<class_Dictionary>`\ 。导入时不使用该属性，仅在导出时设置。在 glTF 文件中，骨骼是一种节点，因此 Godot 将骨架中的骨骼转换为 glTF 节点。

.. rst-class:: classref-item-separator

----

.. _class_GLTFSkeleton_method_set_unique_names:

.. rst-class:: classref-method

|void| **set_unique_names**\ (\ unique_names\: :ref:`Array<class_Array>`\[:ref:`String<class_String>`\]\ ) :ref:`🔗<class_GLTFSkeleton_method_set_unique_names>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
