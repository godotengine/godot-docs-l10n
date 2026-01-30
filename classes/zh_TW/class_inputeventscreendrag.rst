:github_url: hide

.. _class_InputEventScreenDrag:

InputEventScreenDrag
====================

**繼承：** :ref:`InputEventFromWindow<class_InputEventFromWindow>` **<** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

代表螢幕拖拽事件。

.. rst-class:: classref-introduction-group

說明
----

存放與螢幕拖拽事件相關的資訊。見 :ref:`Node._input()<class_Node_private_method__input>`\ 。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`使用 InputEvent <../tutorials/inputs/inputevent>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`         | :ref:`index<class_InputEventScreenDrag_property_index>`                     | ``0``             |
   +-------------------------------+-----------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`       | :ref:`pen_inverted<class_InputEventScreenDrag_property_pen_inverted>`       | ``false``         |
   +-------------------------------+-----------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`position<class_InputEventScreenDrag_property_position>`               | ``Vector2(0, 0)`` |
   +-------------------------------+-----------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`     | :ref:`pressure<class_InputEventScreenDrag_property_pressure>`               | ``0.0``           |
   +-------------------------------+-----------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`relative<class_InputEventScreenDrag_property_relative>`               | ``Vector2(0, 0)`` |
   +-------------------------------+-----------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`screen_relative<class_InputEventScreenDrag_property_screen_relative>` | ``Vector2(0, 0)`` |
   +-------------------------------+-----------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`screen_velocity<class_InputEventScreenDrag_property_screen_velocity>` | ``Vector2(0, 0)`` |
   +-------------------------------+-----------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`tilt<class_InputEventScreenDrag_property_tilt>`                       | ``Vector2(0, 0)`` |
   +-------------------------------+-----------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`velocity<class_InputEventScreenDrag_property_velocity>`               | ``Vector2(0, 0)`` |
   +-------------------------------+-----------------------------------------------------------------------------+-------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_InputEventScreenDrag_property_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **index** = ``0`` :ref:`🔗<class_InputEventScreenDrag_property_index>`

.. rst-class:: classref-property-setget

- |void| **set_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_index**\ (\ )

多次拖動事件中的拖動事件索引。

.. rst-class:: classref-item-separator

----

.. _class_InputEventScreenDrag_property_pen_inverted:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pen_inverted** = ``false`` :ref:`🔗<class_InputEventScreenDrag_property_pen_inverted>`

.. rst-class:: classref-property-setget

- |void| **set_pen_inverted**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_pen_inverted**\ (\ )

正在使用手寫筆的橡皮端時，會返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_InputEventScreenDrag_property_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **position** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventScreenDrag_property_position>`

.. rst-class:: classref-property-setget

- |void| **set_position**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_position**\ (\ )

The drag position in the viewport the node is in, using the coordinate system of this viewport.

.. rst-class:: classref-item-separator

----

.. _class_InputEventScreenDrag_property_pressure:

.. rst-class:: classref-property

:ref:`float<class_float>` **pressure** = ``0.0`` :ref:`🔗<class_InputEventScreenDrag_property_pressure>`

.. rst-class:: classref-property-setget

- |void| **set_pressure**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pressure**\ (\ )

表示使用者對筆施加的壓力。範圍從 ``0.0`` 到 ``1.0`` 。

.. rst-class:: classref-item-separator

----

.. _class_InputEventScreenDrag_property_relative:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **relative** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventScreenDrag_property_relative>`

.. rst-class:: classref-property-setget

- |void| **set_relative**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_relative**\ (\ )

The drag position relative to the previous position (position at the last frame).

\ **Note:** :ref:`relative<class_InputEventScreenDrag_property_relative>` is automatically scaled according to the content scale factor, which is defined by the project's stretch mode settings. This means touch sensitivity will appear different depending on resolution when using :ref:`relative<class_InputEventScreenDrag_property_relative>` in a script that handles touch aiming. To avoid this, use :ref:`screen_relative<class_InputEventScreenDrag_property_screen_relative>` instead.

.. rst-class:: classref-item-separator

----

.. _class_InputEventScreenDrag_property_screen_relative:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **screen_relative** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventScreenDrag_property_screen_relative>`

.. rst-class:: classref-property-setget

- |void| **set_screen_relative**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_screen_relative**\ (\ )

The unscaled drag position relative to the previous position in screen coordinates (position at the last frame). This position is *not* scaled according to the content scale factor or calls to :ref:`InputEvent.xformed_by()<class_InputEvent_method_xformed_by>`. This should be preferred over :ref:`relative<class_InputEventScreenDrag_property_relative>` for touch aiming regardless of the project's stretch mode.

.. rst-class:: classref-item-separator

----

.. _class_InputEventScreenDrag_property_screen_velocity:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **screen_velocity** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventScreenDrag_property_screen_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_screen_velocity**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_screen_velocity**\ (\ )

The unscaled drag velocity in pixels per second in screen coordinates. This velocity is *not* scaled according to the content scale factor or calls to :ref:`InputEvent.xformed_by()<class_InputEvent_method_xformed_by>`. This should be preferred over :ref:`velocity<class_InputEventScreenDrag_property_velocity>` for touch aiming regardless of the project's stretch mode.

.. rst-class:: classref-item-separator

----

.. _class_InputEventScreenDrag_property_tilt:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **tilt** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventScreenDrag_property_tilt>`

.. rst-class:: classref-property-setget

- |void| **set_tilt**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_tilt**\ (\ )

代表筆的傾斜角度。正的 X 座標值表示向右傾斜。正的Y座標值表示向使用者自身傾斜。兩個軸的範圍是 ``-1.0`` 到 ``1.0``\ 。

.. rst-class:: classref-item-separator

----

.. _class_InputEventScreenDrag_property_velocity:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **velocity** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventScreenDrag_property_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_velocity**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_velocity**\ (\ )

The drag velocity.

\ **Note:** :ref:`velocity<class_InputEventScreenDrag_property_velocity>` is automatically scaled according to the content scale factor, which is defined by the project's stretch mode settings. This means touch sensitivity will appear different depending on resolution when using :ref:`velocity<class_InputEventScreenDrag_property_velocity>` in a script that handles touch aiming. To avoid this, use :ref:`screen_velocity<class_InputEventScreenDrag_property_screen_velocity>` instead.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
