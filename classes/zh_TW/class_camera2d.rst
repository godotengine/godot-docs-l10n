:github_url: hide

.. _class_Camera2D:

Camera2D
========

**繼承：** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

2D 場景的相機節點。

.. rst-class:: classref-introduction-group

說明
----

Camera node for 2D scenes. It forces the screen (current layer) to scroll following this node. This makes it easier (and faster) to program scrollable scenes than manually changing the position of :ref:`CanvasItem<class_CanvasItem>`-based nodes.

Cameras register themselves in the nearest :ref:`Viewport<class_Viewport>` node (when ascending the tree). Only one camera can be active per viewport. If no viewport is available ascending the tree, the camera will register in the global viewport.

This node is intended to be a simple helper to get things going quickly, but more functionality may be desired to change how the camera works. To make your own custom camera node, inherit it from :ref:`Node2D<class_Node2D>` and change the transform of the canvas by setting :ref:`Viewport.canvas_transform<class_Viewport_property_canvas_transform>` in :ref:`Viewport<class_Viewport>` (you can obtain the current :ref:`Viewport<class_Viewport>` by using :ref:`Node.get_viewport()<class_Node_method_get_viewport>`).

Note that the **Camera2D** node's :ref:`Node2D.global_position<class_Node2D_property_global_position>` doesn't represent the actual position of the screen, which may differ due to applied smoothing or limits. You can use :ref:`get_screen_center_position()<class_Camera2D_method_get_screen_center_position>` to get the real position. Same for the node's :ref:`Node2D.global_rotation<class_Node2D_property_global_rotation>` which may be different due to applied rotation smoothing. You can use :ref:`get_screen_rotation()<class_Camera2D_method_get_screen_rotation>` to get the current rotation of the screen.

.. rst-class:: classref-introduction-group

教學
----

- `2D 平台範例 <https://godotengine.org/asset-library/asset/2727>`__

