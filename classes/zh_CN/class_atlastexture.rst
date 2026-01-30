:github_url: hide

.. _class_AtlasTexture:

AtlasTexture
============

**继承：** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

裁剪其他 Texture2D 的纹理。

.. rst-class:: classref-introduction-group

描述
----

:ref:`Texture2D<class_Texture2D>` 资源，只绘制 :ref:`atlas<class_AtlasTexture_property_atlas>` 纹理中由 :ref:`region<class_AtlasTexture_property_region>` 所定义的那部分区域。还可以设置额外的边距 :ref:`margin<class_AtlasTexture_property_margin>`\ ，适用于进行较小的调整。

可以从同一个 :ref:`atlas<class_AtlasTexture_property_atlas>` 中裁剪出多个 **AtlasTexture** 资源。将许多较小的纹理打包成一个单一的大纹理有助于优化视频内存成本和渲染调用。

\ **注意：**\ **AtlasTexture** 不能在 :ref:`AnimatedTexture<class_AnimatedTexture>` 中使用，也无法在 :ref:`TextureRect<class_TextureRect>`\ 、\ :ref:`Sprite2D<class_Sprite2D>` 等节点中正确平铺。要平铺 **AtlasTexture** 请修改 :ref:`region<class_AtlasTexture_property_region>`\ 。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------------+-------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`atlas<class_AtlasTexture_property_atlas>`             |                                                                                        |
   +-----------------------------------+-------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`filter_clip<class_AtlasTexture_property_filter_clip>` | ``false``                                                                              |
   +-----------------------------------+-------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`         | :ref:`margin<class_AtlasTexture_property_margin>`           | ``Rect2(0, 0, 0, 0)``                                                                  |
   +-----------------------------------+-------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`         | :ref:`region<class_AtlasTexture_property_region>`           | ``Rect2(0, 0, 0, 0)``                                                                  |
   +-----------------------------------+-------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | resource_local_to_scene                                     | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +-----------------------------------+-------------------------------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_AtlasTexture_property_atlas:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **atlas** :ref:`🔗<class_AtlasTexture_property_atlas>`

.. rst-class:: classref-property-setget

- |void| **set_atlas**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_atlas**\ (\ )

包含该图集的纹理。可以是任何继承自 :ref:`Texture2D<class_Texture2D>` 的类型，包括其他 **AtlasTexture**\ 。

.. rst-class:: classref-item-separator

----

.. _class_AtlasTexture_property_filter_clip:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **filter_clip** = ``false`` :ref:`🔗<class_AtlasTexture_property_filter_clip>`

.. rst-class:: classref-property-setget

- |void| **set_filter_clip**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **has_filter_clip**\ (\ )

如果为 ``true``\ ，则 :ref:`region<class_AtlasTexture_property_region>` 之外的区域将被裁剪以避免周围纹理像素的渗色。

.. rst-class:: classref-item-separator

----

.. _class_AtlasTexture_property_margin:

.. rst-class:: classref-property

:ref:`Rect2<class_Rect2>` **margin** = ``Rect2(0, 0, 0, 0)`` :ref:`🔗<class_AtlasTexture_property_margin>`

.. rst-class:: classref-property-setget

- |void| **set_margin**\ (\ value\: :ref:`Rect2<class_Rect2>`\ )
- :ref:`Rect2<class_Rect2>` **get_margin**\ (\ )

围绕 :ref:`region<class_AtlasTexture_property_region>` 的边距。对小的调整很有用。如果设置了该属性（编辑器中的“w”和“h”）的 :ref:`Rect2.size<class_Rect2_property_size>`\ ，则绘制的纹理将被调整大小以适合该边距。

.. rst-class:: classref-item-separator

----

.. _class_AtlasTexture_property_region:

.. rst-class:: classref-property

:ref:`Rect2<class_Rect2>` **region** = ``Rect2(0, 0, 0, 0)`` :ref:`🔗<class_AtlasTexture_property_region>`

.. rst-class:: classref-property-setget

- |void| **set_region**\ (\ value\: :ref:`Rect2<class_Rect2>`\ )
- :ref:`Rect2<class_Rect2>` **get_region**\ (\ )

用于绘制 :ref:`atlas<class_AtlasTexture_property_atlas>` 的区域。如果区域在任一方向上大小为 ``0``\ ，则该方向会使用 :ref:`atlas<class_AtlasTexture_property_atlas>` 的大小。

\ **注意：**\ 图片大小总是整数，所以实际的区域大小会被向下取整。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
