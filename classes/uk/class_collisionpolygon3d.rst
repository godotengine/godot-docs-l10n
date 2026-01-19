:github_url: hide

.. _class_CollisionPolygon3D:

CollisionPolygon3D
==================

**Успадковує:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Вузлом, який забезпечує загущену форму полігону (пропс) до :ref:`CollisionObject3D<class_CollisionObject3D>`.

.. rst-class:: classref-introduction-group

Опис
--------

Вузол, який надає батьківському об'єкту :ref:`CollisionObject3D<class_CollisionObject3D>` форму потовщеного полігона (призму) та дозволяє його редагування. Полігон може бути увігнутим або опуклим. Це може надати форму виявлення :ref:`Area3D<class_Area3D>` або перетворити :ref:`PhysicsBody3D<class_PhysicsBody3D>` на твердий об'єкт.

\ **Попередження:** Нерівномірно масштабований :ref:`CollisionShape3D<class_CollisionShape3D>`, ймовірно, не працюватиме належним чином. Переконайтеся, що його масштаб однаковий на всіх осях, і натомість налаштуйте його ресурс форми.

.. rst-class:: classref-reftable-group

Властивості
----------------------

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

Описи властивостей
------------------------------------

.. _class_CollisionPolygon3D_property_debug_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **debug_color** = ``Color(0, 0, 0, 0)`` :ref:`🔗<class_CollisionPolygon3D_property_debug_color>`

.. rst-class:: classref-property-setget

- |void| **set_debug_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_debug_color**\ (\ )

Колір форми зіткнень, який відображається в редакторі або в запущеному проекті, якщо у верхній частині редактора позначено **Налагодження > Видимі форми зіткнень**.

\ **Примітка:** Значення за умовчанням — :ref:`ProjectSettings.debug/shapes/collision/shape_color<class_ProjectSettings_property_debug/shapes/collision/shape_color>`. Значення ``Color(0, 0, 0, 0)``, задокументоване тут, є заповнювачем, а не фактичним кольором налагодження за умовчанням.

.. rst-class:: classref-item-separator

----

.. _class_CollisionPolygon3D_property_debug_fill:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **debug_fill** = ``true`` :ref:`🔗<class_CollisionPolygon3D_property_debug_fill>`

.. rst-class:: classref-property-setget

- |void| **set_enable_debug_fill**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enable_debug_fill**\ (\ )

Якщо ``true``, коли фігура відображається, вона відображатиме суцільний колір заливки на додаток до свого каркасу.

.. rst-class:: classref-item-separator

----

.. _class_CollisionPolygon3D_property_depth:

.. rst-class:: classref-property

:ref:`float<class_float>` **depth** = ``1.0`` :ref:`🔗<class_CollisionPolygon3D_property_depth>`

.. rst-class:: classref-property-setget

- |void| **set_depth**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_depth**\ (\ )

Довжина, що отриманий зіткнень поширюється в будь-якому напрямку перпендикулярно його 2D полігон.

.. rst-class:: classref-item-separator

----

.. _class_CollisionPolygon3D_property_disabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **disabled** = ``false`` :ref:`🔗<class_CollisionPolygon3D_property_disabled>`

.. rst-class:: classref-property-setget

- |void| **set_disabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_disabled**\ (\ )

Якщо ``true``, колізія не виникне. Цю властивість слід змінити на :ref:`Object.set_deferred()<class_Object_method_set_deferred>`.

.. rst-class:: classref-item-separator

----

.. _class_CollisionPolygon3D_property_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **margin** = ``0.04`` :ref:`🔗<class_CollisionPolygon3D_property_margin>`

.. rst-class:: classref-property-setget

- |void| **set_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_margin**\ (\ )

Зіткнення поля для створеної :ref:`Shape3D<class_Shape3D>`. Див. ``пам'ятати Shape3D.margin`` для отримання додаткової інформації.

.. rst-class:: classref-item-separator

----

.. _class_CollisionPolygon3D_property_polygon:

.. rst-class:: classref-property

:ref:`PackedVector2Array<class_PackedVector2Array>` **polygon** = ``PackedVector2Array()`` :ref:`🔗<class_CollisionPolygon3D_property_polygon>`

.. rst-class:: classref-property-setget

- |void| **set_polygon**\ (\ value\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )
- :ref:`PackedVector2Array<class_PackedVector2Array>` **get_polygon**\ (\ )

Аромати вершин, які визначають 2D полігон в локальній площині XY.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector2Array<class_PackedVector2Array>` for more details.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