- `2D 等軸演示 <https://godotengine.org/asset-library/asset/2718>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`AnchorMode<enum_Camera2D_AnchorMode>`                           | :ref:`anchor_mode<class_Camera2D_property_anchor_mode>`                               | ``1``             |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`Node<class_Node>`                                               | :ref:`custom_viewport<class_Camera2D_property_custom_viewport>`                       |                   |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                             | :ref:`drag_bottom_margin<class_Camera2D_property_drag_bottom_margin>`                 | ``0.2``           |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`drag_horizontal_enabled<class_Camera2D_property_drag_horizontal_enabled>`       | ``false``         |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                             | :ref:`drag_horizontal_offset<class_Camera2D_property_drag_horizontal_offset>`         | ``0.0``           |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                             | :ref:`drag_left_margin<class_Camera2D_property_drag_left_margin>`                     | ``0.2``           |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                             | :ref:`drag_right_margin<class_Camera2D_property_drag_right_margin>`                   | ``0.2``           |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                             | :ref:`drag_top_margin<class_Camera2D_property_drag_top_margin>`                       | ``0.2``           |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`drag_vertical_enabled<class_Camera2D_property_drag_vertical_enabled>`           | ``false``         |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                             | :ref:`drag_vertical_offset<class_Camera2D_property_drag_vertical_offset>`             | ``0.0``           |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`editor_draw_drag_margin<class_Camera2D_property_editor_draw_drag_margin>`       | ``false``         |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`editor_draw_limits<class_Camera2D_property_editor_draw_limits>`                 | ``false``         |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`editor_draw_screen<class_Camera2D_property_editor_draw_screen>`                 | ``true``          |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`enabled<class_Camera2D_property_enabled>`                                       | ``true``          |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`ignore_rotation<class_Camera2D_property_ignore_rotation>`                       | ``true``          |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`                                                 | :ref:`limit_bottom<class_Camera2D_property_limit_bottom>`                             | ``10000000``      |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`limit_enabled<class_Camera2D_property_limit_enabled>`                           | ``true``          |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`                                                 | :ref:`limit_left<class_Camera2D_property_limit_left>`                                 | ``-10000000``     |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`                                                 | :ref:`limit_right<class_Camera2D_property_limit_right>`                               | ``10000000``      |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`limit_smoothed<class_Camera2D_property_limit_smoothed>`                         | ``false``         |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`                                                 | :ref:`limit_top<class_Camera2D_property_limit_top>`                                   | ``-10000000``     |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`                                         | :ref:`offset<class_Camera2D_property_offset>`                                         | ``Vector2(0, 0)`` |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`position_smoothing_enabled<class_Camera2D_property_position_smoothing_enabled>` | ``false``         |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                             | :ref:`position_smoothing_speed<class_Camera2D_property_position_smoothing_speed>`     | ``5.0``           |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`Camera2DProcessCallback<enum_Camera2D_Camera2DProcessCallback>` | :ref:`process_callback<class_Camera2D_property_process_callback>`                     | ``1``             |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`rotation_smoothing_enabled<class_Camera2D_property_rotation_smoothing_enabled>` | ``false``         |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                             | :ref:`rotation_smoothing_speed<class_Camera2D_property_rotation_smoothing_speed>`     | ``5.0``           |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`                                         | :ref:`zoom<class_Camera2D_property_zoom>`                                             | ``Vector2(1, 1)`` |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`align<class_Camera2D_method_align>`\ (\ )                                                                                                            |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`force_update_scroll<class_Camera2D_method_force_update_scroll>`\ (\ )                                                                                |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_drag_margin<class_Camera2D_method_get_drag_margin>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|                                  |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_limit<class_Camera2D_method_get_limit>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|                                              |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_screen_center_position<class_Camera2D_method_get_screen_center_position>`\ (\ ) |const|                                                          |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_screen_rotation<class_Camera2D_method_get_screen_rotation>`\ (\ ) |const|                                                                        |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_target_position<class_Camera2D_method_get_target_position>`\ (\ ) |const|                                                                        |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_current<class_Camera2D_method_is_current>`\ (\ ) |const|                                                                                          |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`make_current<class_Camera2D_method_make_current>`\ (\ )                                                                                              |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`reset_smoothing<class_Camera2D_method_reset_smoothing>`\ (\ )                                                                                        |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_drag_margin<class_Camera2D_method_set_drag_margin>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, drag_margin\: :ref:`float<class_float>`\ ) |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_limit<class_Camera2D_method_set_limit>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, limit\: :ref:`int<class_int>`\ )                       |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_Camera2D_AnchorMode:

.. rst-class:: classref-enumeration

enum **AnchorMode**: :ref:`🔗<enum_Camera2D_AnchorMode>`

.. _class_Camera2D_constant_ANCHOR_MODE_FIXED_TOP_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`AnchorMode<enum_Camera2D_AnchorMode>` **ANCHOR_MODE_FIXED_TOP_LEFT** = ``0``

相機的位置是固定的，所以左上角總是在原點。

.. _class_Camera2D_constant_ANCHOR_MODE_DRAG_CENTER:

.. rst-class:: classref-enumeration-constant

:ref:`AnchorMode<enum_Camera2D_AnchorMode>` **ANCHOR_MODE_DRAG_CENTER** = ``1``

相機的位置要考慮垂直/水平偏移和螢幕尺寸。

.. rst-class:: classref-item-separator

----

.. _enum_Camera2D_Camera2DProcessCallback:

.. rst-class:: classref-enumeration

enum **Camera2DProcessCallback**: :ref:`🔗<enum_Camera2D_Camera2DProcessCallback>`

.. _class_Camera2D_constant_CAMERA2D_PROCESS_PHYSICS:

.. rst-class:: classref-enumeration-constant

:ref:`Camera2DProcessCallback<enum_Camera2D_Camera2DProcessCallback>` **CAMERA2D_PROCESS_PHYSICS** = ``0``

相機在物理影格期間更新（見 :ref:`Node.NOTIFICATION_INTERNAL_PHYSICS_PROCESS<class_Node_constant_NOTIFICATION_INTERNAL_PHYSICS_PROCESS>`\ ）。

.. _class_Camera2D_constant_CAMERA2D_PROCESS_IDLE:

.. rst-class:: classref-enumeration-constant

:ref:`Camera2DProcessCallback<enum_Camera2D_Camera2DProcessCallback>` **CAMERA2D_PROCESS_IDLE** = ``1``

相機在程序影格期間更新（見 :ref:`Node.NOTIFICATION_INTERNAL_PROCESS<class_Node_constant_NOTIFICATION_INTERNAL_PROCESS>`\ ）。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_Camera2D_property_anchor_mode:

.. rst-class:: classref-property

:ref:`AnchorMode<enum_Camera2D_AnchorMode>` **anchor_mode** = ``1`` :ref:`🔗<class_Camera2D_property_anchor_mode>`

.. rst-class:: classref-property-setget

- |void| **set_anchor_mode**\ (\ value\: :ref:`AnchorMode<enum_Camera2D_AnchorMode>`\ )
- :ref:`AnchorMode<enum_Camera2D_AnchorMode>` **get_anchor_mode**\ (\ )

The Camera2D's anchor point.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_custom_viewport:

.. rst-class:: classref-property

:ref:`Node<class_Node>` **custom_viewport** :ref:`🔗<class_Camera2D_property_custom_viewport>`

.. rst-class:: classref-property-setget

- |void| **set_custom_viewport**\ (\ value\: :ref:`Node<class_Node>`\ )
- :ref:`Node<class_Node>` **get_custom_viewport**\ (\ )

連接到 **Camera2D** 的自訂 :ref:`Viewport<class_Viewport>` 節點。如果為 ``null`` 或者不是 :ref:`Viewport<class_Viewport>`\ ，則使用預設的視口。

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_drag_bottom_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **drag_bottom_margin** = ``0.2`` :ref:`🔗<class_Camera2D_property_drag_bottom_margin>`

.. rst-class:: classref-property-setget

- |void| **set_drag_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, drag_margin\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_drag_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

拖動相機所需的下邊距。值為 ``1`` 時，相機僅在到達螢幕底部邊緣時移動。

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_drag_horizontal_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **drag_horizontal_enabled** = ``false`` :ref:`🔗<class_Camera2D_property_drag_horizontal_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_drag_horizontal_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_drag_horizontal_enabled**\ (\ )

