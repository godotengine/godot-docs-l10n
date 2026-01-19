:github_url: hide

.. _class_MeshInstance3D:

MeshInstance3D
==============

**Наследует:** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`SoftBody3D<class_SoftBody3D>`

Узел, экземпляры которого встраиваются в сценарий.

.. rst-class:: classref-introduction-group

Описание
----------------

MeshInstance3D — это узел, который берет ресурс :ref:`Mesh<class_Mesh>` и добавляет его в текущий сценарий, создавая его экземпляр. Это класс, который чаще всего используется для рендеринга 3D-геометрии и может использоваться для создания экземпляра одной :ref:`Mesh<class_Mesh>` во многих местах. Это позволяет повторно использовать геометрию, что может сэкономить ресурсы. Когда необходимо создать экземпляр :ref:`Mesh<class_Mesh>` более тысячи раз в непосредственной близости, рассмотрите возможность использования :ref:`MultiMesh<class_MultiMesh>` в :ref:`MultiMeshInstance3D<class_MultiMeshInstance3D>`.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- `Демонстрация 3D-испытателей материалов <https://godotengine.org/asset-library/asset/2742>`__

- `Демонстрация 3D-кинематического персонажа <https://godotengine.org/asset-library/asset/2739>`__

- `Демо-версия 3D-платформера <https://godotengine.org/asset-library/asset/2748>`__

- `Демонстрация шутера от третьего лица (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------+------------------+
   | :ref:`Mesh<class_Mesh>`         | :ref:`mesh<class_MeshInstance3D_property_mesh>`         |                  |
   +---------------------------------+---------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`skeleton<class_MeshInstance3D_property_skeleton>` | ``NodePath("")`` |
   +---------------------------------+---------------------------------------------------------+------------------+
   | :ref:`Skin<class_Skin>`         | :ref:`skin<class_MeshInstance3D_property_skin>`         |                  |
   +---------------------------------+---------------------------------------------------------+------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ArrayMesh<class_ArrayMesh>`         | :ref:`bake_mesh_from_current_blend_shape_mix<class_MeshInstance3D_method_bake_mesh_from_current_blend_shape_mix>`\ (\ existing\: :ref:`ArrayMesh<class_ArrayMesh>` = null\ )                                   |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ArrayMesh<class_ArrayMesh>`         | :ref:`bake_mesh_from_current_skeleton_pose<class_MeshInstance3D_method_bake_mesh_from_current_skeleton_pose>`\ (\ existing\: :ref:`ArrayMesh<class_ArrayMesh>` = null\ )                                       |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                    | :ref:`create_convex_collision<class_MeshInstance3D_method_create_convex_collision>`\ (\ clean\: :ref:`bool<class_bool>` = true, simplify\: :ref:`bool<class_bool>` = false\ )                                  |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                    | :ref:`create_debug_tangents<class_MeshInstance3D_method_create_debug_tangents>`\ (\ )                                                                                                                          |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                    | :ref:`create_multiple_convex_collisions<class_MeshInstance3D_method_create_multiple_convex_collisions>`\ (\ settings\: :ref:`MeshConvexDecompositionSettings<class_MeshConvexDecompositionSettings>` = null\ ) |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                    | :ref:`create_trimesh_collision<class_MeshInstance3D_method_create_trimesh_collision>`\ (\ )                                                                                                                    |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                     | :ref:`find_blend_shape_by_name<class_MeshInstance3D_method_find_blend_shape_by_name>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                                        |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Material<class_Material>`           | :ref:`get_active_material<class_MeshInstance3D_method_get_active_material>`\ (\ surface\: :ref:`int<class_int>`\ ) |const|                                                                                     |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                     | :ref:`get_blend_shape_count<class_MeshInstance3D_method_get_blend_shape_count>`\ (\ ) |const|                                                                                                                  |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                 | :ref:`get_blend_shape_value<class_MeshInstance3D_method_get_blend_shape_value>`\ (\ blend_shape_idx\: :ref:`int<class_int>`\ ) |const|                                                                         |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SkinReference<class_SkinReference>` | :ref:`get_skin_reference<class_MeshInstance3D_method_get_skin_reference>`\ (\ ) |const|                                                                                                                        |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Material<class_Material>`           | :ref:`get_surface_override_material<class_MeshInstance3D_method_get_surface_override_material>`\ (\ surface\: :ref:`int<class_int>`\ ) |const|                                                                 |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                     | :ref:`get_surface_override_material_count<class_MeshInstance3D_method_get_surface_override_material_count>`\ (\ ) |const|                                                                                      |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                    | :ref:`set_blend_shape_value<class_MeshInstance3D_method_set_blend_shape_value>`\ (\ blend_shape_idx\: :ref:`int<class_int>`, value\: :ref:`float<class_float>`\ )                                              |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                    | :ref:`set_surface_override_material<class_MeshInstance3D_method_set_surface_override_material>`\ (\ surface\: :ref:`int<class_int>`, material\: :ref:`Material<class_Material>`\ )                             |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_MeshInstance3D_property_mesh:

.. rst-class:: classref-property

:ref:`Mesh<class_Mesh>` **mesh** :ref:`🔗<class_MeshInstance3D_property_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_mesh**\ (\ value\: :ref:`Mesh<class_Mesh>`\ )
- :ref:`Mesh<class_Mesh>` **get_mesh**\ (\ )

