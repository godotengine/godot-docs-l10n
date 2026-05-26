:github_url: hide

.. _class_PortableCompressedTexture2D:

PortableCompressedTexture2D
===========================

**繼承：** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

為磁片和/或顯存提供可移植的壓縮紋理。

.. rst-class:: classref-introduction-group

說明
----

這個類能夠將壓縮紋理儲存為自包含的資源（與匯入資源相對）。

用於 2D 時（在磁片上壓縮、在顯存中不壓縮）推薦使用有損和無損模式。用於 3D 時（在顯存中壓縮）則取決於目標平臺。

如果你只想用於桌面平臺，則推薦使用 S3TC 或 BPTC。如果只用於移動平臺，則推薦使用 ETC2。

如果要實作可移植、自包含的 3D 紋理，讓這種紋理能同時在桌面和移動平臺使用，則推薦 Basis Universal（儘管代價是有較小的品質損耗和更長的壓縮時間）。

這個資源應使用程式碼建立。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`keep_compressed_buffer<class_PortableCompressedTexture2D_property_keep_compressed_buffer>` | ``false``                                                                              |
   +-------------------------------+--------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | resource_local_to_scene                                                                          | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +-------------------------------+--------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`size_override<class_PortableCompressedTexture2D_property_size_override>`                   | ``Vector2(0, 0)``                                                                      |
   +-------------------------------+--------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +--------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                   | :ref:`create_from_image<class_PortableCompressedTexture2D_method_create_from_image>`\ (\ image\: :ref:`Image<class_Image>`, compression_mode\: :ref:`CompressionMode<enum_PortableCompressedTexture2D_CompressionMode>`, normal_map\: :ref:`bool<class_bool>` = false, lossy_quality\: :ref:`float<class_float>` = 0.8\ ) |
   +--------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`CompressionMode<enum_PortableCompressedTexture2D_CompressionMode>` | :ref:`get_compression_mode<class_PortableCompressedTexture2D_method_get_compression_mode>`\ (\ ) |const|                                                                                                                                                                                                                  |
   +--------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                  | :ref:`is_keeping_all_compressed_buffers<class_PortableCompressedTexture2D_method_is_keeping_all_compressed_buffers>`\ (\ ) |static|                                                                                                                                                                                       |
   +--------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                   | :ref:`set_basisu_compressor_params<class_PortableCompressedTexture2D_method_set_basisu_compressor_params>`\ (\ uastc_level\: :ref:`int<class_int>`, rdo_quality_loss\: :ref:`float<class_float>`\ )                                                                                                                       |
   +--------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                   | :ref:`set_keep_all_compressed_buffers<class_PortableCompressedTexture2D_method_set_keep_all_compressed_buffers>`\ (\ keep\: :ref:`bool<class_bool>`\ ) |static|                                                                                                                                                           |
   +--------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_PortableCompressedTexture2D_CompressionMode:

.. rst-class:: classref-enumeration

enum **CompressionMode**: :ref:`🔗<enum_PortableCompressedTexture2D_CompressionMode>`

