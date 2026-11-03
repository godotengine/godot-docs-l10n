:github_url: hide

.. _class_ViewportTexture:

ViewportTexture
===============

**繼承：** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

以動態紋理的形式提供 :ref:`Viewport<class_Viewport>` 的內容。

.. rst-class:: classref-introduction-group

說明
----

**ViewportTexture** 以動態 :ref:`Texture2D<class_Texture2D>` 的形式提供 :ref:`Viewport<class_Viewport>` 的內容，可以用來結合 :ref:`Control<class_Control>`\ 、\ :ref:`Node2D<class_Node2D>`\ 、\ :ref:`Node3D<class_Node3D>` 等節點的渲染。例如你可以用該紋理在 :ref:`TextureRect<class_TextureRect>` 中顯示 3D 場景，也可以在 :ref:`Sprite3D<class_Sprite3D>` 中顯示 2D 覆蓋層。

要在程式碼中取得 **ViewportTexture**\ ，請在目標視埠上使用 :ref:`Viewport.get_texture()<class_Viewport_method_get_texture>` 方法。

\ **注意：**\ **ViewportTexture** 始終是區域於其場景的（見 :ref:`Resource.resource_local_to_scene<class_Resource_property_resource_local_to_scene>`\ ）。如果場景根節點尚未就緒，就可能回傳不正確的資料（見 :ref:`Node.ready<class_Node_signal_ready>`\ ）。

\ **注意：**\ 實例化包含高解析度 **ViewportTexture** 的場景可能引起顯著的卡頓。

\ **注意：**\ 如果使用的 :ref:`Viewport<class_Viewport>` 將 :ref:`Viewport.use_hdr_2d<class_Viewport_property_use_hdr_2d>` 設為了 ``true``\ ，則回傳的紋理將是使用線性編碼的 HDR 影像。這種影像在螢幕上直接顯示時看上去比較暗。要將其轉換為非線性 sRGB 編碼，可以執行以下操作：

::

    img.convert(Image.FORMAT_RGBA8)
    img.linear_to_srgb()

\ **注意：**\ :ref:`Decal<class_Decal>`\ 、\ :ref:`Light3D<class_Light3D>`\ 、\ :ref:`PointLight2D<class_PointLight2D>` 等節點並不支援直接使用 **ViewportTexture**\ 。要在這些節點中使用 **ViewportTexture** 的紋理資料，你需要對 **ViewportTexture** 呼叫 :ref:`Texture2D.get_image()<class_Texture2D_method_get_image>` 取得 :ref:`ImageTexture<class_ImageTexture>`\ ，將這個結果傳給 :ref:`ImageTexture.create_from_image()<class_ImageTexture_method_create_from_image>`\ 。這種轉換操作比較慢，因此不應該每影格都執行。

.. rst-class:: classref-introduction-group

教學
----

- `3D 檢視埠 GUI 範例 <https://godotengine.org/asset-library/asset/2807>`__

- `2D 視埠中的 3D 演示 <https://godotengine.org/asset-library/asset/2804>`__

- `3D 視埠中的 2D 演示 <https://godotengine.org/asset-library/asset/2803>`__

- `3D 解析度縮放演示 <https://godotengine.org/asset-library/asset/2805>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------------+--------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`viewport_path<class_ViewportTexture_property_viewport_path>` | ``NodePath("")`` |
   +---------------------------------+--------------------------------------------------------------------+------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_ViewportTexture_property_viewport_path:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **viewport_path** = ``NodePath("")`` :ref:`🔗<class_ViewportTexture_property_viewport_path>`

.. rst-class:: classref-property-setget

- |void| **set_viewport_path_in_scene**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_viewport_path_in_scene**\ (\ )

要顯示的 :ref:`Viewport<class_Viewport>` 節點的路徑。相對於本機場景的根節點（見 :ref:`Resource.get_local_scene()<class_Resource_method_get_local_scene>`\ ），\ **並非**\ 相對於使用該紋理的節點。

\ **注意：**\ 在編輯器中，目標視埠或其祖級節點發生重新命名或移動時會自動更新這個路徑。在執行時，該路徑可能無法自動更新，因為無法確定場景的根節點。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
