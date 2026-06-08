:github_url: hide

.. _class_CameraServer:

CameraServer
============

**继承：** :ref:`Object<class_Object>`

跟踪 Godot 中可访问的不同摄像头的服务器。

.. rst-class:: classref-introduction-group

描述
----

**CameraServer** 追踪 Godot 中可访问的各类相机。这些属于外部相机，例如网络摄像头或手机上的摄像头。

主要用于为 AR 模块提供来自摄像头的视频源。

\ **注意：**\ 该类目前仅在 Linux、Android、macOS 和 iOS 上实现。在其他平台上，\ :ref:`CameraFeed<class_CameraFeed>` 将不可用。若要在 iOS 上获取 :ref:`CameraFeed<class_CameraFeed>`\ ，请启用 :ref:`EditorExportPlatformIOS.modules/camera<class_EditorExportPlatformIOS_property_modules/camera>`\ 。

.. rst-class:: classref-reftable-group

属性
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

信号
----

.. _class_CameraServer_signal_camera_feed_added:

.. rst-class:: classref-signal

**camera_feed_added**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_CameraServer_signal_camera_feed_added>`

当添加 :ref:`CameraFeed<class_CameraFeed>` 时发出（例如插入网络摄像头时）。

.. rst-class:: classref-item-separator

----

.. _class_CameraServer_signal_camera_feed_removed:

.. rst-class:: classref-signal

**camera_feed_removed**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_CameraServer_signal_camera_feed_removed>`

当移除 :ref:`CameraFeed<class_CameraFeed>` 时发出（例如拔掉网络摄像头时）。

.. rst-class:: classref-item-separator

----

.. _class_CameraServer_signal_camera_feeds_updated:

.. rst-class:: classref-signal

**camera_feeds_updated**\ (\ ) :ref:`🔗<class_CameraServer_signal_camera_feeds_updated>`

更新相机源时发出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_CameraServer_FeedImage:

.. rst-class:: classref-enumeration

enum **FeedImage**: :ref:`🔗<enum_CameraServer_FeedImage>`

.. _class_CameraServer_constant_FEED_RGBA_IMAGE:

.. rst-class:: classref-enumeration-constant

:ref:`FeedImage<enum_CameraServer_FeedImage>` **FEED_RGBA_IMAGE** = ``0``

RGBA 相机图像。

.. _class_CameraServer_constant_FEED_YCBCR_IMAGE:

.. rst-class:: classref-enumeration-constant

:ref:`FeedImage<enum_CameraServer_FeedImage>` **FEED_YCBCR_IMAGE** = ``0``

`YCbCr <https://zh.wikipedia.org/zh-cn/YCbCr>`__ 相机图像。

.. _class_CameraServer_constant_FEED_Y_IMAGE:

.. rst-class:: classref-enumeration-constant

:ref:`FeedImage<enum_CameraServer_FeedImage>` **FEED_Y_IMAGE** = ``0``

Y 分量相机图像。

.. _class_CameraServer_constant_FEED_CBCR_IMAGE:

.. rst-class:: classref-enumeration-constant

:ref:`FeedImage<enum_CameraServer_FeedImage>` **FEED_CBCR_IMAGE** = ``1``

CbCr 分量相机图像。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_CameraServer_property_monitoring_feeds:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **monitoring_feeds** = ``false`` :ref:`🔗<class_CameraServer_property_monitoring_feeds>`

.. rst-class:: classref-property-setget

- |void| **set_monitoring_feeds**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_monitoring_feeds**\ (\ )

如果为 ``true``\ ，则服务器会主动监听可用的相机源。

这样做存在性能开销，因此请只在主动访问相机时将其设为 ``true``\ 。

\ **注意：**\ 设为 ``true`` 后，你可以通过 :ref:`camera_feeds_updated<class_CameraServer_signal_camera_feeds_updated>` 信号获取更新后的相机源。


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

方法说明
--------

.. _class_CameraServer_method_add_feed:

.. rst-class:: classref-method

|void| **add_feed**\ (\ feed\: :ref:`CameraFeed<class_CameraFeed>`\ ) :ref:`🔗<class_CameraServer_method_add_feed>`

将相机源 ``feed`` 添加到相机服务器中。

.. rst-class:: classref-item-separator

----

.. _class_CameraServer_method_feeds:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`CameraFeed<class_CameraFeed>`\] **feeds**\ (\ ) :ref:`🔗<class_CameraServer_method_feeds>`

返回一个 :ref:`CameraFeed<class_CameraFeed>` 数组。

.. rst-class:: classref-item-separator

----

.. _class_CameraServer_method_get_feed:

.. rst-class:: classref-method

:ref:`CameraFeed<class_CameraFeed>` **get_feed**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_CameraServer_method_get_feed>`

返回与给定索引 ``index`` 的相机对应的 :ref:`CameraFeed<class_CameraFeed>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_CameraServer_method_get_feed_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_feed_count**\ (\ ) :ref:`🔗<class_CameraServer_method_get_feed_count>`

返回注册的 :ref:`CameraFeed<class_CameraFeed>` 的数量。

.. rst-class:: classref-item-separator

----

.. _class_CameraServer_method_remove_feed:

.. rst-class:: classref-method

|void| **remove_feed**\ (\ feed\: :ref:`CameraFeed<class_CameraFeed>`\ ) :ref:`🔗<class_CameraServer_method_remove_feed>`

移除指定的相机源 ``feed``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