.. _class_PortableCompressedTexture2D_constant_COMPRESSION_MODE_LOSSLESS:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionMode<enum_PortableCompressedTexture2D_CompressionMode>` **COMPRESSION_MODE_LOSSLESS** = ``0``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_PortableCompressedTexture2D_constant_COMPRESSION_MODE_LOSSY:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionMode<enum_PortableCompressedTexture2D_CompressionMode>` **COMPRESSION_MODE_LOSSY** = ``1``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_PortableCompressedTexture2D_constant_COMPRESSION_MODE_BASIS_UNIVERSAL:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionMode<enum_PortableCompressedTexture2D_CompressionMode>` **COMPRESSION_MODE_BASIS_UNIVERSAL** = ``2``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_PortableCompressedTexture2D_constant_COMPRESSION_MODE_S3TC:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionMode<enum_PortableCompressedTexture2D_CompressionMode>` **COMPRESSION_MODE_S3TC** = ``3``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_PortableCompressedTexture2D_constant_COMPRESSION_MODE_ETC2:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionMode<enum_PortableCompressedTexture2D_CompressionMode>` **COMPRESSION_MODE_ETC2** = ``4``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_PortableCompressedTexture2D_constant_COMPRESSION_MODE_BPTC:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionMode<enum_PortableCompressedTexture2D_CompressionMode>` **COMPRESSION_MODE_BPTC** = ``5``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_PortableCompressedTexture2D_constant_COMPRESSION_MODE_ASTC:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionMode<enum_PortableCompressedTexture2D_CompressionMode>` **COMPRESSION_MODE_ASTC** = ``6``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_PortableCompressedTexture2D_property_keep_compressed_buffer:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **keep_compressed_buffer** = ``false`` :ref:`🔗<class_PortableCompressedTexture2D_property_keep_compressed_buffer>`

.. rst-class:: classref-property-setget

- |void| **set_keep_compressed_buffer**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_keeping_compressed_buffer**\ (\ )

If ``true``, when running in the editor, this texture will keep the source-compressed data in memory, allowing the data to persist after loading. Otherwise, the source-compressed data is lost after loading and the texture can't be re-saved.

\ **Note:** This property must be set before :ref:`create_from_image()<class_PortableCompressedTexture2D_method_create_from_image>` for this to work.

.. rst-class:: classref-item-separator

----

.. _class_PortableCompressedTexture2D_property_size_override:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **size_override** = ``Vector2(0, 0)`` :ref:`🔗<class_PortableCompressedTexture2D_property_size_override>`

.. rst-class:: classref-property-setget

- |void| **set_size_override**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_size_override**\ (\ )

Allows overriding the texture's size (for 2D only).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_PortableCompressedTexture2D_method_create_from_image:

.. rst-class:: classref-method

|void| **create_from_image**\ (\ image\: :ref:`Image<class_Image>`, compression_mode\: :ref:`CompressionMode<enum_PortableCompressedTexture2D_CompressionMode>`, normal_map\: :ref:`bool<class_bool>` = false, lossy_quality\: :ref:`float<class_float>` = 0.8\ ) :ref:`🔗<class_PortableCompressedTexture2D_method_create_from_image>`

使用基礎圖像初始化壓縮紋理。必須提供壓縮模式。

如果該圖像會用作法線貼圖，則推薦使用 ``normal_map``\ ，確保達到最佳品質。

如果請求了失真壓縮，還可以提供品質設定。會對應至有損 WebP 壓縮品質。

.. rst-class:: classref-item-separator

----

.. _class_PortableCompressedTexture2D_method_get_compression_mode:

.. rst-class:: classref-method

:ref:`CompressionMode<enum_PortableCompressedTexture2D_CompressionMode>` **get_compression_mode**\ (\ ) |const| :ref:`🔗<class_PortableCompressedTexture2D_method_get_compression_mode>`

返回使用的壓縮模式（初始化後有效）。

.. rst-class:: classref-item-separator

----

.. _class_PortableCompressedTexture2D_method_is_keeping_all_compressed_buffers:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_keeping_all_compressed_buffers**\ (\ ) |static| :ref:`🔗<class_PortableCompressedTexture2D_method_is_keeping_all_compressed_buffers>`

Returns ``true`` if the flag is overridden for all textures of this type.

.. rst-class:: classref-item-separator

----

.. _class_PortableCompressedTexture2D_method_set_basisu_compressor_params:

.. rst-class:: classref-method

|void| **set_basisu_compressor_params**\ (\ uastc_level\: :ref:`int<class_int>`, rdo_quality_loss\: :ref:`float<class_float>`\ ) :ref:`🔗<class_PortableCompressedTexture2D_method_set_basisu_compressor_params>`

Sets the compressor parameters for Basis Universal compression. See also the settings in :ref:`ResourceImporterTexture<class_ResourceImporterTexture>`.

\ **Note:** This method must be called before :ref:`create_from_image()<class_PortableCompressedTexture2D_method_create_from_image>` for this to work.

.. rst-class:: classref-item-separator

----

.. _class_PortableCompressedTexture2D_method_set_keep_all_compressed_buffers:

.. rst-class:: classref-method

|void| **set_keep_all_compressed_buffers**\ (\ keep\: :ref:`bool<class_bool>`\ ) |static| :ref:`🔗<class_PortableCompressedTexture2D_method_set_keep_all_compressed_buffers>`

If ``keep`` is ``true``, overrides the flag globally for all textures of this type. This is used primarily by the editor.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
