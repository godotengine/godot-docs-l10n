:github_url: hide

.. _class_MeshTexture:

MeshTexture
===========

**继承：** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

简单的纹理，使用一个网格来绘制自己。

.. rst-class:: classref-introduction-group

描述
----

简单的纹理，使用一个网格来绘制自己。它的应用场景有限，因为 Flag 不能更改，而且不支持区域绘制。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`base_texture<class_MeshTexture_property_base_texture>` |                                                                                        |
   +-----------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`     | :ref:`image_size<class_MeshTexture_property_image_size>`     | ``Vector2(0, 0)``                                                                      |
   +-----------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Mesh<class_Mesh>`           | :ref:`mesh<class_MeshTexture_property_mesh>`                 |                                                                                        |
   +-----------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | resource_local_to_scene                                      | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +-----------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_MeshTexture_property_base_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **base_texture** :ref:`🔗<class_MeshTexture_property_base_texture>`

.. rst-class:: classref-property-setget

- |void| **set_base_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_base_texture**\ (\ )

设置该 Mesh 用来绘制的基础纹理。

.. rst-class:: classref-item-separator

----

.. _class_MeshTexture_property_image_size:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **image_size** = ``Vector2(0, 0)`` :ref:`🔗<class_MeshTexture_property_image_size>`

.. rst-class:: classref-property-setget

- |void| **set_image_size**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_image_size**\ (\ )

设置图像的大小，需要参考。

.. rst-class:: classref-item-separator

----

.. _class_MeshTexture_property_mesh:

.. rst-class:: classref-property

:ref:`Mesh<class_Mesh>` **mesh** :ref:`🔗<class_MeshTexture_property_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_mesh**\ (\ value\: :ref:`Mesh<class_Mesh>`\ )
- :ref:`Mesh<class_Mesh>` **get_mesh**\ (\ )

设置用于绘制的网格，该网格必须使用 2D 顶点。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
