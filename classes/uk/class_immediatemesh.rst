:github_url: hide

.. _class_ImmediateMesh:

ImmediateMesh
=============

**Успадковує:** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Сітка оптимізована для створення геометрії вручну.

.. rst-class:: classref-introduction-group

Опис
--------

Сітчастий тип оптимізований для створення геометрії вручну, схожого на режим OpenGL 1.x.

Ось зразок про те, як створити трикутний обличчя:


.. tabs::

 .. code-tab:: gdscript

    Варна сітка = ImmediateMesh.new()
    сітчаста.нафтаце_бегін(Меш.ПРИМІТИВ_ТРІАНГЛ)
    сітка.surface_add_vertex(Vector3.LEFT)
    сітка.surface_add_vertex(Vector3.FORWARD)
    сітчастий.нафти_add_vertex(Vector3.ZERO)
    сітчастий.surface_end()

 .. code-tab:: csharp

    варна сітка = новий ImmediateMesh();
    сітка.SurfaceBegin(Mesh.PrimitiveType.Triangles);
    сітка.SurfaceAddVertex(Vector3.Left);
    сітка.SurfaceAddVertex(Vector3.Forward);
    сітка.SurfaceAddVertex(Vector3.Zero);
    сітка.SurfaceEnd();



\ **Примітка:** Генерація складних геометів з **ImmediateMesh** є дуже неефективним. А замість того, щоб створити просту геометрію, яка часто змінюється.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Використання Immediate Сітка <../tutorials/3d/procedural_geometry/immediatemesh>`

.. rst-class:: classref-reftable-group

Методи
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

Описи методів
--------------------------

.. _class_ImmediateMesh_method_clear_surfaces:

.. rst-class:: classref-method

|void| **clear_surfaces**\ (\ ) :ref:`🔗<class_ImmediateMesh_method_clear_surfaces>`

Очистити всі поверхні.

.. rst-class:: classref-item-separator

----

.. _class_ImmediateMesh_method_surface_add_vertex:

.. rst-class:: classref-method

|void| **surface_add_vertex**\ (\ vertex\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_ImmediateMesh_method_surface_add_vertex>`

Додайте 3D вершину за допомогою раніше встановлених атрибутів.

.. rst-class:: classref-item-separator

----

.. _class_ImmediateMesh_method_surface_add_vertex_2d:

.. rst-class:: classref-method

|void| **surface_add_vertex_2d**\ (\ vertex\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_ImmediateMesh_method_surface_add_vertex_2d>`

Додайте 2D vertex за допомогою раніше встановлених атрибутів.

.. rst-class:: classref-item-separator

----

.. _class_ImmediateMesh_method_surface_begin:

.. rst-class:: classref-method

|void| **surface_begin**\ (\ primitive\: :ref:`PrimitiveType<enum_Mesh_PrimitiveType>`, material\: :ref:`Material<class_Material>` = null\ ) :ref:`🔗<class_ImmediateMesh_method_surface_begin>`

Починаємо нову поверхню.

.. rst-class:: classref-item-separator

----

.. _class_ImmediateMesh_method_surface_end:

.. rst-class:: classref-method

|void| **surface_end**\ (\ ) :ref:`🔗<class_ImmediateMesh_method_surface_end>`

Кінцева і керуйте поточною поверхнею. Зауважте, що поверхня створюється не буде видно, поки ця функція називається.

.. rst-class:: classref-item-separator

----

.. _class_ImmediateMesh_method_surface_set_color:

.. rst-class:: classref-method

|void| **surface_set_color**\ (\ color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_ImmediateMesh_method_surface_set_color>`

Встановити атрибут кольору, який буде відштовхуватися з наступною вершиною.

.. rst-class:: classref-item-separator

----

.. _class_ImmediateMesh_method_surface_set_normal:

.. rst-class:: classref-method

|void| **surface_set_normal**\ (\ normal\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_ImmediateMesh_method_surface_set_normal>`

Встановити нормальний атрибут, який буде відштовхуватися з наступною вершиною.

.. rst-class:: classref-item-separator

----

.. _class_ImmediateMesh_method_surface_set_tangent:

.. rst-class:: classref-method

|void| **surface_set_tangent**\ (\ tangent\: :ref:`Plane<class_Plane>`\ ) :ref:`🔗<class_ImmediateMesh_method_surface_set_tangent>`

Встановіть атрибут дотичної, який буде зміщено з наступною вершиною.

\ **Примітка:** Хоча ``tangent`` є :ref:`Plane<class_Plane>`, він безпосередньо не представляє дотичну площину. Його :ref:`Plane.x<class_Plane_property_x>`, :ref:`Plane.y<class_Plane_property_y>` та ``член Plane.z`` представляють вектор дотичної, а :ref:`Plane.d<class_Plane_property_d>` має бути або ``-1``, або ``1``. Див. також :ref:`Mesh.ARRAY_TANGENT<class_Mesh_constant_ARRAY_TANGENT>`.

.. rst-class:: classref-item-separator

----

.. _class_ImmediateMesh_method_surface_set_uv:

.. rst-class:: classref-method

|void| **surface_set_uv**\ (\ uv\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_ImmediateMesh_method_surface_set_uv>`

Встановити атрибут УФ, який буде відштовхуватися з наступною вершиною.

.. rst-class:: classref-item-separator

----

.. _class_ImmediateMesh_method_surface_set_uv2:

.. rst-class:: classref-method

|void| **surface_set_uv2**\ (\ uv2\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_ImmediateMesh_method_surface_set_uv2>`

Встановити атрибут УФ2, який буде відштовхуватися з наступною вершиною.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
