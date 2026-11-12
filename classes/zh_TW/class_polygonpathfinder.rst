:github_url: hide

.. _class_PolygonPathFinder:

PolygonPathFinder
=================

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

.. container:: contribute

	There is currently no description for this class. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-reftable-group

方法
----

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

方法說明
--------

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

如果 ``point`` 在多邊形區域內部，則回傳 ``true``\ 。


.. tabs::

 .. code-tab:: gdscript

    var polygon_path_finder = PolygonPathFinder.new()
    var points = [Vector2(0.0, 0.0), Vector2(1.0, 0.0), Vector2(0.0, 1.0)]
    var connections = [0, 1, 1, 2, 2, 0]
    polygon_path_finder.setup(points, connections)
    print(polygon_path_finder.is_point_inside(Vector2(0.2, 0.2))) # 輸出 true
    print(polygon_path_finder.is_point_inside(Vector2(1.0, 1.0))) # 輸出 false

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
    GD.Print(polygonPathFinder.IsPointInside(new Vector2(0.2f, 0.2f))); // 輸出 True
    GD.Print(polygonPathFinder.IsPointInside(new Vector2(1.0f, 1.0f))); // 輸出 False



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

使用兩個陣列設定 **PolygonPathFinder**\ ：點陣列中定義了多邊形的頂點，索引陣列則決定了多邊形的邊。

\ ``connections`` 的長度必須為偶數，為奇數時會回傳錯誤。


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



.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
