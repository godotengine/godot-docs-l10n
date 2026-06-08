:github_url: hide

.. _class_NavigationMeshSourceGeometryData2D:

NavigationMeshSourceGeometryData2D
==================================

**Експериментальний:** This class may be changed or removed in future versions.

**Успадковує:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Контейнер для обробки даних геометрії, що використовуються в навігаційній сітці.

.. rst-class:: classref-introduction-group

Опис
--------

Контейнер для обробки даних геометрії, що використовуються в навігаційній сітці.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`add_obstruction_outline<class_NavigationMeshSourceGeometryData2D_method_add_obstruction_outline>`\ (\ shape_outline\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                             |
   +----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`add_projected_obstruction<class_NavigationMeshSourceGeometryData2D_method_add_projected_obstruction>`\ (\ vertices\: :ref:`PackedVector2Array<class_PackedVector2Array>`, carve\: :ref:`bool<class_bool>`\ )             |
   +----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`add_traversable_outline<class_NavigationMeshSourceGeometryData2D_method_add_traversable_outline>`\ (\ shape_outline\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                             |
   +----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`append_obstruction_outlines<class_NavigationMeshSourceGeometryData2D_method_append_obstruction_outlines>`\ (\ obstruction_outlines\: :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\]\ ) |
   +----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`append_traversable_outlines<class_NavigationMeshSourceGeometryData2D_method_append_traversable_outlines>`\ (\ traversable_outlines\: :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\]\ ) |
   +----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`clear<class_NavigationMeshSourceGeometryData2D_method_clear>`\ (\ )                                                                                                                                                      |
   +----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`clear_projected_obstructions<class_NavigationMeshSourceGeometryData2D_method_clear_projected_obstructions>`\ (\ )                                                                                                        |
   +----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`                                                        | :ref:`get_bounds<class_NavigationMeshSourceGeometryData2D_method_get_bounds>`\ (\ )                                                                                                                                            |
   +----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] | :ref:`get_obstruction_outlines<class_NavigationMeshSourceGeometryData2D_method_get_obstruction_outlines>`\ (\ ) |const|                                                                                                        |
   +----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                                                        | :ref:`get_projected_obstructions<class_NavigationMeshSourceGeometryData2D_method_get_projected_obstructions>`\ (\ ) |const|                                                                                                    |
   +----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] | :ref:`get_traversable_outlines<class_NavigationMeshSourceGeometryData2D_method_get_traversable_outlines>`\ (\ ) |const|                                                                                                        |
   +----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                          | :ref:`has_data<class_NavigationMeshSourceGeometryData2D_method_has_data>`\ (\ )                                                                                                                                                |
   +----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`merge<class_NavigationMeshSourceGeometryData2D_method_merge>`\ (\ other_geometry\: :ref:`NavigationMeshSourceGeometryData2D<class_NavigationMeshSourceGeometryData2D>`\ )                                                |
   +----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`set_obstruction_outlines<class_NavigationMeshSourceGeometryData2D_method_set_obstruction_outlines>`\ (\ obstruction_outlines\: :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\]\ )       |
   +----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`set_projected_obstructions<class_NavigationMeshSourceGeometryData2D_method_set_projected_obstructions>`\ (\ projected_obstructions\: :ref:`Array<class_Array>`\ )                                                        |
   +----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`set_traversable_outlines<class_NavigationMeshSourceGeometryData2D_method_set_traversable_outlines>`\ (\ traversable_outlines\: :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\]\ )       |
   +----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_NavigationMeshSourceGeometryData2D_method_add_obstruction_outline:

.. rst-class:: classref-method

|void| **add_obstruction_outline**\ (\ shape_outline\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_add_obstruction_outline>`

Додає контурні точки форми як обстрункої ділянки.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData2D_method_add_projected_obstruction:

.. rst-class:: classref-method

