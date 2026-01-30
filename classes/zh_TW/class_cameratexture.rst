:github_url: hide

.. _class_CameraTexture:

CameraTexture
=============

**繼承：** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

由 :ref:`CameraFeed<class_CameraFeed>` 提供的紋理。

.. rst-class:: classref-introduction-group

說明
----

該紋理可以存取 :ref:`CameraFeed<class_CameraFeed>` 提供的相機紋理。

\ **注意：**\ 許多相機提供的都是 YCbCr 圖像，需要在著色器中進行轉換。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------------------------------+------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                         | :ref:`camera_feed_id<class_CameraTexture_property_camera_feed_id>`     | ``0``                                                                                  |
   +-----------------------------------------------+------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                       | :ref:`camera_is_active<class_CameraTexture_property_camera_is_active>` | ``false``                                                                              |
   +-----------------------------------------------+------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                       | resource_local_to_scene                                                | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +-----------------------------------------------+------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`FeedImage<enum_CameraServer_FeedImage>` | :ref:`which_feed<class_CameraTexture_property_which_feed>`             | ``0``                                                                                  |
   +-----------------------------------------------+------------------------------------------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_CameraTexture_property_camera_feed_id:

.. rst-class:: classref-property

:ref:`int<class_int>` **camera_feed_id** = ``0`` :ref:`🔗<class_CameraTexture_property_camera_feed_id>`

.. rst-class:: classref-property-setget

- |void| **set_camera_feed_id**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_camera_feed_id**\ (\ )

我們要顯示圖像的 :ref:`CameraFeed<class_CameraFeed>` 的 ID。

.. rst-class:: classref-item-separator

----

.. _class_CameraTexture_property_camera_is_active:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **camera_is_active** = ``false`` :ref:`🔗<class_CameraTexture_property_camera_is_active>`

.. rst-class:: classref-property-setget

- |void| **set_camera_active**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_camera_active**\ (\ )

給予存取 :ref:`CameraFeed<class_CameraFeed>` 的活動屬性的便利屬性。

.. rst-class:: classref-item-separator

----

.. _class_CameraTexture_property_which_feed:

.. rst-class:: classref-property

:ref:`FeedImage<enum_CameraServer_FeedImage>` **which_feed** = ``0`` :ref:`🔗<class_CameraTexture_property_which_feed>`

.. rst-class:: classref-property-setget

- |void| **set_which_feed**\ (\ value\: :ref:`FeedImage<enum_CameraServer_FeedImage>`\ )
- :ref:`FeedImage<enum_CameraServer_FeedImage>` **get_which_feed**\ (\ )

我們要存取 :ref:`CameraFeed<class_CameraFeed>` 中的哪個圖像，如果相機圖像被分割成 Y 和 CbCr 分量，這一點很重要。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
