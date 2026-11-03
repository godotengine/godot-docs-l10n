:github_url: hide

.. _class_CameraFeed:

CameraFeed
==========

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

通過相機源，你可以存取連接到裝置的單個物理相機。

.. rst-class:: classref-introduction-group

說明
----

相機源允許存取連接到裝置的單個物理相機。啟用後，Godot 將開始從該相機捕獲影格，隨後這些影格便可被使用。另見 :ref:`CameraServer<class_CameraServer>`\ 。

\ **注意：**\ 很多相機會回傳 YCbCr 影像，這些影像被拆分為兩個紋理，需要在著色器中進行組合。若將環境設定為在背景中顯示相機影像，Godot 會自動執行此操作。

\ **注意：**\ 該類目前僅在 Linux、Android、macOS 和 iOS 上實作。在其他平台上 **CameraFeed** 將不可用。若要在 iOS 上取得 **CameraFeed**\ ，請啟用 :ref:`EditorExportPlatformIOS.modules/camera<class_EditorExportPlatformIOS_property_modules/camera>`\ 。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------------------+-----------------------------------------------------------------+------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`feed_is_active<class_CameraFeed_property_feed_is_active>` | ``false``                          |
   +---------------------------------------+-----------------------------------------------------------------+------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`feed_transform<class_CameraFeed_property_feed_transform>` | ``Transform2D(1, 0, 0, -1, 0, 1)`` |
   +---------------------------------------+-----------------------------------------------------------------+------------------------------------+
   | :ref:`Array<class_Array>`             | :ref:`formats<class_CameraFeed_property_formats>`               | ``[]``                             |
   +---------------------------------------+-----------------------------------------------------------------+------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`_activate_feed<class_CameraFeed_private_method__activate_feed>`\ (\ ) |virtual|                                                                            |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`_deactivate_feed<class_CameraFeed_private_method__deactivate_feed>`\ (\ ) |virtual|                                                                        |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                         | :ref:`_get_formats<class_CameraFeed_private_method__get_formats>`\ (\ ) |virtual| |const|                                                                        |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`_set_format<class_CameraFeed_private_method__set_format>`\ (\ index\: :ref:`int<class_int>`, parameters\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`FeedDataType<enum_CameraFeed_FeedDataType>` | :ref:`get_datatype<class_CameraFeed_method_get_datatype>`\ (\ ) |const|                                                                                          |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_id<class_CameraFeed_method_get_id>`\ (\ ) |const|                                                                                                      |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`get_name<class_CameraFeed_method_get_name>`\ (\ ) |const|                                                                                                  |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`FeedPosition<enum_CameraFeed_FeedPosition>` | :ref:`get_position<class_CameraFeed_method_get_position>`\ (\ ) |const|                                                                                          |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_texture_tex_id<class_CameraFeed_method_get_texture_tex_id>`\ (\ feed_image_type\: :ref:`FeedImage<enum_CameraServer_FeedImage>`\ )                     |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_external<class_CameraFeed_method_set_external>`\ (\ width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`\ )                                   |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`set_format<class_CameraFeed_method_set_format>`\ (\ index\: :ref:`int<class_int>`, parameters\: :ref:`Dictionary<class_Dictionary>`\ )                     |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_name<class_CameraFeed_method_set_name>`\ (\ name\: :ref:`String<class_String>`\ )                                                                      |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_position<class_CameraFeed_method_set_position>`\ (\ position\: :ref:`FeedPosition<enum_CameraFeed_FeedPosition>`\ )                                    |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_rgb_image<class_CameraFeed_method_set_rgb_image>`\ (\ rgb_image\: :ref:`Image<class_Image>`\ )                                                         |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_ycbcr_image<class_CameraFeed_method_set_ycbcr_image>`\ (\ ycbcr_image\: :ref:`Image<class_Image>`\ )                                                   |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_ycbcr_images<class_CameraFeed_method_set_ycbcr_images>`\ (\ y_image\: :ref:`Image<class_Image>`, cbcr_image\: :ref:`Image<class_Image>`\ )             |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_CameraFeed_signal_format_changed:

.. rst-class:: classref-signal

**format_changed**\ (\ ) :ref:`🔗<class_CameraFeed_signal_format_changed>`

格式發生變化時發出。

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_signal_frame_changed:

.. rst-class:: classref-signal

**frame_changed**\ (\ ) :ref:`🔗<class_CameraFeed_signal_frame_changed>`

新影像影格可用時發出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_CameraFeed_FeedDataType:

.. rst-class:: classref-enumeration

enum **FeedDataType**: :ref:`🔗<enum_CameraFeed_FeedDataType>`

.. _class_CameraFeed_constant_FEED_NOIMAGE:

.. rst-class:: classref-enumeration-constant

:ref:`FeedDataType<enum_CameraFeed_FeedDataType>` **FEED_NOIMAGE** = ``0``

沒有為該源設定影像。

.. _class_CameraFeed_constant_FEED_RGB:

.. rst-class:: classref-enumeration-constant

:ref:`FeedDataType<enum_CameraFeed_FeedDataType>` **FEED_RGB** = ``1``

源提供 RGB 影像。

.. _class_CameraFeed_constant_FEED_YCBCR:

.. rst-class:: classref-enumeration-constant

:ref:`FeedDataType<enum_CameraFeed_FeedDataType>` **FEED_YCBCR** = ``2``

源提供的 YCbCr 影像需要轉換成 RGB 影像。

.. _class_CameraFeed_constant_FEED_YCBCR_SEP:

.. rst-class:: classref-enumeration-constant

:ref:`FeedDataType<enum_CameraFeed_FeedDataType>` **FEED_YCBCR_SEP** = ``3``

源提供單獨的 Y 和 CbCr 影像，需要合併並轉換為 RGB。

.. _class_CameraFeed_constant_FEED_EXTERNAL:

.. rst-class:: classref-enumeration-constant

:ref:`FeedDataType<enum_CameraFeed_FeedDataType>` **FEED_EXTERNAL** = ``4``

源提供外部影像。

.. rst-class:: classref-item-separator

----

.. _enum_CameraFeed_FeedPosition:

.. rst-class:: classref-enumeration

enum **FeedPosition**: :ref:`🔗<enum_CameraFeed_FeedPosition>`

.. _class_CameraFeed_constant_FEED_UNSPECIFIED:

.. rst-class:: classref-enumeration-constant

:ref:`FeedPosition<enum_CameraFeed_FeedPosition>` **FEED_UNSPECIFIED** = ``0``

未指定座標。

.. _class_CameraFeed_constant_FEED_FRONT:

.. rst-class:: classref-enumeration-constant

:ref:`FeedPosition<enum_CameraFeed_FeedPosition>` **FEED_FRONT** = ``1``

相機安裝在了裝置前部。

.. _class_CameraFeed_constant_FEED_BACK:

.. rst-class:: classref-enumeration-constant

:ref:`FeedPosition<enum_CameraFeed_FeedPosition>` **FEED_BACK** = ``2``

相機安裝在了裝置後部。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_CameraFeed_property_feed_is_active:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **feed_is_active** = ``false`` :ref:`🔗<class_CameraFeed_property_feed_is_active>`

.. rst-class:: classref-property-setget

- |void| **set_active**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_active**\ (\ )

如果為 ``true``\ ，則源是啟動的。

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_property_feed_transform:

.. rst-class:: classref-property

:ref:`Transform2D<class_Transform2D>` **feed_transform** = ``Transform2D(1, 0, 0, -1, 0, 1)`` :ref:`🔗<class_CameraFeed_property_feed_transform>`

.. rst-class:: classref-property-setget

- |void| **set_transform**\ (\ value\: :ref:`Transform2D<class_Transform2D>`\ )
- :ref:`Transform2D<class_Transform2D>` **get_transform**\ (\ )

套用於相機影像的變換。

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_property_formats:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **formats** = ``[]`` :ref:`🔗<class_CameraFeed_property_formats>`

.. rst-class:: classref-property-setget

- :ref:`Array<class_Array>` **get_formats**\ (\ )

源支援的所有格式。每個條目都是描述格式參數的 :ref:`Dictionary<class_Dictionary>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_CameraFeed_private_method__activate_feed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_activate_feed**\ (\ ) |virtual| :ref:`🔗<class_CameraFeed_private_method__activate_feed>`

