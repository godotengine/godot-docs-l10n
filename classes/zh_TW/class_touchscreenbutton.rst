:github_url: hide

.. _class_TouchScreenButton:

TouchScreenButton
=================

**繼承：** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

觸控式螢幕裝置的按鈕，供遊戲使用。

.. rst-class:: classref-introduction-group

說明
----

TouchScreenButton allows you to create on-screen buttons for touch devices. It's intended for gameplay use, such as a unit you have to touch to move. Unlike :ref:`Button<class_Button>`, TouchScreenButton supports multitouch out of the box. Several TouchScreenButtons can be pressed at the same time with touch input.

This node inherits from :ref:`Node2D<class_Node2D>`. Unlike with :ref:`Control<class_Control>` nodes, you cannot set anchors on it. If you want to create menus or user interfaces, you may want to use :ref:`Button<class_Button>` nodes instead. To make button nodes react to touch events, you can enable :ref:`ProjectSettings.input_devices/pointing/emulate_mouse_from_touch<class_ProjectSettings_property_input_devices/pointing/emulate_mouse_from_touch>` in the Project Settings.

You can configure TouchScreenButton to be visible only on touch devices, helping you develop your game both for desktop and mobile devices.

.. rst-class:: classref-reftable-group

屬性
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

訊號
----

.. _class_TouchScreenButton_signal_pressed:

.. rst-class:: classref-signal

**pressed**\ (\ ) :ref:`🔗<class_TouchScreenButton_signal_pressed>`

當按鈕被按下時觸發，即向下。

.. rst-class:: classref-item-separator

----

.. _class_TouchScreenButton_signal_released:

.. rst-class:: classref-signal

**released**\ (\ ) :ref:`🔗<class_TouchScreenButton_signal_released>`

當按鈕被釋放時觸發，即向上。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_TouchScreenButton_VisibilityMode:

.. rst-class:: classref-enumeration

enum **VisibilityMode**: :ref:`🔗<enum_TouchScreenButton_VisibilityMode>`

.. _class_TouchScreenButton_constant_VISIBILITY_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityMode<enum_TouchScreenButton_VisibilityMode>` **VISIBILITY_ALWAYS** = ``0``

始終可見。

.. _class_TouchScreenButton_constant_VISIBILITY_TOUCHSCREEN_ONLY:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityMode<enum_TouchScreenButton_VisibilityMode>` **VISIBILITY_TOUCHSCREEN_ONLY** = ``1``

僅在觸控式螢幕上可以看到。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_TouchScreenButton_property_action:

.. rst-class:: classref-property

:ref:`String<class_String>` **action** = ``""`` :ref:`🔗<class_TouchScreenButton_property_action>`

.. rst-class:: classref-property-setget

- |void| **set_action**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_action**\ (\ )

按鈕的動作。動作可以用 :ref:`InputEventAction<class_InputEventAction>` 來處理。

.. rst-class:: classref-item-separator

----

.. _class_TouchScreenButton_property_bitmask:

.. rst-class:: classref-property

:ref:`BitMap<class_BitMap>` **bitmask** :ref:`🔗<class_TouchScreenButton_property_bitmask>`

.. rst-class:: classref-property-setget

- |void| **set_bitmask**\ (\ value\: :ref:`BitMap<class_BitMap>`\ )
- :ref:`BitMap<class_BitMap>` **get_bitmask**\ (\ )

按鈕的位元遮罩。

.. rst-class:: classref-item-separator

----

.. _class_TouchScreenButton_property_passby_press:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **passby_press** = ``false`` :ref:`🔗<class_TouchScreenButton_property_passby_press>`

.. rst-class:: classref-property-setget

- |void| **set_passby_press**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_passby_press_enabled**\ (\ )

如果為 ``true``\ ，只要按下的手指進出按鈕，就會發出 :ref:`pressed<class_TouchScreenButton_signal_pressed>` 和 :ref:`released<class_TouchScreenButton_signal_released>` 訊號，即使壓力開始於按鈕的有效區域之外。

\ **注意：**\ 這是一種“pass-by”的按壓模式 ，而不是“bypass”。

.. rst-class:: classref-item-separator

----

.. _class_TouchScreenButton_property_shape:

.. rst-class:: classref-property

:ref:`Shape2D<class_Shape2D>` **shape** :ref:`🔗<class_TouchScreenButton_property_shape>`

.. rst-class:: classref-property-setget

- |void| **set_shape**\ (\ value\: :ref:`Shape2D<class_Shape2D>`\ )
- :ref:`Shape2D<class_Shape2D>` **get_shape**\ (\ )

該按鈕的形狀。

.. rst-class:: classref-item-separator

----

.. _class_TouchScreenButton_property_shape_centered:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shape_centered** = ``true`` :ref:`🔗<class_TouchScreenButton_property_shape_centered>`

.. rst-class:: classref-property-setget

- |void| **set_shape_centered**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_shape_centered**\ (\ )

如果為 ``true``\ ，按鈕的形狀會在提供的紋理中居中。如果沒有使用紋理，這個屬性就沒有效果。

.. rst-class:: classref-item-separator

----

.. _class_TouchScreenButton_property_shape_visible:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shape_visible** = ``true`` :ref:`🔗<class_TouchScreenButton_property_shape_visible>`

.. rst-class:: classref-property-setget

- |void| **set_shape_visible**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_shape_visible**\ (\ )

如果為 ``true``\ ，則該按鈕的形狀在編輯器中可見。

.. rst-class:: classref-item-separator

----

.. _class_TouchScreenButton_property_texture_normal:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_normal** :ref:`🔗<class_TouchScreenButton_property_texture_normal>`

.. rst-class:: classref-property-setget

- |void| **set_texture_normal**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture_normal**\ (\ )

該按鈕在正常狀態下的紋理。

.. rst-class:: classref-item-separator

----

.. _class_TouchScreenButton_property_texture_pressed:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_pressed** :ref:`🔗<class_TouchScreenButton_property_texture_pressed>`

.. rst-class:: classref-property-setget

- |void| **set_texture_pressed**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture_pressed**\ (\ )

按鈕在被按下狀態時的紋理。

.. rst-class:: classref-item-separator

----

.. _class_TouchScreenButton_property_visibility_mode:

.. rst-class:: classref-property

:ref:`VisibilityMode<enum_TouchScreenButton_VisibilityMode>` **visibility_mode** = ``0`` :ref:`🔗<class_TouchScreenButton_property_visibility_mode>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_mode**\ (\ value\: :ref:`VisibilityMode<enum_TouchScreenButton_VisibilityMode>`\ )
- :ref:`VisibilityMode<enum_TouchScreenButton_VisibilityMode>` **get_visibility_mode**\ (\ )

The button's visibility mode.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_TouchScreenButton_method_is_pressed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_pressed**\ (\ ) |const| :ref:`🔗<class_TouchScreenButton_method_is_pressed>`

如果這個按鈕目前被按下，則返回 ``true``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
