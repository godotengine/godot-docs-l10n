:github_url: hide

.. _class_ParallaxLayer:

ParallaxLayer
=============

**Застаріло:** Use the :ref:`Parallax2D<class_Parallax2D>` node instead.

**Успадковує:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Параллакс шар прокручування для використання з :ref:`ParallaxBackground<class_ParallaxBackground>`.

.. rst-class:: classref-introduction-group

Опис
--------

Параллакс Шар повинен бути дитиною :ref:`ParallaxBackground<class_ParallaxBackground>` вершини. Кожен Параллакс Шар може бути встановлений для переміщення на різних швидкостях відносно руху камери або значення :ref:`ParallaxBackground.scroll_offset<class_ParallaxBackground_property_scroll_offset>`.

Це діти вершини будуть вражені своїм зміщенням прокручування.

\ **Примітка:** Будь-які зміни положення цієї вершини та масштаби, зроблені після того, як він надходить до сцени, будуть ігноруватися.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------+------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                       | :ref:`motion_mirroring<class_ParallaxLayer_property_motion_mirroring>` | ``Vector2(0, 0)``                                                             |
   +---------------------------------------------------------------------+------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                       | :ref:`motion_offset<class_ParallaxLayer_property_motion_offset>`       | ``Vector2(0, 0)``                                                             |
   +---------------------------------------------------------------------+------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                       | :ref:`motion_scale<class_ParallaxLayer_property_motion_scale>`         | ``Vector2(1, 1)``                                                             |
   +---------------------------------------------------------------------+------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`PhysicsInterpolationMode<enum_Node_PhysicsInterpolationMode>` | physics_interpolation_mode                                             | ``2`` (overrides :ref:`Node<class_Node_property_physics_interpolation_mode>`) |
   +---------------------------------------------------------------------+------------------------------------------------------------------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_ParallaxLayer_property_motion_mirroring:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **motion_mirroring** = ``Vector2(0, 0)`` :ref:`🔗<class_ParallaxLayer_property_motion_mirroring>`

.. rst-class:: classref-property-setget

- |void| **set_mirroring**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_mirroring**\ (\ )

The interval, in pixels, at which the **ParallaxLayer** is drawn repeatedly. Useful for creating an infinitely scrolling background. If an axis is set to ``0``, the **ParallaxLayer** will be drawn only once along that direction.

\ **Note:** If you want the repetition to pixel-perfect match a :ref:`Texture2D<class_Texture2D>` displayed by a child node, you should account for any scale applied to the texture when defining this interval. For example, if you use a child :ref:`Sprite2D<class_Sprite2D>` scaled to ``0.5`` to display a 600×600 texture, and want this sprite to be repeated continuously horizontally, you should set the mirroring to ``Vector2(300, 0)``.

\ **Note:** If the length of the viewport axis is bigger than twice the repeated axis size, it will not repeat infinitely, as the parallax layer only draws 2 instances of the layer at any given time. The visibility window is calculated from the parent :ref:`ParallaxBackground<class_ParallaxBackground>`'s position, not the layer's own position. So, if you use mirroring, **do not** change the **ParallaxLayer** position relative to its parent. Instead, if you need to adjust the background's position, set the :ref:`CanvasLayer.offset<class_CanvasLayer_property_offset>` property in the parent :ref:`ParallaxBackground<class_ParallaxBackground>`.

\ **Note:** Despite the name, the layer will not be mirrored, it will only be repeated.

.. rst-class:: classref-item-separator

----

.. _class_ParallaxLayer_property_motion_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **motion_offset** = ``Vector2(0, 0)`` :ref:`🔗<class_ParallaxLayer_property_motion_offset>`

.. rst-class:: classref-property-setget

- |void| **set_motion_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_motion_offset**\ (\ )

Зсув ParallaxLayer відносно зсуву батьківського ParallaxBackground :ref:`ParallaxBackground.scroll_offset<class_ParallaxBackground_property_scroll_offset>`.

.. rst-class:: classref-item-separator

----

.. _class_ParallaxLayer_property_motion_scale:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **motion_scale** = ``Vector2(1, 1)`` :ref:`🔗<class_ParallaxLayer_property_motion_scale>`

.. rst-class:: classref-property-setget

- |void| **set_motion_scale**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_motion_scale**\ (\ )

Множить рух шару ParallaxLayer. Якщо вісь встановлено на ``0``, воно не прокручуватиметься.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
