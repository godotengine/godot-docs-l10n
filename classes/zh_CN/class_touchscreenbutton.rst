:github_url: hide

.. _class_TouchScreenButton:

TouchScreenButton
=================

**继承：** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

触摸屏设备的按钮，供游戏使用。

.. rst-class:: classref-introduction-group

描述
----

TouchScreenButton 允许你为触摸设备创建屏幕上的按钮。其为游戏使用，比如在必须触摸才能移动的设备。与 :ref:`Button<class_Button>` 不同，TouchScreenButton 原生支持多点触摸。几个 TouchScreenButton 可以通过触摸输入同时被按下。

这个节点继承自 :ref:`Node2D<class_Node2D>`\ 。与 :ref:`Control<class_Control>` 节点不同，你不能在它上面设置锚点。如果要创建菜单或用户界面，可用 :ref:`Button<class_Button>` 节点代替。为了使按钮节点对触摸事件作出反应，可在项目设置中启用 :ref:`ProjectSettings.input_devices/pointing/emulate_mouse_from_touch<class_ProjectSettings_property_input_devices/pointing/emulate_mouse_from_touch>`\ 。

可将 TouchScreenButton 配置为只在触摸设备上可见，有助你同时为桌面和移动设备开发游戏。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +--------------------------------------------------------------+--------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>`                                  | :ref:`action<class_TouchScreenButton_property_action>`                   | ``""``    |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-----------+
   | :ref:`BitMap<class_BitMap>`                                  | :ref:`bitmask<class_TouchScreenButton_property_bitmask>`                 |           |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                      | :ref:`passby_press<class_TouchScreenButton_property_passby_press>`       | ``false`` |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-----------+
   | :ref:`Shape2D<class_Shape2D>`                                | :ref:`shape<class_TouchScreenButton_property_shape>`                     |           |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                      | :ref:`shape_centered<class_TouchScreenButton_property_shape_centered>`   | ``true``  |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                      | :ref:`shape_visible<class_TouchScreenButton_property_shape_visible>`     | ``true``  |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-----------+
   | :ref:`Texture2D<class_Texture2D>`                            | :ref:`texture_normal<class_TouchScreenButton_property_texture_normal>`   |           |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-----------+
   | :ref:`Texture2D<class_Texture2D>`                            | :ref:`texture_pressed<class_TouchScreenButton_property_texture_pressed>` |           |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-----------+
   | :ref:`VisibilityMode<enum_TouchScreenButton_VisibilityMode>` | :ref:`visibility_mode<class_TouchScreenButton_property_visibility_mode>` | ``0``     |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_pressed<class_TouchScreenButton_method_is_pressed>`\ (\ ) |const| |
   +-------------------------+----------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

信号
----

.. _class_TouchScreenButton_signal_pressed:

.. rst-class:: classref-signal

**pressed**\ (\ ) :ref:`🔗<class_TouchScreenButton_signal_pressed>`

当按钮被按下时触发，即向下。

.. rst-class:: classref-item-separator

----

.. _class_TouchScreenButton_signal_released:

.. rst-class:: classref-signal

**released**\ (\ ) :ref:`🔗<class_TouchScreenButton_signal_released>`

当按钮被释放时触发，即向上。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_TouchScreenButton_VisibilityMode:

.. rst-class:: classref-enumeration

enum **VisibilityMode**: :ref:`🔗<enum_TouchScreenButton_VisibilityMode>`

.. _class_TouchScreenButton_constant_VISIBILITY_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityMode<enum_TouchScreenButton_VisibilityMode>` **VISIBILITY_ALWAYS** = ``0``

始终可见。

.. _class_TouchScreenButton_constant_VISIBILITY_TOUCHSCREEN_ONLY:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityMode<enum_TouchScreenButton_VisibilityMode>` **VISIBILITY_TOUCHSCREEN_ONLY** = ``1``

仅在触摸屏上可以看到。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_TouchScreenButton_property_action:

.. rst-class:: classref-property

:ref:`String<class_String>` **action** = ``""`` :ref:`🔗<class_TouchScreenButton_property_action>`

.. rst-class:: classref-property-setget

- |void| **set_action**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_action**\ (\ )

