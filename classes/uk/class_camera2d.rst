:github_url: hide

.. _class_Camera2D:

Camera2D
========

**Успадковує:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Вузол камери для 2D сцен.

.. rst-class:: classref-introduction-group

Опис
--------

Вузол камери для 2D-сцен. Він змушує екран (поточний шар) прокручуватися, слідуючи за цим вузлом. Це спрощує (і пришвидшує) програмування сцен з можливістю прокручування, ніж ручна зміна положення вузлів на основі :ref:`CanvasItem<class_CanvasItem>`.

Камери реєструються в найближчому вузлі :ref:`Viewport<class_Viewport>` (під час висхідного розташування по дереву). Тільки одна камера може бути активною на одне вікно перегляду. Якщо вікно перегляду недоступне під час висхідного розташування по дереву, камера зареєструється в глобальному вікні перегляду.

Цей вузол призначений для простого помічника для швидкого запуску, але може знадобитися більше функціональності, щоб змінити спосіб роботи камери. Щоб створити власний вузол камери, успадкуйте його від :ref:`Node2D<class_Node2D>` та змініть перетворення полотна, встановивши :ref:`Viewport.canvas_transform<class_Viewport_property_canvas_transform>` у :ref:`Viewport<class_Viewport>` (ви можете отримати поточне :ref:`Viewport<class_Viewport>` за допомогою :ref:`Node.get_viewport()<class_Node_method_get_viewport>`).

Зверніть увагу, що :ref:`Node2D.global_position<class_Node2D_property_global_position>` вузла **Camera2D** не відображає фактичне положення екрана, яке може відрізнятися через застосоване згладжування або обмеження. Ви можете скористатися методом :ref:`get_screen_center_position()<class_Camera2D_method_get_screen_center_position>`, щоб отримати реальне положення. Те саме стосується вузла :ref:`Node2D.global_rotation<class_Node2D_property_global_rotation>`, який може відрізнятися через застосоване згладжування обертання. Ви можете скористатися методом :ref:`get_screen_rotation()<class_Camera2D_method_get_screen_rotation>`, щоб отримати поточне обертання екрана.

.. rst-class:: classref-introduction-group

Посібники
------------------

- `Демонстрація 2D-платформера <https://godotengine.org/asset-library/asset/2727>`__

- `2D ізометрична демонстрація <https://godotengine.org/asset-library/asset/2718>`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

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

Методи
------------

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

Переліки
----------------

.. _enum_Camera2D_AnchorMode:

.. rst-class:: classref-enumeration

enum **AnchorMode**: :ref:`🔗<enum_Camera2D_AnchorMode>`

.. _class_Camera2D_constant_ANCHOR_MODE_FIXED_TOP_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`AnchorMode<enum_Camera2D_AnchorMode>` **ANCHOR_MODE_FIXED_TOP_LEFT** = ``0``

Положення камери фіксується таким чином, що верхній лівий кут завжди знаходиться в початковій точці.

.. _class_Camera2D_constant_ANCHOR_MODE_DRAG_CENTER:

.. rst-class:: classref-enumeration-constant

:ref:`AnchorMode<enum_Camera2D_AnchorMode>` **ANCHOR_MODE_DRAG_CENTER** = ``1``

Розташування камери враховує вертикальне/горизонтальне зміщення та розмір екрана.

.. rst-class:: classref-item-separator

----

.. _enum_Camera2D_Camera2DProcessCallback:

.. rst-class:: classref-enumeration

enum **Camera2DProcessCallback**: :ref:`🔗<enum_Camera2D_Camera2DProcessCallback>`

.. _class_Camera2D_constant_CAMERA2D_PROCESS_PHYSICS:

.. rst-class:: classref-enumeration-constant

:ref:`Camera2DProcessCallback<enum_Camera2D_Camera2DProcessCallback>` **CAMERA2D_PROCESS_PHYSICS** = ``0``

Камера оновлюється під час кадрів фізики (див. :ref:`Node.NOTIFICATION_INTERNAL_PHYSICS_PROCESS<class_Node_constant_NOTIFICATION_INTERNAL_PHYSICS_PROCESS>`).

.. _class_Camera2D_constant_CAMERA2D_PROCESS_IDLE:

