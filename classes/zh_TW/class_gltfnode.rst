:github_url: hide

.. _class_GLTFNode:

GLTFNode
========

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

glTF 節點類。

.. rst-class:: classref-introduction-group

說明
----

代表 glTF 節點。glTF 節點中可以包含名稱、變換、子節點（glTF 節點）以及其他專門的屬性（由各自不同的類表示）。

glTF 節點通常存在於表示 glTF 檔案中的所有資料的 :ref:`GLTFState<class_GLTFState>` 內部。大多數 GLTFNode 的屬性都是 glTF 檔案中其他資料的索引。你可以使用 :ref:`get_additional_data()<class_GLTFNode_method_get_additional_data>` 和 :ref:`set_additional_data()<class_GLTFNode_method_set_additional_data>` 來新增額外的屬性，擴充 glTF 節點。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`執行時檔案載入與儲存 <../tutorials/io/runtime_file_loading_and_saving>`

- `glTF 場景和節點規格 <https://github.com/KhronosGroup/glTF-Tutorials/blob/master/gltfTutorial/gltfTutorial_004_ScenesNodes.md">`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------------------------+-------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`camera<class_GLTFNode_property_camera>`               | ``-1``                                              |
   +-------------------------------------------------+-------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`children<class_GLTFNode_property_children>`           | ``PackedInt32Array()``                              |
   +-------------------------------------------------+-------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`height<class_GLTFNode_property_height>`               | ``-1``                                              |
   +-------------------------------------------------+-------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`light<class_GLTFNode_property_light>`                 | ``-1``                                              |
   +-------------------------------------------------+-------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`mesh<class_GLTFNode_property_mesh>`                   | ``-1``                                              |
   +-------------------------------------------------+-------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`String<class_String>`                     | :ref:`original_name<class_GLTFNode_property_original_name>` | ``""``                                              |
   +-------------------------------------------------+-------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`parent<class_GLTFNode_property_parent>`               | ``-1``                                              |
   +-------------------------------------------------+-------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                   | :ref:`position<class_GLTFNode_property_position>`           | ``Vector3(0, 0, 0)``                                |
   +-------------------------------------------------+-------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>`             | :ref:`rotation<class_GLTFNode_property_rotation>`           | ``Quaternion(0, 0, 0, 1)``                          |
   +-------------------------------------------------+-------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                   | :ref:`scale<class_GLTFNode_property_scale>`                 | ``Vector3(1, 1, 1)``                                |
   +-------------------------------------------------+-------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`skeleton<class_GLTFNode_property_skeleton>`           | ``-1``                                              |
   +-------------------------------------------------+-------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`skin<class_GLTFNode_property_skin>`                   | ``-1``                                              |
   +-------------------------------------------------+-------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`visible<class_GLTFNode_property_visible>`             | ``true``                                            |
   +-------------------------------------------------+-------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`           | :ref:`xform<class_GLTFNode_property_xform>`                 | ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` |
   +-------------------------------------------------+-------------------------------------------------------------+-----------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`append_child_index<class_GLTFNode_method_append_child_index>`\ (\ child_index\: :ref:`int<class_int>`\ )                                                                     |
   +---------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`   | :ref:`get_additional_data<class_GLTFNode_method_get_additional_data>`\ (\ extension_name\: :ref:`StringName<class_StringName>`\ )                                                  |
   +---------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`get_scene_node_path<class_GLTFNode_method_get_scene_node_path>`\ (\ gltf_state\: :ref:`GLTFState<class_GLTFState>`, handle_skeletons\: :ref:`bool<class_bool>` = true\ )     |
   +---------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_additional_data<class_GLTFNode_method_set_additional_data>`\ (\ extension_name\: :ref:`StringName<class_StringName>`, additional_data\: :ref:`Variant<class_Variant>`\ ) |
   +---------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_GLTFNode_property_camera:

.. rst-class:: classref-property

:ref:`int<class_int>` **camera** = ``-1`` :ref:`🔗<class_GLTFNode_property_camera>`

.. rst-class:: classref-property-setget

- |void| **set_camera**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_camera**\ (\ )

如果該 glTF 節點是一個相機，則 :ref:`GLTFState<class_GLTFState>` 中 :ref:`GLTFCamera<class_GLTFCamera>` 的索引將描述該相機的屬性。如果為 ``-1``\ ，則該節點不是相機。

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_property_children:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **children** = ``PackedInt32Array()`` :ref:`🔗<class_GLTFNode_property_children>`

.. rst-class:: classref-property-setget

- |void| **set_children**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_children**\ (\ )

:ref:`GLTFState<class_GLTFState>` 中子節點的索引。如果該 glTF 節點沒有子節點，則這將是一個空陣列。

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt32Array<class_PackedInt32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_property_height:

.. rst-class:: classref-property

:ref:`int<class_int>` **height** = ``-1`` :ref:`🔗<class_GLTFNode_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_height**\ (\ )

