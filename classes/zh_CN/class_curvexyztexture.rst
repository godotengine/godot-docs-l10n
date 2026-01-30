:github_url: hide

.. _class_CurveXYZTexture:

CurveXYZTexture
===============

**继承：** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

一维纹理，红、绿、蓝通道分别对应 3 条曲线上的点。

.. rst-class:: classref-introduction-group

描述
----

一维纹理，红、绿、蓝通道分别对应 3 条单位 :ref:`Curve<class_Curve>` 资源上的点。与使用单独的 :ref:`CurveTexture<class_CurveTexture>` 相比，可以简化将曲线保存为图像文件的任务。

如果你只需要在单张纹理中存储一条曲线，请改用 :ref:`CurveTexture<class_CurveTexture>`\ 。另见 :ref:`GradientTexture1D<class_GradientTexture1D>` 和 :ref:`GradientTexture2D<class_GradientTexture2D>`\ 。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Curve<class_Curve>` | :ref:`curve_x<class_CurveXYZTexture_property_curve_x>` |                                                                                        |
   +---------------------------+--------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Curve<class_Curve>` | :ref:`curve_y<class_CurveXYZTexture_property_curve_y>` |                                                                                        |
   +---------------------------+--------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Curve<class_Curve>` | :ref:`curve_z<class_CurveXYZTexture_property_curve_z>` |                                                                                        |
   +---------------------------+--------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | resource_local_to_scene                                | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +---------------------------+--------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`     | :ref:`width<class_CurveXYZTexture_property_width>`     | ``256``                                                                                |
   +---------------------------+--------------------------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_CurveXYZTexture_property_curve_x:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **curve_x** :ref:`🔗<class_CurveXYZTexture_property_curve_x>`

.. rst-class:: classref-property-setget

- |void| **set_curve_x**\ (\ value\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_curve_x**\ (\ )

渲染到该纹理红色通道上的 :ref:`Curve<class_Curve>`\ 。应当为单位 :ref:`Curve<class_Curve>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_CurveXYZTexture_property_curve_y:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **curve_y** :ref:`🔗<class_CurveXYZTexture_property_curve_y>`

.. rst-class:: classref-property-setget

- |void| **set_curve_y**\ (\ value\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_curve_y**\ (\ )

渲染到该纹理绿色通道上的 :ref:`Curve<class_Curve>`\ 。应当为单位 :ref:`Curve<class_Curve>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_CurveXYZTexture_property_curve_z:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **curve_z** :ref:`🔗<class_CurveXYZTexture_property_curve_z>`

.. rst-class:: classref-property-setget

- |void| **set_curve_z**\ (\ value\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_curve_z**\ (\ )

渲染到该纹理蓝色通道上的 :ref:`Curve<class_Curve>`\ 。应当为单位 :ref:`Curve<class_Curve>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_CurveXYZTexture_property_width:

.. rst-class:: classref-property

:ref:`int<class_int>` **width** = ``256`` :ref:`🔗<class_CurveXYZTexture_property_width>`

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
