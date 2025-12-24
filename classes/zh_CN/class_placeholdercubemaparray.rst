:github_url: hide

.. _class_PlaceholderCubemapArray:

PlaceholderCubemapArray
=======================

**继承：** :ref:`PlaceholderTextureLayered<class_PlaceholderTextureLayered>` **<** :ref:`TextureLayered<class_TextureLayered>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

没有图像数据的 :ref:`CubemapArray<class_CubemapArray>` 。

.. rst-class:: classref-introduction-group

描述
----

该类在以下两种情况下替换 :ref:`CubemapArray<class_CubemapArray>` 或 :ref:`CubemapArray<class_CubemapArray>` 派生类：

- 在专用服务器模式下，图像数据不应影响游戏逻辑。这样能够显著减小导出的 PCK 的大小。

- 当 :ref:`CubemapArray<class_CubemapArray>` 派生类丢失时，例如使用不同的引擎版本时。

\ **注意：**\ 该类不适用于渲染或在着色器中使用。不保证计算 UV 之类的操作有效。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