.. rst-class:: classref-enumeration-constant

:ref:`Camera2DProcessCallback<enum_Camera2D_Camera2DProcessCallback>` **CAMERA2D_PROCESS_IDLE** = ``1``

Камера оновлюється під час кадрів процесу (див. :ref:`Node.NOTIFICATION_INTERNAL_PROCESS<class_Node_constant_NOTIFICATION_INTERNAL_PROCESS>`).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_Camera2D_property_anchor_mode:

.. rst-class:: classref-property

:ref:`AnchorMode<enum_Camera2D_AnchorMode>` **anchor_mode** = ``1`` :ref:`🔗<class_Camera2D_property_anchor_mode>`

.. rst-class:: classref-property-setget

- |void| **set_anchor_mode**\ (\ value\: :ref:`AnchorMode<enum_Camera2D_AnchorMode>`\ )
- :ref:`AnchorMode<enum_Camera2D_AnchorMode>` **get_anchor_mode**\ (\ )

Точка прив'язки Camera2D.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_custom_viewport:

.. rst-class:: classref-property

:ref:`Node<class_Node>` **custom_viewport** :ref:`🔗<class_Camera2D_property_custom_viewport>`

.. rst-class:: classref-property-setget

- |void| **set_custom_viewport**\ (\ value\: :ref:`Node<class_Node>`\ )
- :ref:`Node<class_Node>` **get_custom_viewport**\ (\ )

Спеціальний вузол :ref:`Viewport<class_Viewport>`, приєднаний до **Camera2D**. Якщо ``null`` або не є :ref:`Viewport<class_Viewport>`, натомість використовується вікно перегляду за замовчуванням.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_drag_bottom_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **drag_bottom_margin** = ``0.2`` :ref:`🔗<class_Camera2D_property_drag_bottom_margin>`

.. rst-class:: classref-property-setget

- |void| **set_drag_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, drag_margin\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_drag_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Нижнє поле, необхідне для перетягування камери. Значення ``1`` змушує камеру рухатися лише тоді, коли вона досягає нижнього краю екрана.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_drag_horizontal_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **drag_horizontal_enabled** = ``false`` :ref:`🔗<class_Camera2D_property_drag_horizontal_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_drag_horizontal_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_drag_horizontal_enabled**\ (\ )

Якщо ``true``, камера рухається лише тоді, коли досягає горизонтальних (лівого та правого) полів перетягування. Якщо ``false``, камера рухається горизонтально незалежно від полів.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_drag_horizontal_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **drag_horizontal_offset** = ``0.0`` :ref:`🔗<class_Camera2D_property_drag_horizontal_offset>`

.. rst-class:: classref-property-setget

- |void| **set_drag_horizontal_offset**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_drag_horizontal_offset**\ (\ )

Відносне горизонтальне зміщення перетягування камери між правим (``-1``) і лівим (``1``) полями перетягування.

\ **Примітка:** Використовується для встановлення початкового горизонтального зсуву перетягування; визначити поточне зміщення; або примусове поточне зміщення. Він не оновлюється автоматично, якщо :ref:`drag_horizontal_enabled<class_Camera2D_property_drag_horizontal_enabled>` має значення ``true`` або поля перетягування змінюються.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_drag_left_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **drag_left_margin** = ``0.2`` :ref:`🔗<class_Camera2D_property_drag_left_margin>`

.. rst-class:: classref-property-setget

- |void| **set_drag_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, drag_margin\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_drag_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Ліве поле, необхідне для перетягування камери. Значення ``1`` змушує камеру рухатися лише тоді, коли вона досягає лівого краю екрана.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_drag_right_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **drag_right_margin** = ``0.2`` :ref:`🔗<class_Camera2D_property_drag_right_margin>`

.. rst-class:: classref-property-setget

- |void| **set_drag_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, drag_margin\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_drag_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Праве поле, необхідне для перетягування камери. Значення ``1`` змушує камеру рухатися лише тоді, коли вона досягає правого краю екрана.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_drag_top_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **drag_top_margin** = ``0.2`` :ref:`🔗<class_Camera2D_property_drag_top_margin>`

.. rst-class:: classref-property-setget

- |void| **set_drag_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, drag_margin\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_drag_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Верхнє поле, необхідне для перетягування камери. Значення ``1`` змушує камеру рухатися лише тоді, коли вона досягає верхнього краю екрана.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_drag_vertical_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **drag_vertical_enabled** = ``false`` :ref:`🔗<class_Camera2D_property_drag_vertical_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_drag_vertical_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_drag_vertical_enabled**\ (\ )

