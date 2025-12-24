:github_url: hide

.. _class_ViewportTexture:

ViewportTexture
===============

**繼承：** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

以動態紋理的形式提供 :ref:`Viewport<class_Viewport>` 的內容。

.. rst-class:: classref-introduction-group

說明
----

A **ViewportTexture** provides the content of a :ref:`Viewport<class_Viewport>` as a dynamic :ref:`Texture2D<class_Texture2D>`. This can be used to combine the rendering of :ref:`Control<class_Control>`, :ref:`Node2D<class_Node2D>` and :ref:`Node3D<class_Node3D>` nodes. For example, you can use this texture to display a 3D scene inside a :ref:`TextureRect<class_TextureRect>`, or a 2D overlay in a :ref:`Sprite3D<class_Sprite3D>`.

To get a **ViewportTexture** in code, use the :ref:`Viewport.get_texture()<class_Viewport_method_get_texture>` method on the target viewport.

\ **Note:** A **ViewportTexture** is always local to its scene (see :ref:`Resource.resource_local_to_scene<class_Resource_property_resource_local_to_scene>`). If the scene root is not ready, it may return incorrect data (see :ref:`Node.ready<class_Node_signal_ready>`).

\ **Note:** Instantiating scenes containing a high-resolution **ViewportTexture** may cause noticeable stutter.

\ **Note:** When using a :ref:`Viewport<class_Viewport>` with :ref:`Viewport.use_hdr_2d<class_Viewport_property_use_hdr_2d>` set to ``true``, the returned texture will be an HDR image encoded in linear space. This may look darker than normal when displayed directly on screen. To convert to gamma space, you can do the following:

::

    img.convert(Image.FORMAT_RGBA8)
    imb.linear_to_srgb()

\ **Note:** Some nodes such as :ref:`Decal<class_Decal>`, :ref:`Light3D<class_Light3D>`, and :ref:`PointLight2D<class_PointLight2D>` do not support using **ViewportTexture** directly. To use texture data from a **ViewportTexture** in these nodes, you need to create an :ref:`ImageTexture<class_ImageTexture>` by calling :ref:`Texture2D.get_image()<class_Texture2D_method_get_image>` on the **ViewportTexture** and passing the result to :ref:`ImageTexture.create_from_image()<class_ImageTexture_method_create_from_image>`. This conversion is a slow operation, so it should not be performed every frame.

.. rst-class:: classref-introduction-group

教學
----

- `3D 檢視埠 GUI 範例 <https://godotengine.org/asset-library/asset/2807>`__

- `3D in 2D Viewport Demo <https://godotengine.org/asset-library/asset/2804>`__

- `2D in 3D Viewport Demo <https://godotengine.org/asset-library/asset/2803>`__

- `3D Resolution Scaling Demo <https://godotengine.org/asset-library/asset/2805>`__

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

The path to the :ref:`Viewport<class_Viewport>` node to display. This is relative to the local scene root (see :ref:`Resource.get_local_scene()<class_Resource_method_get_local_scene>`), **not** to the nodes that use this texture.

\ **Note:** In the editor, this path is automatically updated when the target viewport or one of its ancestors is renamed or moved. At runtime, this path may not automatically update if the scene root cannot be found.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
