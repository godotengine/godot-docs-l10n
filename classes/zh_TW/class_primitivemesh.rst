:github_url: hide

.. _class_PrimitiveMesh:

PrimitiveMesh
=============

**繼承：** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`BoxMesh<class_BoxMesh>`, :ref:`CapsuleMesh<class_CapsuleMesh>`, :ref:`CylinderMesh<class_CylinderMesh>`, :ref:`PlaneMesh<class_PlaneMesh>`, :ref:`PointMesh<class_PointMesh>`, :ref:`PrismMesh<class_PrismMesh>`, :ref:`RibbonTrailMesh<class_RibbonTrailMesh>`, :ref:`SphereMesh<class_SphereMesh>`, :ref:`TextMesh<class_TextMesh>`, :ref:`TorusMesh<class_TorusMesh>`, :ref:`TubeTrailMesh<class_TubeTrailMesh>`

所有圖元網格的基底類別。處理將 :ref:`Material<class_Material>` 套用到圖元網格的問題。

.. rst-class:: classref-introduction-group

說明
----

所有基本網格的基底類別，能夠處理將 :ref:`Material<class_Material>` 套用到基本網格的操作。有 :ref:`BoxMesh<class_BoxMesh>`\ 、\ :ref:`CapsuleMesh<class_CapsuleMesh>`\ 、\ :ref:`CylinderMesh<class_CylinderMesh>`\ 、\ :ref:`PlaneMesh<class_PlaneMesh>`\ 、\ :ref:`PrismMesh<class_PrismMesh>`\ 、\ :ref:`SphereMesh<class_SphereMesh>` 等基本網格。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------------+--------------------------------------------------------------+----------------------------+
   | :ref:`bool<class_bool>`         | :ref:`add_uv2<class_PrimitiveMesh_property_add_uv2>`         | ``false``                  |
   +---------------------------------+--------------------------------------------------------------+----------------------------+
   | :ref:`AABB<class_AABB>`         | :ref:`custom_aabb<class_PrimitiveMesh_property_custom_aabb>` | ``AABB(0, 0, 0, 0, 0, 0)`` |
   +---------------------------------+--------------------------------------------------------------+----------------------------+
   | :ref:`bool<class_bool>`         | :ref:`flip_faces<class_PrimitiveMesh_property_flip_faces>`   | ``false``                  |
   +---------------------------------+--------------------------------------------------------------+----------------------------+
   | :ref:`Material<class_Material>` | :ref:`material<class_PrimitiveMesh_property_material>`       |                            |
   +---------------------------------+--------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`       | :ref:`uv2_padding<class_PrimitiveMesh_property_uv2_padding>` | ``2.0``                    |
   +---------------------------------+--------------------------------------------------------------+----------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>` | :ref:`_create_mesh_array<class_PrimitiveMesh_private_method__create_mesh_array>`\ (\ ) |virtual| |const| |
   +---------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>` | :ref:`get_mesh_arrays<class_PrimitiveMesh_method_get_mesh_arrays>`\ (\ ) |const|                         |
   +---------------------------+----------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`request_update<class_PrimitiveMesh_method_request_update>`\ (\ )                                   |
   +---------------------------+----------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_PrimitiveMesh_property_add_uv2:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **add_uv2** = ``false`` :ref:`🔗<class_PrimitiveMesh_property_add_uv2>`

.. rst-class:: classref-property-setget

- |void| **set_add_uv2**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_add_uv2**\ (\ )

打開後將生成 UV2 UV 座標，使用 :ref:`uv2_padding<class_PrimitiveMesh_property_uv2_padding>` 設定的間距。光照對應需要 UV2。

.. rst-class:: classref-item-separator

----

.. _class_PrimitiveMesh_property_custom_aabb:

.. rst-class:: classref-property

:ref:`AABB<class_AABB>` **custom_aabb** = ``AABB(0, 0, 0, 0, 0, 0)`` :ref:`🔗<class_PrimitiveMesh_property_custom_aabb>`

.. rst-class:: classref-property-setget

- |void| **set_custom_aabb**\ (\ value\: :ref:`AABB<class_AABB>`\ )
- :ref:`AABB<class_AABB>` **get_custom_aabb**\ (\ )

使用使用者自訂的 :ref:`AABB<class_AABB>` 取代預設值，供視錐剔除使用。當著色器會偏移頂點時，可避免被意外剔除。

.. rst-class:: classref-item-separator

----

.. _class_PrimitiveMesh_property_flip_faces:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_faces** = ``false`` :ref:`🔗<class_PrimitiveMesh_property_flip_faces>`

.. rst-class:: classref-property-setget

- |void| **set_flip_faces**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flip_faces**\ (\ )

如果為 ``true``\ ，則會顛倒各個三角形中頂點的順序，導致繪製網格的背面。

和在 :ref:`BaseMaterial3D.cull_mode<class_BaseMaterial3D_property_cull_mode>` 中使用 :ref:`BaseMaterial3D.CULL_FRONT<class_BaseMaterial3D_constant_CULL_FRONT>` 的效果一致。

.. rst-class:: classref-item-separator

----

.. _class_PrimitiveMesh_property_material:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **material** :ref:`🔗<class_PrimitiveMesh_property_material>`

.. rst-class:: classref-property-setget

- |void| **set_material**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_material**\ (\ )

該圖元網格的目前 :ref:`Material<class_Material>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PrimitiveMesh_property_uv2_padding:

