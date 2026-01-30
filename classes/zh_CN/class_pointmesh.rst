:github_url: hide

.. _class_PointMesh:

PointMesh
=========

**继承：** :ref:`PrimitiveMesh<class_PrimitiveMesh>` **<** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

单点图元网格。

.. rst-class:: classref-introduction-group

描述
----

**PointMesh** 由一个点构成的基本网格。这个点不依赖于三角形，而是作为屏幕上的一个矩形来渲染，大小是固定的。旨在用于粒子系统，但也可以作为固定大小公告板精灵的轻量级渲染方法（例如在点云中使用）。

为了显示，单点网格必须使用具有点大小的材质。点的大小可以在着色器中通过内置的 ``POINT_SIZE`` 访问，也可以在 :ref:`BaseMaterial3D<class_BaseMaterial3D>` 中设置 :ref:`BaseMaterial3D.use_point_size<class_BaseMaterial3D_property_use_point_size>` 并通过变量 :ref:`BaseMaterial3D.point_size<class_BaseMaterial3D_property_point_size>` 访问。

\ **注意：**\ 使用单点网格时，会忽略平时能够影响顶点的属性，包括 :ref:`BaseMaterial3D.billboard_mode<class_BaseMaterial3D_property_billboard_mode>`\ 、\ :ref:`BaseMaterial3D.grow<class_BaseMaterial3D_property_grow>`\ 、\ :ref:`BaseMaterial3D.cull_mode<class_BaseMaterial3D_property_cull_mode>` 等。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
