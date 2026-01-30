:github_url: hide

.. _class_VideoStream:

VideoStream
===========

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`VideoStreamTheora<class_VideoStreamTheora>`

影片流的基礎資源。

.. rst-class:: classref-introduction-group

說明
----

所有影片流的基礎資源型別。衍生自 **VideoStream** 的類都可以用作在 :ref:`VideoStreamPlayer<class_VideoStreamPlayer>` 中播放影片的資源型別。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`播放影片 <../tutorials/animation/playing_videos>`

- :doc:`執行時檔案載入與儲存 <../tutorials/io/runtime_file_loading_and_saving>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------------+----------------------------------------------+--------+
   | :ref:`String<class_String>` | :ref:`file<class_VideoStream_property_file>` | ``""`` |
   +-----------------------------+----------------------------------------------+--------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`VideoStreamPlayback<class_VideoStreamPlayback>` | :ref:`_instantiate_playback<class_VideoStream_private_method__instantiate_playback>`\ (\ ) |virtual| |required| |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_VideoStream_property_file:

.. rst-class:: classref-property

:ref:`String<class_String>` **file** = ``""`` :ref:`🔗<class_VideoStream_property_file>`

.. rst-class:: classref-property-setget

- |void| **set_file**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_file**\ (\ )

該 **VideoStream** 資源處理的影片檔路徑或 URI。

對於 :ref:`VideoStreamTheora<class_VideoStreamTheora>`\ ，這個檔案名應該是 Ogg Theora 影片檔，副檔名為 ``.ogv``\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_VideoStream_private_method__instantiate_playback:

.. rst-class:: classref-method

:ref:`VideoStreamPlayback<class_VideoStreamPlayback>` **_instantiate_playback**\ (\ ) |virtual| |required| :ref:`🔗<class_VideoStream_private_method__instantiate_playback>`

影片開始播放時呼叫，用於初始化並返回 :ref:`VideoStreamPlayback<class_VideoStreamPlayback>` 的子類別。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