Якщо ``true``, камера рухається лише тоді, коли досягає вертикальних (верхнього та нижнього) полів перетягування. Якщо ``false``, камера рухається вертикально незалежно від полів опору.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_drag_vertical_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **drag_vertical_offset** = ``0.0`` :ref:`🔗<class_Camera2D_property_drag_vertical_offset>`

.. rst-class:: classref-property-setget

- |void| **set_drag_vertical_offset**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_drag_vertical_offset**\ (\ )

Відносне вертикальне зміщення перетягування камери між нижнім (``-1``) і верхнім (``1``) полями перетягування.

\ **Примітка:** Використовується для встановлення початкового вертикального зсуву перетягування; визначити поточне зміщення; або примусове поточне зміщення. Він не оновлюється автоматично, якщо :ref:`drag_vertical_enabled<class_Camera2D_property_drag_vertical_enabled>` має значення ``true`` або поля перетягування змінюються.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_editor_draw_drag_margin:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editor_draw_drag_margin** = ``false`` :ref:`🔗<class_Camera2D_property_editor_draw_drag_margin>`

.. rst-class:: classref-property-setget

- |void| **set_margin_drawing_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_margin_drawing_enabled**\ (\ )

Якщо ``true``, малює прямокутник поля перетягування камери в редакторі.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_editor_draw_limits:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editor_draw_limits** = ``false`` :ref:`🔗<class_Camera2D_property_editor_draw_limits>`

.. rst-class:: classref-property-setget

- |void| **set_limit_drawing_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_limit_drawing_enabled**\ (\ )

Якщо ``true``, малює прямокутник обмежень камери в редакторі.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_editor_draw_screen:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editor_draw_screen** = ``true`` :ref:`🔗<class_Camera2D_property_editor_draw_screen>`

.. rst-class:: classref-property-setget

- |void| **set_screen_drawing_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_screen_drawing_enabled**\ (\ )

Якщо ``true``, малює прямокутник екрана камери в редакторі.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** = ``true`` :ref:`🔗<class_Camera2D_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_enabled**\ (\ )

Контролює, чи може камера бути активною чи ні. Якщо ``true``, **Camera2D** стане основною камерою, коли вона ввійде в дерево сцени, і наразі немає жодної активної камери (див. :ref:`Viewport.get_camera_2d()<class_Viewport_method_get_camera_2d>`).

 Коли камера наразі активна, а :ref:`enabled<class_Camera2D_property_enabled>` встановлено на ``false``, наступний увімкнений **Camera2D** у дереві сцен стане активним.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_ignore_rotation:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **ignore_rotation** = ``true`` :ref:`🔗<class_Camera2D_property_ignore_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_ignore_rotation**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_ignoring_rotation**\ (\ )

Якщо ``true``, на візуалізований вигляд камери не впливають його :ref:`Node2D.rotation<class_Node2D_property_rotation>` і :ref:`Node2D.global_rotation<class_Node2D_property_global_rotation>`.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_limit_bottom:

.. rst-class:: classref-property

:ref:`int<class_int>` **limit_bottom** = ``10000000`` :ref:`🔗<class_Camera2D_property_limit_bottom>`

.. rst-class:: classref-property-setget

