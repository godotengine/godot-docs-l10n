:github_url: hide

.. _class_PlaceholderMesh:

PlaceholderMesh
===============

**继承：** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

网格的占位类。

.. rst-class:: classref-introduction-group

描述
----

加载使用 :ref:`Mesh<class_Mesh>` 子类的项目时，使用这个类的情况有两种：

- 运行使用专用服务器模式导出的项目，仅保留纹理的尺寸（因为游戏逻辑可能依赖纹理的尺寸，可能用来定位其他元素）。这样能够显著减小导出的 PCK 的大小。

- 由于引擎版本或构建不同而缺失这个子类（例如禁用了某些模块）。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------+----------------------------+
   | :ref:`AABB<class_AABB>` | :ref:`aabb<class_PlaceholderMesh_property_aabb>` | ``AABB(0, 0, 0, 0, 0, 0)`` |
   +-------------------------+--------------------------------------------------+----------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_PlaceholderMesh_property_aabb:

.. rst-class:: classref-property

:ref:`AABB<class_AABB>` **aabb** = ``AABB(0, 0, 0, 0, 0, 0)`` :ref:`🔗<class_PlaceholderMesh_property_aabb>`

.. rst-class:: classref-property-setget

- |void| **set_aabb**\ (\ value\: :ref:`AABB<class_AABB>`\ )
- :ref:`AABB<class_AABB>` **get_aabb**\ (\ )

局部空间中，包含这个网格的最小 :ref:`AABB<class_AABB>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
