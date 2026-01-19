:github_url: hide

.. _class_GLTFTextureSampler:

GLTFTextureSampler
==================

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

代表 glTF 纹理采样器

.. rst-class:: classref-introduction-group

描述
----

表示由基本 glTF 规范定义的纹理采样器。glTF 中的纹理采样器指定在对象上渲染纹理时，如何从纹理的基础图像中采样数据。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`运行时文件加载与保存 <../tutorials/io/runtime_file_loading_and_saving>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------+-----------------------------------------------------------------+-----------+
   | :ref:`int<class_int>` | :ref:`mag_filter<class_GLTFTextureSampler_property_mag_filter>` | ``9729``  |
   +-----------------------+-----------------------------------------------------------------+-----------+
   | :ref:`int<class_int>` | :ref:`min_filter<class_GLTFTextureSampler_property_min_filter>` | ``9987``  |
   +-----------------------+-----------------------------------------------------------------+-----------+
   | :ref:`int<class_int>` | :ref:`wrap_s<class_GLTFTextureSampler_property_wrap_s>`         | ``10497`` |
   +-----------------------+-----------------------------------------------------------------+-----------+
   | :ref:`int<class_int>` | :ref:`wrap_t<class_GLTFTextureSampler_property_wrap_t>`         | ``10497`` |
   +-----------------------+-----------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_GLTFTextureSampler_property_mag_filter:

.. rst-class:: classref-property

:ref:`int<class_int>` **mag_filter** = ``9729`` :ref:`🔗<class_GLTFTextureSampler_property_mag_filter>`

.. rst-class:: classref-property-setget

- |void| **set_mag_filter**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_mag_filter**\ (\ )

纹理的放大滤镜，当纹理在屏幕上看起来比源图像大时使用。

.. rst-class:: classref-item-separator

----

.. _class_GLTFTextureSampler_property_min_filter:

.. rst-class:: classref-property

:ref:`int<class_int>` **min_filter** = ``9987`` :ref:`🔗<class_GLTFTextureSampler_property_min_filter>`

.. rst-class:: classref-property-setget

- |void| **set_min_filter**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_min_filter**\ (\ )

纹理的缩小滤镜，当纹理在屏幕上看起来比源图像小时使用。

.. rst-class:: classref-item-separator

----

.. _class_GLTFTextureSampler_property_wrap_s:

.. rst-class:: classref-property

:ref:`int<class_int>` **wrap_s** = ``10497`` :ref:`🔗<class_GLTFTextureSampler_property_wrap_s>`

.. rst-class:: classref-property-setget

- |void| **set_wrap_s**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_wrap_s**\ (\ )

用于 S 轴（水平）纹理坐标的环绕模式。

.. rst-class:: classref-item-separator

----

.. _class_GLTFTextureSampler_property_wrap_t:

.. rst-class:: classref-property

:ref:`int<class_int>` **wrap_t** = ``10497`` :ref:`🔗<class_GLTFTextureSampler_property_wrap_t>`

.. rst-class:: classref-property-setget

- |void| **set_wrap_t**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_wrap_t**\ (\ )

用于 T 轴（垂直）纹理坐标的环绕模式。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
