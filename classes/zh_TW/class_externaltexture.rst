:github_url: hide

.. _class_ExternalTexture:

ExternalTexture
===============

**繼承：** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Texture which displays the content of an external buffer.

.. rst-class:: classref-introduction-group

說明
----

Displays the content of an external buffer provided by the platform.

Requires the `OES_EGL_image_external <https://registry.khronos.org/OpenGL/extensions/OES/OES_EGL_image_external.txt>`__ extension (OpenGL) or `VK_ANDROID_external_memory_android_hardware_buffer <https://registry.khronos.org/vulkan/specs/1.1-extensions/html/vkspec.html#VK_ANDROID_external_memory_android_hardware_buffer>`__ extension (Vulkan).

\ **Note:** This is currently only supported in Android builds.

.. rst-class:: classref-reftable-group

屬性
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

屬性說明
--------

.. _class_ExternalTexture_property_size:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **size** = ``Vector2(256, 256)`` :ref:`🔗<class_ExternalTexture_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_size**\ (\ )

External texture size.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_ExternalTexture_method_get_external_texture_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_external_texture_id**\ (\ ) |const| :ref:`🔗<class_ExternalTexture_method_get_external_texture_id>`

Returns the external texture ID.

Depending on your use case, you may need to pass this to platform APIs, for example, when creating an ``android.graphics.SurfaceTexture`` on Android.

.. rst-class:: classref-item-separator

----

.. _class_ExternalTexture_method_set_external_buffer_id:

.. rst-class:: classref-method

|void| **set_external_buffer_id**\ (\ external_buffer_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ExternalTexture_method_set_external_buffer_id>`

Sets the external buffer ID.

Depending on your use case, you may need to call this with data received from a platform API, for example, ``SurfaceTexture.getHardwareBuffer()`` on Android.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