- |void| **set_limit**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, limit\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_limit**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Нижня межа прокручування в пікселях. Камера припиняє рух, коли досягає цього значення, але :ref:`offset<class_Camera2D_property_offset>` може перевищити межу огляду.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_limit_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **limit_enabled** = ``true`` :ref:`🔗<class_Camera2D_property_limit_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_limit_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_limit_enabled**\ (\ )

Якщо значення ``true``, обмеження будуть увімкнені. Вимкнення цього значення дозволить камері фокусуватися будь-де, коли чотири властивості ``limit_*`` не працюватимуть.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_limit_left:

.. rst-class:: classref-property

:ref:`int<class_int>` **limit_left** = ``-10000000`` :ref:`🔗<class_Camera2D_property_limit_left>`

.. rst-class:: classref-property-setget

- |void| **set_limit**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, limit\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_limit**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Ліміт прокручування вліво в пікселях. Камера припиняє рух, коли досягає цього значення, але :ref:`offset<class_Camera2D_property_offset>` може перевищити межу огляду.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_limit_right:

.. rst-class:: classref-property

:ref:`int<class_int>` **limit_right** = ``10000000`` :ref:`🔗<class_Camera2D_property_limit_right>`

.. rst-class:: classref-property-setget

- |void| **set_limit**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, limit\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_limit**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Ліміт прокручування вправо в пікселях. Камера припиняє рух, коли досягає цього значення, але :ref:`offset<class_Camera2D_property_offset>` може перевищити межу огляду.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_limit_smoothed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **limit_smoothed** = ``false`` :ref:`🔗<class_Camera2D_property_limit_smoothed>`

.. rst-class:: classref-property-setget

- |void| **set_limit_smoothing_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_limit_smoothing_enabled**\ (\ )

Якщо ``true``, камера плавно зупиняється, коли досягає своїх меж.

Ця властивість не діє, якщо :ref:`position_smoothing_enabled<class_Camera2D_property_position_smoothing_enabled>` має значення ``false``.

\ **Примітка:** Щоб негайно оновити положення камери, щоб воно було в межах без згладжування, навіть якщо це налаштування ввімкнено, викликайте :ref:`reset_smoothing()<class_Camera2D_method_reset_smoothing>`.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_limit_top:

.. rst-class:: classref-property

:ref:`int<class_int>` **limit_top** = ``-10000000`` :ref:`🔗<class_Camera2D_property_limit_top>`

.. rst-class:: classref-property-setget

- |void| **set_limit**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, limit\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_limit**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Верхня межа прокручування в пікселях. Камера припиняє рух, коли досягає цього значення, але :ref:`offset<class_Camera2D_property_offset>` може перевищити межу огляду.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **offset** = ``Vector2(0, 0)`` :ref:`🔗<class_Camera2D_property_offset>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_offset**\ (\ )

Відносне зміщення камери. Корисно для огляду або анімації тремтіння камери. Зміщена камера може перевищувати обмеження, визначені в :ref:`limit_top<class_Camera2D_property_limit_top>`, :ref:`limit_bottom<class_Camera2D_property_limit_bottom>`, :ref:`limit_left<class_Camera2D_property_limit_left>` і :ref:`limit_right<class_Camera2D_property_limit_right>`.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_position_smoothing_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **position_smoothing_enabled** = ``false`` :ref:`🔗<class_Camera2D_property_position_smoothing_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_position_smoothing_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_position_smoothing_enabled**\ (\ )

Якщо ``true``, вид камери плавно переміщується до цільової позиції зі :ref:`position_smoothing_speed<class_Camera2D_property_position_smoothing_speed>`.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_position_smoothing_speed:

.. rst-class:: classref-property

:ref:`float<class_float>` **position_smoothing_speed** = ``5.0`` :ref:`🔗<class_Camera2D_property_position_smoothing_speed>`

.. rst-class:: classref-property-setget

- |void| **set_position_smoothing_speed**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_position_smoothing_speed**\ (\ )

Швидкість ефекту згладжування камери в пікселях на секунду, коли :ref:`position_smoothing_enabled<class_Camera2D_property_position_smoothing_enabled>` має значення ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_process_callback:

.. rst-class:: classref-property

:ref:`Camera2DProcessCallback<enum_Camera2D_Camera2DProcessCallback>` **process_callback** = ``1`` :ref:`🔗<class_Camera2D_property_process_callback>`

.. rst-class:: classref-property-setget

- |void| **set_process_callback**\ (\ value\: :ref:`Camera2DProcessCallback<enum_Camera2D_Camera2DProcessCallback>`\ )
- :ref:`Camera2DProcessCallback<enum_Camera2D_Camera2DProcessCallback>` **get_process_callback**\ (\ )

Зворотній виклик процесу камери.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_rotation_smoothing_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **rotation_smoothing_enabled** = ``false`` :ref:`🔗<class_Camera2D_property_rotation_smoothing_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_rotation_smoothing_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_rotation_smoothing_enabled**\ (\ )