按钮的动作。动作可以用 :ref:`InputEventAction<class_InputEventAction>` 来处理。

.. rst-class:: classref-item-separator

----

.. _class_TouchScreenButton_property_bitmask:

.. rst-class:: classref-property

:ref:`BitMap<class_BitMap>` **bitmask** :ref:`🔗<class_TouchScreenButton_property_bitmask>`

.. rst-class:: classref-property-setget

- |void| **set_bitmask**\ (\ value\: :ref:`BitMap<class_BitMap>`\ )
- :ref:`BitMap<class_BitMap>` **get_bitmask**\ (\ )

按钮的位掩码。

.. rst-class:: classref-item-separator

----

.. _class_TouchScreenButton_property_passby_press:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **passby_press** = ``false`` :ref:`🔗<class_TouchScreenButton_property_passby_press>`

.. rst-class:: classref-property-setget

- |void| **set_passby_press**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_passby_press_enabled**\ (\ )

如果为 ``true``\ ，只要按下的手指进出按钮，就会发出 :ref:`pressed<class_TouchScreenButton_signal_pressed>` 和 :ref:`released<class_TouchScreenButton_signal_released>` 信号，即使压力开始于按钮的有效区域之外。

\ **注意：**\ 这是一种“pass-by”的按压模式 ，而不是“bypass”。

.. rst-class:: classref-item-separator

----

.. _class_TouchScreenButton_property_shape:

.. rst-class:: classref-property

:ref:`Shape2D<class_Shape2D>` **shape** :ref:`🔗<class_TouchScreenButton_property_shape>`

.. rst-class:: classref-property-setget

- |void| **set_shape**\ (\ value\: :ref:`Shape2D<class_Shape2D>`\ )
- :ref:`Shape2D<class_Shape2D>` **get_shape**\ (\ )

该按钮的形状。

.. rst-class:: classref-item-separator

----

.. _class_TouchScreenButton_property_shape_centered:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shape_centered** = ``true`` :ref:`🔗<class_TouchScreenButton_property_shape_centered>`

.. rst-class:: classref-property-setget

- |void| **set_shape_centered**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_shape_centered**\ (\ )

如果为 ``true``\ ，按钮的形状会在提供的纹理中居中。如果没有使用纹理，这个属性就没有效果。

.. rst-class:: classref-item-separator

----

.. _class_TouchScreenButton_property_shape_visible:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shape_visible** = ``true`` :ref:`🔗<class_TouchScreenButton_property_shape_visible>`

.. rst-class:: classref-property-setget

- |void| **set_shape_visible**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_shape_visible**\ (\ )

如果为 ``true``\ ，则该按钮的形状在编辑器中可见。

.. rst-class:: classref-item-separator

----

.. _class_TouchScreenButton_property_texture_normal:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_normal** :ref:`🔗<class_TouchScreenButton_property_texture_normal>`

.. rst-class:: classref-property-setget

- |void| **set_texture_normal**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture_normal**\ (\ )

该按钮在正常状态下的纹理。

.. rst-class:: classref-item-separator

----

.. _class_TouchScreenButton_property_texture_pressed:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_pressed** :ref:`🔗<class_TouchScreenButton_property_texture_pressed>`

.. rst-class:: classref-property-setget

- |void| **set_texture_pressed**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture_pressed**\ (\ )

按钮在被按下状态时的纹理。

.. rst-class:: classref-item-separator

----

.. _class_TouchScreenButton_property_visibility_mode:

.. rst-class:: classref-property

:ref:`VisibilityMode<enum_TouchScreenButton_VisibilityMode>` **visibility_mode** = ``0`` :ref:`🔗<class_TouchScreenButton_property_visibility_mode>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_mode**\ (\ value\: :ref:`VisibilityMode<enum_TouchScreenButton_VisibilityMode>`\ )
- :ref:`VisibilityMode<enum_TouchScreenButton_VisibilityMode>` **get_visibility_mode**\ (\ )

按钮的可见性模式。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_TouchScreenButton_method_is_pressed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_pressed**\ (\ ) |const| :ref:`🔗<class_TouchScreenButton_method_is_pressed>`

如果这个按钮当前被按下，则返回 ``true``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
