:github_url: hide

.. _class_CanvasLayer:

CanvasLayer
===========

**Успадковує:** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`ParallaxBackground<class_ParallaxBackground>`

Вузол, який використовується для незалежного відтворення об’єктів у 2D-сцені.

.. rst-class:: classref-introduction-group

Опис
--------

Вузли, похідні від :ref:`CanvasItem<class_CanvasItem>`, які є прямими або непрямими дочірніми елементами **CanvasLayer**, будуть намальовані в цьому шарі. Шар – це числовий індекс, який визначає порядок малювання. Стандартна 2D-сцена рендериться з індексом ``0``, тому **CanvasLayer** з індексом ``-1`` буде намальовано нижче, а **CanvasLayer** з індексом ``1`` – вище. Цей порядок зберігатиметься незалежно від :ref:`CanvasItem.z_index<class_CanvasItem_property_z_index>` вузлів у кожному шарі.

\ **CanvasLayer** можуть бути прихованими, і вони також можуть за бажанням слідувати за областю перегляду. Це робить їх корисними для HUD, таких як накладання панелі здоров'я (на шарах ``1`` і вище) або фони (на шарах ``-1`` і нижче).

\ **Примітка:** Вбудовані :ref:`Window<class_Window>` розміщуються на шарі ``1024``. :ref:`CanvasItem<class_CanvasItem>` на шарах ``1025`` і вище відображаються перед вбудованими вікнами.

\ **Примітка:** Кожен **CanvasLayer** малюється на одному конкретному :ref:`Viewport<class_Viewport>` і не може бути спільним для кількох :ref:`Viewport<class_Viewport>`, див. :ref:`custom_viewport<class_CanvasLayer_property_custom_viewport>`. Під час використання кількох :ref:`Viewport<class_Viewport>`, наприклад, у грі з розділеним екраном, вам потрібно створити окремий **CanvasLayer** для кожного :ref:`Viewport<class_Viewport>`, на якому ви хочете його малювати.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Перетворення вікна перегляду та полотна <../tutorials/2d/2d_transforms>`

- :doc:`Шари полотна <../tutorials/2d/canvas_layers>`

- `2D демонстрація Dodge The Creeps <https://godotengine.org/asset-library/asset/2712>`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------------------+------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Node<class_Node>`               | :ref:`custom_viewport<class_CanvasLayer_property_custom_viewport>`                 |                                   |
   +---------------------------------------+------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`follow_viewport_enabled<class_CanvasLayer_property_follow_viewport_enabled>` | ``false``                         |
   +---------------------------------------+------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`float<class_float>`             | :ref:`follow_viewport_scale<class_CanvasLayer_property_follow_viewport_scale>`     | ``1.0``                           |
   +---------------------------------------+------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`                 | :ref:`layer<class_CanvasLayer_property_layer>`                                     | ``1``                             |
   +---------------------------------------+------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`offset<class_CanvasLayer_property_offset>`                                   | ``Vector2(0, 0)``                 |
   +---------------------------------------+------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`float<class_float>`             | :ref:`rotation<class_CanvasLayer_property_rotation>`                               | ``0.0``                           |
   +---------------------------------------+------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`scale<class_CanvasLayer_property_scale>`                                     | ``Vector2(1, 1)``                 |
   +---------------------------------------+------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`transform<class_CanvasLayer_property_transform>`                             | ``Transform2D(1, 0, 0, 1, 0, 0)`` |
   +---------------------------------------+------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`visible<class_CanvasLayer_property_visible>`                                 | ``true``                          |
   +---------------------------------------+------------------------------------------------------------------------------------+-----------------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +---------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                 | :ref:`get_canvas<class_CanvasLayer_method_get_canvas>`\ (\ ) |const|                   |
   +---------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`get_final_transform<class_CanvasLayer_method_get_final_transform>`\ (\ ) |const| |
   +---------------------------------------+----------------------------------------------------------------------------------------+
   | |void|                                | :ref:`hide<class_CanvasLayer_method_hide>`\ (\ )                                       |
   +---------------------------------------+----------------------------------------------------------------------------------------+
   | |void|                                | :ref:`show<class_CanvasLayer_method_show>`\ (\ )                                       |
   +---------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигнали
--------------

.. _class_CanvasLayer_signal_visibility_changed:

.. rst-class:: classref-signal

**visibility_changed**\ (\ ) :ref:`🔗<class_CanvasLayer_signal_visibility_changed>`

Активується при зміні видимості шару. Дивіться :ref:`visible<class_CanvasLayer_property_visible>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_CanvasLayer_property_custom_viewport:

.. rst-class:: classref-property

:ref:`Node<class_Node>` **custom_viewport** :ref:`🔗<class_CanvasLayer_property_custom_viewport>`

.. rst-class:: classref-property-setget

- |void| **set_custom_viewport**\ (\ value\: :ref:`Node<class_Node>`\ )
- :ref:`Node<class_Node>` **get_custom_viewport**\ (\ )

Спеціальний вузол :ref:`Viewport<class_Viewport>`, призначений для **CanvasLayer**. Якщо ``null``, натомість використовується вікно перегляду за замовчуванням.

.. rst-class:: classref-item-separator

----