如果為 ``true``\ ，相機僅在到達水平（左或右）拖動邊距時移動。如果為 ``false``\ ，則相機水平移動時不考慮邊距。

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_drag_horizontal_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **drag_horizontal_offset** = ``0.0`` :ref:`🔗<class_Camera2D_property_drag_horizontal_offset>`

.. rst-class:: classref-property-setget

- |void| **set_drag_horizontal_offset**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_drag_horizontal_offset**\ (\ )

相機在右側（\ ``-1``\ ）和左側（\ ``1``\ ）拖動邊距之間的相對水平拖動偏移量。

\ **注意：**\ 用於設定初始水平拖動偏移量；確定目前偏移量；或強制目前偏移量。當 :ref:`drag_horizontal_enabled<class_Camera2D_property_drag_horizontal_enabled>` 為 ``true`` 或更改拖動邊距時，它不會自動更新。

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_drag_left_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **drag_left_margin** = ``0.2`` :ref:`🔗<class_Camera2D_property_drag_left_margin>`

.. rst-class:: classref-property-setget

- |void| **set_drag_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, drag_margin\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_drag_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

拖動相機所需的左邊距。值為 ``1`` 時，相機僅在到達螢幕左側邊緣時移動。

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_drag_right_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **drag_right_margin** = ``0.2`` :ref:`🔗<class_Camera2D_property_drag_right_margin>`

.. rst-class:: classref-property-setget

- |void| **set_drag_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, drag_margin\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_drag_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

拖動相機所需的右邊距。值為 ``1`` 時，相機僅在到達螢幕右側邊緣時移動。

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_drag_top_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **drag_top_margin** = ``0.2`` :ref:`🔗<class_Camera2D_property_drag_top_margin>`

.. rst-class:: classref-property-setget

- |void| **set_drag_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, drag_margin\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_drag_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