相機源被啟用時呼叫。

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_private_method__deactivate_feed:

.. rst-class:: classref-method

|void| **_deactivate_feed**\ (\ ) |virtual| :ref:`🔗<class_CameraFeed_private_method__deactivate_feed>`

相機源失去啟用時呼叫。

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_private_method__get_formats:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **_get_formats**\ (\ ) |virtual| |const| :ref:`🔗<class_CameraFeed_private_method__get_formats>`

覆蓋該方法以定義相機源支援的格式。

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_private_method__set_format:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_set_format**\ (\ index\: :ref:`int<class_int>`, parameters\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| :ref:`🔗<class_CameraFeed_private_method__set_format>`

覆蓋該方法以設定相機源的格式。

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_method_get_datatype:

.. rst-class:: classref-method

:ref:`FeedDataType<enum_CameraFeed_FeedDataType>` **get_datatype**\ (\ ) |const| :ref:`🔗<class_CameraFeed_method_get_datatype>`

返回源影像的資料型別。

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_method_get_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_id**\ (\ ) |const| :ref:`🔗<class_CameraFeed_method_get_id>`

返回該源的唯一ID。

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_method_get_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_name**\ (\ ) |const| :ref:`🔗<class_CameraFeed_method_get_name>`

返回相機的名稱。

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_method_get_position:

.. rst-class:: classref-method

:ref:`FeedPosition<enum_CameraFeed_FeedPosition>` **get_position**\ (\ ) |const| :ref:`🔗<class_CameraFeed_method_get_position>`

返回裝置上的相機位置。

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_method_get_texture_tex_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_texture_tex_id**\ (\ feed_image_type\: :ref:`FeedImage<enum_CameraServer_FeedImage>`\ ) :ref:`🔗<class_CameraFeed_method_get_texture_tex_id>`

回傳紋理後端的 ID（可用於某些需要通過紋理控制代碼寫入資料的外部庫）。

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_method_set_external:

.. rst-class:: classref-method

|void| **set_external**\ (\ width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`\ ) :ref:`🔗<class_CameraFeed_method_set_external>`

將供給設定為由另一個庫提供的外部供給。

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_method_set_format:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **set_format**\ (\ index\: :ref:`int<class_int>`, parameters\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_CameraFeed_method_set_format>`

設定 :ref:`formats<class_CameraFeed_property_formats>` 陣列中給定 ``index`` 的源格式參數。成功時回傳 ``true``\ 。預設情況下，YUYV 編碼的流會轉換為 :ref:`FEED_RGB<class_CameraFeed_constant_FEED_RGB>`\ 。YUYV 編碼的流的輸出格式可以通過將 ``parameters`` 的 ``output`` 條目設定為以下之一來更改：

- ``"separate"`` 得到的是 :ref:`FEED_YCBCR_SEP<class_CameraFeed_constant_FEED_YCBCR_SEP>`\ ；

- ``"grayscale"`` 得到的是降低飽和度的 :ref:`FEED_RGB<class_CameraFeed_constant_FEED_RGB>`\ ；

- ``"copy"`` 得到的是 :ref:`FEED_YCBCR<class_CameraFeed_constant_FEED_YCBCR>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_method_set_name:

.. rst-class:: classref-method

|void| **set_name**\ (\ name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_CameraFeed_method_set_name>`

設定相機的名稱。

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_method_set_position:

.. rst-class:: classref-method

|void| **set_position**\ (\ position\: :ref:`FeedPosition<enum_CameraFeed_FeedPosition>`\ ) :ref:`🔗<class_CameraFeed_method_set_position>`

設定相機的位置。

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_method_set_rgb_image:

.. rst-class:: classref-method

|void| **set_rgb_image**\ (\ rgb_image\: :ref:`Image<class_Image>`\ ) :ref:`🔗<class_CameraFeed_method_set_rgb_image>`

設定該源的 RGB 影像。

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_method_set_ycbcr_image:

.. rst-class:: classref-method

|void| **set_ycbcr_image**\ (\ ycbcr_image\: :ref:`Image<class_Image>`\ ) :ref:`🔗<class_CameraFeed_method_set_ycbcr_image>`

設定該源的 YCbCr 影像。

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_method_set_ycbcr_images:

.. rst-class:: classref-method

|void| **set_ycbcr_images**\ (\ y_image\: :ref:`Image<class_Image>`, cbcr_image\: :ref:`Image<class_Image>`\ ) :ref:`🔗<class_CameraFeed_method_set_ycbcr_images>`

設定該源的 Y 和 CbCr 影像。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