.. rst-class:: classref-property

:ref:`float<class_float>` **uv2_padding** = ``2.0`` :ref:`🔗<class_PrimitiveMesh_property_uv2_padding>`

.. rst-class:: classref-property-setget

- |void| **set_uv2_padding**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_uv2_padding**\ (\ )

如果設定了 :ref:`add_uv2<class_PrimitiveMesh_property_add_uv2>`\ ，則指定沿網格接縫被套用的以圖元為單位的填充。較低的填充值允許更好地利用光照貼圖紋理（導致更高的紋素密度），但可能會沿邊緣引入可見的光照貼圖滲色。

如果在生成網格時無法確定光照貼圖紋理的大小，則計算 UV2 時假定紋理大小為 1024x1024。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_PrimitiveMesh_private_method__create_mesh_array:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **_create_mesh_array**\ (\ ) |virtual| |const| :ref:`🔗<class_PrimitiveMesh_private_method__create_mesh_array>`

覆寫該方法以自訂應如何生成該基本網格。應該回傳一個 :ref:`Array<class_Array>`\ ，其中每個元素都是該網格所需的另一個值陣列（請參閱 :ref:`ArrayType<enum_Mesh_ArrayType>` 常數）。

.. rst-class:: classref-item-separator

----

.. _class_PrimitiveMesh_method_get_mesh_arrays:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_mesh_arrays**\ (\ ) |const| :ref:`🔗<class_PrimitiveMesh_method_get_mesh_arrays>`

回傳用於構成圖元網格表面的網格陣列。

\ **範例：**\ 將結果可以傳遞給 :ref:`ArrayMesh.add_surface_from_arrays()<class_ArrayMesh_method_add_surface_from_arrays>` 建立新的表面：


.. tabs::

 .. code-tab:: gdscript

    var c = CylinderMesh.new()
    var arr_mesh = ArrayMesh.new()
    arr_mesh.add_surface_from_arrays(Mesh.PRIMITIVE_TRIANGLES, c.get_mesh_arrays())

 .. code-tab:: csharp

    var c = new CylinderMesh();
    var arrMesh = new ArrayMesh();
    arrMesh.AddSurfaceFromArrays(Mesh.PrimitiveType.Triangles, c.GetMeshArrays());



.. rst-class:: classref-item-separator

----

.. _class_PrimitiveMesh_method_request_update:

.. rst-class:: classref-method

|void| **request_update**\ (\ ) :ref:`🔗<class_PrimitiveMesh_method_request_update>`

請求根據其屬性更新該基本網格。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
