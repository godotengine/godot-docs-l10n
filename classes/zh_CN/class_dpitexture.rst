:github_url: hide

.. _class_DPITexture:

DPITexture
==========

**实验性：** This class may be changed or removed in future versions.

**继承：** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

可自动缩放的 :ref:`Texture2D<class_Texture2D>`\ ，基于 SVG 图像。

.. rst-class:: classref-introduction-group

描述
----

可自动缩放的 :ref:`Texture2D<class_Texture2D>`\ ，基于 SVG 图像。\ **DPITexture** 可以对图标及其他基于纹理的 UI 主题元素自动重新进行栅格化，从而匹配视口的缩放和字体过采样设置。另见 :ref:`ProjectSettings.display/window/stretch/mode<class_ProjectSettings_property_display/window/stretch/mode>`\ （“canvas_items”模式）和 :ref:`Viewport.oversampling_override<class_Viewport_property_oversampling_override>`\ 。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------------+---------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`base_scale<class_DPITexture_property_base_scale>` | ``1.0``                                                                                |
   +-------------------------------------+---------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`color_map<class_DPITexture_property_color_map>`   | ``{}``                                                                                 |
   +-------------------------------------+---------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | resource_local_to_scene                                 | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +-------------------------------------+---------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`saturation<class_DPITexture_property_saturation>` | ``1.0``                                                                                |
   +-------------------------------------+---------------------------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`DPITexture<class_DPITexture>` | :ref:`create_from_string<class_DPITexture_method_create_from_string>`\ (\ source\: :ref:`String<class_String>`, scale\: :ref:`float<class_float>` = 1.0, saturation\: :ref:`float<class_float>` = 1.0, color_map\: :ref:`Dictionary<class_Dictionary>` = {}\ ) |static| |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`               | :ref:`get_scaled_rid<class_DPITexture_method_get_scaled_rid>`\ (\ ) |const|                                                                                                                                                                                             |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`         | :ref:`get_source<class_DPITexture_method_get_source>`\ (\ ) |const|                                                                                                                                                                                                     |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`set_size_override<class_DPITexture_method_set_size_override>`\ (\ size\: :ref:`Vector2i<class_Vector2i>`\ )                                                                                                                                                       |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`set_source<class_DPITexture_method_set_source>`\ (\ source\: :ref:`String<class_String>`\ )                                                                                                                                                                       |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_DPITexture_property_base_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **base_scale** = ``1.0`` :ref:`🔗<class_DPITexture_property_base_scale>`

.. rst-class:: classref-property-setget

- |void| **set_base_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_base_scale**\ (\ )

纹理缩放。\ ``1.0`` 是原始 SVG 大小。值越大得到的图像越大。

.. rst-class:: classref-item-separator

----

.. _class_DPITexture_property_color_map:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **color_map** = ``{}`` :ref:`🔗<class_DPITexture_property_color_map>`

.. rst-class:: classref-property-setget

- |void| **set_color_map**\ (\ value\: :ref:`Dictionary<class_Dictionary>`\ )
- :ref:`Dictionary<class_Dictionary>` **get_color_map**\ (\ )

设置后，会根据 :ref:`Color<class_Color>`-:ref:`Color<class_Color>` 映射对纹理中的颜色进行重映射。

.. rst-class:: classref-item-separator

----

.. _class_DPITexture_property_saturation:

.. rst-class:: classref-property

:ref:`float<class_float>` **saturation** = ``1.0`` :ref:`🔗<class_DPITexture_property_saturation>`

.. rst-class:: classref-property-setget

- |void| **set_saturation**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_saturation**\ (\ )

覆盖纹理饱和度。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_DPITexture_method_create_from_string:

.. rst-class:: classref-method

:ref:`DPITexture<class_DPITexture>` **create_from_string**\ (\ source\: :ref:`String<class_String>`, scale\: :ref:`float<class_float>` = 1.0, saturation\: :ref:`float<class_float>` = 1.0, color_map\: :ref:`Dictionary<class_Dictionary>` = {}\ ) |static| :ref:`🔗<class_DPITexture_method_create_from_string>`

新建 **DPITexture**\ ，并通过分配内存并将 SVG 数据设置为 ``source`` 来对其进行初始化。

.. rst-class:: classref-item-separator

----

.. _class_DPITexture_method_get_scaled_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_scaled_rid**\ (\ ) |const| :ref:`🔗<class_DPITexture_method_get_scaled_rid>`

返回栅格化后的纹理 :ref:`RID<class_RID>`\ ，与当前绘制的画布项的过采样匹配。

.. rst-class:: classref-item-separator

----

.. _class_DPITexture_method_get_source:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_source**\ (\ ) |const| :ref:`🔗<class_DPITexture_method_get_source>`

返回该 SVG 纹理的源代码。

.. rst-class:: classref-item-separator

----

.. _class_DPITexture_method_set_size_override:

.. rst-class:: classref-method

|void| **set_size_override**\ (\ size\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_DPITexture_method_set_size_override>`

将纹理的大小调整为指定的尺寸。

.. rst-class:: classref-item-separator

----

.. _class_DPITexture_method_set_source:

.. rst-class:: classref-method

|void| **set_source**\ (\ source\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DPITexture_method_set_source>`

设置该 SVG 纹理的源代码。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
