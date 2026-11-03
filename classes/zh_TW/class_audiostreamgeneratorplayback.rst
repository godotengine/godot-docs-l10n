:github_url: hide

.. _class_AudioStreamGeneratorPlayback:

AudioStreamGeneratorPlayback
============================

**繼承：** :ref:`AudioStreamPlaybackResampled<class_AudioStreamPlaybackResampled>` **<** :ref:`AudioStreamPlayback<class_AudioStreamPlayback>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

播放使用 :ref:`AudioStreamGenerator<class_AudioStreamGenerator>` 生成的音訊。

.. rst-class:: classref-introduction-group

說明
----

此類旨在與 :ref:`AudioStreamGenerator<class_AudioStreamGenerator>` 一起使用以即時播放生成的音訊。

.. rst-class:: classref-introduction-group

教學
----

- `音訊產生器範例 <https://godotengine.org/asset-library/asset/2759>`__

- `Godot 3.2 將獲得新的音訊功能 <https://godotengine.org/article/godot-32-will-get-new-audio-features>`__

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

方法說明
--------

.. _class_AudioStreamGeneratorPlayback_method_can_push_buffer:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **can_push_buffer**\ (\ amount\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamGeneratorPlayback_method_can_push_buffer>`

如果可以將大小為 ``amount`` 的緩衝區推送到音訊取樣資料緩衝區而不會使其溢出，則返回 ``true``\ ，否則返回 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamGeneratorPlayback_method_clear_buffer:

.. rst-class:: classref-method

|void| **clear_buffer**\ (\ ) :ref:`🔗<class_AudioStreamGeneratorPlayback_method_clear_buffer>`

清除音訊樣本資料緩衝區。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamGeneratorPlayback_method_get_frames_available:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_frames_available**\ (\ ) |const| :ref:`🔗<class_AudioStreamGeneratorPlayback_method_get_frames_available>`

返回能夠推送到音訊取樣資料緩衝區而不使其溢出的影格數。如果結果為 ``0``\ ，則緩衝區已滿。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamGeneratorPlayback_method_get_skips:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_skips**\ (\ ) |const| :ref:`🔗<class_AudioStreamGeneratorPlayback_method_get_skips>`

傳回因音訊樣本資料緩衝不足而導致播放跳影格的次數。此值會在播放開始時重設。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamGeneratorPlayback_method_push_buffer:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **push_buffer**\ (\ frames\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_AudioStreamGeneratorPlayback_method_push_buffer>`

將多個音訊資料影格推送到緩衝區。這通常比 C# 中的以及通過 GDExtension 編譯的語言中的 :ref:`push_frame()<class_AudioStreamGeneratorPlayback_method_push_frame>` 效率更高，但在 GDScript 中的 :ref:`push_buffer()<class_AudioStreamGeneratorPlayback_method_push_buffer>` 的效率可能\ *更低*\ 。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamGeneratorPlayback_method_push_frame:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **push_frame**\ (\ frame\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_AudioStreamGeneratorPlayback_method_push_frame>`

將單個音訊資料影格推送到緩衝區。這通常比 C# 中的以及通過 GDExtension 編譯的語言中的 :ref:`push_buffer()<class_AudioStreamGeneratorPlayback_method_push_buffer>` 效率更低，但在 GDScript 中的 :ref:`push_frame()<class_AudioStreamGeneratorPlayback_method_push_frame>` 的效率可能\ *更高*\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
