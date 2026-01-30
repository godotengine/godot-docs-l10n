:github_url: hide

.. _class_ExternalTexture:

ExternalTexture
===============

**继承：** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

显示外部缓冲区内容的纹理。

.. rst-class:: classref-introduction-group

描述
----

显示平台所提供的外部缓冲区的内容。

需要 `OES_EGL_image_external <https://registry.khronos.org/OpenGL/extensions/OES/OES_EGL_image_external.txt>`__ 扩展（OpenGL）或 `VK_ANDROID_external_memory_android_hardware_buffer <https://registry.khronos.org/vulkan/specs/1.1-extensions/html/vkspec.html#VK_ANDROID_external_memory_android_hardware_buffer>`__ 扩展（Vulkan）。

\ **注意：**\ 目前仅在 Android 构建中支持。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | resource_local_to_scene                          | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +-------------------------------+--------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`size<class_ExternalTexture_property_size>` | ``Vector2(256, 256)``                                                                  |
   +-------------------------------+--------------------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`get_external_texture_id<class_ExternalTexture_method_get_external_texture_id>`\ (\ ) |const|                                   |
   +-----------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                | :ref:`set_external_buffer_id<class_ExternalTexture_method_set_external_buffer_id>`\ (\ external_buffer_id\: :ref:`int<class_int>`\ ) |
   +-----------------------+--------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_ExternalTexture_property_size:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **size** = ``Vector2(256, 256)`` :ref:`🔗<class_ExternalTexture_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_size**\ (\ )

外部纹理大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_ExternalTexture_method_get_external_texture_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_external_texture_id**\ (\ ) |const| :ref:`🔗<class_ExternalTexture_method_get_external_texture_id>`

返回外部纹理 ID。

根据你的需求，你可能需要将其传递给平台 API，例如在 Android 上创建 ``android.graphics.SurfaceTexture``\ 。

.. rst-class:: classref-item-separator

----

.. _class_ExternalTexture_method_set_external_buffer_id:

.. rst-class:: classref-method

|void| **set_external_buffer_id**\ (\ external_buffer_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ExternalTexture_method_set_external_buffer_id>`

设置外部纹理 ID。

根据你的需求，你可能需要使用从平台 API 获取的数据调用该方法，例如在 Android 上的 ``SurfaceTexture.getHardwareBuffer()``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