該節點在節點層次結構中的深度。根節點的高度為 0，其子節點的高度為 1，依此類推。如果為 -1，則尚未計算高度。

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_property_light:

.. rst-class:: classref-property

:ref:`int<class_int>` **light** = ``-1`` :ref:`🔗<class_GLTFNode_property_light>`

.. rst-class:: classref-property-setget

- |void| **set_light**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_light**\ (\ )

如果該 glTF 節點是一盞燈，則 :ref:`GLTFState<class_GLTFState>` 中 :ref:`GLTFLight<class_GLTFLight>` 的索引將描述該燈的屬性。如果為 -1，則該節點不是燈。

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_property_mesh:

.. rst-class:: classref-property

:ref:`int<class_int>` **mesh** = ``-1`` :ref:`🔗<class_GLTFNode_property_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_mesh**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_mesh**\ (\ )

如果該 glTF 節點是網格，則 :ref:`GLTFState<class_GLTFState>` 中 :ref:`GLTFMesh<class_GLTFMesh>` 的索引將描述該網格的屬性。如果為 -1，則該節點不是網格。

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_property_original_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **original_name** = ``""`` :ref:`🔗<class_GLTFNode_property_original_name>`

.. rst-class:: classref-property-setget

- |void| **set_original_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_original_name**\ (\ )

節點的原名。

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_property_parent:

.. rst-class:: classref-property

:ref:`int<class_int>` **parent** = ``-1`` :ref:`🔗<class_GLTFNode_property_parent>`

.. rst-class:: classref-property-setget

- |void| **set_parent**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_parent**\ (\ )

:ref:`GLTFState<class_GLTFState>` 中父節點的索引。如果為 -1，則該節點為根節點。

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_property_position:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **position** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_GLTFNode_property_position>`

.. rst-class:: classref-property-setget

- |void| **set_position**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_position**\ (\ )

該 glTF 節點相對於其父節點的位置。

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_property_rotation:

.. rst-class:: classref-property

