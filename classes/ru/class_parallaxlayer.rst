:github_url: hide

.. _class_ParallaxLayer:

ParallaxLayer
=============

**Устарело:** Use the :ref:`Parallax2D<class_Parallax2D>` node instead.

**Наследует:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Слой параллакс-прокрутки, который будет использоваться с :ref:`ParallaxBackground<class_ParallaxBackground>`.

.. rst-class:: classref-introduction-group

Описание
----------------

ParallaxLayer должен быть дочерним элементом узла :ref:`ParallaxBackground<class_ParallaxBackground>`. Каждый ParallaxLayer может быть настроен на движение с разной скоростью относительно движения камеры или значения :ref:`ParallaxBackground.scroll_offset<class_ParallaxBackground_property_scroll_offset>`.

На дочерние элементы этого узла будет влиять его смещение прокрутки.

\ **Примечание:** Любые изменения положения и масштаба этого узла, внесенные после его попадания на сцену, будут игнорироваться.

.. rst-class:: classref-reftable-group

Свойства
----------------

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

Описания свойств
--------------------------------

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

Смещение ParallaxLayer относительно родительского ParallaxBackground :ref:`ParallaxBackground.scroll_offset<class_ParallaxBackground_property_scroll_offset>`.

.. rst-class:: classref-item-separator

----

.. _class_ParallaxLayer_property_motion_scale:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **motion_scale** = ``Vector2(1, 1)`` :ref:`🔗<class_ParallaxLayer_property_motion_scale>`

.. rst-class:: classref-property-setget

- |void| **set_motion_scale**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_motion_scale**\ (\ )

Умножает движение ParallaxLayer. Если ось установлена на ``0``, она не будет прокручиваться.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