拖動相機所需的上邊距。值為 ``1`` 時，相機僅在到達螢幕頂部邊緣時移動。

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_drag_vertical_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **drag_vertical_enabled** = ``false`` :ref:`🔗<class_Camera2D_property_drag_vertical_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_drag_vertical_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_drag_vertical_enabled**\ (\ )

如果為 ``true``\ ，相機僅在達到垂直（頂部及底部）拖動邊距時才移動。如果為 ``false``\ ，相機會垂直移動而不管邊距。

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_drag_vertical_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **drag_vertical_offset** = ``0.0`` :ref:`🔗<class_Camera2D_property_drag_vertical_offset>`

.. rst-class:: classref-property-setget

- |void| **set_drag_vertical_offset**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_drag_vertical_offset**\ (\ )

相機在底部（\ ``-1``\ ）和頂部（\ ``1``\ ）拖動邊距之間的相對垂直拖動偏移量。

\ **注意：**\ 用於設定初始垂直拖動偏移量；確定目前偏移量；或強制目前偏移量。當 :ref:`drag_vertical_enabled<class_Camera2D_property_drag_vertical_enabled>` 為 ``true`` 或更改拖動邊距時，它不會自動更新。

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_editor_draw_drag_margin:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editor_draw_drag_margin** = ``false`` :ref:`🔗<class_Camera2D_property_editor_draw_drag_margin>`

.. rst-class:: classref-property-setget

- |void| **set_margin_drawing_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_margin_drawing_enabled**\ (\ )

如果為 ``true``\ ，在編輯器中繪製相機的拖動邊距矩形。

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_editor_draw_limits:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editor_draw_limits** = ``false`` :ref:`🔗<class_Camera2D_property_editor_draw_limits>`

.. rst-class:: classref-property-setget

- |void| **set_limit_drawing_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_limit_drawing_enabled**\ (\ )

如果為 ``true``\ ，在編輯器中繪製相機的極限矩形。

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_editor_draw_screen:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editor_draw_screen** = ``true`` :ref:`🔗<class_Camera2D_property_editor_draw_screen>`

.. rst-class:: classref-property-setget

- |void| **set_screen_drawing_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_screen_drawing_enabled**\ (\ )

如果為 ``true``\ ，在編輯器中繪製相機的畫面矩形。

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** = ``true`` :ref:`🔗<class_Camera2D_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_enabled**\ (\ )

控制該相機是否可以啟動。如果為 ``true``\ ，當該 **Camera2D** 進入場景樹並且目前沒有活動的相機時，它將成為主相機（參見 :ref:`Viewport.get_camera_2d()<class_Viewport_method_get_camera_2d>`\ ）。

當該相機目前處於活動狀態且 :ref:`enabled<class_Camera2D_property_enabled>` 被設定為 ``false`` 時，則場景樹中下一個啟用的 **Camera2D** 將變為活動狀態。

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_ignore_rotation:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **ignore_rotation** = ``true`` :ref:`🔗<class_Camera2D_property_ignore_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_ignore_rotation**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_ignoring_rotation**\ (\ )

如果為 ``true`` ，相機的算繪視圖不會受到其 :ref:`Node2D.rotation<class_Node2D_property_rotation>` 和 :ref:`Node2D.global_rotation<class_Node2D_property_global_rotation>` 的影響。

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_limit_bottom:

.. rst-class:: classref-property

:ref:`int<class_int>` **limit_bottom** = ``10000000`` :ref:`🔗<class_Camera2D_property_limit_bottom>`

.. rst-class:: classref-property-setget

- |void| **set_limit**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, limit\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_limit**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

底部滾動極限，單位為圖元。相機會在抵達該值時停止移動，但是 :ref:`offset<class_Camera2D_property_offset>` 可以把視圖推過該極限。

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_limit_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **limit_enabled** = ``true`` :ref:`🔗<class_Camera2D_property_limit_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_limit_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_limit_enabled**\ (\ )

If ``true``, the limits will be enabled. Disabling this will allow the camera to focus anywhere, when the four ``limit_*`` properties will not work.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_limit_left:

