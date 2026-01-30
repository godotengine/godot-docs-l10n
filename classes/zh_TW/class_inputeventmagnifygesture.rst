:github_url: hide

.. _class_InputEventMagnifyGesture:

InputEventMagnifyGesture
========================

**繼承：** :ref:`InputEventGesture<class_InputEventGesture>` **<** :ref:`InputEventWithModifiers<class_InputEventWithModifiers>` **<** :ref:`InputEventFromWindow<class_InputEventFromWindow>` **<** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

代表放大觸摸手勢。

.. rst-class:: classref-introduction-group

說明
----

Stores the factor of a magnifying touch gesture. This is usually performed when the user pinches the touch screen and used for zooming in/out.

\ **Note:** On Android, this requires the :ref:`ProjectSettings.input_devices/pointing/android/enable_pan_and_scale_gestures<class_ProjectSettings_property_input_devices/pointing/android/enable_pan_and_scale_gestures>` project setting to be enabled.

.. rst-class:: classref-introduction-group

教學
----

- :doc:`使用 InputEvent <../tutorials/inputs/inputevent>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`factor<class_InputEventMagnifyGesture_property_factor>` | ``1.0`` |
   +---------------------------+---------------------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_InputEventMagnifyGesture_property_factor:

.. rst-class:: classref-property

:ref:`float<class_float>` **factor** = ``1.0`` :ref:`🔗<class_InputEventMagnifyGesture_property_factor>`

.. rst-class:: classref-property-setget

- |void| **set_factor**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_factor**\ (\ )

事件的量（或差異量）。這個值越接近 ``1.0``\ ，手勢執行地越快。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
