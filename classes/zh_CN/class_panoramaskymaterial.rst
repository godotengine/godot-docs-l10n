:github_url: hide

.. _class_PanoramaSkyMaterial:

PanoramaSkyMaterial
===================

**继承：** :ref:`Material<class_Material>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

为 :ref:`Sky<class_Sky>` 提供特殊纹理的材质，通常是 HDR 全景图。

.. rst-class:: classref-introduction-group

描述
----

在 :ref:`Sky<class_Sky>` 中引用的用于绘制背景的资源。\ **PanoramaSkyMaterial** 的功能类似于其他引擎的天空盒，区别在于它使用的是等距圆柱投影的天空贴图而不是 :ref:`Cubemap<class_Cubemap>`\ 。

强烈建议使用 HDR 全景图，能够得到准确、高质量的反射。为此，Godot 支持 Radiance HDR（\ ``.hdr``\ ）和 OpenEXR（\ ``.exr``\ ）图像格式。

你可以使用\ `这个工具 <https://danilw.github.io/GLSL-howto/cubemap_to_panorama_js/cubemap_to_panorama.html>`__\ 将立方体贴图转换为等距圆柱投影的天空贴图。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------------+--------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>`         | :ref:`energy_multiplier<class_PanoramaSkyMaterial_property_energy_multiplier>` | ``1.0``  |
   +-----------------------------------+--------------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`           | :ref:`filter<class_PanoramaSkyMaterial_property_filter>`                       | ``true`` |
   +-----------------------------------+--------------------------------------------------------------------------------+----------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`panorama<class_PanoramaSkyMaterial_property_panorama>`                   |          |
   +-----------------------------------+--------------------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_PanoramaSkyMaterial_property_energy_multiplier:

.. rst-class:: classref-property

:ref:`float<class_float>` **energy_multiplier** = ``1.0`` :ref:`🔗<class_PanoramaSkyMaterial_property_energy_multiplier>`

.. rst-class:: classref-property-setget

- |void| **set_energy_multiplier**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_energy_multiplier**\ (\ )

天空整体亮度的乘数。数值越高，天空就越亮。

.. rst-class:: classref-item-separator

----

.. _class_PanoramaSkyMaterial_property_filter:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **filter** = ``true`` :ref:`🔗<class_PanoramaSkyMaterial_property_filter>`

.. rst-class:: classref-property-setget

- |void| **set_filtering_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_filtering_enabled**\ (\ )

布尔值，用于确定背景纹理是否应被过滤。

.. rst-class:: classref-item-separator

----

.. _class_PanoramaSkyMaterial_property_panorama:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **panorama** :ref:`🔗<class_PanoramaSkyMaterial_property_panorama>`

.. rst-class:: classref-property-setget

- |void| **set_panorama**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_panorama**\ (\ )

应用于该 **PanoramaSkyMaterial** 的 :ref:`Texture2D<class_Texture2D>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
