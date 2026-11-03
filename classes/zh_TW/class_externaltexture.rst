:github_url: hide

.. _class_ExternalTexture:

ExternalTexture
===============

**繼承：** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

顯示外部緩衝區內容的紋理。

.. rst-class:: classref-introduction-group

說明
----

顯示平台所提供的外部緩衝區的內容。

需要 `OES_EGL_image_external <https://registry.khronos.org/OpenGL/extensions/OES/OES_EGL_image_external.txt>`__ 擴充（OpenGL）或 `VK_ANDROID_external_memory_android_hardware_buffer <https://registry.khronos.org/vulkan/specs/1.1-extensions/html/vkspec.html#VK_ANDROID_external_memory_android_hardware_buffer>`__ 擴充（Vulkan）。

\ **注意：**\ 目前僅在 Android 建置中支援。

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

外部紋理大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_ExternalTexture_method_get_external_texture_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_external_texture_id**\ (\ ) |const| :ref:`🔗<class_ExternalTexture_method_get_external_texture_id>`

回傳外部紋理 ID。

根據你的需求，你可能需要將其傳遞給平台 API，例如在 Android 上建立 ``android.graphics.SurfaceTexture``\ 。

.. rst-class:: classref-item-separator

----

.. _class_ExternalTexture_method_set_external_buffer_id:

.. rst-class:: classref-method

|void| **set_external_buffer_id**\ (\ external_buffer_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ExternalTexture_method_set_external_buffer_id>`

設定外部紋理 ID。

根據你的需求，你可能需要使用從平台 API 取得的資料呼叫該方法，例如在 Android 上的 ``SurfaceTexture.getHardwareBuffer()``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
