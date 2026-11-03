:github_url: hide

.. _class_InputEventMouseMotion:

InputEventMouseMotion
=====================

**繼承：** :ref:`InputEventMouse<class_InputEventMouse>` **<** :ref:`InputEventWithModifiers<class_InputEventWithModifiers>` **<** :ref:`InputEventFromWindow<class_InputEventFromWindow>` **<** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

代表滑鼠或筆的移動。

.. rst-class:: classref-introduction-group

說明
----

儲存滑鼠或筆的運動資訊。支援相對位置、絕對位置和速度。見 :ref:`Node._input()<class_Node_private_method__input>`\ 。

\ **注意：**\ 預設情況下，該事件每個渲染影格最多只會發出一個。如果你需要更精確的輸入彙報，請將 :ref:`Input.use_accumulated_input<class_Input_property_use_accumulated_input>` 設定為 ``false``\ ，盡可能頻繁地發出事件。如果你使用 InputEventMouseMotion 來畫線，請考慮同時使用 :ref:`Geometry2D.bresenham_line()<class_Geometry2D_method_bresenham_line>`\ ，避免在使用者快速移動滑鼠時出現可見的線條空隙。

\ **注意：**\ 即使滑鼠沒有移動，作業系統或 Godot 本身也可能會發出該事件。如果你確實需要知道滑鼠是否移動（例如為了防止顯示工具提示），你應當檢查 ``relative.is_zero_approx()`` 是否為 ``false``\ 。

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

滑鼠相對於前一個位置（上一影格時的位置）的位置。

\ **注意：**\ 因為 **InputEventMouseMotion** 可能只在滑鼠移動時發出，檢查該屬性無法可靠地檢測滑鼠何時停止移動。可能需要一個單獨的短時間計時器。

\ **注意：**\ :ref:`relative<class_InputEventMouseMotion_property_relative>` 會根據內容縮放係數自動進行縮放，這個係數是在專案的拉伸模式設定中定義的。也就是說在 :ref:`Input.MOUSE_MODE_CAPTURED<class_Input_constant_MOUSE_MODE_CAPTURED>` 滑鼠模式下，如果在腳本中使用 :ref:`relative<class_InputEventMouseMotion_property_relative>` 來處理滑鼠瞄准，那麼滑鼠的靈敏度就會因解析度的不同而不同。為了避免這種情況，請改用 :ref:`screen_relative<class_InputEventMouseMotion_property_screen_relative>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouseMotion_property_screen_relative:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **screen_relative** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventMouseMotion_property_screen_relative>`

.. rst-class:: classref-property-setget

- |void| **set_screen_relative**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_screen_relative**\ (\ )

未縮放的滑鼠位置，該位置相對於螢幕座標系中的前一個位置（上一影格的位置）。

\ **注意：**\ 因為 **InputEventMouseMotion** 可能只在滑鼠移動時發出，檢查該屬性無法可靠地檢測滑鼠何時停止移動。可能需要一個單獨的短時間計時器。

\ **注意：**\ 該座標\ *不會*\ 根據內容縮放因子或呼叫 :ref:`InputEvent.xformed_by()<class_InputEvent_method_xformed_by>` 進行縮放。當使用 :ref:`Input.MOUSE_MODE_CAPTURED<class_Input_constant_MOUSE_MODE_CAPTURED>` 滑鼠模式時，無論專案的拉伸模式如何，對於滑鼠瞄准來說，這都應該優於 :ref:`relative<class_InputEventMouseMotion_property_relative>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouseMotion_property_screen_velocity:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **screen_velocity** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventMouseMotion_property_screen_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_screen_velocity**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_screen_velocity**\ (\ )

以螢幕座標表示的、未經縮放的滑鼠速度，單位為像素/秒。這個速度\ *不會*\ 根據內容縮放因子（content scale factor）或對 :ref:`InputEvent.xformed_by()<class_InputEvent_method_xformed_by>` 的呼叫進行縮放。

\ **注意：** 在 :ref:`Input.MOUSE_MODE_CAPTURED<class_Input_constant_MOUSE_MODE_CAPTURED>`\ （滑鼠捕獲）模式下，\ :ref:`screen_velocity<class_InputEventMouseMotion_property_screen_velocity>` 會回傳 ``(0, 0)``\ ，因為此時滑鼠游標是隱藏且鎖定的。如果你想在 :ref:`Input.MOUSE_MODE_CAPTURED<class_Input_constant_MOUSE_MODE_CAPTURED>` 模式下使用滑鼠進行瞄准，請使用 :ref:`screen_relative<class_InputEventMouseMotion_property_screen_relative>`\ 。

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

滑鼠速度，單位為像素/秒。

\ **注意：** :ref:`velocity<class_InputEventMouseMotion_property_velocity>` 會根據內容縮放因子（content scale factor）自動進行縮放，該因子由專案的拉伸模式（stretch mode）設定決定。這意味著，滑鼠靈敏度可能會因為解析度的不同而顯得不一樣。

\ **注意：** 在 :ref:`Input.MOUSE_MODE_CAPTURED<class_Input_constant_MOUSE_MODE_CAPTURED>`\ （滑鼠捕獲）模式下，\ :ref:`velocity<class_InputEventMouseMotion_property_velocity>` 會回傳 ``(0, 0)``\ ，因為此時滑鼠游標是隱藏且鎖定的。如果你想在 :ref:`Input.MOUSE_MODE_CAPTURED<class_Input_constant_MOUSE_MODE_CAPTURED>` 模式下使用滑鼠進行瞄准，請使用 :ref:`screen_relative<class_InputEventMouseMotion_property_screen_relative>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
