:github_url: hide

.. _class_CameraServer:

CameraServer
============

**繼承：** :ref:`Object<class_Object>`

追蹤 Godot 中可存取的不同攝像頭的伺服器。

.. rst-class:: classref-introduction-group

說明
----

The **CameraServer** keeps track of different cameras accessible in Godot. These are external cameras such as webcams or the cameras on your phone.

It is notably used to provide AR modules with a video feed from the camera.

\ **Note:** This class is currently only implemented on Linux, Android, macOS, and iOS. On other platforms no :ref:`CameraFeed<class_CameraFeed>`\ s will be available. To get a :ref:`CameraFeed<class_CameraFeed>` on iOS, enable :ref:`EditorExportPlatformIOS.modules/camera<class_EditorExportPlatformIOS_property_modules/camera>`.

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------+-----------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`monitoring_feeds<class_CameraServer_property_monitoring_feeds>` | ``false`` |
   +-------------------------+-----------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`add_feed<class_CameraServer_method_add_feed>`\ (\ feed\: :ref:`CameraFeed<class_CameraFeed>`\ )       |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`CameraFeed<class_CameraFeed>`\] | :ref:`feeds<class_CameraServer_method_feeds>`\ (\ )                                                         |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+
   | :ref:`CameraFeed<class_CameraFeed>`                              | :ref:`get_feed<class_CameraServer_method_get_feed>`\ (\ index\: :ref:`int<class_int>`\ )                    |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`get_feed_count<class_CameraServer_method_get_feed_count>`\ (\ )                                       |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`remove_feed<class_CameraServer_method_remove_feed>`\ (\ feed\: :ref:`CameraFeed<class_CameraFeed>`\ ) |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_CameraServer_signal_camera_feed_added:

.. rst-class:: classref-signal

**camera_feed_added**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_CameraServer_signal_camera_feed_added>`

當新增 :ref:`CameraFeed<class_CameraFeed>` 時發出（例如插入網路攝像頭時）。

.. rst-class:: classref-item-separator

----

.. _class_CameraServer_signal_camera_feed_removed:

.. rst-class:: classref-signal

**camera_feed_removed**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_CameraServer_signal_camera_feed_removed>`

當移除 :ref:`CameraFeed<class_CameraFeed>` 時發出（例如拔掉網路攝像頭時）。

.. rst-class:: classref-item-separator

----

.. _class_CameraServer_signal_camera_feeds_updated:

.. rst-class:: classref-signal

**camera_feeds_updated**\ (\ ) :ref:`🔗<class_CameraServer_signal_camera_feeds_updated>`

Emitted when camera feeds are updated.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_CameraServer_FeedImage:

.. rst-class:: classref-enumeration

enum **FeedImage**: :ref:`🔗<enum_CameraServer_FeedImage>`

.. _class_CameraServer_constant_FEED_RGBA_IMAGE:

.. rst-class:: classref-enumeration-constant

:ref:`FeedImage<enum_CameraServer_FeedImage>` **FEED_RGBA_IMAGE** = ``0``

RGBA 相機圖像。

.. _class_CameraServer_constant_FEED_YCBCR_IMAGE:

.. rst-class:: classref-enumeration-constant

:ref:`FeedImage<enum_CameraServer_FeedImage>` **FEED_YCBCR_IMAGE** = ``0``

`YCbCr <https://zh.wikipedia.org/zh-cn/YCbCr>`__ 相機圖像。

.. _class_CameraServer_constant_FEED_Y_IMAGE:

.. rst-class:: classref-enumeration-constant

:ref:`FeedImage<enum_CameraServer_FeedImage>` **FEED_Y_IMAGE** = ``0``

Y 分量相機圖像。

.. _class_CameraServer_constant_FEED_CBCR_IMAGE:

.. rst-class:: classref-enumeration-constant

:ref:`FeedImage<enum_CameraServer_FeedImage>` **FEED_CBCR_IMAGE** = ``1``

CbCr 分量相機圖像。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_CameraServer_property_monitoring_feeds:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **monitoring_feeds** = ``false`` :ref:`🔗<class_CameraServer_property_monitoring_feeds>`

.. rst-class:: classref-property-setget

- |void| **set_monitoring_feeds**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_monitoring_feeds**\ (\ )

If ``true``, the server is actively monitoring available camera feeds.

This has a performance cost, so only set it to ``true`` when you're actively accessing the camera.

\ **Note:** After setting it to ``true``, you can receive updated camera feeds through the :ref:`camera_feeds_updated<class_CameraServer_signal_camera_feeds_updated>` signal.


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        CameraServer.camera_feeds_updated.connect(_on_camera_feeds_updated)
        CameraServer.monitoring_feeds = true

    func _on_camera_feeds_updated():
        var feeds = CameraServer.feeds()

 .. code-tab:: csharp

    public override void _Ready()
    {
        CameraServer.CameraFeedsUpdated += OnCameraFeedsUpdated;
        CameraServer.MonitoringFeeds = true;
    }

    void OnCameraFeedsUpdated()
    {
        var feeds = CameraServer.Feeds();
    }



.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_CameraServer_method_add_feed:

.. rst-class:: classref-method

|void| **add_feed**\ (\ feed\: :ref:`CameraFeed<class_CameraFeed>`\ ) :ref:`🔗<class_CameraServer_method_add_feed>`

將相機源 ``feed`` 新增到相機伺服器中。

.. rst-class:: classref-item-separator

----

.. _class_CameraServer_method_feeds:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`CameraFeed<class_CameraFeed>`\] **feeds**\ (\ ) :ref:`🔗<class_CameraServer_method_feeds>`

返回一個 :ref:`CameraFeed<class_CameraFeed>` 陣列。

.. rst-class:: classref-item-separator

----

.. _class_CameraServer_method_get_feed:

.. rst-class:: classref-method

:ref:`CameraFeed<class_CameraFeed>` **get_feed**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_CameraServer_method_get_feed>`

返回與給定索引 ``index`` 的相機對應的 :ref:`CameraFeed<class_CameraFeed>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_CameraServer_method_get_feed_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_feed_count**\ (\ ) :ref:`🔗<class_CameraServer_method_get_feed_count>`

返回註冊的 :ref:`CameraFeed<class_CameraFeed>` 的數量。

.. rst-class:: classref-item-separator

----

.. _class_CameraServer_method_remove_feed:

.. rst-class:: classref-method

|void| **remove_feed**\ (\ feed\: :ref:`CameraFeed<class_CameraFeed>`\ ) :ref:`🔗<class_CameraServer_method_remove_feed>`

移除指定的相機源 ``feed``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
