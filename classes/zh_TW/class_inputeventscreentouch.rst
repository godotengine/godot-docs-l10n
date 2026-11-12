:github_url: hide

.. _class_InputEventScreenTouch:

InputEventScreenTouch
=====================

**繼承：** :ref:`InputEventFromWindow<class_InputEventFromWindow>` **<** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

代表螢幕觸摸事件。

.. rst-class:: classref-introduction-group

說明
----

儲存多點觸摸的按壓/釋放資訊。支援觸摸按壓、觸摸釋放以及用於多點觸摸計數和定序的 :ref:`index<class_InputEventScreenTouch_property_index>`\ 。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`使用 InputEvent <../tutorials/inputs/inputevent>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`       | :ref:`canceled<class_InputEventScreenTouch_property_canceled>`     | ``false``         |
   +-------------------------------+--------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`       | :ref:`double_tap<class_InputEventScreenTouch_property_double_tap>` | ``false``         |
   +-------------------------------+--------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`         | :ref:`index<class_InputEventScreenTouch_property_index>`           | ``0``             |
   +-------------------------------+--------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`       | :ref:`long_press<class_InputEventScreenTouch_property_long_press>` | ``false``         |
   +-------------------------------+--------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`position<class_InputEventScreenTouch_property_position>`     | ``Vector2(0, 0)`` |
   +-------------------------------+--------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`       | :ref:`pressed<class_InputEventScreenTouch_property_pressed>`       | ``false``         |
   +-------------------------------+--------------------------------------------------------------------+-------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_InputEventScreenTouch_property_canceled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **canceled** = ``false`` :ref:`🔗<class_InputEventScreenTouch_property_canceled>`

.. rst-class:: classref-property-setget

- |void| **set_canceled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_canceled**\ (\ )

如果為 ``true``\ ，則觸摸事件被取消。

.. rst-class:: classref-item-separator

----

.. _class_InputEventScreenTouch_property_double_tap:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **double_tap** = ``false`` :ref:`🔗<class_InputEventScreenTouch_property_double_tap>`

.. rst-class:: classref-property-setget

- |void| **set_double_tap**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_double_tap**\ (\ )

如果為 ``true``\ ，則觸摸狀態為雙擊。

.. rst-class:: classref-item-separator

----

.. _class_InputEventScreenTouch_property_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **index** = ``0`` :ref:`🔗<class_InputEventScreenTouch_property_index>`

.. rst-class:: classref-property-setget

- |void| **set_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_index**\ (\ )

在多點觸摸事件中的觸摸指數。一個索引 = 一個手指。

.. rst-class:: classref-item-separator

----

.. _class_InputEventScreenTouch_property_long_press:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **long_press** = ``false`` :ref:`🔗<class_InputEventScreenTouch_property_long_press>`

.. rst-class:: classref-property-setget

- |void| **set_long_press**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_long_press**\ (\ )

If ``true``, the touch's state is a long press.

\ **Note:** This is only supported on Android and iOS.

.. rst-class:: classref-item-separator

----

.. _class_InputEventScreenTouch_property_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **position** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventScreenTouch_property_position>`

.. rst-class:: classref-property-setget

- |void| **set_position**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_position**\ (\ )

節點所在視埠中的觸摸位置，使用該視埠的座標系。

.. rst-class:: classref-item-separator

----

.. _class_InputEventScreenTouch_property_pressed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pressed** = ``false`` :ref:`🔗<class_InputEventScreenTouch_property_pressed>`

.. rst-class:: classref-property-setget

- |void| **set_pressed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_pressed**\ (\ )

如果為 ``true``\ ，觸摸的狀態為按下。如果為 ``false``\ ，觸摸的狀態被釋放。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
