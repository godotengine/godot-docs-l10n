:github_url: hide

.. _class_ViewportTexture:

ViewportTexture
===============

**继承：** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

以动态纹理的形式提供 :ref:`Viewport<class_Viewport>` 的内容。

.. rst-class:: classref-introduction-group

描述
----

**ViewportTexture** 以动态 :ref:`Texture2D<class_Texture2D>` 的形式提供 :ref:`Viewport<class_Viewport>` 的内容，可以用来结合 :ref:`Control<class_Control>`\ 、\ :ref:`Node2D<class_Node2D>`\ 、\ :ref:`Node3D<class_Node3D>` 等节点的渲染。例如你可以用该纹理在 :ref:`TextureRect<class_TextureRect>` 中显示 3D 场景，也可以在 :ref:`Sprite3D<class_Sprite3D>` 中显示 2D 覆盖层。

要在代码中获取 **ViewportTexture**\ ，请在目标视口上使用 :ref:`Viewport.get_texture()<class_Viewport_method_get_texture>` 方法。

\ **注意：**\ **ViewportTexture** 始终是局部于其场景的（见 :ref:`Resource.resource_local_to_scene<class_Resource_property_resource_local_to_scene>`\ ）。如果场景根节点尚未就绪，就可能返回不正确的数据（见 :ref:`Node.ready<class_Node_signal_ready>`\ ）。

\ **注意：**\ 实例化包含高分辨率 **ViewportTexture** 的场景可能引起显著的卡顿。

\ **注意：**\ 如果使用的 :ref:`Viewport<class_Viewport>` 将 :ref:`Viewport.use_hdr_2d<class_Viewport_property_use_hdr_2d>` 设为了 ``true``\ ，则返回的纹理将是使用线性编码的 HDR 图像。这种图像在屏幕上直接显示时看上去比较暗。要将其转换为非线性 sRGB 编码，可以执行以下操作：

::

    img.convert(Image.FORMAT_RGBA8)
    img.linear_to_srgb()

\ **注意：**\ :ref:`Decal<class_Decal>`\ 、\ :ref:`Light3D<class_Light3D>`\ 、\ :ref:`PointLight2D<class_PointLight2D>` 等节点并不支持直接使用 **ViewportTexture**\ 。要在这些节点中使用 **ViewportTexture** 的纹理数据，你需要对 **ViewportTexture** 调用 :ref:`Texture2D.get_image()<class_Texture2D_method_get_image>` 获取 :ref:`ImageTexture<class_ImageTexture>`\ ，将这个结果传给 :ref:`ImageTexture.create_from_image()<class_ImageTexture_method_create_from_image>`\ 。这种转换操作比较慢，因此不应该每帧都执行。

.. rst-class:: classref-introduction-group

教程
----

- `3D 视口中的 GUI 演示 <https://godotengine.org/asset-library/asset/2807>`__

- `2D 视口中的 3D 演示 <https://godotengine.org/asset-library/asset/2804>`__

- `3D 视口中的 2D 演示 <https://godotengine.org/asset-library/asset/2803>`__

- `3D 分辨率缩放演示 <https://godotengine.org/asset-library/asset/2805>`__

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------------+--------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`viewport_path<class_ViewportTexture_property_viewport_path>` | ``NodePath("")`` |
   +---------------------------------+--------------------------------------------------------------------+------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_ViewportTexture_property_viewport_path:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **viewport_path** = ``NodePath("")`` :ref:`🔗<class_ViewportTexture_property_viewport_path>`

.. rst-class:: classref-property-setget

- |void| **set_viewport_path_in_scene**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_viewport_path_in_scene**\ (\ )

要显示的 :ref:`Viewport<class_Viewport>` 节点的路径。相对于本地场景的根节点（见 :ref:`Resource.get_local_scene()<class_Resource_method_get_local_scene>`\ ），\ **并非**\ 相对于使用该纹理的节点。

\ **注意：**\ 在编辑器中，目标视口或其祖级节点发生重命名或移动时会自动更新这个路径。在运行时，该路径可能无法自动更新，因为无法确定场景的根节点。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