.. rst-class:: classref-property

:ref:`int<class_int>` **limit_left** = ``-10000000`` :ref:`🔗<class_Camera2D_property_limit_left>`

.. rst-class:: classref-property-setget

- |void| **set_limit**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, limit\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_limit**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

左側滾動極限，單位為圖元。相機會在抵達該值時停止移動，但是 :ref:`offset<class_Camera2D_property_offset>` 可以把視圖推過該極限。

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_limit_right:

.. rst-class:: classref-property

:ref:`int<class_int>` **limit_right** = ``10000000`` :ref:`🔗<class_Camera2D_property_limit_right>`

.. rst-class:: classref-property-setget

- |void| **set_limit**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, limit\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_limit**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

右側滾動極限，單位為圖元。相機會在抵達該值時停止移動，但是 :ref:`offset<class_Camera2D_property_offset>` 可以把視圖推過該極限。

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_limit_smoothed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **limit_smoothed** = ``false`` :ref:`🔗<class_Camera2D_property_limit_smoothed>`

.. rst-class:: classref-property-setget

- |void| **set_limit_smoothing_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_limit_smoothing_enabled**\ (\ )

如果為 ``true``\ ，相機會在達到極限時平滑地停止。

如果 :ref:`position_smoothing_enabled<class_Camera2D_property_position_smoothing_enabled>` 為 ``false``\ ，則該屬性無效。

\ **注意：**\ 要立即將相機的位置更新到限制範圍內而不進行平滑，即使啟用了該設置，也要呼叫 :ref:`reset_smoothing()<class_Camera2D_method_reset_smoothing>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_limit_top:

.. rst-class:: classref-property

:ref:`int<class_int>` **limit_top** = ``-10000000`` :ref:`🔗<class_Camera2D_property_limit_top>`

.. rst-class:: classref-property-setget

- |void| **set_limit**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, limit\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_limit**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

頂部滾動極限，單位為圖元。相機會在抵達該值時停止移動，但是 :ref:`offset<class_Camera2D_property_offset>` 可以把視圖推過該極限。

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **offset** = ``Vector2(0, 0)`` :ref:`🔗<class_Camera2D_property_offset>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_offset**\ (\ )

相機的相對偏移量。用於環顧四周或相機抖動動畫。偏移後的相機可以超過 :ref:`limit_top<class_Camera2D_property_limit_top>`\ 、\ :ref:`limit_bottom<class_Camera2D_property_limit_bottom>`\ 、\ :ref:`limit_left<class_Camera2D_property_limit_left>` 和 :ref:`limit_right<class_Camera2D_property_limit_right>` 中定義的限制。

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_position_smoothing_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **position_smoothing_enabled** = ``false`` :ref:`🔗<class_Camera2D_property_position_smoothing_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_position_smoothing_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_position_smoothing_enabled**\ (\ )

如果為 ``true``\ ，相機的視圖會以 :ref:`position_smoothing_speed<class_Camera2D_property_position_smoothing_speed>` 的速度，平滑地移向其目標位置。

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_position_smoothing_speed:

.. rst-class:: classref-property

:ref:`float<class_float>` **position_smoothing_speed** = ``5.0`` :ref:`🔗<class_Camera2D_property_position_smoothing_speed>`

.. rst-class:: classref-property-setget

- |void| **set_position_smoothing_speed**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_position_smoothing_speed**\ (\ )

當 :ref:`position_smoothing_enabled<class_Camera2D_property_position_smoothing_enabled>` 為 ``true`` 時，相機平滑效果的速度，單位為每秒圖元。

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_process_callback:

.. rst-class:: classref-property

:ref:`Camera2DProcessCallback<enum_Camera2D_Camera2DProcessCallback>` **process_callback** = ``1`` :ref:`🔗<class_Camera2D_property_process_callback>`

.. rst-class:: classref-property-setget

- |void| **set_process_callback**\ (\ value\: :ref:`Camera2DProcessCallback<enum_Camera2D_Camera2DProcessCallback>`\ )
- :ref:`Camera2DProcessCallback<enum_Camera2D_Camera2DProcessCallback>` **get_process_callback**\ (\ )

The camera's process callback.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_rotation_smoothing_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **rotation_smoothing_enabled** = ``false`` :ref:`🔗<class_Camera2D_property_rotation_smoothing_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_rotation_smoothing_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_rotation_smoothing_enabled**\ (\ )