Ресурс :ref:`Mesh<class_Mesh>` для экземпляра.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_property_skeleton:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **skeleton** = ``NodePath("")`` :ref:`🔗<class_MeshInstance3D_property_skeleton>`

.. rst-class:: classref-property-setget

- |void| **set_skeleton_path**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_skeleton_path**\ (\ )

:ref:`NodePath<class_NodePath>` к связанному с экземпляром :ref:`Skeleton3D<class_Skeleton3D>`.

\ **Примечание:** Значение по умолчанию для этого свойства изменилось в Godot 4.6. Включите :ref:`ProjectSettings.animation/compatibility/default_parent_skeleton_in_mesh_instance_3d<class_ProjectSettings_property_animation/compatibility/default_parent_skeleton_in_mesh_instance_3d>`, если для совместимости необходимо старое поведение.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_property_skin:

.. rst-class:: classref-property

:ref:`Skin<class_Skin>` **skin** :ref:`🔗<class_MeshInstance3D_property_skin>`

.. rst-class:: classref-property-setget

- |void| **set_skin**\ (\ value\: :ref:`Skin<class_Skin>`\ )
- :ref:`Skin<class_Skin>` **get_skin**\ (\ )

:ref:`Skin<class_Skin>`, который будет использоваться этим экземпляром.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_MeshInstance3D_method_bake_mesh_from_current_blend_shape_mix:

.. rst-class:: classref-method

:ref:`ArrayMesh<class_ArrayMesh>` **bake_mesh_from_current_blend_shape_mix**\ (\ existing\: :ref:`ArrayMesh<class_ArrayMesh>` = null\ ) :ref:`🔗<class_MeshInstance3D_method_bake_mesh_from_current_blend_shape_mix>`

Делает снимок текущего :ref:`ArrayMesh<class_ArrayMesh>` со всеми примененными формами смешивания в соответствии с их текущими весами и запекает его в предоставленной ``existing`` сетке. Если ``existing`` сетка не указана, создается, запекается и возвращается новая :ref:`ArrayMesh<class_ArrayMesh>`. Материалы поверхности сетки не копируются.

\ **Производительность:** Данные :ref:`Mesh<class_Mesh>` необходимо получать от GPU, что останавливает :ref:`RenderingServer<class_RenderingServer>` в процессе.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_bake_mesh_from_current_skeleton_pose:

.. rst-class:: classref-method

:ref:`ArrayMesh<class_ArrayMesh>` **bake_mesh_from_current_skeleton_pose**\ (\ existing\: :ref:`ArrayMesh<class_ArrayMesh>` = null\ ) :ref:`🔗<class_MeshInstance3D_method_bake_mesh_from_current_skeleton_pose>`

