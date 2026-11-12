:github_url: hide

.. _class_Polygon2D:

Polygon2D
=========

**Наследует:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Двумерный полигон.

.. rst-class:: classref-introduction-group

Описание
----------------

Polygon2D определяется набором точек. Каждая точка соединена со следующей, а последняя точка соединена с первой, в результате чего получается замкнутый многоугольник. Polygon2D можно заполнить цветом (сплошным или градиентным) или заданной текстурой.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`antialiased<class_Polygon2D_property_antialiased>`                     | ``false``                |
   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+
   | :ref:`Color<class_Color>`                           | :ref:`color<class_Polygon2D_property_color>`                                 | ``Color(1, 1, 1, 1)``    |
   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+
   | :ref:`int<class_int>`                               | :ref:`internal_vertex_count<class_Polygon2D_property_internal_vertex_count>` | ``0``                    |
   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+
   | :ref:`float<class_float>`                           | :ref:`invert_border<class_Polygon2D_property_invert_border>`                 | ``100.0``                |
   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`invert_enabled<class_Polygon2D_property_invert_enabled>`               | ``false``                |
   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`offset<class_Polygon2D_property_offset>`                               | ``Vector2(0, 0)``        |
   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`polygon<class_Polygon2D_property_polygon>`                             | ``PackedVector2Array()`` |
   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+
   | :ref:`Array<class_Array>`                           | :ref:`polygons<class_Polygon2D_property_polygons>`                           | ``[]``                   |
   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+
   | :ref:`NodePath<class_NodePath>`                     | :ref:`skeleton<class_Polygon2D_property_skeleton>`                           | ``NodePath("")``         |
   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+
   | :ref:`Texture2D<class_Texture2D>`                   | :ref:`texture<class_Polygon2D_property_texture>`                             |                          |
   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`texture_offset<class_Polygon2D_property_texture_offset>`               | ``Vector2(0, 0)``        |
   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+
   | :ref:`float<class_float>`                           | :ref:`texture_rotation<class_Polygon2D_property_texture_rotation>`           | ``0.0``                  |
   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`texture_scale<class_Polygon2D_property_texture_scale>`                 | ``Vector2(1, 1)``        |
   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`uv<class_Polygon2D_property_uv>`                                       | ``PackedVector2Array()`` |
   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+
   | :ref:`PackedColorArray<class_PackedColorArray>`     | :ref:`vertex_colors<class_Polygon2D_property_vertex_colors>`                 | ``PackedColorArray()``   |
   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`add_bone<class_Polygon2D_method_add_bone>`\ (\ path\: :ref:`NodePath<class_NodePath>`, weights\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ )        |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`clear_bones<class_Polygon2D_method_clear_bones>`\ (\ )                                                                                                         |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`erase_bone<class_Polygon2D_method_erase_bone>`\ (\ index\: :ref:`int<class_int>`\ )                                                                            |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_bone_count<class_Polygon2D_method_get_bone_count>`\ (\ ) |const|                                                                                           |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                     | :ref:`get_bone_path<class_Polygon2D_method_get_bone_path>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                              |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>` | :ref:`get_bone_weights<class_Polygon2D_method_get_bone_weights>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                        |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_bone_path<class_Polygon2D_method_set_bone_path>`\ (\ index\: :ref:`int<class_int>`, path\: :ref:`NodePath<class_NodePath>`\ )                              |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_bone_weights<class_Polygon2D_method_set_bone_weights>`\ (\ index\: :ref:`int<class_int>`, weights\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_Polygon2D_property_antialiased:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **antialiased** = ``false`` :ref:`🔗<class_Polygon2D_property_antialiased>`

.. rst-class:: classref-property-setget

- |void| **set_antialiased**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_antialiased**\ (\ )

Если ``true``, края полигонов будут сглажены.

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_property_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_Polygon2D_property_color>`

.. rst-class:: classref-property-setget

- |void| **set_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_color**\ (\ )

Цвет заливки полигона. Если задано :ref:`texture<class_Polygon2D_property_texture>`, оно будет умножено на этот цвет. Это также будет цвет по умолчанию для вершин, не заданных в :ref:`vertex_colors<class_Polygon2D_property_vertex_colors>`.

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_property_internal_vertex_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **internal_vertex_count** = ``0`` :ref:`🔗<class_Polygon2D_property_internal_vertex_count>`

.. rst-class:: classref-property-setget

- |void| **set_internal_vertex_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_internal_vertex_count**\ (\ )

Количество внутренних вершин, используемых для UV-развертки.

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_property_invert_border:

.. rst-class:: classref-property

:ref:`float<class_float>` **invert_border** = ``100.0`` :ref:`🔗<class_Polygon2D_property_invert_border>`

.. rst-class:: classref-property-setget

- |void| **set_invert_border**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_invert_border**\ (\ )

Добавлен отступ, применяемый к ограничивающему прямоугольнику, когда :ref:`invert_enabled<class_Polygon2D_property_invert_enabled>` установлен на ``true``. Установка слишком маленького значения может привести к ошибке «Bad Polygon».

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_property_invert_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **invert_enabled** = ``false`` :ref:`🔗<class_Polygon2D_property_invert_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_invert_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_invert_enabled**\ (\ )

Если ``true``, многоугольник будет инвертирован, включая область за пределами определенных точек и простираясь до :ref:`invert_border<class_Polygon2D_property_invert_border>`.

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_property_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **offset** = ``Vector2(0, 0)`` :ref:`🔗<class_Polygon2D_property_offset>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_offset**\ (\ )

Смещение, примененное к каждой вершине.

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_property_polygon:

.. rst-class:: classref-property

:ref:`PackedVector2Array<class_PackedVector2Array>` **polygon** = ``PackedVector2Array()`` :ref:`🔗<class_Polygon2D_property_polygon>`

.. rst-class:: classref-property-setget

- |void| **set_polygon**\ (\ value\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )
- :ref:`PackedVector2Array<class_PackedVector2Array>` **get_polygon**\ (\ )

Список вершин полигона. Конечная точка будет соединена с первой.



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector2Array<class_PackedVector2Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_property_polygons:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **polygons** = ``[]`` :ref:`🔗<class_Polygon2D_property_polygons>`

.. rst-class:: classref-property-setget

- |void| **set_polygons**\ (\ value\: :ref:`Array<class_Array>`\ )
- :ref:`Array<class_Array>` **get_polygons**\ (\ )

Список полигонов, в случае если представлено более одного. Каждый отдельный полигон хранится как :ref:`PackedInt32Array<class_PackedInt32Array>`, где каждое :ref:`int<class_int>` — это индекс точки в :ref:`polygon<class_Polygon2D_property_polygon>`. Если пусто, это свойство будет проигнорировано, и полученный один полигон будет составлен из всех точек в :ref:`polygon<class_Polygon2D_property_polygon>` в том порядке, в котором они хранятся.

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_property_skeleton:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **skeleton** = ``NodePath("")`` :ref:`🔗<class_Polygon2D_property_skeleton>`

.. rst-class:: classref-property-setget

- |void| **set_skeleton**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_skeleton**\ (\ )

Путь к узлу :ref:`Skeleton2D<class_Skeleton2D>`, используемому для скелетных деформаций этого полигона. Если пусто или недействительно, скелетные деформации не будут использоваться.

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_property_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture** :ref:`🔗<class_Polygon2D_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ )

