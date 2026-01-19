:github_url: hide

.. _class_FramebufferCacheRD:

FramebufferCacheRD
==================

**继承：** :ref:`Object<class_Object>`

基于渲染设备的渲染器的帧缓冲区缓存管理器。

.. rst-class:: classref-introduction-group

描述
----

Framebuffer cache manager for :ref:`RenderingDevice<class_RenderingDevice>`-based renderers. Provides a way to create a framebuffer and reuse it in subsequent calls for as long as the used textures exists. Framebuffers will automatically be cleaned up when dependent objects are freed.

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>` | :ref:`get_cache_multipass<class_FramebufferCacheRD_method_get_cache_multipass>`\ (\ textures\: :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\], passes\: :ref:`Array<class_Array>`\[:ref:`RDFramebufferPass<class_RDFramebufferPass>`\], views\: :ref:`int<class_int>`\ ) |static| |
   +-----------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_FramebufferCacheRD_method_get_cache_multipass:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_cache_multipass**\ (\ textures\: :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\], passes\: :ref:`Array<class_Array>`\[:ref:`RDFramebufferPass<class_RDFramebufferPass>`\], views\: :ref:`int<class_int>`\ ) |static| :ref:`🔗<class_FramebufferCacheRD_method_get_cache_multipass>`

创建或获取缓存的帧缓冲区。\ ``textures`` 列出访问的纹理。\ ``passes`` 定义子通道和纹理分配，如果留空，则会创建单个通道并根据其使用标志分配纹理。\ ``views`` 定义渲染时使用的视图数量。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
