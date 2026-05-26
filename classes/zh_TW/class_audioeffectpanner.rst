:github_url: hide

.. _class_AudioEffectPanner:

AudioEffectPanner
=================

**繼承：** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Adds a panner audio effect to an audio bus.

Pans the sound left or right.

.. rst-class:: classref-introduction-group

說明
----

Determines how much of the audio signal is sent to the left and right channels. This helps with audio spatialization, giving sounds distinct places in a mix.

\ :ref:`AudioStreamPlayer2D<class_AudioStreamPlayer2D>` and :ref:`AudioStreamPlayer3D<class_AudioStreamPlayer3D>` handle panning automatically, following where the source of the sound is on the screen.

.. rst-class:: classref-introduction-group

教學
----

- :doc:`音訊匯流排 <../tutorials/audio/audio_buses>`

- :doc:`Audio effects <../tutorials/audio/audio_effects>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`pan<class_AudioEffectPanner_property_pan>` | ``0.0`` |
   +---------------------------+--------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_AudioEffectPanner_property_pan:

.. rst-class:: classref-property

:ref:`float<class_float>` **pan** = ``0.0`` :ref:`🔗<class_AudioEffectPanner_property_pan>`

.. rst-class:: classref-property-setget

- |void| **set_pan**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pan**\ (\ )

Pan position. Negative values pan the sound to the left, positive pan to the right. Value can range from -1 to 1.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
