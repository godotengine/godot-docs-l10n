:github_url: hide

.. _class_GLTFSkeleton:

GLTFSkeleton
============

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

.. container:: contribute

	There is currently no description for this class. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-introduction-group

教學
----

- :doc:`執行時檔案載入與儲存 <../tutorials/io/runtime_file_loading_and_saving>`

.. rst-class:: classref-reftable-group

屬性
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

屬性說明
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

方法說明
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

Returns a :ref:`Dictionary<class_Dictionary>` that maps skeleton bone indices to the indices of glTF nodes. This property is unused during import, and only set during export. In a glTF file, a bone is a node, so Godot converts skeleton bones to glTF nodes.

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

Sets a :ref:`Dictionary<class_Dictionary>` that maps skeleton bone indices to the indices of glTF nodes. This property is unused during import, and only set during export. In a glTF file, a bone is a node, so Godot converts skeleton bones to glTF nodes.

.. rst-class:: classref-item-separator

----

.. _class_GLTFSkeleton_method_set_unique_names:

.. rst-class:: classref-method

|void| **set_unique_names**\ (\ unique_names\: :ref:`Array<class_Array>`\[:ref:`String<class_String>`\]\ ) :ref:`🔗<class_GLTFSkeleton_method_set_unique_names>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