如果為 ``true``\ ，相機的視圖會通過漸近平滑的方式平滑地旋轉，以 :ref:`rotation_smoothing_speed<class_Camera2D_property_rotation_smoothing_speed>` 的速度與其目標旋轉對齊。

\ **注意：**\ 如果 :ref:`ignore_rotation<class_Camera2D_property_ignore_rotation>` 為 ``true``\ ，則該屬性無效。

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_rotation_smoothing_speed:

.. rst-class:: classref-property

:ref:`float<class_float>` **rotation_smoothing_speed** = ``5.0`` :ref:`🔗<class_Camera2D_property_rotation_smoothing_speed>`

.. rst-class:: classref-property-setget

- |void| **set_rotation_smoothing_speed**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_rotation_smoothing_speed**\ (\ )

當 :ref:`rotation_smoothing_enabled<class_Camera2D_property_rotation_smoothing_enabled>` 為 ``true`` 時，相機旋轉平滑效果的角度漸近速度。

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_zoom:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **zoom** = ``Vector2(1, 1)`` :ref:`🔗<class_Camera2D_property_zoom>`

.. rst-class:: classref-property-setget

- |void| **set_zoom**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_zoom**\ (\ )

The camera's zoom. Higher values are more zoomed in. For example, a zoom of ``Vector2(2.0, 2.0)`` will be twice as zoomed in on each axis (the view covers an area four times smaller). In contrast, a zoom of ``Vector2(0.5, 0.5)`` will be twice as zoomed out on each axis (the view covers an area four times larger). The X and Y components should generally always be set to the same value, unless you wish to stretch the camera view.

\ **Note:** :ref:`FontFile.oversampling<class_FontFile_property_oversampling>` does *not* take **Camera2D** zoom into account. This means that zooming in/out will cause bitmap fonts and rasterized (non-MSDF) dynamic fonts to appear blurry or pixelated unless the font is part of a :ref:`CanvasLayer<class_CanvasLayer>` that makes it ignore camera zoom. To ensure text remains crisp regardless of zoom, you can enable MSDF font rendering by enabling :ref:`ProjectSettings.gui/theme/default_font_multichannel_signed_distance_field<class_ProjectSettings_property_gui/theme/default_font_multichannel_signed_distance_field>` (applies to the default project font only), or enabling **Multichannel Signed Distance Field** in the import options of a DynamicFont for custom fonts. On system fonts, :ref:`SystemFont.multichannel_signed_distance_field<class_SystemFont_property_multichannel_signed_distance_field>` can be enabled in the inspector.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Camera2D_method_align:

.. rst-class:: classref-method

|void| **align**\ (\ ) :ref:`🔗<class_Camera2D_method_align>`

Aligns the camera to the tracked node.

\ **Note:** Calling :ref:`force_update_scroll()<class_Camera2D_method_force_update_scroll>` after this method is not required.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_method_force_update_scroll:

.. rst-class:: classref-method

|void| **force_update_scroll**\ (\ ) :ref:`🔗<class_Camera2D_method_force_update_scroll>`

強制相機立即更新滾動。

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_method_get_drag_margin:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_drag_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const| :ref:`🔗<class_Camera2D_method_get_drag_margin>`

