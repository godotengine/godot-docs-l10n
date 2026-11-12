:github_url: hide

.. _class_ConvexPolygonShape3D:

ConvexPolygonShape3D
====================

**Наследует:** :ref:`Shape3D<class_Shape3D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Трехмерная выпуклая многогранная форма, используемая для физического столкновения.

.. rst-class:: classref-introduction-group

Описание
----------------

Трехмерная выпуклая многогранная форма, предназначенная для использования в физике. Обычно используется для предоставления формы для :ref:`CollisionShape3D<class_CollisionShape3D>`.

\ **ConvexPolygonShape3D** является *сплошным*, что означает, что он обнаруживает столкновения от объектов, которые полностью находятся внутри него, в отличие от :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>`, который является полым. Это делает его более подходящим как для обнаружения, так и для физики.

\ **Выпуклая декомпозиция:** Вогнутый многогранник можно разбить на несколько выпуклых многогранников. Это позволяет динамическим физическим телам иметь сложные вогнутые столкновения (за счет производительности) и может быть достигнуто с помощью нескольких узлов **ConvexPolygonShape3D**. Чтобы сгенерировать выпуклую декомпозицию из сетки, выберите узел :ref:`MeshInstance3D<class_MeshInstance3D>`, перейдите в меню **Mesh**, которое появляется над областью просмотра, и выберите **Create Multiple Convex Collision Siblings**. В качестве альтернативы, :ref:`MeshInstance3D.create_multiple_convex_collisions()<class_MeshInstance3D_method_create_multiple_convex_collisions>` можно вызвать в скрипте для выполнения этой декомпозиции во время выполнения.

\ **Производительность:** **ConvexPolygonShape3D** быстрее проверяет столкновения по сравнению с :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>`, но медленнее, чем примитивные формы столкновений, такие как :ref:`SphereShape3D<class_SphereShape3D>` и :ref:`BoxShape3D<class_BoxShape3D>`. Его использование, как правило, должно быть ограничено объектами среднего размера, столкновения которых не могут быть точно представлены примитивными формами.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- `Демонстрация 3D-физических тестов <https://godotengine.org/asset-library/asset/2747>`__

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-----------------------------------------------------------+--------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`points<class_ConvexPolygonShape3D_property_points>` | ``PackedVector3Array()`` |
   +-----------------------------------------------------+-----------------------------------------------------------+--------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_ConvexPolygonShape3D_property_points:

.. rst-class:: classref-property

:ref:`PackedVector3Array<class_PackedVector3Array>` **points** = ``PackedVector3Array()`` :ref:`🔗<class_ConvexPolygonShape3D_property_points>`

.. rst-class:: classref-property-setget

- |void| **set_points**\ (\ value\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ )
- :ref:`PackedVector3Array<class_PackedVector3Array>` **get_points**\ (\ )

Список 3D точек, образующих выпуклую многоугольную форму.



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector3Array<class_PackedVector3Array>` for more details.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
