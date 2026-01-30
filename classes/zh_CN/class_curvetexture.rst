:github_url: hide

.. _class_CurveTexture:

CurveTexture
============

**继承：** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

一维纹理，像素亮度对应于曲线上的点。

.. rst-class:: classref-introduction-group

描述
----

一维纹理，像素亮度对应于单位 :ref:`Curve<class_Curve>` 资源上的点，可以是灰度图或红色图。这种视觉表达简化了将曲线保存为图像文件的任务。

如果你需要在单个纹理中存储最多 3 条曲线，请改用 :ref:`CurveXYZTexture<class_CurveXYZTexture>`\ 。另见 :ref:`GradientTexture1D<class_GradientTexture1D>` 和 :ref:`GradientTexture2D<class_GradientTexture2D>`\ 。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------------------------------+---------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Curve<class_Curve>`                         | :ref:`curve<class_CurveTexture_property_curve>`               |                                                                                        |
   +---------------------------------------------------+---------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | resource_local_to_scene                                       | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +---------------------------------------------------+---------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`TextureMode<enum_CurveTexture_TextureMode>` | :ref:`texture_mode<class_CurveTexture_property_texture_mode>` | ``0``                                                                                  |
   +---------------------------------------------------+---------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`width<class_CurveTexture_property_width>`               | ``256``                                                                                |
   +---------------------------------------------------+---------------------------------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_CurveTexture_TextureMode:

.. rst-class:: classref-enumeration

enum **TextureMode**: :ref:`🔗<enum_CurveTexture_TextureMode>`

.. _class_CurveTexture_constant_TEXTURE_MODE_RGB:

.. rst-class:: classref-enumeration-constant

:ref:`TextureMode<enum_CurveTexture_TextureMode>` **TEXTURE_MODE_RGB** = ``0``

将曲线平均存储在红色、绿色和蓝色通道上。这会使用更多的显存，但与只读取绿色和蓝色值的着色器更兼容。

.. _class_CurveTexture_constant_TEXTURE_MODE_RED:

.. rst-class:: classref-enumeration-constant

:ref:`TextureMode<enum_CurveTexture_TextureMode>` **TEXTURE_MODE_RED** = ``1``

仅将曲线存储在红色通道中。这可以节省显存，但某些自定义着色器可能无法使用它。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_CurveTexture_property_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **curve** :ref:`🔗<class_CurveTexture_property_curve>`

.. rst-class:: classref-property-setget

- |void| **set_curve**\ (\ value\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_curve**\ (\ )

渲染到该纹理上的 :ref:`Curve<class_Curve>`\ 。应当为单位 :ref:`Curve<class_Curve>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_CurveTexture_property_texture_mode:

.. rst-class:: classref-property

:ref:`TextureMode<enum_CurveTexture_TextureMode>` **texture_mode** = ``0`` :ref:`🔗<class_CurveTexture_property_texture_mode>`

.. rst-class:: classref-property-setget

- |void| **set_texture_mode**\ (\ value\: :ref:`TextureMode<enum_CurveTexture_TextureMode>`\ )
- :ref:`TextureMode<enum_CurveTexture_TextureMode>` **get_texture_mode**\ (\ )

生成纹理时应使用的格式。将 CurveTexture 作为输入传递给 :ref:`Shader<class_Shader>` 时，可能需要调整。

.. rst-class:: classref-item-separator

----

.. _class_CurveTexture_property_width:

.. rst-class:: classref-property

:ref:`int<class_int>` **width** = ``256`` :ref:`🔗<class_CurveTexture_property_width>`

.. rst-class:: classref-property-setget

- |void| **set_width**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_width**\ (\ )

纹理宽度（单位为像素）。较大的值能够更好地表示高频数据（例如方向的突变），但会增加生成时间和内存占用。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