Текстура заливки полигона. Используйте :ref:`uv<class_Polygon2D_property_uv>` для установки координат текстуры.

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_property_texture_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **texture_offset** = ``Vector2(0, 0)`` :ref:`🔗<class_Polygon2D_property_texture_offset>`

.. rst-class:: classref-property-setget

- |void| **set_texture_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_texture_offset**\ (\ )

Величина смещения :ref:`texture<class_Polygon2D_property_texture>` полигона. Если установлено значение ``Vector2(0, 0)``, начало координат текстуры (ее верхний левый угол) будет размещено в позиции полигона.

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_property_texture_rotation:

.. rst-class:: classref-property

:ref:`float<class_float>` **texture_rotation** = ``0.0`` :ref:`🔗<class_Polygon2D_property_texture_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_texture_rotation**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_texture_rotation**\ (\ )

Вращение текстуры в радианах.

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_property_texture_scale:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **texture_scale** = ``Vector2(1, 1)`` :ref:`🔗<class_Polygon2D_property_texture_scale>`

.. rst-class:: classref-property-setget

- |void| **set_texture_scale**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_texture_scale**\ (\ )

Величина для умножения координат :ref:`uv<class_Polygon2D_property_uv>` при использовании :ref:`texture<class_Polygon2D_property_texture>`. Большие значения делают текстуру меньше, и наоборот.

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_property_uv:

.. rst-class:: classref-property

:ref:`PackedVector2Array<class_PackedVector2Array>` **uv** = ``PackedVector2Array()`` :ref:`🔗<class_Polygon2D_property_uv>`

.. rst-class:: classref-property-setget

- |void| **set_uv**\ (\ value\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )
- :ref:`PackedVector2Array<class_PackedVector2Array>` **get_uv**\ (\ )

Координаты текстуры для каждой вершины полигона. Должно быть одно значение UV на вершину полигона. Если их меньше, неопределенные вершины будут использовать ``Vector2(0, 0)``.



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector2Array<class_PackedVector2Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_property_vertex_colors:

.. rst-class:: classref-property

:ref:`PackedColorArray<class_PackedColorArray>` **vertex_colors** = ``PackedColorArray()`` :ref:`🔗<class_Polygon2D_property_vertex_colors>`

.. rst-class:: classref-property-setget

- |void| **set_vertex_colors**\ (\ value\: :ref:`PackedColorArray<class_PackedColorArray>`\ )
- :ref:`PackedColorArray<class_PackedColorArray>` **get_vertex_colors**\ (\ )

Цвет для каждой вершины. Цвета интерполируются между вершинами, что приводит к плавным градиентам. Должен быть один на вершину полигона. Если их меньше, неопределенные вершины будут использовать :ref:`color<class_Polygon2D_property_color>`.



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedColorArray<class_PackedColorArray>` for more details.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_Polygon2D_method_add_bone:

.. rst-class:: classref-method

|void| **add_bone**\ (\ path\: :ref:`NodePath<class_NodePath>`, weights\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) :ref:`🔗<class_Polygon2D_method_add_bone>`

Добавляет кость с указанными ``path`` и ``weights``.

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_method_clear_bones:

.. rst-class:: classref-method

|void| **clear_bones**\ (\ ) :ref:`🔗<class_Polygon2D_method_clear_bones>`

Удаляет все кости из этого **Polygon2D**.

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_method_erase_bone:

.. rst-class:: classref-method

|void| **erase_bone**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Polygon2D_method_erase_bone>`

Удаляет указанную кость из этого **Polygon2D**.

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_method_get_bone_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_bone_count**\ (\ ) |const| :ref:`🔗<class_Polygon2D_method_get_bone_count>`

Возвращает количество костей в этом **Polygon2D**.

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_method_get_bone_path:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_bone_path**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Polygon2D_method_get_bone_path>`

Возвращает путь к узлу, связанному с указанной костью.

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_method_get_bone_weights:

.. rst-class:: classref-method

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **get_bone_weights**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Polygon2D_method_get_bone_weights>`

Возвращает значения веса указанной кости.

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_method_set_bone_path:

.. rst-class:: classref-method

|void| **set_bone_path**\ (\ index\: :ref:`int<class_int>`, path\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_Polygon2D_method_set_bone_path>`

Устанавливает путь к узлу, связанному с указанной костью.

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_method_set_bone_weights:

.. rst-class:: classref-method

|void| **set_bone_weights**\ (\ index\: :ref:`int<class_int>`, weights\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) :ref:`🔗<class_Polygon2D_method_set_bone_weights>`

Устанавливает значения веса для указанной кости.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
