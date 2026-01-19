:github_url: hide

.. _class_AudioStreamGeneratorPlayback:

AudioStreamGeneratorPlayback
============================

**继承：** :ref:`AudioStreamPlaybackResampled<class_AudioStreamPlaybackResampled>` **<** :ref:`AudioStreamPlayback<class_AudioStreamPlayback>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

播放使用 :ref:`AudioStreamGenerator<class_AudioStreamGenerator>` 生成的音频。

.. rst-class:: classref-introduction-group

描述
----

此类旨在与 :ref:`AudioStreamGenerator<class_AudioStreamGenerator>` 一起使用以实时播放生成的音频。

.. rst-class:: classref-introduction-group

教程
----

- `音频生成器演示 <https://godotengine.org/asset-library/asset/2759>`__

- `Godot 3.2 将获得新的音频功能 <https://godotengine.org/article/godot-32-will-get-new-audio-features>`__

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`can_push_buffer<class_AudioStreamGeneratorPlayback_method_can_push_buffer>`\ (\ amount\: :ref:`int<class_int>`\ ) |const|               |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`clear_buffer<class_AudioStreamGeneratorPlayback_method_clear_buffer>`\ (\ )                                                             |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`   | :ref:`get_frames_available<class_AudioStreamGeneratorPlayback_method_get_frames_available>`\ (\ ) |const|                                     |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`   | :ref:`get_skips<class_AudioStreamGeneratorPlayback_method_get_skips>`\ (\ ) |const|                                                           |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`push_buffer<class_AudioStreamGeneratorPlayback_method_push_buffer>`\ (\ frames\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`push_frame<class_AudioStreamGeneratorPlayback_method_push_frame>`\ (\ frame\: :ref:`Vector2<class_Vector2>`\ )                          |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_AudioStreamGeneratorPlayback_method_can_push_buffer:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **can_push_buffer**\ (\ amount\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamGeneratorPlayback_method_can_push_buffer>`

如果可以将大小为 ``amount`` 的缓冲区推送到音频采样数据缓冲区而不会使其溢出，则返回 ``true``\ ，否则返回 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamGeneratorPlayback_method_clear_buffer:

.. rst-class:: classref-method

|void| **clear_buffer**\ (\ ) :ref:`🔗<class_AudioStreamGeneratorPlayback_method_clear_buffer>`

清除音频样本数据缓冲区。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamGeneratorPlayback_method_get_frames_available:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_frames_available**\ (\ ) |const| :ref:`🔗<class_AudioStreamGeneratorPlayback_method_get_frames_available>`

返回能够推送到音频采样数据缓冲区而不使其溢出的帧数。如果结果为 ``0``\ ，则缓冲区已满。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamGeneratorPlayback_method_get_skips:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_skips**\ (\ ) |const| :ref:`🔗<class_AudioStreamGeneratorPlayback_method_get_skips>`

返回由于音频样本数据中缓冲区不足而导致播放跳过的次数。该值在播放开始时重置。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamGeneratorPlayback_method_push_buffer:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **push_buffer**\ (\ frames\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_AudioStreamGeneratorPlayback_method_push_buffer>`

将多个音频数据帧推送到缓冲区。这通常比 C# 中的以及通过 GDExtension 编译的语言中的 :ref:`push_frame()<class_AudioStreamGeneratorPlayback_method_push_frame>` 效率更高，但在 GDScript 中的 :ref:`push_buffer()<class_AudioStreamGeneratorPlayback_method_push_buffer>` 的效率可能\ *更低*\ 。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamGeneratorPlayback_method_push_frame:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **push_frame**\ (\ frame\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_AudioStreamGeneratorPlayback_method_push_frame>`

将单个音频数据帧推送到缓冲区。这通常比 C# 中的以及通过 GDExtension 编译的语言中的 :ref:`push_buffer()<class_AudioStreamGeneratorPlayback_method_push_buffer>` 效率更低，但在 GDScript 中的 :ref:`push_frame()<class_AudioStreamGeneratorPlayback_method_push_frame>` 的效率可能\ *更高*\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
