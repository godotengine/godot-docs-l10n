:github_url: hide

.. _class_ResourceImporterWAV:

ResourceImporterWAV
===================

**繼承：** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

匯入 WAV 音訊檔案播放。

.. rst-class:: classref-introduction-group

說明
----

WAV is an uncompressed format, which can provide higher quality compared to Ogg Vorbis and MP3. It also has the lowest CPU cost to decode. This means high numbers of WAV sounds can be played at the same time, even on low-end devices.

By default, Godot imports WAV files using the lossy Quite OK Audio compression. You may change this by setting the :ref:`compress/mode<class_ResourceImporterWAV_property_compress/mode>` property.

.. rst-class:: classref-introduction-group

教學
----

- :doc:`匯入音訊樣本 <../tutorials/assets_pipeline/importing_audio_samples>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`compress/mode<class_ResourceImporterWAV_property_compress/mode>`         | ``2``     |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`edit/loop_begin<class_ResourceImporterWAV_property_edit/loop_begin>`     | ``0``     |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`edit/loop_end<class_ResourceImporterWAV_property_edit/loop_end>`         | ``-1``    |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`edit/loop_mode<class_ResourceImporterWAV_property_edit/loop_mode>`       | ``0``     |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`edit/normalize<class_ResourceImporterWAV_property_edit/normalize>`       | ``false`` |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`edit/trim<class_ResourceImporterWAV_property_edit/trim>`                 | ``false`` |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`force/8_bit<class_ResourceImporterWAV_property_force/8_bit>`             | ``false`` |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`force/max_rate<class_ResourceImporterWAV_property_force/max_rate>`       | ``false`` |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`force/max_rate_hz<class_ResourceImporterWAV_property_force/max_rate_hz>` | ``44100`` |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`force/mono<class_ResourceImporterWAV_property_force/mono>`               | ``false`` |
   +---------------------------+--------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_ResourceImporterWAV_property_compress/mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/mode** = ``2`` :ref:`🔗<class_ResourceImporterWAV_property_compress/mode>`

The compression mode to use on import.

- **PCM (Uncompressed):** Imports audio data without any form of compression, preserving the highest possible quality. It has the lowest CPU cost, but the highest memory usage.

- **IMA ADPCM:** Applies fast, lossy compression during import, noticeably decreasing the quality, but with low CPU cost and memory usage. Does not support seeking and only Forward loop mode is supported.

- **\ `Quite OK Audio <https://qoaformat.org/>`__:** Also applies lossy compression on import, having a slightly higher CPU cost compared to IMA ADPCM, but much higher quality and the lowest memory usage.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_edit/loop_begin:

.. rst-class:: classref-property

:ref:`int<class_int>` **edit/loop_begin** = ``0`` :ref:`🔗<class_ResourceImporterWAV_property_edit/loop_begin>`

The begin loop point to use when :ref:`edit/loop_mode<class_ResourceImporterWAV_property_edit/loop_mode>` is **Forward**, **Ping-Pong**, or **Backward**. This is set in samples after the beginning of the audio file.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_edit/loop_end:

.. rst-class:: classref-property

:ref:`int<class_int>` **edit/loop_end** = ``-1`` :ref:`🔗<class_ResourceImporterWAV_property_edit/loop_end>`

The end loop point to use when :ref:`edit/loop_mode<class_ResourceImporterWAV_property_edit/loop_mode>` is **Forward**, **Ping-Pong**, or **Backward**. This is set in samples after the beginning of the audio file. A value of ``-1`` uses the end of the audio file as the end loop point.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_edit/loop_mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **edit/loop_mode** = ``0`` :ref:`🔗<class_ResourceImporterWAV_property_edit/loop_mode>`

Controls how audio should loop.

- **Detect From WAV:** Uses loop information from the WAV metadata.

- **Disabled:** Don't loop audio, even if the metadata indicates the file playback should loop.

- **Forward:** Standard audio looping. Plays the audio forward from the beginning to :ref:`edit/loop_end<class_ResourceImporterWAV_property_edit/loop_end>`, then returns to :ref:`edit/loop_begin<class_ResourceImporterWAV_property_edit/loop_begin>` and repeats.

- **Ping-Pong:** Plays the audio forward until :ref:`edit/loop_end<class_ResourceImporterWAV_property_edit/loop_end>`, then backwards to :ref:`edit/loop_begin<class_ResourceImporterWAV_property_edit/loop_begin>`, repeating this cycle.

- **Backward:** Plays the audio backwards from :ref:`edit/loop_end<class_ResourceImporterWAV_property_edit/loop_end>` to :ref:`edit/loop_begin<class_ResourceImporterWAV_property_edit/loop_begin>`, then repeats.

\ **Note:** In :ref:`AudioStreamPlayer<class_AudioStreamPlayer>`, the :ref:`AudioStreamPlayer.finished<class_AudioStreamPlayer_signal_finished>` signal won't be emitted for looping audio when it reaches the end of the audio file, as the audio will keep playing indefinitely.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_edit/normalize:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **edit/normalize** = ``false`` :ref:`🔗<class_ResourceImporterWAV_property_edit/normalize>`

如果\ ``true``\ ，則標準化音訊音量，使其峰值音量等於0 dB。啟用後，標準化將使音訊聽起來更響亮，取決於其原始峰值體積。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_edit/trim:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **edit/trim** = ``false`` :ref:`🔗<class_ResourceImporterWAV_property_edit/trim>`

如果\ ``true``\ ，如果標準化後音訊低於-50 dB，則自動修剪音訊的開頭和結尾（請參閱\ :ref:`edit/normalize<class_ResourceImporterWAV_property_edit/normalize>`\ ）。這防止檔案在開頭或結尾處靜音，這不必要地增加了檔案的大小，並增加了播放時的延遲。在修剪過程中還使用了 500 個樣本的淡入/淡出週期，以避免聽到爆音。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_force/8_bit:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **force/8_bit** = ``false`` :ref:`🔗<class_ResourceImporterWAV_property_force/8_bit>`

如果 ``true``\ ，如果來源檔案為 16 位元或更高，則強制匯入的音訊使用 8 位元量化。

通常不建議啟用此功能，因為 8 位元量化會顯著降低音訊品質。如果您需要較小的檔案大小，請考慮使用 Ogg Vorbis 或 MP3 音訊。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_force/max_rate:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **force/max_rate** = ``false`` :ref:`🔗<class_ResourceImporterWAV_property_force/max_rate>`

如果設定為大於 ``0`` 的值，則強制音訊的取樣率降低到低於或等於 :ref:`force/max_rate_hz<class_ResourceImporterWAV_property_force/max_rate_hz>` 中指定的值。

這可以顯著減小某些聲音的檔案大小，而不會影響質量，具體取決於實際聲音的內容。有關詳細信息，請參閱\ `最佳實踐 <../tutorials/assets_pipeline/importing_audio_samples.html#doc-importing-audio-samples-best-practices>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_force/max_rate_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **force/max_rate_hz** = ``44100`` :ref:`🔗<class_ResourceImporterWAV_property_force/max_rate_hz>`

代表粒子軌跡的時間量（以秒為單位）。僅當 :ref:`force/max_rate<class_ResourceImporterWAV_property_force/max_rate>` 為 ``true`` 時有效。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_force/mono:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **force/mono** = ``false`` :ref:`🔗<class_ResourceImporterWAV_property_force/mono>`

如果\ ``true``\ ，如果來源檔案是立體聲，則強制匯入的音訊為單聲道。透過將兩個通道合併為一個通道，可以將檔案大小減少50% 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
