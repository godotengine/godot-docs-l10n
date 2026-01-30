:github_url: hide

.. _class_InputEventMouseMotion:

InputEventMouseMotion
=====================

**繼承：** :ref:`InputEventMouse<class_InputEventMouse>` **<** :ref:`InputEventWithModifiers<class_InputEventWithModifiers>` **<** :ref:`InputEventFromWindow<class_InputEventFromWindow>` **<** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

代表滑鼠或筆的移動。

.. rst-class:: classref-introduction-group

說明
----

Stores information about a mouse or a pen motion. This includes relative position, absolute position, and velocity. See :ref:`Node._input()<class_Node_private_method__input>`.

\ **Note:** By default, this event is only emitted once per frame rendered at most. If you need more precise input reporting, set :ref:`Input.use_accumulated_input<class_Input_property_use_accumulated_input>` to ``false`` to make events emitted as often as possible. If you use InputEventMouseMotion to draw lines, consider using :ref:`Geometry2D.bresenham_line()<class_Geometry2D_method_bresenham_line>` as well to avoid visible gaps in lines if the user is moving the mouse quickly.

\ **Note:** This event may be emitted even when the mouse hasn't moved, either by the operating system or by Godot itself. If you really need to know if the mouse has moved (e.g. to suppress displaying a tooltip), you should check that ``relative.is_zero_approx()`` is ``false``.

.. rst-class:: classref-introduction-group

教學
----

- :doc:`使用 InputEvent <../tutorials/inputs/inputevent>`

- :doc:`滑鼠和輸入座標 <../tutorials/inputs/mouse_and_input_coordinates>`

- `3D 體素示範 <https://godotengine.org/asset-library/asset/2755>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------+------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`       | :ref:`pen_inverted<class_InputEventMouseMotion_property_pen_inverted>`       | ``false``         |
   +-------------------------------+------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`     | :ref:`pressure<class_InputEventMouseMotion_property_pressure>`               | ``0.0``           |
   +-------------------------------+------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`relative<class_InputEventMouseMotion_property_relative>`               | ``Vector2(0, 0)`` |
   +-------------------------------+------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`screen_relative<class_InputEventMouseMotion_property_screen_relative>` | ``Vector2(0, 0)`` |
   +-------------------------------+------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`screen_velocity<class_InputEventMouseMotion_property_screen_velocity>` | ``Vector2(0, 0)`` |
   +-------------------------------+------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`tilt<class_InputEventMouseMotion_property_tilt>`                       | ``Vector2(0, 0)`` |
   +-------------------------------+------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`velocity<class_InputEventMouseMotion_property_velocity>`               | ``Vector2(0, 0)`` |
   +-------------------------------+------------------------------------------------------------------------------+-------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_InputEventMouseMotion_property_pen_inverted:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pen_inverted** = ``false`` :ref:`🔗<class_InputEventMouseMotion_property_pen_inverted>`

.. rst-class:: classref-property-setget

- |void| **set_pen_inverted**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_pen_inverted**\ (\ )

使用手寫筆的橡皮端時，返回 ``true``\ 。

\ **注意：**\ 這個屬性在 Linux、macOS 和 Windows 上實作。

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouseMotion_property_pressure:

.. rst-class:: classref-property

:ref:`float<class_float>` **pressure** = ``0.0`` :ref:`🔗<class_InputEventMouseMotion_property_pressure>`

.. rst-class:: classref-property-setget

- |void| **set_pressure**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pressure**\ (\ )

表示使用者對筆施加的壓力。範圍從 ``0.0`` 到 ``1.0`` 。

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouseMotion_property_relative:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **relative** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventMouseMotion_property_relative>`

.. rst-class:: classref-property-setget

- |void| **set_relative**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_relative**\ (\ )

The mouse position relative to the previous position (position at the last frame).

\ **Note:** Since **InputEventMouseMotion** may only be emitted when the mouse moves, it is not possible to reliably detect when the mouse has stopped moving by checking this property. A separate, short timer may be necessary.

\ **Note:** :ref:`relative<class_InputEventMouseMotion_property_relative>` is automatically scaled according to the content scale factor, which is defined by the project's stretch mode settings. This means mouse sensitivity will appear different depending on resolution when using :ref:`relative<class_InputEventMouseMotion_property_relative>` in a script that handles mouse aiming with the :ref:`Input.MOUSE_MODE_CAPTURED<class_Input_constant_MOUSE_MODE_CAPTURED>` mouse mode. To avoid this, use :ref:`screen_relative<class_InputEventMouseMotion_property_screen_relative>` instead.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouseMotion_property_screen_relative:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **screen_relative** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventMouseMotion_property_screen_relative>`

.. rst-class:: classref-property-setget

- |void| **set_screen_relative**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_screen_relative**\ (\ )

The unscaled mouse position relative to the previous position in the coordinate system of the screen (position at the last frame).

\ **Note:** Since **InputEventMouseMotion** may only be emitted when the mouse moves, it is not possible to reliably detect when the mouse has stopped moving by checking this property. A separate, short timer may be necessary.

\ **Note:** This coordinate is *not* scaled according to the content scale factor or calls to :ref:`InputEvent.xformed_by()<class_InputEvent_method_xformed_by>`. This should be preferred over :ref:`relative<class_InputEventMouseMotion_property_relative>` for mouse aiming when using the :ref:`Input.MOUSE_MODE_CAPTURED<class_Input_constant_MOUSE_MODE_CAPTURED>` mouse mode, regardless of the project's stretch mode.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouseMotion_property_screen_velocity:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **screen_velocity** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventMouseMotion_property_screen_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_screen_velocity**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_screen_velocity**\ (\ )

The unscaled mouse velocity in pixels per second in screen coordinates. This velocity is *not* scaled according to the content scale factor or calls to :ref:`InputEvent.xformed_by()<class_InputEvent_method_xformed_by>`.

\ **Note:** Use :ref:`screen_relative<class_InputEventMouseMotion_property_screen_relative>` for mouse aiming using the :ref:`Input.MOUSE_MODE_CAPTURED<class_Input_constant_MOUSE_MODE_CAPTURED>` mouse mode.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouseMotion_property_tilt:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **tilt** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventMouseMotion_property_tilt>`

.. rst-class:: classref-property-setget

- |void| **set_tilt**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_tilt**\ (\ )

代表筆的傾斜角度。正的 X 座標值表示向右傾斜。正的Y座標值表示向使用者自身傾斜。兩個軸的範圍是 ``-1.0`` 到 ``1.0``\ 。

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouseMotion_property_velocity:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **velocity** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventMouseMotion_property_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_velocity**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_velocity**\ (\ )

The mouse velocity in pixels per second.

\ **Note:** :ref:`velocity<class_InputEventMouseMotion_property_velocity>` is automatically scaled according to the content scale factor, which is defined by the project's stretch mode settings. That means mouse sensitivity may appear different depending on resolution.

\ **Note:** Use :ref:`screen_relative<class_InputEventMouseMotion_property_screen_relative>` for mouse aiming using the :ref:`Input.MOUSE_MODE_CAPTURED<class_Input_constant_MOUSE_MODE_CAPTURED>` mouse mode.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
