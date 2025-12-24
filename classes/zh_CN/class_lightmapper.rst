:github_url: hide

.. _class_Lightmapper:

Lightmapper
===========

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`LightmapperRD<class_LightmapperRD>`

由光照贴图器扩展的抽象类，用于 :ref:`LightmapGI<class_LightmapGI>`\ 。

.. rst-class:: classref-introduction-group

描述
----

此类应由自定义光照贴图器类扩展。然后可以将光照贴图器与 :ref:`LightmapGI<class_LightmapGI>` 一起使用，以提供快速烘焙的 3D 全局光照。

Godot 包含一个基于 GPU 的内置光照贴图器 :ref:`LightmapperRD<class_LightmapperRD>`\ ，它使用计算着色器，但自定义光照贴图器可以由 C++ 模块实现。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
