:github_url: hide

.. _class_AudioEffectPitchShift:

AudioEffectPitchShift
=====================

**繼承：** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

為音訊匯流排新增音高位移效果。

可提升或降低原始聲音的音高。

.. rst-class:: classref-introduction-group

說明
----

可在不改變速度的情況下調變音高；所有頻率皆可升降，且對瞬態的影響極小。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`音訊匯流排 <../tutorials/audio/audio_buses>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +----------------------------------------------------+------------------------------------------------------------------------+---------+
   | :ref:`FFTSize<enum_AudioEffectPitchShift_FFTSize>` | :ref:`fft_size<class_AudioEffectPitchShift_property_fft_size>`         | ``3``   |
   +----------------------------------------------------+------------------------------------------------------------------------+---------+
   | :ref:`int<class_int>`                              | :ref:`oversampling<class_AudioEffectPitchShift_property_oversampling>` | ``4``   |
   +----------------------------------------------------+------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>`                          | :ref:`pitch_scale<class_AudioEffectPitchShift_property_pitch_scale>`   | ``1.0`` |
   +----------------------------------------------------+------------------------------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_AudioEffectPitchShift_FFTSize:

.. rst-class:: classref-enumeration

enum **FFTSize**: :ref:`🔗<enum_AudioEffectPitchShift_FFTSize>`

.. _class_AudioEffectPitchShift_constant_FFT_SIZE_256:

.. rst-class:: classref-enumeration-constant

:ref:`FFTSize<enum_AudioEffectPitchShift_FFTSize>` **FFT_SIZE_256** = ``0``

使用 256 個取樣點進行快速傅立葉轉換。延遲最低，但長時間穩定性最差。

.. _class_AudioEffectPitchShift_constant_FFT_SIZE_512:

.. rst-class:: classref-enumeration-constant

:ref:`FFTSize<enum_AudioEffectPitchShift_FFTSize>` **FFT_SIZE_512** = ``1``

使用 512 個取樣點進行快速傅立葉轉換。延遲低，但長時間穩定性較差。

.. _class_AudioEffectPitchShift_constant_FFT_SIZE_1024:

.. rst-class:: classref-enumeration-constant

:ref:`FFTSize<enum_AudioEffectPitchShift_FFTSize>` **FFT_SIZE_1024** = ``2``

使用 1024 個取樣點進行快速傅立葉轉換。延遲與穩定性折衷。

.. _class_AudioEffectPitchShift_constant_FFT_SIZE_2048:

.. rst-class:: classref-enumeration-constant

:ref:`FFTSize<enum_AudioEffectPitchShift_FFTSize>` **FFT_SIZE_2048** = ``3``

使用 2048 個取樣點進行快速傅立葉轉換。延遲高，但穩定。

.. _class_AudioEffectPitchShift_constant_FFT_SIZE_4096:

.. rst-class:: classref-enumeration-constant

:ref:`FFTSize<enum_AudioEffectPitchShift_FFTSize>` **FFT_SIZE_4096** = ``4``

使用 4096 個取樣點進行快速傅立葉轉換。延遲最高，但穩定性最佳。

.. _class_AudioEffectPitchShift_constant_FFT_SIZE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`FFTSize<enum_AudioEffectPitchShift_FFTSize>` **FFT_SIZE_MAX** = ``5``

代表 :ref:`FFTSize<enum_AudioEffectPitchShift_FFTSize>` 列舉的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_AudioEffectPitchShift_property_fft_size:

.. rst-class:: classref-property

:ref:`FFTSize<enum_AudioEffectPitchShift_FFTSize>` **fft_size** = ``3`` :ref:`🔗<class_AudioEffectPitchShift_property_fft_size>`

.. rst-class:: classref-property-setget

- |void| **set_fft_size**\ (\ value\: :ref:`FFTSize<enum_AudioEffectPitchShift_FFTSize>`\ )
- :ref:`FFTSize<enum_AudioEffectPitchShift_FFTSize>` **get_fft_size**\ (\ )

`快速傅立葉轉換 <https://en.wikipedia.org/wiki/Fast_Fourier_transform>`__\ 緩衝區大小。數值越高效果隨時間越平滑，但延遲也越大；此延遲對瞬間振幅變化的聲音尤為明顯。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectPitchShift_property_oversampling:

.. rst-class:: classref-property

:ref:`int<class_int>` **oversampling** = ``4`` :ref:`🔗<class_AudioEffectPitchShift_property_oversampling>`

.. rst-class:: classref-property-setget

- |void| **set_oversampling**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_oversampling**\ (\ )

過取樣係數。值越高音質越好，但 CPU 負擔也越重，若處理不及可能導致爆音。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectPitchShift_property_pitch_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **pitch_scale** = ``1.0`` :ref:`🔗<class_AudioEffectPitchShift_property_pitch_scale>`

.. rst-class:: classref-property-setget

- |void| **set_pitch_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pitch_scale**\ (\ )

音高縮放倍率。\ ``1.0`` 為預設音高且不改變播放。\ :ref:`pitch_scale<class_AudioEffectPitchShift_property_pitch_scale>` 取值範圍為 ``0.0``\ （無限低，聽不見）到 ``16``\ （高出原音高 16 倍）。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
