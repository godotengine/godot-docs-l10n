:github_url: hide

.. _class_MeshInstance2D:

MeshInstance2D
==============

**继承：** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

用于在 2D 中显示 :ref:`Mesh<class_Mesh>` 的节点。

.. rst-class:: classref-introduction-group

描述
----

Node used for displaying a :ref:`Mesh<class_Mesh>` in 2D. This can be faster to render compared to displaying a :ref:`Sprite2D<class_Sprite2D>` node with large transparent areas, especially if the node takes up a lot of space on screen at high viewport resolutions. This is because using a mesh designed to fit the sprite's opaque areas will reduce GPU fill rate utilization (at the cost of increased vertex processing utilization).

When a :ref:`Mesh<class_Mesh>` has to be instantiated more than thousands of times close to each other, consider using a :ref:`MultiMesh<class_MultiMesh>` in a :ref:`MultiMeshInstance2D<class_MultiMeshInstance2D>` instead.

A **MeshInstance2D** can be created from an existing :ref:`Sprite2D<class_Sprite2D>` via a tool in the editor toolbar. Select the :ref:`Sprite2D<class_Sprite2D>` node, then choose **Sprite2D > Convert to MeshInstance2D** at the top of the 2D editor viewport.

.. rst-class:: classref-introduction-group

教程
----

- :doc:`2D 网格 <../tutorials/2d/2d_meshes>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------------+-------------------------------------------------------+
   | :ref:`Mesh<class_Mesh>`           | :ref:`mesh<class_MeshInstance2D_property_mesh>`       |
   +-----------------------------------+-------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`texture<class_MeshInstance2D_property_texture>` |
   +-----------------------------------+-------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

信号
----

.. _class_MeshInstance2D_signal_texture_changed:

.. rst-class:: classref-signal

**texture_changed**\ (\ ) :ref:`🔗<class_MeshInstance2D_signal_texture_changed>`

当 :ref:`texture<class_MeshInstance2D_property_texture>` 被改变时触发。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_MeshInstance2D_property_mesh:

.. rst-class:: classref-property

:ref:`Mesh<class_Mesh>` **mesh** :ref:`🔗<class_MeshInstance2D_property_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_mesh**\ (\ value\: :ref:`Mesh<class_Mesh>`\ )
- :ref:`Mesh<class_Mesh>` **get_mesh**\ (\ )

该 **MeshInstance2D** 绘制的 :ref:`Mesh<class_Mesh>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance2D_property_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture** :ref:`🔗<class_MeshInstance2D_property_texture>`

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
