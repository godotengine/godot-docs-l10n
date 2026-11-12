:github_url: hide

.. _class_GLTFMesh:

GLTFMesh
========

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

GLTFMesh 代表 glTF 網格。

.. rst-class:: classref-introduction-group

說明
----

GLTFMesh 處理從 glTF 檔案匯入的 3D 網格資料，包括混合通道、混合權重、實例材質等屬性和網格本身。

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

float 陣列，代表網格的混合權重。



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedFloat32Array<class_PackedFloat32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_GLTFMesh_property_instance_materials:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`Material<class_Material>`\] **instance_materials** = ``[]`` :ref:`🔗<class_GLTFMesh_property_instance_materials>`

.. rst-class:: classref-property-setget

- |void| **set_instance_materials**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`Material<class_Material>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`Material<class_Material>`\] **get_instance_materials**\ (\ )

Material 物件陣列，代表網格所使用的材質。

.. rst-class:: classref-item-separator

----

.. _class_GLTFMesh_property_mesh:

.. rst-class:: classref-property

:ref:`ImporterMesh<class_ImporterMesh>` **mesh** :ref:`🔗<class_GLTFMesh_property_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_mesh**\ (\ value\: :ref:`ImporterMesh<class_ImporterMesh>`\ )
- :ref:`ImporterMesh<class_ImporterMesh>` **get_mesh**\ (\ )

代表網格本身的 :ref:`ImporterMesh<class_ImporterMesh>` 物件。

.. rst-class:: classref-item-separator

----

.. _class_GLTFMesh_property_original_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **original_name** = ``""`` :ref:`🔗<class_GLTFMesh_property_original_name>`

.. rst-class:: classref-property-setget

- |void| **set_original_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_original_name**\ (\ )

網格的原名。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_GLTFMesh_method_get_additional_data:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_additional_data**\ (\ extension_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_GLTFMesh_method_get_additional_data>`

在這個 **GLTFMesh** 實例中取得額外的任意資料。這可用於將每個節點的狀態資料儲存在 :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` 類中，這很重要，因為它們是無狀態的。

參數應該是 :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` 的名字（不必與 glTF 檔案中的副檔名匹配），且回傳值可以是你設定的任何值。如果沒有設定任何內容，則回傳值為 ``null``\ 。

.. rst-class:: classref-item-separator

----

.. _class_GLTFMesh_method_set_additional_data:

.. rst-class:: classref-method

|void| **set_additional_data**\ (\ extension_name\: :ref:`StringName<class_StringName>`, additional_data\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_GLTFMesh_method_set_additional_data>`

在這個 **GLTFMesh** 實例中設定額外的任意資料。這可用於將每個節點的狀態資料儲存在 :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` 類中，這很重要，因為它們是無狀態的。

第一個參數應該是 :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` 的名字（不必與 glTF 檔案中的副檔名匹配），第二個參數可以是你想要的任何內容。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