:ref:`Quaternion<class_Quaternion>` **rotation** = ``Quaternion(0, 0, 0, 1)`` :ref:`🔗<class_GLTFNode_property_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_rotation**\ (\ value\: :ref:`Quaternion<class_Quaternion>`\ )
- :ref:`Quaternion<class_Quaternion>` **get_rotation**\ (\ )

該 glTF 節點相對於其父節點的旋轉。

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_property_scale:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **scale** = ``Vector3(1, 1, 1)`` :ref:`🔗<class_GLTFNode_property_scale>`

.. rst-class:: classref-property-setget

- |void| **set_scale**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_scale**\ (\ )

該 glTF 節點相對於其父節點的縮放。

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_property_skeleton:

.. rst-class:: classref-property

:ref:`int<class_int>` **skeleton** = ``-1`` :ref:`🔗<class_GLTFNode_property_skeleton>`

.. rst-class:: classref-property-setget

- |void| **set_skeleton**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_skeleton**\ (\ )

如果該 glTF 節點具有骨架，則 :ref:`GLTFState<class_GLTFState>` 中的 :ref:`GLTFSkeleton<class_GLTFSkeleton>` 的索引將描述骨架的屬性。如果為 -1，則該節點沒有骨架。

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_property_skin:

.. rst-class:: classref-property

:ref:`int<class_int>` **skin** = ``-1`` :ref:`🔗<class_GLTFNode_property_skin>`

.. rst-class:: classref-property-setget

- |void| **set_skin**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_skin**\ (\ )

如果該 glTF 節點有皮膚，則 :ref:`GLTFState<class_GLTFState>` 中的 :ref:`GLTFSkin<class_GLTFSkin>` 的索引將描述皮膚的屬性。如果為 -1，則該節點沒有皮膚。

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_property_visible:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **visible** = ``true`` :ref:`🔗<class_GLTFNode_property_visible>`

.. rst-class:: classref-property-setget

- |void| **set_visible**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_visible**\ (\ )

如果為 ``true``\ ，則 GLTF 節點可見。如果 ``false``\ ，則 GLTF 節點不可見。這會被轉換為 Godot 場景中的 :ref:`Node3D.visible<class_Node3D_property_visible>` 屬性，為 ``false`` 時會匯出到 ``KHR_node_visibility``\ 。

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_property_xform:

.. rst-class:: classref-property

:ref:`Transform3D<class_Transform3D>` **xform** = ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_GLTFNode_property_xform>`

.. rst-class:: classref-property-setget

- |void| **set_xform**\ (\ value\: :ref:`Transform3D<class_Transform3D>`\ )
- :ref:`Transform3D<class_Transform3D>` **get_xform**\ (\ )

glTF 節點相對於其父節點的變換。由於通常首選位置、旋轉和縮放屬性，因此不使用該屬性。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_GLTFNode_method_append_child_index:

.. rst-class:: classref-method

|void| **append_child_index**\ (\ child_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_GLTFNode_method_append_child_index>`

將給定的子節點索引附加到 :ref:`children<class_GLTFNode_property_children>` 陣列。

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_method_get_additional_data:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_additional_data**\ (\ extension_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_GLTFNode_method_get_additional_data>`

在這個 **GLTFNode** 實例中取得額外的任意資料。這可以用來保持 :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` 類中每個節點的狀態資料，這很重要，因為它們是無狀態的。

參數應該是 :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` 的名字（不必與 glTF 檔案中的副檔名相匹配），而該回傳值可以是你設定的任何值。如果沒有設定任何值，則回傳值為 ``null``\ 。

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_method_get_scene_node_path:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_scene_node_path**\ (\ gltf_state\: :ref:`GLTFState<class_GLTFState>`, handle_skeletons\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_GLTFNode_method_get_scene_node_path>`

回傳該 GLTF 節點匯入後在 Godot 場景樹中的 :ref:`NodePath<class_NodePath>`\ 。這在使用 :ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>` 匯入 glTF 物件模型指針時非常有用，可以處理 ``KHR_animation_pointer``\ 、\ ``KHR_interactivity`` 等擴充。

如果 ``handle_skeletons`` 為 ``true``\ ，則會正確解析骨骼 glTF 節點的路徑。例如為 ``false`` 時為 ``^"A/B/C/Bone1/Bone2/Bone3"`` 的路徑在為 ``true`` 時會變成 ``^"A/B/C/Skeleton3D:Bone3"``\ 。

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_method_set_additional_data:

.. rst-class:: classref-method

|void| **set_additional_data**\ (\ extension_name\: :ref:`StringName<class_StringName>`, additional_data\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_GLTFNode_method_set_additional_data>`

在這個 **GLTFNode** 實例中設定額外的任意資料。這可以用來保持 :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` 類中每個節點的狀態資料，這很重要，因為它們是無狀態的。

第一個參數應該是 :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` 的名字（不必與 glTF 檔案中的副檔名相匹配），第二個參數可以是任何你想要的東西。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
