:github_url: hide

.. _class_AudioStreamPolyphonic:

AudioStreamPolyphonic
=====================

**繼承：** :ref:`AudioStream<class_AudioStream>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

允許使用者透過程式碼隨時播放自訂音訊流，並以單一播放器同時輸出。

.. rst-class:: classref-introduction-group

說明
----

允許使用者透過程式碼隨時以單一播放器播放多條自訂音訊流。

播放控制透過播放器內的 :ref:`AudioStreamPlaybackPolyphonic<class_AudioStreamPlaybackPolyphonic>` 實例完成，可呼叫 :ref:`AudioStreamPlayer.get_stream_playback()<class_AudioStreamPlayer_method_get_stream_playback>`\ 、\ :ref:`AudioStreamPlayer2D.get_stream_playback()<class_AudioStreamPlayer2D_method_get_stream_playback>` 或 :ref:`AudioStreamPlayer3D.get_stream_playback()<class_AudioStreamPlayer3D_method_get_stream_playback>` 取得。僅當這些播放器的 ``stream`` 屬性已設為 **AudioStreamPolyphonic** 時，才能取得該實例。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`音訊流 <../tutorials/audio/audio_streams>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------+------------------------------------------------------------------+--------+
   | :ref:`int<class_int>` | :ref:`polyphony<class_AudioStreamPolyphonic_property_polyphony>` | ``32`` |
   +-----------------------+------------------------------------------------------------------+--------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_AudioStreamPolyphonic_property_polyphony:

.. rst-class:: classref-property

:ref:`int<class_int>` **polyphony** = ``32`` :ref:`🔗<class_AudioStreamPolyphonic_property_polyphony>`

.. rst-class:: classref-property-setget

- |void| **set_polyphony**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_polyphony**\ (\ )

可同時播放的最大音訊流數量。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
