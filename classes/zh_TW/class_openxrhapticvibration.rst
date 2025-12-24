:github_url: hide

.. _class_OpenXRHapticVibration:

OpenXRHapticVibration
=====================

**繼承：** :ref:`OpenXRHapticBase<class_OpenXRHapticBase>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Vibration haptic feedback.

.. rst-class:: classref-introduction-group

說明
----

This haptic feedback resource makes it possible to define a vibration based haptic feedback pulse that can be triggered through actions in the OpenXR action map.

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------+------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`amplitude<class_OpenXRHapticVibration_property_amplitude>` | ``1.0`` |
   +---------------------------+------------------------------------------------------------------+---------+
   | :ref:`int<class_int>`     | :ref:`duration<class_OpenXRHapticVibration_property_duration>`   | ``-1``  |
   +---------------------------+------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`frequency<class_OpenXRHapticVibration_property_frequency>` | ``0.0`` |
   +---------------------------+------------------------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_OpenXRHapticVibration_property_amplitude:

.. rst-class:: classref-property

:ref:`float<class_float>` **amplitude** = ``1.0`` :ref:`🔗<class_OpenXRHapticVibration_property_amplitude>`

.. rst-class:: classref-property-setget

- |void| **set_amplitude**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_amplitude**\ (\ )

The amplitude of the pulse between ``0.0`` and ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRHapticVibration_property_duration:

.. rst-class:: classref-property

:ref:`int<class_int>` **duration** = ``-1`` :ref:`🔗<class_OpenXRHapticVibration_property_duration>`

.. rst-class:: classref-property-setget

- |void| **set_duration**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_duration**\ (\ )

The duration of the pulse in nanoseconds. Use ``-1`` for a minimum duration pulse for the current XR runtime.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRHapticVibration_property_frequency:

.. rst-class:: classref-property

:ref:`float<class_float>` **frequency** = ``0.0`` :ref:`🔗<class_OpenXRHapticVibration_property_frequency>`

.. rst-class:: classref-property-setget

- |void| **set_frequency**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_frequency**\ (\ )

The frequency of the pulse in Hz. ``0.0`` will let the XR runtime chose an optimal frequency for the device used.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
