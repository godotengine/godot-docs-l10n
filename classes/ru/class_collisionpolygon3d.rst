:github_url: hide

.. _class_CollisionPolygon3D:

CollisionPolygon3D
==================

**Наследует:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Узел, который придает утолщенную форму многоугольника (призму) родительскому объекту :ref:`CollisionObject3D<class_CollisionObject3D>`.

.. rst-class:: classref-introduction-group

Описание
----------------

Узел, который предоставляет родительскому объекту :ref:`CollisionObject3D<class_CollisionObject3D>` утолщенную многоугольную форму (призму) и позволяет ее редактировать. Многоугольник может быть вогнутым или выпуклым. Это может придать форму обнаружения объекту :ref:`Area3D<class_Area3D>` или превратить объект :ref:`PhysicsBody3D<class_PhysicsBody3D>` в твердый объект.

\ **Предупреждение:** Объект :ref:`CollisionShape3D<class_CollisionShape3D>` с неравномерным масштабированием, скорее всего, будет вести себя не так, как ожидается. Убедитесь, что его масштаб одинаков по всем осям, и вместо этого отрегулируйте ресурс формы.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------------+--------------------------+
   | :ref:`Color<class_Color>`                           | :ref:`debug_color<class_CollisionPolygon3D_property_debug_color>` | ``Color(0, 0, 0, 0)``    |
   +-----------------------------------------------------+-------------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`debug_fill<class_CollisionPolygon3D_property_debug_fill>`   | ``true``                 |
   +-----------------------------------------------------+-------------------------------------------------------------------+--------------------------+
   | :ref:`float<class_float>`                           | :ref:`depth<class_CollisionPolygon3D_property_depth>`             | ``1.0``                  |
   +-----------------------------------------------------+-------------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`disabled<class_CollisionPolygon3D_property_disabled>`       | ``false``                |
   +-----------------------------------------------------+-------------------------------------------------------------------+--------------------------+
   | :ref:`float<class_float>`                           | :ref:`margin<class_CollisionPolygon3D_property_margin>`           | ``0.04``                 |
   +-----------------------------------------------------+-------------------------------------------------------------------+--------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`polygon<class_CollisionPolygon3D_property_polygon>`         | ``PackedVector2Array()`` |
   +-----------------------------------------------------+-------------------------------------------------------------------+--------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_CollisionPolygon3D_property_debug_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **debug_color** = ``Color(0, 0, 0, 0)`` :ref:`🔗<class_CollisionPolygon3D_property_debug_color>`

.. rst-class:: classref-property-setget

- |void| **set_debug_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_debug_color**\ (\ )

Цвет формы столкновения, отображаемый в редакторе или в запущенном проекте, если **Отладка > Видимые формы столкновения** отмечены в верхней части редактора.

\ **Примечание:** Значение по умолчанию — :ref:`ProjectSettings.debug/shapes/collision/shape_color<class_ProjectSettings_property_debug/shapes/collision/shape_color>`. Значение ``Color(0, 0, 0, 0)``, задокументированное здесь, является заполнителем, а не фактическим цветом отладки по умолчанию.

.. rst-class:: classref-item-separator

----

.. _class_CollisionPolygon3D_property_debug_fill:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **debug_fill** = ``true`` :ref:`🔗<class_CollisionPolygon3D_property_debug_fill>`

.. rst-class:: classref-property-setget

- |void| **set_enable_debug_fill**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enable_debug_fill**\ (\ )

Если ``true``, при отображении фигуры в дополнение к ее каркасу будет отображаться сплошной цвет заливки.

.. rst-class:: classref-item-separator

----

.. _class_CollisionPolygon3D_property_depth:

.. rst-class:: classref-property

:ref:`float<class_float>` **depth** = ``1.0`` :ref:`🔗<class_CollisionPolygon3D_property_depth>`

.. rst-class:: classref-property-setget

- |void| **set_depth**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_depth**\ (\ )

Длина, на которую распространяется полученное столкновение в любом направлении, перпендикулярном его двумерному многоугольнику.

.. rst-class:: classref-item-separator

----

.. _class_CollisionPolygon3D_property_disabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **disabled** = ``false`` :ref:`🔗<class_CollisionPolygon3D_property_disabled>`

.. rst-class:: classref-property-setget

- |void| **set_disabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_disabled**\ (\ )

Если ``true``, столкновения не произойдет. Это свойство следует изменить с помощью :ref:`Object.set_deferred()<class_Object_method_set_deferred>`.

.. rst-class:: classref-item-separator

----

.. _class_CollisionPolygon3D_property_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **margin** = ``0.04`` :ref:`🔗<class_CollisionPolygon3D_property_margin>`

.. rst-class:: classref-property-setget

- |void| **set_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_margin**\ (\ )

Поле столкновения для сгенерированного :ref:`Shape3D<class_Shape3D>`. См. :ref:`Shape3D.margin<class_Shape3D_property_margin>` для получения более подробной информации.

.. rst-class:: classref-item-separator

----

.. _class_CollisionPolygon3D_property_polygon:

.. rst-class:: classref-property

:ref:`PackedVector2Array<class_PackedVector2Array>` **polygon** = ``PackedVector2Array()`` :ref:`🔗<class_CollisionPolygon3D_property_polygon>`

.. rst-class:: classref-property-setget

- |void| **set_polygon**\ (\ value\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )
- :ref:`PackedVector2Array<class_PackedVector2Array>` **get_polygon**\ (\ )

Массив вершин, определяющих 2D-полигон в локальной плоскости XY.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector2Array<class_PackedVector2Array>` for more details.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