|void| **add_projected_obstruction**\ (\ vertices\: :ref:`PackedVector2Array<class_PackedVector2Array>`, carve\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_add_projected_obstruction>`

Додає проектовану форму обструкції до геометрії джерела. Якщо ``carve`` є ``true`` різьблена форма не буде впливати на додаткові офсети (наприклад, радіус агента) процесу навігаційної сітки.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData2D_method_add_traversable_outline:

.. rst-class:: classref-method

|void| **add_traversable_outline**\ (\ shape_outline\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_add_traversable_outline>`

Додає контурні точки форми як траверсійна зона.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData2D_method_append_obstruction_outlines:

.. rst-class:: classref-method

|void| **append_obstruction_outlines**\ (\ obstruction_outlines\: :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\]\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_append_obstruction_outlines>`

Додаток до іншого масиву ``obstruction_outlines`` в кінці існуючого обструктивного масиву обструкції.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData2D_method_append_traversable_outlines:

.. rst-class:: classref-method

|void| **append_traversable_outlines**\ (\ traversable_outlines\: :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\]\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_append_traversable_outlines>`

Додаток інший масив ``traversable_outlines`` в кінці існуючого масиву траверсійних контурів.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData2D_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_clear>`

Очистити внутрішні дані.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData2D_method_clear_projected_obstructions:

.. rst-class:: classref-method

|void| **clear_projected_obstructions**\ (\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_clear_projected_obstructions>`

Очищає всі проєктовані обструкції.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData2D_method_get_bounds:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **get_bounds**\ (\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_get_bounds>`

Повертає вирівняну по осі обмежувальну рамку, яка охоплює всі збережені геометричні дані. Межі обчислюються під час виклику цієї функції з кешуванням результату до подальших змін геометрії.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData2D_method_get_obstruction_outlines:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] **get_obstruction_outlines**\ (\ ) |const| :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_get_obstruction_outlines>`

Повертає всі обстрункі області обмітує масиви.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData2D_method_get_projected_obstructions:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_projected_obstructions**\ (\ ) |const| :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_get_projected_obstructions>`

Повернути проектовані зобов’язання як :ref:`Array<class_Array>` словників. Кожен :ref:`Dictionary<class_Dictionary>` містить наступні записи:

- ``vertices`` - A :ref:`PackedFloat32Array<class_PackedFloat32Array>`, що визначає пункти об'єкта, що прокладено форму.

- ``carve`` - A :ref:`bool<class_bool>` яка визначає, як проектована форма впливає на навігацію сітки. Якщо ``true`` проектована форма не буде впливати на додавання офсетів, наприклад, радіус агента.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData2D_method_get_traversable_outlines:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] **get_traversable_outlines**\ (\ ) |const| :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_get_traversable_outlines>`

Повертає всі траверсифіковані масиви області.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData2D_method_has_data:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_data**\ (\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_has_data>`

Повертаємо ``true`` при розміщенні даних геометрії джерела.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData2D_method_merge:

.. rst-class:: classref-method

|void| **merge**\ (\ other_geometry\: :ref:`NavigationMeshSourceGeometryData2D<class_NavigationMeshSourceGeometryData2D>`\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_merge>`

Додавання геометричних даних іншого **NavigationMeshSourceGeometryData2D** до навігаційної сітки.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData2D_method_set_obstruction_outlines:

.. rst-class:: classref-method

|void| **set_obstruction_outlines**\ (\ obstruction_outlines\: :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\]\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_set_obstruction_outlines>`

Налаштовує всі обстрункі області масиви масивів.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData2D_method_set_projected_obstructions:

.. rst-class:: classref-method

|void| **set_projected_obstructions**\ (\ projected_obstructions\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_set_projected_obstructions>`

Встановлює спроектовані перешкоди за допомогою масиву словників із такими парами ключ-значення:


.. tabs::

 .. code-tab:: gdscript

    "vertices" : PackedFloat32Array
    "carve" : bool



.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData2D_method_set_traversable_outlines:

.. rst-class:: classref-method

|void| **set_traversable_outlines**\ (\ traversable_outlines\: :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\]\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_set_traversable_outlines>`

Налаштовує всі траверсійні області масиви масивів.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
