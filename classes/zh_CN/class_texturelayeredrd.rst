:github_url: hide

.. _class_TextureLayeredRD:

TextureLayeredRD
================

**继承：** :ref:`TextureLayered<class_TextureLayered>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`Texture2DArrayRD<class_Texture2DArrayRD>`, :ref:`TextureCubemapArrayRD<class_TextureCubemapArrayRD>`, :ref:`TextureCubemapRD<class_TextureCubemapRD>`

分层纹理 RD 类型的抽象基类。

.. rst-class:: classref-introduction-group

描述
----

Base class for :ref:`Texture2DArrayRD<class_Texture2DArrayRD>`, :ref:`TextureCubemapRD<class_TextureCubemapRD>` and :ref:`TextureCubemapArrayRD<class_TextureCubemapArrayRD>`. Cannot be used directly, but contains all the functions necessary for accessing the derived resource types.

\ **Note:** **TextureLayeredRD** is intended for low-level usage with :ref:`RenderingDevice<class_RenderingDevice>`. For most use cases, use :ref:`TextureLayered<class_TextureLayered>` instead.

.. rst-class:: classref-introduction-group

教程
----

- `Compute Texture demo <https://godotengine.org/asset-library/asset/2764>`__

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------+-----------------------------------------------------------------------+
   | :ref:`RID<class_RID>` | :ref:`texture_rd_rid<class_TextureLayeredRD_property_texture_rd_rid>` |
   +-----------------------+-----------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_TextureLayeredRD_property_texture_rd_rid:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **texture_rd_rid** :ref:`🔗<class_TextureLayeredRD_property_texture_rd_rid>`

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
