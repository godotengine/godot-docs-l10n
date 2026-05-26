:github_url: hide

.. _class_AudioEffectReverb:

AudioEffectReverb
=================

**繼承：** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Adds a reverberation audio effect to an audio bus.

Emulates an echo by playing a blurred version of the input audio.

.. rst-class:: classref-introduction-group

說明
----

A "reverb" effect plays the input audio back continuously, decaying over a period of time. It simulates sounds in different kinds of spaces, ranging from small rooms, to big caverns.

See also :ref:`AudioEffectDelay<class_AudioEffectDelay>` for a non-blurry type of echo.

.. rst-class:: classref-introduction-group

教學
----

- :doc:`音訊匯流排 <../tutorials/audio/audio_buses>`

- :doc:`Audio effects <../tutorials/audio/audio_effects>`

- `第三人稱射擊（TPS）示範 <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`damping<class_AudioEffectReverb_property_damping>`                     | ``0.5``   |
   +---------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`dry<class_AudioEffectReverb_property_dry>`                             | ``1.0``   |
   +---------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`hipass<class_AudioEffectReverb_property_hipass>`                       | ``0.0``   |
   +---------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`predelay_feedback<class_AudioEffectReverb_property_predelay_feedback>` | ``0.4``   |
   +---------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`predelay_msec<class_AudioEffectReverb_property_predelay_msec>`         | ``150.0`` |
   +---------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`room_size<class_AudioEffectReverb_property_room_size>`                 | ``0.8``   |
   +---------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`spread<class_AudioEffectReverb_property_spread>`                       | ``1.0``   |
   +---------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`wet<class_AudioEffectReverb_property_wet>`                             | ``0.5``   |
   +---------------------------+------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_AudioEffectReverb_property_damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **damping** = ``0.5`` :ref:`🔗<class_AudioEffectReverb_property_damping>`

.. rst-class:: classref-property-setget

- |void| **set_damping**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_damping**\ (\ )

Defines how reflective the imaginary room's walls are. The more reflective, the more high frequency content the reverb has. Value can range from 0 to 1.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectReverb_property_dry:

.. rst-class:: classref-property

:ref:`float<class_float>` **dry** = ``1.0`` :ref:`🔗<class_AudioEffectReverb_property_dry>`

.. rst-class:: classref-property-setget

- |void| **set_dry**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_dry**\ (\ )

The volume ratio of the original audio. At 0, only the modified audio is outputted. Value can range from 0 to 1.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectReverb_property_hipass:

.. rst-class:: classref-property

:ref:`float<class_float>` **hipass** = ``0.0`` :ref:`🔗<class_AudioEffectReverb_property_hipass>`

.. rst-class:: classref-property-setget

- |void| **set_hpf**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_hpf**\ (\ )

High-pass filter allows frequencies higher than a certain cutoff threshold and attenuates frequencies lower than the cutoff threshold. Value can range from 0 to 1.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectReverb_property_predelay_feedback:

.. rst-class:: classref-property

:ref:`float<class_float>` **predelay_feedback** = ``0.4`` :ref:`🔗<class_AudioEffectReverb_property_predelay_feedback>`

.. rst-class:: classref-property-setget

- |void| **set_predelay_feedback**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_predelay_feedback**\ (\ )

Gain of early reflection copies. At higher values, early reflection copies are louder and ring out for longer. Value can range from 0 to 1.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectReverb_property_predelay_msec:

.. rst-class:: classref-property

:ref:`float<class_float>` **predelay_msec** = ``150.0`` :ref:`🔗<class_AudioEffectReverb_property_predelay_msec>`

.. rst-class:: classref-property-setget

- |void| **set_predelay_msec**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_predelay_msec**\ (\ )

Time between the original audio and the early reflections of the reverb signal, in milliseconds. Value can range from 20 to 500.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectReverb_property_room_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **room_size** = ``0.8`` :ref:`🔗<class_AudioEffectReverb_property_room_size>`

.. rst-class:: classref-property-setget

- |void| **set_room_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_room_size**\ (\ )

模擬房間尺寸，越大回聲越多。取值 0–1。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectReverb_property_spread:

.. rst-class:: classref-property

:ref:`float<class_float>` **spread** = ``1.0`` :ref:`🔗<class_AudioEffectReverb_property_spread>`

.. rst-class:: classref-property-setget

- |void| **set_spread**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_spread**\ (\ )

Widens or narrows the stereo image of the reverb tail. At 1, it fully widens. Value can range from 0 to 1.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectReverb_property_wet:

.. rst-class:: classref-property

:ref:`float<class_float>` **wet** = ``0.5`` :ref:`🔗<class_AudioEffectReverb_property_wet>`

.. rst-class:: classref-property-setget

- |void| **set_wet**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_wet**\ (\ )

The volume ratio of the modified audio. At 0, only the original audio is outputted. Value can range from 0 to 1.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