Якщо ``true``, огляд камери плавно повертається за допомогою асимптотичного згладжування, щоб узгодити його цільове обертання на :ref:`rotation_smoothing_speed<class_Camera2D_property_rotation_smoothing_speed>`.

\ **Примітка:** Ця властивість не діє, якщо :ref:`ignore_rotation<class_Camera2D_property_ignore_rotation>` має значення ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_rotation_smoothing_speed:

.. rst-class:: classref-property

:ref:`float<class_float>` **rotation_smoothing_speed** = ``5.0`` :ref:`🔗<class_Camera2D_property_rotation_smoothing_speed>`

.. rst-class:: classref-property-setget

- |void| **set_rotation_smoothing_speed**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_rotation_smoothing_speed**\ (\ )

Кутова асимптотична швидкість ефекту згладжування обертання камери, коли :ref:`rotation_smoothing_enabled<class_Camera2D_property_rotation_smoothing_enabled>` має значення ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_zoom:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **zoom** = ``Vector2(1, 1)`` :ref:`🔗<class_Camera2D_property_zoom>`

.. rst-class:: classref-property-setget

- |void| **set_zoom**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_zoom**\ (\ )

Масштабування камери. Вищі значення призводять до більшого збільшення масштабу. Наприклад, масштабування ``Vector2(2.0, 2.0)`` буде вдвічі збільшене на кожній осі (огляд охоплює площу в чотири рази меншу). Натомість, масштабування ``Vector2(0.5, 0.5)`` буде вдвічі менше на кожній осі (огляд охоплює площу в чотири рази більшу). Компоненти X та Y, як правило, завжди повинні бути встановлені на однакове значення, якщо ви не хочете розтягнути огляд камери.

\ **Примітка:** :ref:`FontFile.oversampling<class_FontFile_property_oversampling>` *не* враховує масштабування **Camera2D**. Це означає, що збільшення/зменшення масштабу призведе до розмиття або пікселізації растрових шрифтів та растеризованих (не MSDF) динамічних шрифтів, якщо шрифт не є частиною :ref:`CanvasLayer<class_CanvasLayer>`, що змушує його ігнорувати масштабування камери. Щоб забезпечити чіткість тексту незалежно від масштабування, ви можете ввімкнути рендеринг шрифтів MSDF, увімкнувши :ref:`ProjectSettings.gui/theme/default_font_multichannel_signed_distance_field<class_ProjectSettings_property_gui/theme/default_font_multichannel_signed_distance_field>` (стосується лише шрифту проекту за замовчуванням) або ввімкнувши **Поле відстані зі знаком багатоканальності** у параметрах імпорту DynamicFont для користувацьких шрифтів. Для системних шрифтів :ref:`SystemFont.multichannel_signed_distance_field<class_SystemFont_property_multichannel_signed_distance_field>` можна ввімкнути в інспекторі.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_Camera2D_method_align:

.. rst-class:: classref-method

|void| **align**\ (\ ) :ref:`🔗<class_Camera2D_method_align>`

Вирівнює камеру відносно відстежуваного вузла.

\ **Примітка:** Виклик :ref:`force_update_scroll()<class_Camera2D_method_force_update_scroll>` після цього методу не є обов'язковим.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_method_force_update_scroll:

.. rst-class:: classref-method

|void| **force_update_scroll**\ (\ ) :ref:`🔗<class_Camera2D_method_force_update_scroll>`

Змушує камеру негайно оновити прокручування.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_method_get_drag_margin:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_drag_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const| :ref:`🔗<class_Camera2D_method_get_drag_margin>`

Повертає вказане поле :ref:`Side<enum_@GlobalScope_Side>`. Див. також :ref:`drag_bottom_margin<class_Camera2D_property_drag_bottom_margin>`, :ref:`drag_top_margin<class_Camera2D_property_drag_top_margin>`, :ref:`drag_left_margin<class_Camera2D_property_drag_left_margin>` і :ref:`drag_right_margin<class_Camera2D_property_drag_right_margin>`.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_method_get_limit:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_limit**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const| :ref:`🔗<class_Camera2D_method_get_limit>`