Делает снимок текущей анимированной позы скелета скинированной сетки и запекает ее в предоставленной ``existing`` сетке. Если ``existing`` сетка не предоставлена, создается, запекается и возвращается новая :ref:`ArrayMesh<class_ArrayMesh>`. Для работы требуется скелет с зарегистрированным скином. Blendshapes игнорируются. Материалы поверхности сетки не копируются.

\ **Производительность:** Данные :ref:`Mesh<class_Mesh>` необходимо извлекать из графического процессора, что останавливает :ref:`RenderingServer<class_RenderingServer>` в процессе.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_create_convex_collision:

.. rst-class:: classref-method

|void| **create_convex_collision**\ (\ clean\: :ref:`bool<class_bool>` = true, simplify\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_MeshInstance3D_method_create_convex_collision>`

Этот помощник создает дочерний узел :ref:`StaticBody3D<class_StaticBody3D>` с формой столкновения :ref:`ConvexPolygonShape3D<class_ConvexPolygonShape3D>`, рассчитанной из геометрии сетки. В основном он используется для тестирования.

Если ``clean`` равен ``true`` (по умолчанию), дублирующиеся и внутренние вершины удаляются автоматически. Вы можете установить его на ``false``, чтобы ускорить процесс, если он не нужен.

Если ``simplify`` равен ``true``, геометрию можно дополнительно упростить, чтобы уменьшить количество вершин. По умолчанию отключено.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_create_debug_tangents:

.. rst-class:: classref-method

|void| **create_debug_tangents**\ (\ ) :ref:`🔗<class_MeshInstance3D_method_create_debug_tangents>`

Этот помощник создает дочерний узел **MeshInstance3D** с гизмо в каждой вершине, рассчитанной из геометрии сетки. Он в основном используется для тестирования.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_create_multiple_convex_collisions:

.. rst-class:: classref-method

|void| **create_multiple_convex_collisions**\ (\ settings\: :ref:`MeshConvexDecompositionSettings<class_MeshConvexDecompositionSettings>` = null\ ) :ref:`🔗<class_MeshInstance3D_method_create_multiple_convex_collisions>`

Этот помощник создает дочерний узел :ref:`StaticBody3D<class_StaticBody3D>` с несколькими формами столкновений :ref:`ConvexPolygonShape3D<class_ConvexPolygonShape3D>`, рассчитанными из геометрии сетки с помощью выпуклой декомпозиции. Операция выпуклой декомпозиции может управляться параметрами из дополнительных ``settings``.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_create_trimesh_collision:

.. rst-class:: classref-method

|void| **create_trimesh_collision**\ (\ ) :ref:`🔗<class_MeshInstance3D_method_create_trimesh_collision>`

Этот помощник создает дочерний узел :ref:`StaticBody3D<class_StaticBody3D>` с формой столкновения :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>`, рассчитанной из геометрии сетки. В основном он используется для тестирования.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_find_blend_shape_by_name:

.. rst-class:: classref-method

:ref:`int<class_int>` **find_blend_shape_by_name**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_MeshInstance3D_method_find_blend_shape_by_name>`

Возвращает индекс формы смешивания с заданным ``name``. Возвращает ``-1``, если формы смешивания с таким именем не существует, включая случай, когда :ref:`mesh<class_MeshInstance3D_property_mesh>` равен ``null``.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_get_active_material:

.. rst-class:: classref-method

:ref:`Material<class_Material>` **get_active_material**\ (\ surface\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshInstance3D_method_get_active_material>`

Возвращает :ref:`Material<class_Material>`, который будет использоваться :ref:`Mesh<class_Mesh>` при рисовании. Это может вернуть :ref:`GeometryInstance3D.material_override<class_GeometryInstance3D_property_material_override>`, переопределение поверхности :ref:`Material<class_Material>`, определенное в этом **MeshInstance3D**, или поверхность :ref:`Material<class_Material>`, определенное в :ref:`mesh<class_MeshInstance3D_property_mesh>`. Например, если используется :ref:`GeometryInstance3D.material_override<class_GeometryInstance3D_property_material_override>`, все поверхности вернут переопределенный материал.

Возвращает ``null``, если ни один материал не активен, включая случай, когда :ref:`mesh<class_MeshInstance3D_property_mesh>` равен ``null``.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_get_blend_shape_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_blend_shape_count**\ (\ ) |const| :ref:`🔗<class_MeshInstance3D_method_get_blend_shape_count>`

Возвращает количество доступных форм смешивания. Выдает ошибку, если :ref:`mesh<class_MeshInstance3D_property_mesh>` равен ``null``.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_get_blend_shape_value:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_blend_shape_value**\ (\ blend_shape_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshInstance3D_method_get_blend_shape_value>`

Возвращает значение формы смешивания по указанному ``blend_shape_idx``. Возвращает ``0.0`` и выдает ошибку, если :ref:`mesh<class_MeshInstance3D_property_mesh>` равен ``null`` или не имеет формы смешивания по этому индексу.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_get_skin_reference:

.. rst-class:: classref-method

:ref:`SkinReference<class_SkinReference>` **get_skin_reference**\ (\ ) |const| :ref:`🔗<class_MeshInstance3D_method_get_skin_reference>`

Возвращает внутренний :ref:`SkinReference<class_SkinReference>`, содержащий :ref:`RID<class_RID>` скелета, прикрепленный к этому RID. См. также :ref:`Resource.get_rid()<class_Resource_method_get_rid>`, :ref:`SkinReference.get_skeleton()<class_SkinReference_method_get_skeleton>` и :ref:`RenderingServer.instance_attach_skeleton()<class_RenderingServer_method_instance_attach_skeleton>`.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_get_surface_override_material:

.. rst-class:: classref-method

:ref:`Material<class_Material>` **get_surface_override_material**\ (\ surface\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshInstance3D_method_get_surface_override_material>`

Возвращает переопределение :ref:`Material<class_Material>` для указанного ``surface`` ресурса :ref:`Mesh<class_Mesh>`. См. также :ref:`get_surface_override_material_count()<class_MeshInstance3D_method_get_surface_override_material_count>`.

\ **Примечание:** Это возвращает :ref:`Material<class_Material>`, связанный со свойствами переопределения материала поверхности **MeshInstance3D**, а не материал внутри ресурса :ref:`Mesh<class_Mesh>`. Чтобы получить материал внутри ресурса :ref:`Mesh<class_Mesh>`, используйте вместо этого :ref:`Mesh.surface_get_material()<class_Mesh_method_surface_get_material>`.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_get_surface_override_material_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_surface_override_material_count**\ (\ ) |const| :ref:`🔗<class_MeshInstance3D_method_get_surface_override_material_count>`

Возвращает количество материалов переопределения поверхности. Это эквивалентно :ref:`Mesh.get_surface_count()<class_Mesh_method_get_surface_count>`. См. также :ref:`get_surface_override_material()<class_MeshInstance3D_method_get_surface_override_material>`.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_set_blend_shape_value:

.. rst-class:: classref-method

|void| **set_blend_shape_value**\ (\ blend_shape_idx\: :ref:`int<class_int>`, value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_MeshInstance3D_method_set_blend_shape_value>`

Устанавливает значение формы смешивания в ``blend_shape_idx`` на ``value``. Выдает ошибку, если :ref:`mesh<class_MeshInstance3D_property_mesh>` равен ``null`` или не имеет формы смешивания в этом индексе.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_set_surface_override_material:

.. rst-class:: classref-method

|void| **set_surface_override_material**\ (\ surface\: :ref:`int<class_int>`, material\: :ref:`Material<class_Material>`\ ) :ref:`🔗<class_MeshInstance3D_method_set_surface_override_material>`

Устанавливает переопределение ``material`` для указанного ``surface`` ресурса :ref:`Mesh<class_Mesh>`. Этот материал связан с этим **MeshInstance3D**, а не с :ref:`mesh<class_MeshInstance3D_property_mesh>`.

\ **Примечание:** Это назначает :ref:`Material<class_Material>`, связанный со свойствами Surface Material Override **MeshInstance3D**, а не материал внутри ресурса :ref:`Mesh<class_Mesh>`. Чтобы задать материал внутри ресурса :ref:`Mesh<class_Mesh>`, используйте вместо этого :ref:`Mesh.surface_set_material()<class_Mesh_method_surface_set_material>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
