:github_url: hide

.. _class_PolygonPathFinder:

PolygonPathFinder
=================

**Наследует:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

.. container:: contribute

	There is currently no description for this class. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`find_path<class_PolygonPathFinder_method_find_path>`\ (\ from\: :ref:`Vector2<class_Vector2>`, to\: :ref:`Vector2<class_Vector2>`\ )                                            |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`                           | :ref:`get_bounds<class_PolygonPathFinder_method_get_bounds>`\ (\ ) |const|                                                                                                            |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`get_closest_point<class_PolygonPathFinder_method_get_closest_point>`\ (\ point\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                       |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`get_intersections<class_PolygonPathFinder_method_get_intersections>`\ (\ from\: :ref:`Vector2<class_Vector2>`, to\: :ref:`Vector2<class_Vector2>`\ ) |const|                    |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                           | :ref:`get_point_penalty<class_PolygonPathFinder_method_get_point_penalty>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                 |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`is_point_inside<class_PolygonPathFinder_method_is_point_inside>`\ (\ point\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                           |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_point_penalty<class_PolygonPathFinder_method_set_point_penalty>`\ (\ idx\: :ref:`int<class_int>`, penalty\: :ref:`float<class_float>`\ )                                    |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`setup<class_PolygonPathFinder_method_setup>`\ (\ points\: :ref:`PackedVector2Array<class_PackedVector2Array>`, connections\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ ) |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_PolygonPathFinder_method_find_path:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **find_path**\ (\ from\: :ref:`Vector2<class_Vector2>`, to\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_PolygonPathFinder_method_find_path>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PolygonPathFinder_method_get_bounds:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **get_bounds**\ (\ ) |const| :ref:`🔗<class_PolygonPathFinder_method_get_bounds>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PolygonPathFinder_method_get_closest_point:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_closest_point**\ (\ point\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_PolygonPathFinder_method_get_closest_point>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PolygonPathFinder_method_get_intersections:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **get_intersections**\ (\ from\: :ref:`Vector2<class_Vector2>`, to\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_PolygonPathFinder_method_get_intersections>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PolygonPathFinder_method_get_point_penalty:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_point_penalty**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PolygonPathFinder_method_get_point_penalty>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PolygonPathFinder_method_is_point_inside:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_point_inside**\ (\ point\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_PolygonPathFinder_method_is_point_inside>`

Возвращает ``true``, если ``point`` попадает внутрь области многоугольника.


.. tabs::

 .. code-tab:: gdscript

    var polygon_path_finder = PolygonPathFinder.new()
    var points = [Vector2(0.0, 0.0), Vector2(1.0, 0.0), Vector2(0.0, 1.0)]
    var connections = [0, 1, 1, 2, 2, 0]
    polygon_path_finder.setup(points, connections)
    print(polygon_path_finder.is_point_inside(Vector2(0.2, 0.2))) # Выводит true
    print(polygon_path_finder.is_point_inside(Vector2(1.0, 1.0))) # Выводит false

 .. code-tab:: csharp

    var polygonPathFinder = new PolygonPathFinder();
    Vector2[] points =
    [
        new Vector2(0.0f, 0.0f),
        new Vector2(1.0f, 0.0f),
        new Vector2(0.0f, 1.0f)
    ];
    int[] connections = [0, 1, 1, 2, 2, 0];
    polygonPathFinder.Setup(points, connections);
    GD.Print(polygonPathFinder.IsPointInside(new Vector2(0.2f, 0.2f))); // Выводит True
    GD.Print(polygonPathFinder.IsPointInside(new Vector2(1.0f, 1.0f))); // Выводит False



.. rst-class:: classref-item-separator

----

.. _class_PolygonPathFinder_method_set_point_penalty:

.. rst-class:: classref-method

|void| **set_point_penalty**\ (\ idx\: :ref:`int<class_int>`, penalty\: :ref:`float<class_float>`\ ) :ref:`🔗<class_PolygonPathFinder_method_set_point_penalty>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PolygonPathFinder_method_setup:

.. rst-class:: classref-method

|void| **setup**\ (\ points\: :ref:`PackedVector2Array<class_PackedVector2Array>`, connections\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ ) :ref:`🔗<class_PolygonPathFinder_method_setup>`

Устанавливает **PolygonPathFinder** с массивом точек, которые определяют вершины многоугольника, и массивом индексов, которые определяют ребра многоугольника.

Длина ``connections`` должна быть четной, возвращает ошибку, если нечетная.


.. tabs::

 .. code-tab:: gdscript

    var polygon_path_finder = PolygonPathFinder.new()
    var points = [Vector2(0.0, 0.0), Vector2(1.0, 0.0), Vector2(0.0, 1.0)]
    var connections = [0, 1, 1, 2, 2, 0]
    polygon_path_finder.setup(points, connections)

 .. code-tab:: csharp

    var polygonPathFinder = new PolygonPathFinder();
    Vector2[] points =
    [
        new Vector2(0.0f, 0.0f),
        new Vector2(1.0f, 0.0f),
        new Vector2(0.0f, 1.0f)
    ];
    int[] connections = [0, 1, 1, 2, 2, 0];
    polygonPathFinder.Setup(points, connections);



.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