.. _class_CanvasLayer_property_follow_viewport_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **follow_viewport_enabled** = ``false`` :ref:`🔗<class_CanvasLayer_property_follow_viewport_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_follow_viewport**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_following_viewport**\ (\ )

Якщо ввімкнено, **CanvasLayer** зберігає свою позицію у світовому просторі. Якщо вимкнено, **CanvasLayer** залишається у фіксованому положенні на екрані.

Разом з :ref:`follow_viewport_scale<class_CanvasLayer_property_follow_viewport_scale>` це можна використовувати для псевдо-3D-ефекту.

.. rst-class:: classref-item-separator

----

.. _class_CanvasLayer_property_follow_viewport_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **follow_viewport_scale** = ``1.0`` :ref:`🔗<class_CanvasLayer_property_follow_viewport_scale>`

.. rst-class:: classref-property-setget

- |void| **set_follow_viewport_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_follow_viewport_scale**\ (\ )

Масштабує шар під час використання :ref:`follow_viewport_enabled<class_CanvasLayer_property_follow_viewport_enabled>`. Шари, що переміщуються на передній план, повинні мати масштаби, що збільшуються, тоді як шари, що переміщуються на задній план, мають зменшуватися.

.. rst-class:: classref-item-separator

----

.. _class_CanvasLayer_property_layer:

.. rst-class:: classref-property

:ref:`int<class_int>` **layer** = ``1`` :ref:`🔗<class_CanvasLayer_property_layer>`

.. rst-class:: classref-property-setget

- |void| **set_layer**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_layer**\ (\ )

Індекс шару для порядку малювання. Нижчі значення малюються за вищими значеннями.

\ **Примітка:** Якщо кілька CanvasLayers мають однаковий індекс шару, дочірні елементи :ref:`CanvasItem<class_CanvasItem>` одного CanvasLayer малюються за дочірніми елементами :ref:`CanvasItem<class_CanvasItem>` іншого CanvasLayer. Який CanvasLayer малюється попереду, не є детермінованим.

\ **Примітка:** Індекс шару повинен бути в діапазоні від :ref:`RenderingServer.CANVAS_LAYER_MIN<class_RenderingServer_constant_CANVAS_LAYER_MIN>` до :ref:`RenderingServer.CANVAS_LAYER_MAX<class_RenderingServer_constant_CANVAS_LAYER_MAX>` (включно). Будь-яке інше значення буде перенесено навколо.

.. rst-class:: classref-item-separator

----

.. _class_CanvasLayer_property_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **offset** = ``Vector2(0, 0)`` :ref:`🔗<class_CanvasLayer_property_offset>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_offset**\ (\ )

Зсув основи шару.

.. rst-class:: classref-item-separator

----

.. _class_CanvasLayer_property_rotation:

.. rst-class:: classref-property

:ref:`float<class_float>` **rotation** = ``0.0`` :ref:`🔗<class_CanvasLayer_property_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_rotation**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_rotation**\ (\ )

Обертання шару в радіанах.

.. rst-class:: classref-item-separator

----

.. _class_CanvasLayer_property_scale:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **scale** = ``Vector2(1, 1)`` :ref:`🔗<class_CanvasLayer_property_scale>`

.. rst-class:: classref-property-setget

- |void| **set_scale**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_scale**\ (\ )

Масштаб шару.

.. rst-class:: classref-item-separator

----

.. _class_CanvasLayer_property_transform:

.. rst-class:: classref-property

:ref:`Transform2D<class_Transform2D>` **transform** = ``Transform2D(1, 0, 0, 1, 0, 0)`` :ref:`🔗<class_CanvasLayer_property_transform>`

.. rst-class:: classref-property-setget

- |void| **set_transform**\ (\ value\: :ref:`Transform2D<class_Transform2D>`\ )
- :ref:`Transform2D<class_Transform2D>` **get_transform**\ (\ )

Перетворення шару.

.. rst-class:: classref-item-separator

----

.. _class_CanvasLayer_property_visible:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **visible** = ``true`` :ref:`🔗<class_CanvasLayer_property_visible>`

.. rst-class:: classref-property-setget

- |void| **set_visible**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_visible**\ (\ )

Якщо ``false``, будь-який :ref:`CanvasItem<class_CanvasItem>` у цьому **CanvasLayer** буде приховано.

На відміну від :ref:`CanvasItem.visible<class_CanvasItem_property_visible>`, видимість **CanvasLayer** не поширюється на базові шари.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_CanvasLayer_method_get_canvas:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_canvas**\ (\ ) |const| :ref:`🔗<class_CanvasLayer_method_get_canvas>`

Повертає RID полотна, яке використовується цим шаром.

.. rst-class:: classref-item-separator

----

.. _class_CanvasLayer_method_get_final_transform:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **get_final_transform**\ (\ ) |const| :ref:`🔗<class_CanvasLayer_method_get_final_transform>`

Returns the transform from the **CanvasLayer**'s coordinate system to the :ref:`Viewport<class_Viewport>`'s coordinate system.

.. rst-class:: classref-item-separator

----

.. _class_CanvasLayer_method_hide:

.. rst-class:: classref-method

|void| **hide**\ (\ ) :ref:`🔗<class_CanvasLayer_method_hide>`

Приховує будь-який :ref:`CanvasItem<class_CanvasItem>` під цим **CanvasLayer**. Це еквівалентно встановленню :ref:`visible<class_CanvasLayer_property_visible>` значення ``false``.

.. rst-class:: classref-item-separator

----

.. _class_CanvasLayer_method_show:

.. rst-class:: classref-method

|void| **show**\ (\ ) :ref:`🔗<class_CanvasLayer_method_show>`

Показує будь-який :ref:`CanvasItem<class_CanvasItem>` під цим **CanvasLayer**. Це еквівалентно встановленню :ref:`visible<class_CanvasLayer_property_visible>` значення ``true``.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
