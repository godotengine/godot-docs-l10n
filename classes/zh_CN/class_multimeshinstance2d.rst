:github_url: hide

.. meta::
	:keywords: batch

.. _class_MultiMeshInstance2D:

MultiMeshInstance2D
===================

**继承：** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

在 2D 中实例化 :ref:`MultiMesh<class_MultiMesh>` 的节点。

.. rst-class:: classref-introduction-group

描述
----

**MultiMeshInstance2D** 是一个专门用于在 2D 中实例化 :ref:`MultiMesh<class_MultiMesh>` 资源的节点。与显示许多带有大面积透明区域的 :ref:`Sprite2D<class_Sprite2D>` 节点相比，这种方法渲染速度更快，尤其是在视口分辨率较高且节点占据屏幕较大空间的情况下。这是因为使用专为适合精灵不透明区域而设计的网格可以降低 GPU 填充率（但会增加顶点处理的开销）。

其用法与 :ref:`MultiMeshInstance3D<class_MultiMeshInstance3D>` 相同。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------------+----------------------------------------------------------------+
   | :ref:`MultiMesh<class_MultiMesh>` | :ref:`multimesh<class_MultiMeshInstance2D_property_multimesh>` |
   +-----------------------------------+----------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`texture<class_MultiMeshInstance2D_property_texture>`     |
   +-----------------------------------+----------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

信号
----

.. _class_MultiMeshInstance2D_signal_texture_changed:

.. rst-class:: classref-signal

**texture_changed**\ (\ ) :ref:`🔗<class_MultiMeshInstance2D_signal_texture_changed>`

当 :ref:`texture<class_MultiMeshInstance2D_property_texture>` 被改变时触发。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_MultiMeshInstance2D_property_multimesh:

.. rst-class:: classref-property

:ref:`MultiMesh<class_MultiMesh>` **multimesh** :ref:`🔗<class_MultiMeshInstance2D_property_multimesh>`

.. rst-class:: classref-property-setget

- |void| **set_multimesh**\ (\ value\: :ref:`MultiMesh<class_MultiMesh>`\ )
- :ref:`MultiMesh<class_MultiMesh>` **get_multimesh**\ (\ )

将由 **MultiMeshInstance2D** 绘制的 :ref:`MultiMesh<class_MultiMesh>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_MultiMeshInstance2D_property_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture** :ref:`🔗<class_MultiMeshInstance2D_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ )

使用默认 :ref:`CanvasItemMaterial<class_CanvasItemMaterial>` 时，将使用的 :ref:`Texture2D<class_Texture2D>`\ 。可以在 CanvasItem 着色器中作为 ``TEXTURE`` 访问。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
