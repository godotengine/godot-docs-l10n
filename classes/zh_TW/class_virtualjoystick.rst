:github_url: hide

.. _class_VirtualJoystick:

VirtualJoystick
===============

**繼承：** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

一個用於觸摸屏裝置的虛擬搖桿控制。

.. rst-class:: classref-introduction-group

說明
----

一個為觸摸屏裝置設計的可自訂螢幕搖桿控制。它允許使用者通過在定義好的圓形區域內拖動一個虛擬搖桿頭來提供方向輸入。

該控制項可以模擬方向動作（參見 :ref:`action_up<class_VirtualJoystick_property_action_up>`\ 、\ :ref:`action_down<class_VirtualJoystick_property_action_down>`\ 、\ :ref:`action_left<class_VirtualJoystick_property_action_left>` 和 :ref:`action_right<class_VirtualJoystick_property_action_right>`\ ），當搖桿向對應方向移動時觸發這些動作。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +------------------------------------------------------------+----------------------------------------------------------------------------------+-----------------------+
   | :ref:`StringName<class_StringName>`                        | :ref:`action_down<class_VirtualJoystick_property_action_down>`                   | ``&"ui_down"``        |
   +------------------------------------------------------------+----------------------------------------------------------------------------------+-----------------------+
   | :ref:`StringName<class_StringName>`                        | :ref:`action_left<class_VirtualJoystick_property_action_left>`                   | ``&"ui_left"``        |
   +------------------------------------------------------------+----------------------------------------------------------------------------------+-----------------------+
   | :ref:`StringName<class_StringName>`                        | :ref:`action_right<class_VirtualJoystick_property_action_right>`                 | ``&"ui_right"``       |
   +------------------------------------------------------------+----------------------------------------------------------------------------------+-----------------------+
   | :ref:`StringName<class_StringName>`                        | :ref:`action_up<class_VirtualJoystick_property_action_up>`                       | ``&"ui_up"``          |
   +------------------------------------------------------------+----------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                  | :ref:`clampzone_ratio<class_VirtualJoystick_property_clampzone_ratio>`           | ``1.0``               |
   +------------------------------------------------------------+----------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                  | :ref:`deadzone_ratio<class_VirtualJoystick_property_deadzone_ratio>`             | ``0.0``               |
   +------------------------------------------------------------+----------------------------------------------------------------------------------+-----------------------+
   | :ref:`Vector2<class_Vector2>`                              | :ref:`initial_offset_ratio<class_VirtualJoystick_property_initial_offset_ratio>` | ``Vector2(0.5, 0.5)`` |
   +------------------------------------------------------------+----------------------------------------------------------------------------------+-----------------------+
   | :ref:`JoystickMode<enum_VirtualJoystick_JoystickMode>`     | :ref:`joystick_mode<class_VirtualJoystick_property_joystick_mode>`               | ``0``                 |
   +------------------------------------------------------------+----------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                  | :ref:`joystick_size<class_VirtualJoystick_property_joystick_size>`               | ``100.0``             |
   +------------------------------------------------------------+----------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                  | :ref:`tip_size<class_VirtualJoystick_property_tip_size>`                         | ``50.0``              |
   +------------------------------------------------------------+----------------------------------------------------------------------------------+-----------------------+
   | :ref:`VisibilityMode<enum_VirtualJoystick_VisibilityMode>` | :ref:`visibility_mode<class_VirtualJoystick_property_visibility_mode>`           | ``0``                 |
   +------------------------------------------------------------+----------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

主題屬性
--------

.. table::
   :widths: auto

   +---------------------------------+-----------------------------------------------------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`normal_joystick<class_VirtualJoystick_theme_style_normal_joystick>`   |
   +---------------------------------+-----------------------------------------------------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`normal_tip<class_VirtualJoystick_theme_style_normal_tip>`             |
   +---------------------------------+-----------------------------------------------------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`pressed_joystick<class_VirtualJoystick_theme_style_pressed_joystick>` |
   +---------------------------------+-----------------------------------------------------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`pressed_tip<class_VirtualJoystick_theme_style_pressed_tip>`           |
   +---------------------------------+-----------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_VirtualJoystick_signal_flick_canceled:

.. rst-class:: classref-signal

**flick_canceled**\ (\ ) :ref:`🔗<class_VirtualJoystick_signal_flick_canceled>`

當搖桿頭從死區外移動進入死區內時，觸發該訊號。

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_signal_flicked:

