:github_url: hide

.. _class_GLTFMesh:

GLTFMesh
========

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

GLTFMesh represents a glTF mesh.

.. rst-class:: classref-introduction-group

說明
----

GLTFMesh handles 3D mesh data imported from glTF files. It includes properties for blend channels, blend weights, instance materials, and the mesh itself.

.. rst-class:: classref-introduction-group

教學
----

- :doc:`執行時檔案載入與儲存 <../tutorials/io/runtime_file_loading_and_saving>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +--------------------------------------------------------------+-----------------------------------------------------------------------+--------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>`          | :ref:`blend_weights<class_GLTFMesh_property_blend_weights>`           | ``PackedFloat32Array()`` |
   +--------------------------------------------------------------+-----------------------------------------------------------------------+--------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Material<class_Material>`\] | :ref:`instance_materials<class_GLTFMesh_property_instance_materials>` | ``[]``                   |
   +--------------------------------------------------------------+-----------------------------------------------------------------------+--------------------------+
   | :ref:`ImporterMesh<class_ImporterMesh>`                      | :ref:`mesh<class_GLTFMesh_property_mesh>`                             |                          |
   +--------------------------------------------------------------+-----------------------------------------------------------------------+--------------------------+
   | :ref:`String<class_String>`                                  | :ref:`original_name<class_GLTFMesh_property_original_name>`           | ``""``                   |
   +--------------------------------------------------------------+-----------------------------------------------------------------------+--------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`get_additional_data<class_GLTFMesh_method_get_additional_data>`\ (\ extension_name\: :ref:`StringName<class_StringName>`\ )                                                  |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_additional_data<class_GLTFMesh_method_set_additional_data>`\ (\ extension_name\: :ref:`StringName<class_StringName>`, additional_data\: :ref:`Variant<class_Variant>`\ ) |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_GLTFMesh_property_blend_weights:

.. rst-class:: classref-property

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **blend_weights** = ``PackedFloat32Array()`` :ref:`🔗<class_GLTFMesh_property_blend_weights>`

.. rst-class:: classref-property-setget

- |void| **set_blend_weights**\ (\ value\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ )
- :ref:`PackedFloat32Array<class_PackedFloat32Array>` **get_blend_weights**\ (\ )

An array of floats representing the blend weights of the mesh.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedFloat32Array<class_PackedFloat32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_GLTFMesh_property_instance_materials:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`Material<class_Material>`\] **instance_materials** = ``[]`` :ref:`🔗<class_GLTFMesh_property_instance_materials>`

.. rst-class:: classref-property-setget

- |void| **set_instance_materials**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`Material<class_Material>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`Material<class_Material>`\] **get_instance_materials**\ (\ )

An array of Material objects representing the materials used in the mesh.

.. rst-class:: classref-item-separator

----

.. _class_GLTFMesh_property_mesh:

.. rst-class:: classref-property

:ref:`ImporterMesh<class_ImporterMesh>` **mesh** :ref:`🔗<class_GLTFMesh_property_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_mesh**\ (\ value\: :ref:`ImporterMesh<class_ImporterMesh>`\ )
- :ref:`ImporterMesh<class_ImporterMesh>` **get_mesh**\ (\ )

The :ref:`ImporterMesh<class_ImporterMesh>` object representing the mesh itself.

.. rst-class:: classref-item-separator

----

.. _class_GLTFMesh_property_original_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **original_name** = ``""`` :ref:`🔗<class_GLTFMesh_property_original_name>`

.. rst-class:: classref-property-setget

- |void| **set_original_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_original_name**\ (\ )

The original name of the mesh.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_GLTFMesh_method_get_additional_data:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_additional_data**\ (\ extension_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_GLTFMesh_method_get_additional_data>`

Gets additional arbitrary data in this **GLTFMesh** instance. This can be used to keep per-node state data in :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` classes, which is important because they are stateless.

The argument should be the :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` name (does not have to match the extension name in the glTF file), and the return value can be anything you set. If nothing was set, the return value is ``null``.

.. rst-class:: classref-item-separator

----

.. _class_GLTFMesh_method_set_additional_data:

.. rst-class:: classref-method

|void| **set_additional_data**\ (\ extension_name\: :ref:`StringName<class_StringName>`, additional_data\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_GLTFMesh_method_set_additional_data>`

Sets additional arbitrary data in this **GLTFMesh** instance. This can be used to keep per-node state data in :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` classes, which is important because they are stateless.

The first argument should be the :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` name (does not have to match the extension name in the glTF file), and the second argument can be anything you want.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