Повертає ліміт камери для вказаної :ref:`Side<enum_@GlobalScope_Side>`. Див. також :ref:`limit_bottom<class_Camera2D_property_limit_bottom>`, :ref:`limit_top<class_Camera2D_property_limit_top>`, :ref:`limit_left<class_Camera2D_property_limit_left>`, і :ref:`limit_right<class_Camera2D_property_limit_right>`.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_method_get_screen_center_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_screen_center_position**\ (\ ) |const| :ref:`🔗<class_Camera2D_method_get_screen_center_position>`

Повертає центр екрана з точки зору цієї камери в глобальних координатах.

\ **Примітка:** Точне цільове положення камери може відрізнятися. Перегляньте :ref:`get_target_position()<class_Camera2D_method_get_target_position>`.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_method_get_screen_rotation:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_screen_rotation**\ (\ ) |const| :ref:`🔗<class_Camera2D_method_get_screen_rotation>`

Повертає поточне обертання екрана з точки зору цієї камери.

\ **Примітка:** Обертання екрана може відрізнятися від :ref:`Node2D.global_rotation<class_Node2D_property_global_rotation>`, якщо камера обертається плавно завдяки :ref:`rotation_smoothing_enabled<class_Camera2D_property_rotation_smoothing_enabled>`.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_method_get_target_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_target_position**\ (\ ) |const| :ref:`🔗<class_Camera2D_method_get_target_position>`

Повертає цільове положення камери в глобальних координатах.

\ **Примітка:** Повернене значення не те саме, що :ref:`Node2D.global_position<class_Node2D_property_global_position>`, оскільки на нього впливають властивості перетягування. Це також не те саме, що поточна позиція, якщо :ref:`position_smoothing_enabled<class_Camera2D_property_position_smoothing_enabled>` має значення ``true`` (див. :ref:`get_screen_center_position()<class_Camera2D_method_get_screen_center_position>`).

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_method_is_current:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_current**\ (\ ) |const| :ref:`🔗<class_Camera2D_method_is_current>`

``true``, якщо це **Camera2D** є активною камерою (див. :ref:`Viewport.get_camera_2d()<class_Viewport_method_get_camera_2d>`).

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_method_make_current:

.. rst-class:: classref-method

|void| **make_current**\ (\ ) :ref:`🔗<class_Camera2D_method_make_current>`

Примусово робить цей **Camera2D** поточним активним. :ref:`enabled<class_Camera2D_property_enabled>` має бути ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_method_reset_smoothing:

.. rst-class:: classref-method

|void| **reset_smoothing**\ (\ ) :ref:`🔗<class_Camera2D_method_reset_smoothing>`

Негайно встановлює положення камери до її поточного призначення згладжування.

Цей метод не діє, якщо :ref:`position_smoothing_enabled<class_Camera2D_property_position_smoothing_enabled>` має значення ``false``.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_method_set_drag_margin:

.. rst-class:: classref-method

|void| **set_drag_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, drag_margin\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Camera2D_method_set_drag_margin>`

Встановлює вказане поле :ref:`Side<enum_@GlobalScope_Side>`. Див. також :ref:`drag_bottom_margin<class_Camera2D_property_drag_bottom_margin>`, :ref:`drag_top_margin<class_Camera2D_property_drag_top_margin>`, :ref:`drag_left_margin<class_Camera2D_property_drag_left_margin>` і :ref:`drag_right_margin<class_Camera2D_property_drag_right_margin>`.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_method_set_limit:

.. rst-class:: classref-method

|void| **set_limit**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, limit\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Camera2D_method_set_limit>`

Встановлює обмеження камери для вказаної :ref:`Side<enum_@GlobalScope_Side>`. Див. також :ref:`limit_bottom<class_Camera2D_property_limit_bottom>`, :ref:`limit_top<class_Camera2D_property_limit_top>`, :ref:`limit_left<class_Camera2D_property_limit_left>`, і :ref:`limit_right<class_Camera2D_property_limit_right>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
