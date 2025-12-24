:github_url: hide

.. _class_InputEventMouseMotion:

InputEventMouseMotion
=====================

**继承：** :ref:`InputEventMouse<class_InputEventMouse>` **<** :ref:`InputEventWithModifiers<class_InputEventWithModifiers>` **<** :ref:`InputEventFromWindow<class_InputEventFromWindow>` **<** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

代表鼠标或笔的移动。

.. rst-class:: classref-introduction-group

描述
----

存储鼠标或笔的运动信息。支持相对位置、绝对位置和速度。见 :ref:`Node._input()<class_Node_private_method__input>`\ 。

\ **注意：**\ 默认情况下，该事件每个渲染帧最多只会发出一个。如果你需要更精确的输入汇报，请将 :ref:`Input.use_accumulated_input<class_Input_property_use_accumulated_input>` 设置为 ``false``\ ，尽可能频繁地发出事件。如果你使用 InputEventMouseMotion 来画线，请考虑同时使用 :ref:`Geometry2D.bresenham_line()<class_Geometry2D_method_bresenham_line>`\ ，避免在用户快速移动鼠标时出现可见的线条空隙。

\ **注意：**\ 即使鼠标没有移动，操作系统或 Godot 本身也可能会发出该事件。如果你确实需要知道鼠标是否移动（例如为了防止显示工具提示），你应当检查 ``relative.is_zero_approx()`` 是否为 ``false``\ 。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`使用 InputEvent <../tutorials/inputs/inputevent>`

- :doc:`鼠标和输入坐标 <../tutorials/inputs/mouse_and_input_coordinates>`

- `3D 体素演示 <https://godotengine.org/asset-library/asset/2755>`__

.. rst-class:: classref-reftable-group

属性
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

属性说明
--------

.. _class_InputEventMouseMotion_property_pen_inverted:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pen_inverted** = ``false`` :ref:`🔗<class_InputEventMouseMotion_property_pen_inverted>`

.. rst-class:: classref-property-setget

- |void| **set_pen_inverted**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_pen_inverted**\ (\ )

使用手写笔的橡皮端时，返回 ``true``\ 。

\ **注意：**\ 这个属性在 Linux、macOS 和 Windows 上实现。

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouseMotion_property_pressure:

.. rst-class:: classref-property

:ref:`float<class_float>` **pressure** = ``0.0`` :ref:`🔗<class_InputEventMouseMotion_property_pressure>`

.. rst-class:: classref-property-setget

- |void| **set_pressure**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pressure**\ (\ )

表示用户对笔施加的压力。范围从 ``0.0`` 到 ``1.0`` 。

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouseMotion_property_relative:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **relative** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventMouseMotion_property_relative>`

.. rst-class:: classref-property-setget

- |void| **set_relative**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_relative**\ (\ )

鼠标相对于前一个位置（上一帧时的位置）的位置。

\ **注意：**\ 因为 **InputEventMouseMotion** 可能只在鼠标移动时发出，检查该属性无法可靠地检测鼠标何时停止移动。可能需要一个单独的短时间计时器。

\ **注意：**\ :ref:`relative<class_InputEventMouseMotion_property_relative>` 会根据内容缩放系数自动进行缩放，这个系数是在项目的拉伸模式设置中定义的。也就是说在 :ref:`Input.MOUSE_MODE_CAPTURED<class_Input_constant_MOUSE_MODE_CAPTURED>` 鼠标模式下，如果在脚本中使用 :ref:`relative<class_InputEventMouseMotion_property_relative>` 来处理鼠标瞄准，那么鼠标的灵敏度就会因分辨率的不同而不同。为了避免这种情况，请改用 :ref:`screen_relative<class_InputEventMouseMotion_property_screen_relative>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouseMotion_property_screen_relative:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **screen_relative** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventMouseMotion_property_screen_relative>`

.. rst-class:: classref-property-setget

- |void| **set_screen_relative**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_screen_relative**\ (\ )

未缩放的鼠标位置，该位置相对于屏幕坐标系中的前一个位置（上一帧的位置）。

\ **注意：**\ 因为 **InputEventMouseMotion** 可能只在鼠标移动时发出，检查该属性无法可靠地检测鼠标何时停止移动。可能需要一个单独的短时间计时器。

\ **注意：**\ 该坐标\ *不会*\ 根据内容缩放因子或调用 :ref:`InputEvent.xformed_by()<class_InputEvent_method_xformed_by>` 进行缩放。当使用 :ref:`Input.MOUSE_MODE_CAPTURED<class_Input_constant_MOUSE_MODE_CAPTURED>` 鼠标模式时，无论项目的拉伸模式如何，对于鼠标瞄准来说，这都应该优于 :ref:`relative<class_InputEventMouseMotion_property_relative>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouseMotion_property_screen_velocity:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **screen_velocity** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventMouseMotion_property_screen_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_screen_velocity**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_screen_velocity**\ (\ )

屏幕坐标中未缩放的鼠标速度（单位为每秒像素数）。该速度\ *不会*\ 根据内容缩放系数或对 :ref:`InputEvent.xformed_by()<class_InputEvent_method_xformed_by>` 的调用进行缩放。

\ **注意：**\ 使用 :ref:`Input.MOUSE_MODE_CAPTURED<class_Input_constant_MOUSE_MODE_CAPTURED>` 鼠标模式时，请使用 :ref:`screen_relative<class_InputEventMouseMotion_property_screen_relative>` 实现鼠标瞄准。

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouseMotion_property_tilt:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **tilt** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventMouseMotion_property_tilt>`

.. rst-class:: classref-property-setget

- |void| **set_tilt**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_tilt**\ (\ )

代表笔的倾斜角度。正的 X 坐标值表示向右倾斜。正的Y坐标值表示向用户自身倾斜。两个轴的范围是 ``-1.0`` 到 ``1.0``\ 。

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouseMotion_property_velocity:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **velocity** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventMouseMotion_property_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_velocity**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_velocity**\ (\ )

鼠标速度，单位为像素每秒。

\ **注意：**\ :ref:`velocity<class_InputEventMouseMotion_property_velocity>` 会根据内容缩放系数自动缩放，内容缩放系数由项目的拉伸模式设置定义。这意味着鼠标灵敏度将根据分辨率而有所不同。

\ **注意：**\ 使用 :ref:`Input.MOUSE_MODE_CAPTURED<class_Input_constant_MOUSE_MODE_CAPTURED>` 鼠标模式时，请使用 :ref:`screen_relative<class_InputEventMouseMotion_property_screen_relative>` 实现鼠标瞄准。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
