:github_url: hide

.. _class_Texture3DRD:

Texture3DRD
===========

**继承：** :ref:`Texture3D<class_Texture3D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

被绑定到在 :ref:`RenderingDevice<class_RenderingDevice>` 上创建的纹理的 3D 的纹理。

.. rst-class:: classref-introduction-group

描述
----

该纹理类允许你使用直接在 :ref:`RenderingDevice<class_RenderingDevice>` 上创建的 3D 纹理作为材质、网格等的纹理。

\ **注意：**\ **Texture3DRD** 旨在用于 :ref:`RenderingDevice<class_RenderingDevice>` 的底层操作。对于大多数用例，请改用 :ref:`Texture3D<class_Texture3D>`\ 。

.. rst-class:: classref-introduction-group

教程
----

- `计算纹理演示 <https://godotengine.org/asset-library/asset/2764>`__

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------+------------------------------------------------------------------+
   | :ref:`RID<class_RID>` | :ref:`texture_rd_rid<class_Texture3DRD_property_texture_rd_rid>` |
   +-----------------------+------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_Texture3DRD_property_texture_rd_rid:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **texture_rd_rid** :ref:`🔗<class_Texture3DRD_property_texture_rd_rid>`

.. rst-class:: classref-property-setget

- |void| **set_texture_rd_rid**\ (\ value\: :ref:`RID<class_RID>`\ )
- :ref:`RID<class_RID>` **get_texture_rd_rid**\ (\ )

:ref:`RenderingDevice<class_RenderingDevice>` 上创建的纹理对象的 RID。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
