:github_url: hide

.. _class_ImmediateMesh:

ImmediateMesh
=============

**Наследует:** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Сетка оптимизирована для создания геометрии вручную.

.. rst-class:: classref-introduction-group

Описание
----------------

Тип сетки, оптимизированный для создания геометрии вручную, аналогичный непосредственному режиму OpenGL 1.x.

Вот пример того, как сгенерировать треугольную грань:


.. tabs::

 .. code-tab:: gdscript

    var mesh = ImmediateMesh.new()
    mesh.surface_begin(Mesh.PRIMITIVE_TRIANGLES)
    mesh.surface_add_vertex(Vector3.LEFT)
    mesh.surface_add_vertex(Vector3.FORWARD)
    mesh.surface_add_vertex(Vector3.ZERO)
    mesh.surface_end()

 .. code-tab:: csharp

    var mesh = new ImmediateMesh();
    mesh.SurfaceBegin(Mesh.PrimitiveType.Triangles);
    mesh.SurfaceAddVertex(Vector3.Left);
    mesh.SurfaceAddVertex(Vector3.Forward);
    mesh.SurfaceAddVertex(Vector3.Zero);
    mesh.SurfaceEnd();



\ **Примечание:** Генерация сложной геометрии с помощью **ImmediateMesh** крайне неэффективна. Вместо этого она предназначена для генерации простой геометрии, которая часто меняется.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Использование ImmediateMesh <../tutorials/3d/procedural_geometry/immediatemesh>`

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +--------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`clear_surfaces<class_ImmediateMesh_method_clear_surfaces>`\ (\ )                                                                                                             |
   +--------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`surface_add_vertex<class_ImmediateMesh_method_surface_add_vertex>`\ (\ vertex\: :ref:`Vector3<class_Vector3>`\ )                                                             |
   +--------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`surface_add_vertex_2d<class_ImmediateMesh_method_surface_add_vertex_2d>`\ (\ vertex\: :ref:`Vector2<class_Vector2>`\ )                                                       |
   +--------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`surface_begin<class_ImmediateMesh_method_surface_begin>`\ (\ primitive\: :ref:`PrimitiveType<enum_Mesh_PrimitiveType>`, material\: :ref:`Material<class_Material>` = null\ ) |
   +--------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`surface_end<class_ImmediateMesh_method_surface_end>`\ (\ )                                                                                                                   |
   +--------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`surface_set_color<class_ImmediateMesh_method_surface_set_color>`\ (\ color\: :ref:`Color<class_Color>`\ )                                                                    |
   +--------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`surface_set_normal<class_ImmediateMesh_method_surface_set_normal>`\ (\ normal\: :ref:`Vector3<class_Vector3>`\ )                                                             |
   +--------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`surface_set_tangent<class_ImmediateMesh_method_surface_set_tangent>`\ (\ tangent\: :ref:`Plane<class_Plane>`\ )                                                              |
   +--------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`surface_set_uv<class_ImmediateMesh_method_surface_set_uv>`\ (\ uv\: :ref:`Vector2<class_Vector2>`\ )                                                                         |
   +--------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`surface_set_uv2<class_ImmediateMesh_method_surface_set_uv2>`\ (\ uv2\: :ref:`Vector2<class_Vector2>`\ )                                                                      |
   +--------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_ImmediateMesh_method_clear_surfaces:

.. rst-class:: classref-method

|void| **clear_surfaces**\ (\ ) :ref:`🔗<class_ImmediateMesh_method_clear_surfaces>`

Очистить все поверхности.

.. rst-class:: classref-item-separator

----

.. _class_ImmediateMesh_method_surface_add_vertex:

.. rst-class:: classref-method

|void| **surface_add_vertex**\ (\ vertex\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_ImmediateMesh_method_surface_add_vertex>`

Добавьте 3D-вершину, используя текущие атрибуты, установленные ранее.

.. rst-class:: classref-item-separator

----

.. _class_ImmediateMesh_method_surface_add_vertex_2d:

.. rst-class:: classref-method

|void| **surface_add_vertex_2d**\ (\ vertex\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_ImmediateMesh_method_surface_add_vertex_2d>`

Добавьте 2D-вершину, используя текущие атрибуты, установленные ранее.

.. rst-class:: classref-item-separator

----

.. _class_ImmediateMesh_method_surface_begin:

.. rst-class:: classref-method

|void| **surface_begin**\ (\ primitive\: :ref:`PrimitiveType<enum_Mesh_PrimitiveType>`, material\: :ref:`Material<class_Material>` = null\ ) :ref:`🔗<class_ImmediateMesh_method_surface_begin>`

Начните новую поверхность.

.. rst-class:: classref-item-separator

----

.. _class_ImmediateMesh_method_surface_end:

.. rst-class:: classref-method

|void| **surface_end**\ (\ ) :ref:`🔗<class_ImmediateMesh_method_surface_end>`

Завершить и зафиксировать текущую поверхность. Обратите внимание, что создаваемая поверхность не будет видна, пока не будет вызвана эта функция.

.. rst-class:: classref-item-separator

----

.. _class_ImmediateMesh_method_surface_set_color:

.. rst-class:: classref-method

|void| **surface_set_color**\ (\ color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_ImmediateMesh_method_surface_set_color>`

Установите атрибут цвета, который будет добавлен вместе со следующей вершиной.

.. rst-class:: classref-item-separator

----

.. _class_ImmediateMesh_method_surface_set_normal:

.. rst-class:: classref-method

|void| **surface_set_normal**\ (\ normal\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_ImmediateMesh_method_surface_set_normal>`

Установите атрибут нормали, который будет добавлен вместе со следующей вершиной.

.. rst-class:: classref-item-separator

----

.. _class_ImmediateMesh_method_surface_set_tangent:

.. rst-class:: classref-method

|void| **surface_set_tangent**\ (\ tangent\: :ref:`Plane<class_Plane>`\ ) :ref:`🔗<class_ImmediateMesh_method_surface_set_tangent>`

Установите атрибут касательной, который будет добавлен к следующей вершине.

\ **Примечание:** Хотя ``tangent`` является :ref:`Plane<class_Plane>`, он не представляет собой непосредственно касательную плоскость. Его :ref:`Plane.x<class_Plane_property_x>`, :ref:`Plane.y<class_Plane_property_y>` и :ref:`Plane.z<class_Plane_property_z>` представляют собой касательный вектор, а :ref:`Plane.d<class_Plane_property_d>` должен быть либо ``-1``, либо ``1``. См. также :ref:`Mesh.ARRAY_TANGENT<class_Mesh_constant_ARRAY_TANGENT>`.

.. rst-class:: classref-item-separator

----

.. _class_ImmediateMesh_method_surface_set_uv:

.. rst-class:: classref-method

|void| **surface_set_uv**\ (\ uv\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_ImmediateMesh_method_surface_set_uv>`

Установите атрибут UV, который будет добавлен вместе со следующей вершиной.

.. rst-class:: classref-item-separator

----

.. _class_ImmediateMesh_method_surface_set_uv2:

.. rst-class:: classref-method

|void| **surface_set_uv2**\ (\ uv2\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_ImmediateMesh_method_surface_set_uv2>`

Установите атрибут UV2, который будет добавляться вместе со следующей вершиной.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
