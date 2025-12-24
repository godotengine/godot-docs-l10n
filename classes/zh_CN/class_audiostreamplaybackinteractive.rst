:github_url: hide

.. _class_AudioStreamPlaybackInteractive:

AudioStreamPlaybackInteractive
==============================

**继承：** :ref:`AudioStreamPlayback<class_AudioStreamPlayback>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

:ref:`AudioStreamInteractive<class_AudioStreamInteractive>` 的播放组件。

.. rst-class:: classref-introduction-group

描述
----

:ref:`AudioStreamInteractive<class_AudioStreamInteractive>` 的播放组件。包含更改当前播放剪辑的函数。

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

方法说明
--------

.. _class_AudioStreamPlaybackInteractive_method_get_current_clip_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_current_clip_index**\ (\ ) |const| :ref:`🔗<class_AudioStreamPlaybackInteractive_method_get_current_clip_index>`

返回当前正在播放的剪辑的索引。可以通过 :ref:`AudioStreamInteractive.get_clip_name()<class_AudioStreamInteractive_method_get_clip_name>` 用该索引获取当前正在播放的剪辑的名称。

\ **示例：**\ 在 :ref:`AudioStreamPlayer<class_AudioStreamPlayer>` 节点中获取当前正在播放的剪辑的名称。


.. tabs::

 .. code-tab:: gdscript

    var playing_clip_name = stream.get_clip_name(get_stream_playback().get_current_clip_index())



.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlaybackInteractive_method_switch_to_clip:

.. rst-class:: classref-method

|void| **switch_to_clip**\ (\ clip_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AudioStreamPlaybackInteractive_method_switch_to_clip>`

切换到剪辑（根据索引）。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlaybackInteractive_method_switch_to_clip_by_name:

.. rst-class:: classref-method

|void| **switch_to_clip_by_name**\ (\ clip_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AudioStreamPlaybackInteractive_method_switch_to_clip_by_name>`

切换到剪辑（根据名称）。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