.. rst-class:: classref-signal

**flicked**\ (\ input_vector\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_VirtualJoystick_signal_flicked>`

當搖桿頭移出死區後釋放搖桿時發出。\ ``input_vector`` 包含釋放前的最後輸入方向和強度。其長度介於 ``0.0`` 和 ``1.0`` 之間。

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_signal_pressed:

.. rst-class:: classref-signal

**pressed**\ (\ ) :ref:`🔗<class_VirtualJoystick_signal_pressed>`

當搖桿被按下時，觸發該訊號。

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_signal_released:

.. rst-class:: classref-signal

**released**\ (\ input_vector\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_VirtualJoystick_signal_released>`

當搖桿被釋放時發出。\ ``input_vector`` 是最終的輸入方向和強度，其長度介於 ``0.0`` 和 ``1.0`` 之間。

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_signal_tapped:

.. rst-class:: classref-signal

**tapped**\ (\ ) :ref:`🔗<class_VirtualJoystick_signal_tapped>`

當搖桿被松開，且搖桿頭沒有發生移動時，觸發該訊號。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_VirtualJoystick_JoystickMode:

.. rst-class:: classref-enumeration

enum **JoystickMode**: :ref:`🔗<enum_VirtualJoystick_JoystickMode>`

.. _class_VirtualJoystick_constant_JOYSTICK_FIXED:

.. rst-class:: classref-enumeration-constant

:ref:`JoystickMode<enum_VirtualJoystick_JoystickMode>` **JOYSTICK_FIXED** = ``0``

搖桿沒有移動。

.. _class_VirtualJoystick_constant_JOYSTICK_DYNAMIC:

.. rst-class:: classref-enumeration-constant

:ref:`JoystickMode<enum_VirtualJoystick_JoystickMode>` **JOYSTICK_DYNAMIC** = ``1``

只要初始觸摸位置在搖桿的邊界範圍內，搖桿就會移動到該位置。當釋放時，它會移回其原始位置。

.. _class_VirtualJoystick_constant_JOYSTICK_FOLLOWING:

.. rst-class:: classref-enumeration-constant

:ref:`JoystickMode<enum_VirtualJoystick_JoystickMode>` **JOYSTICK_FOLLOWING** = ``2``

只要初始觸摸位置在搖桿的邊界範圍內，搖桿就會移動到該位置。如果觸摸點移出了搖桿的作用範圍，它會繼續跟隨觸摸輸入。當釋放時，搖桿會移回其原始位置。

.. rst-class:: classref-item-separator

----

.. _enum_VirtualJoystick_VisibilityMode:

.. rst-class:: classref-enumeration

enum **VisibilityMode**: :ref:`🔗<enum_VirtualJoystick_VisibilityMode>`

.. _class_VirtualJoystick_constant_VISIBILITY_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityMode<enum_VirtualJoystick_VisibilityMode>` **VISIBILITY_ALWAYS** = ``0``

搖桿始終可見。

.. _class_VirtualJoystick_constant_VISIBILITY_WHEN_TOUCHED:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityMode<enum_VirtualJoystick_VisibilityMode>` **VISIBILITY_WHEN_TOUCHED** = ``1``

僅在觸摸時顯示搖桿。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_VirtualJoystick_property_action_down:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **action_down** = ``&"ui_down"`` :ref:`🔗<class_VirtualJoystick_property_action_down>`

.. rst-class:: classref-property-setget

- |void| **set_action_down**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_action_down**\ (\ )

當搖桿向下移動時要觸發的動作。

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_property_action_left:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **action_left** = ``&"ui_left"`` :ref:`🔗<class_VirtualJoystick_property_action_left>`

.. rst-class:: classref-property-setget

- |void| **set_action_left**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_action_left**\ (\ )

當搖桿向左移動時要觸發的動作。

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_property_action_right:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **action_right** = ``&"ui_right"`` :ref:`🔗<class_VirtualJoystick_property_action_right>`

.. rst-class:: classref-property-setget

- |void| **set_action_right**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_action_right**\ (\ )

當搖桿向右移動時要觸發的動作。

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_property_action_up:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **action_up** = ``&"ui_up"`` :ref:`🔗<class_VirtualJoystick_property_action_up>`

.. rst-class:: classref-property-setget

- |void| **set_action_up**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_action_up**\ (\ )

當搖桿向上移動時觸發的操作。

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_property_clampzone_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **clampzone_ratio** = ``1.0`` :ref:`🔗<class_VirtualJoystick_property_clampzone_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_clampzone_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_clampzone_ratio**\ (\ )

套用至搖桿半徑的乘數，用於定義鉗制區域。

該區域限制了搖桿頭在被鉗制前，距離其中心點可以移動的最遠距離。

值為 ``1.0`` 表示搖桿頭可以移動到搖桿視覺尺寸的邊緣。

在 :ref:`JOYSTICK_FOLLOWING<class_VirtualJoystick_constant_JOYSTICK_FOLLOWING>` 模式下，該半徑還決定了手指移動多遠後，搖桿底座才開始跟隨觸摸輸入。

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_property_deadzone_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **deadzone_ratio** = ``0.0`` :ref:`🔗<class_VirtualJoystick_property_deadzone_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_deadzone_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_deadzone_ratio**\ (\ )

定義搖桿死區的搖桿尺寸比例。搖桿頭必須移動超過這一比例，才會被視為啟用。

該死區在觸發輸入動作之前生效，並會影響搖桿的輸入向量（Input Vector）及所有相關訊號。

請注意，輸入動作（Input Actions）也可能在 InputMap 中定義自己的死區。如果兩者都進行了設定，則先應用搖桿的死區，再應用動作的死區。

預設情況下，該值為 ``0.0``\ ，這意味著搖桿不會應用其自身的死區，而是完全相依性 InputMap 動作的死區。

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_property_initial_offset_ratio:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **initial_offset_ratio** = ``Vector2(0.5, 0.5)`` :ref:`🔗<class_VirtualJoystick_property_initial_offset_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_initial_offset_ratio**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_initial_offset_ratio**\ (\ )

搖桿初始位置相對於控制項尺寸的比例。 ``(0, 0)`` 代表左上角，\ ``(1, 1)`` 代表右下角。

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_property_joystick_mode:

.. rst-class:: classref-property

:ref:`JoystickMode<enum_VirtualJoystick_JoystickMode>` **joystick_mode** = ``0`` :ref:`🔗<class_VirtualJoystick_property_joystick_mode>`

.. rst-class:: classref-property-setget

- |void| **set_joystick_mode**\ (\ value\: :ref:`JoystickMode<enum_VirtualJoystick_JoystickMode>`\ )
- :ref:`JoystickMode<enum_VirtualJoystick_JoystickMode>` **get_joystick_mode**\ (\ )

要使用的搖桿模式。

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_property_joystick_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **joystick_size** = ``100.0`` :ref:`🔗<class_VirtualJoystick_property_joystick_size>`

.. rst-class:: classref-property-setget

- |void| **set_joystick_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_joystick_size**\ (\ )

搖桿的大小（以像素為單位）。

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_property_tip_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **tip_size** = ``50.0`` :ref:`🔗<class_VirtualJoystick_property_tip_size>`

.. rst-class:: classref-property-setget

- |void| **set_tip_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_tip_size**\ (\ )

搖桿頂部（搖桿頭）的大小（以像素為單位）。

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_property_visibility_mode:

.. rst-class:: classref-property

:ref:`VisibilityMode<enum_VirtualJoystick_VisibilityMode>` **visibility_mode** = ``0`` :ref:`🔗<class_VirtualJoystick_property_visibility_mode>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_mode**\ (\ value\: :ref:`VisibilityMode<enum_VirtualJoystick_VisibilityMode>`\ )
- :ref:`VisibilityMode<enum_VirtualJoystick_VisibilityMode>` **get_visibility_mode**\ (\ )

要使用的可見性模式。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

主題屬性說明
------------

.. _class_VirtualJoystick_theme_style_normal_joystick:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **normal_joystick** :ref:`🔗<class_VirtualJoystick_theme_style_normal_joystick>`

基礎搖桿 :ref:`StyleBox<class_StyleBox>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_theme_style_normal_tip:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **normal_tip** :ref:`🔗<class_VirtualJoystick_theme_style_normal_tip>`

搖桿頭 :ref:`StyleBox<class_StyleBox>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_theme_style_pressed_joystick:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **pressed_joystick** :ref:`🔗<class_VirtualJoystick_theme_style_pressed_joystick>`

基礎搖桿按下時的 :ref:`StyleBox<class_StyleBox>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_theme_style_pressed_tip:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **pressed_tip** :ref:`🔗<class_VirtualJoystick_theme_style_pressed_tip>`

按下時的搖桿頭 :ref:`StyleBox<class_StyleBox>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
