:github_url: hide

.. _class_ConvexPolygonShape2D:

ConvexPolygonShape2D
====================

**Наследует:** :ref:`Shape2D<class_Shape2D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Выпуклая двухмерная многоугольная форма, используемая для физического столкновения.

.. rst-class:: classref-introduction-group

Описание
----------------

Форма 2D выпуклого многоугольника, предназначенная для использования в физике. Используется внутри в :ref:`CollisionPolygon2D<class_CollisionPolygon2D>`, когда он находится в режиме :ref:`CollisionPolygon2D.BUILD_SOLIDS<class_CollisionPolygon2D_constant_BUILD_SOLIDS>`.

\ **ConvexPolygonShape2D** является *твердым*, что означает, что он обнаруживает столкновения от объектов, которые полностью находятся внутри него, в отличие от :ref:`ConcavePolygonShape2D<class_ConcavePolygonShape2D>`, который является полым. Это делает его более подходящим как для обнаружения, так и для физики.

\ **Выпуклая декомпозиция:** Вогнутый полигон может быть разделен на несколько выпуклых полигонов. Это позволяет динамическим физическим телам иметь сложные вогнутые столкновения (за счет производительности) и может быть достигнуто с помощью нескольких узлов **ConvexPolygonShape2D** или с помощью узла :ref:`CollisionPolygon2D<class_CollisionPolygon2D>` в режиме :ref:`CollisionPolygon2D.BUILD_SOLIDS<class_CollisionPolygon2D_constant_BUILD_SOLIDS>`. Чтобы сгенерировать полигон столкновения из спрайта, выберите узел :ref:`Sprite2D<class_Sprite2D>`, перейдите в меню **Sprite2D**, которое появляется над областью просмотра, и выберите **Создать Polygon2D Sibling**.

\ **Производительность:** **ConvexPolygonShape2D** быстрее проверяет столкновения по сравнению с :ref:`ConcavePolygonShape2D<class_ConcavePolygonShape2D>`, но медленнее, чем примитивные формы столкновений, такие как :ref:`CircleShape2D<class_CircleShape2D>` и :ref:`RectangleShape2D<class_RectangleShape2D>`. Его использование, как правило, должно быть ограничено объектами среднего размера, столкновения которых не могут быть точно представлены примитивными формами.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-----------------------------------------------------------+--------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`points<class_ConvexPolygonShape2D_property_points>` | ``PackedVector2Array()`` |
   +-----------------------------------------------------+-----------------------------------------------------------+--------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +--------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`set_point_cloud<class_ConvexPolygonShape2D_method_set_point_cloud>`\ (\ point_cloud\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) |
   +--------+----------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_ConvexPolygonShape2D_property_points:

.. rst-class:: classref-property

:ref:`PackedVector2Array<class_PackedVector2Array>` **points** = ``PackedVector2Array()`` :ref:`🔗<class_ConvexPolygonShape2D_property_points>`

.. rst-class:: classref-property-setget

- |void| **set_points**\ (\ value\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )
- :ref:`PackedVector2Array<class_PackedVector2Array>` **get_points**\ (\ )

Список вершин многоугольника, образующих выпуклую оболочку. Может быть в порядке по часовой стрелке или против часовой стрелки.

\ **Предупреждение:** Устанавливайте это свойство только для списка точек, которые фактически образуют выпуклую оболочку. Используйте :ref:`set_point_cloud()<class_ConvexPolygonShape2D_method_set_point_cloud>` для генерации выпуклой оболочки произвольного набора точек.



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector2Array<class_PackedVector2Array>` for more details.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_ConvexPolygonShape2D_method_set_point_cloud:

.. rst-class:: classref-method

|void| **set_point_cloud**\ (\ point_cloud\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_ConvexPolygonShape2D_method_set_point_cloud>`

На основе предоставленного набора точек это назначает свойство :ref:`points<class_ConvexPolygonShape2D_property_points>` с использованием алгоритма выпуклой оболочки, удаляя все ненужные точки. Подробности см. в :ref:`Geometry2D.convex_hull()<class_Geometry2D_method_convex_hull>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
