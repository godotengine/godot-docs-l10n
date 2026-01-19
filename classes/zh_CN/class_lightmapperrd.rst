:github_url: hide

.. _class_LightmapperRD:

LightmapperRD
=============

**继承：** :ref:`Lightmapper<class_Lightmapper>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

内置的基于 GPU 的光照贴图器，与 :ref:`LightmapGI<class_LightmapGI>` 一起使用。

.. rst-class:: classref-introduction-group

描述
----

LightmapperRD（“RD”代表 :ref:`RenderingDevice<class_RenderingDevice>`\ ）是基于 GPU 的内置光照贴图器，可与 :ref:`LightmapGI<class_LightmapGI>` 一起使用。在大多数专用 GPU 上，它可以比大多数基于 CPU 的光照贴图更快地烘焙光照贴图。LightmapperRD 使用计算着色器来烘焙光照贴图，因此它不需要安装 CUDA 或 OpenCL 库即可使用。

\ **注意：**\ 仅在使用 RenderingDevice 后端（Forward+ 或移动渲染器）时可用，使用 Compatibility 时不可用。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