返回指定邊 :ref:`Side<enum_@GlobalScope_Side>` 的邊距。另見 :ref:`drag_bottom_margin<class_Camera2D_property_drag_bottom_margin>`\ 、\ :ref:`drag_top_margin<class_Camera2D_property_drag_top_margin>`\ 、\ :ref:`drag_left_margin<class_Camera2D_property_drag_left_margin>` 和 :ref:`drag_right_margin<class_Camera2D_property_drag_right_margin>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_method_get_limit:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_limit**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const| :ref:`🔗<class_Camera2D_method_get_limit>`

返回指定邊 :ref:`Side<enum_@GlobalScope_Side>` 的相機極限。另見 :ref:`limit_bottom<class_Camera2D_property_limit_bottom>`\ 、\ :ref:`limit_top<class_Camera2D_property_limit_top>`\ 、\ :ref:`limit_left<class_Camera2D_property_limit_left>` 和 :ref:`limit_right<class_Camera2D_property_limit_right>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_method_get_screen_center_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_screen_center_position**\ (\ ) |const| :ref:`🔗<class_Camera2D_method_get_screen_center_position>`

返回該 **Camera2D** 視角下的螢幕中心位置，使用全域座標。

\ **注意：**\ 相機實際的目標位置可能與此不同。見 :ref:`get_target_position()<class_Camera2D_method_get_target_position>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_method_get_screen_rotation:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_screen_rotation**\ (\ ) |const| :ref:`🔗<class_Camera2D_method_get_screen_rotation>`

Returns the current screen rotation from this camera's point of view.

\ **Note:** The screen rotation can be different from :ref:`Node2D.global_rotation<class_Node2D_property_global_rotation>` if the camera is rotating smoothly due to :ref:`rotation_smoothing_enabled<class_Camera2D_property_rotation_smoothing_enabled>`.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_method_get_target_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_target_position**\ (\ ) |const| :ref:`🔗<class_Camera2D_method_get_target_position>`

返回該相機的目標位置，使用全域座標。

\ **注意：**\ 返回值與 :ref:`Node2D.global_position<class_Node2D_property_global_position>` 不同，因為會受到拖動屬性的影響。如果 :ref:`position_smoothing_enabled<class_Camera2D_property_position_smoothing_enabled>` 為 ``true`` ，也不等同於目前位置（見 :ref:`get_screen_center_position()<class_Camera2D_method_get_screen_center_position>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_method_is_current:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_current**\ (\ ) |const| :ref:`🔗<class_Camera2D_method_is_current>`

如果該 **Camera2D** 為活動相機，則返回 ``true``\ （見 :ref:`Viewport.get_camera_2d()<class_Viewport_method_get_camera_2d>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_method_make_current:

.. rst-class:: classref-method

|void| **make_current**\ (\ ) :ref:`🔗<class_Camera2D_method_make_current>`

強制該 **Camera2D** 成為目前的活動相機。\ :ref:`enabled<class_Camera2D_property_enabled>` 必須為 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_method_reset_smoothing:

.. rst-class:: classref-method

|void| **reset_smoothing**\ (\ ) :ref:`🔗<class_Camera2D_method_reset_smoothing>`

將相機的位置立即設定為其目前平滑的目標位置。

當 :ref:`position_smoothing_enabled<class_Camera2D_property_position_smoothing_enabled>` 為 ``false`` 時，本方法無效。

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_method_set_drag_margin:

.. rst-class:: classref-method

|void| **set_drag_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, drag_margin\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Camera2D_method_set_drag_margin>`

設定指定邊 :ref:`Side<enum_@GlobalScope_Side>` 的邊距。另見 :ref:`drag_bottom_margin<class_Camera2D_property_drag_bottom_margin>`\ 、\ :ref:`drag_top_margin<class_Camera2D_property_drag_top_margin>`\ 、\ :ref:`drag_left_margin<class_Camera2D_property_drag_left_margin>` 和 :ref:`drag_right_margin<class_Camera2D_property_drag_right_margin>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_method_set_limit:

.. rst-class:: classref-method

|void| **set_limit**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, limit\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Camera2D_method_set_limit>`

設定指定邊 :ref:`Side<enum_@GlobalScope_Side>` 的相機極限。另見 :ref:`limit_bottom<class_Camera2D_property_limit_bottom>`\ 、\ :ref:`limit_top<class_Camera2D_property_limit_top>`\ 、\ :ref:`limit_left<class_Camera2D_property_limit_left>` 和 :ref:`limit_right<class_Camera2D_property_limit_right>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
