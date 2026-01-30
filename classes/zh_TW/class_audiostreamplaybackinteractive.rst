:github_url: hide

.. _class_AudioStreamPlaybackInteractive:

AudioStreamPlaybackInteractive
==============================

**繼承：** :ref:`AudioStreamPlayback<class_AudioStreamPlayback>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

:ref:`AudioStreamInteractive<class_AudioStreamInteractive>` 的播放元件。

.. rst-class:: classref-introduction-group

說明
----

:ref:`AudioStreamInteractive<class_AudioStreamInteractive>` 的播放元件，包含用於切換當前播放片段的函式。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`get_current_clip_index<class_AudioStreamPlaybackInteractive_method_get_current_clip_index>`\ (\ ) |const|                                          |
   +-----------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                | :ref:`switch_to_clip<class_AudioStreamPlaybackInteractive_method_switch_to_clip>`\ (\ clip_index\: :ref:`int<class_int>`\ )                              |
   +-----------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                | :ref:`switch_to_clip_by_name<class_AudioStreamPlaybackInteractive_method_switch_to_clip_by_name>`\ (\ clip_name\: :ref:`StringName<class_StringName>`\ ) |
   +-----------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_AudioStreamPlaybackInteractive_method_get_current_clip_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_current_clip_index**\ (\ ) |const| :ref:`🔗<class_AudioStreamPlaybackInteractive_method_get_current_clip_index>`

返回目前正在播放的片段索引。可搭配 :ref:`AudioStreamInteractive.get_clip_name()<class_AudioStreamInteractive_method_get_clip_name>` 取得當前片段名稱。

\ **範例：** 在 :ref:`AudioStreamPlayer<class_AudioStreamPlayer>` 節點中取得目前播放片段的名稱。


.. tabs::

 .. code-tab:: gdscript

    var playing_clip_name = stream.get_clip_name(get_stream_playback().get_current_clip_index())



.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlaybackInteractive_method_switch_to_clip:

.. rst-class:: classref-method

|void| **switch_to_clip**\ (\ clip_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AudioStreamPlaybackInteractive_method_switch_to_clip>`

切換至指定索引的片段。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlaybackInteractive_method_switch_to_clip_by_name:

.. rst-class:: classref-method

|void| **switch_to_clip_by_name**\ (\ clip_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AudioStreamPlaybackInteractive_method_switch_to_clip_by_name>`

切換至指定名稱的片段。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
