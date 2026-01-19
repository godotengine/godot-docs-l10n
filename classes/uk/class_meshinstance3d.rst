:github_url: hide

.. _class_MeshInstance3D:

MeshInstance3D
==============

**Успадковує:** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`SoftBody3D<class_SoftBody3D>`

Немає, що сіточки екземплярів в скрипт.

.. rst-class:: classref-introduction-group

Опис
--------

MeshInstance3D – це вузол, який приймає ресурс :ref:`Mesh<class_Mesh>` та додає його до поточного сценарію, створюючи його екземпляр. Цей клас найчастіше використовується для рендерингу 3D-геометрії та може бути використаний для створення екземпляра однієї :ref:`Mesh<class_Mesh>` у багатьох місцях. Це дозволяє повторно використовувати геометрію, що може заощадити ресурси. Коли :ref:`Mesh<class_Mesh>` потрібно створювати екземпляри більше тисячі разів поруч, розгляньте можливість використання :ref:`MultiMesh<class_MultiMesh>` в :ref:`MultiMeshInstance3D<class_MultiMeshInstance3D>`.

.. rst-class:: classref-introduction-group

Посібники
------------------

- `3D Матеріал Тестери Демо <https://godotengine.org/asset-library/asset/2742>`__

- `Демонстрація тривимірного кінематичного персонажа <https://godotengine.org/asset-library/asset/2739>`__

- `Демонстрація 3D-платформера <https://godotengine.org/asset-library/asset/2748>`__

- `Демо-версія шутера від третьої особи (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

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

Методи
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

Описи властивостей
------------------------------------

.. _class_MeshInstance3D_property_mesh:

.. rst-class:: classref-property

:ref:`Mesh<class_Mesh>` **mesh** :ref:`🔗<class_MeshInstance3D_property_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_mesh**\ (\ value\: :ref:`Mesh<class_Mesh>`\ )
- :ref:`Mesh<class_Mesh>` **get_mesh**\ (\ )

:ref:`Mesh<class_Mesh>` ресурс для екземпляра.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_property_skeleton:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **skeleton** = ``NodePath("")`` :ref:`🔗<class_MeshInstance3D_property_skeleton>`

.. rst-class:: classref-property-setget

- |void| **set_skeleton_path**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_skeleton_path**\ (\ )

:ref:`NodePath<class_NodePath>` до :ref:`Skeleton3D<class_Skeleton3D>`, пов'язаного з екземпляром.

\ **Примітка:** Значення цієї властивості за замовчуванням змінилося в Godot 4.6. Увімкніть :ref:`ProjectSettings.animation/compatibility/default_parent_skeleton_in_mesh_instance_3d<class_ProjectSettings_property_animation/compatibility/default_parent_skeleton_in_mesh_instance_3d>`, якщо для сумісності потрібна стара поведінка.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_property_skin:

.. rst-class:: classref-property

:ref:`Skin<class_Skin>` **skin** :ref:`🔗<class_MeshInstance3D_property_skin>`

.. rst-class:: classref-property-setget

- |void| **set_skin**\ (\ value\: :ref:`Skin<class_Skin>`\ )
- :ref:`Skin<class_Skin>` **get_skin**\ (\ )

:ref:`Skin<class_Skin>` використовувати цей екземпляр.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_MeshInstance3D_method_bake_mesh_from_current_blend_shape_mix:

.. rst-class:: classref-method

:ref:`ArrayMesh<class_ArrayMesh>` **bake_mesh_from_current_blend_shape_mix**\ (\ existing\: :ref:`ArrayMesh<class_ArrayMesh>` = null\ ) :ref:`🔗<class_MeshInstance3D_method_bake_mesh_from_current_blend_shape_mix>`

Робить знімок поточної сітки :ref:`ArrayMesh<class_ArrayMesh>` з усіма застосованими формами змішування відповідно до їхніх поточних ваг та запікає його у надану сітку ``existing``. Якщо не вказано ``existing`` mesh, створюється, запікається та повертається новий :ref:`ArrayMesh<class_ArrayMesh>`. Матеріали поверхні сітки не копіюються.

\ **Продуктивність:** Дані :ref:`Mesh<class_Mesh>` необхідно отримувати від графічного процесора, що зупиняє :ref:`RenderingServer<class_RenderingServer>` у процесі.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_bake_mesh_from_current_skeleton_pose:

.. rst-class:: classref-method

:ref:`ArrayMesh<class_ArrayMesh>` **bake_mesh_from_current_skeleton_pose**\ (\ existing\: :ref:`ArrayMesh<class_ArrayMesh>` = null\ ) :ref:`🔗<class_MeshInstance3D_method_bake_mesh_from_current_skeleton_pose>`

Робить знімок поточної анімованої пози скелета шкірної сітки та запікає її до наданої сітки ``existing``. Якщо сітка ``existing`` не надається, створюється нова :ref:`ArrayMesh<class_ArrayMesh>`, запікається та повертається. Для роботи потрібен скелет із зареєстрованою шкірою. Blendshapes ігноруються. Матеріали сітчастої поверхні не копіюються. 

\ **Продуктивність:** дані :ref:`Mesh<class_Mesh>` потрібно отримати з графічного процесора, зупиняючи процес :ref:`RenderingServer<class_RenderingServer>`.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_create_convex_collision:

.. rst-class:: classref-method

|void| **create_convex_collision**\ (\ clean\: :ref:`bool<class_bool>` = true, simplify\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_MeshInstance3D_method_create_convex_collision>`

Цей помічник створює жіночий вузол :ref:`StaticBody3D<class_StaticBody3D>` з формою зіткнення :ref:`ConvexPolygonShape3D<class_ConvexPolygonShape3D>`, розрахований з геометрії сітки. В основному використовується для тестування.

Якщо ``clear`` є ``true`` (default), дублікати та інтер'єрні вершини видаляються автоматично. Ви можете налаштувати його на ``false``, щоб зробити процес швидше, якщо не потрібно.

Якщо ``simplify`` ``true``, геометрія може бути додатково спрощена для зменшення кількості вершин. Вимкнено за замовчуванням.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_create_debug_tangents:

.. rst-class:: classref-method

|void| **create_debug_tangents**\ (\ ) :ref:`🔗<class_MeshInstance3D_method_create_debug_tangents>`

Цей помічник створює дитячу вершину **MeshInstance3D** з гізмосом на кожній вершині, розрахованій з геометрії сітки. В основному використовується для тестування.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_create_multiple_convex_collisions:

.. rst-class:: classref-method

|void| **create_multiple_convex_collisions**\ (\ settings\: :ref:`MeshConvexDecompositionSettings<class_MeshConvexDecompositionSettings>` = null\ ) :ref:`🔗<class_MeshInstance3D_method_create_multiple_convex_collisions>`

Цей помічник створює дочірню вершину :ref:`StaticBody3D<class_StaticBody3D>` з декількома формами зіткнення :ref:`ConvexPolygonShape3D<class_ConvexPolygonShape3D>`, розрахованими з геометрії сітки за допомогою опуклої декомпозиція. Робота опуклих декомпозицій може контролюватися за допомогою параметрів з параметра ``параметри``.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_create_trimesh_collision:

.. rst-class:: classref-method

|void| **create_trimesh_collision**\ (\ ) :ref:`🔗<class_MeshInstance3D_method_create_trimesh_collision>`

Цей помічник створює жіночий вузол :ref:`StaticBody3D<class_StaticBody3D>` з :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>`, розрахований з геометрії сітки. В основному використовується для тестування.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_find_blend_shape_by_name:

.. rst-class:: classref-method

:ref:`int<class_int>` **find_blend_shape_by_name**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_MeshInstance3D_method_find_blend_shape_by_name>`

Повертає індекс форми блендера з вказаною ``name``. Повертаємо ``-1``, якщо не існує форми блендера з цією назвою, включаючи, коли ``пам'яткова сітка`` ``null``.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_get_active_material:

.. rst-class:: classref-method

:ref:`Material<class_Material>` **get_active_material**\ (\ surface\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshInstance3D_method_get_active_material>`

Повертаємо :ref:`Material<class_Material>`, який буде використовуватися :ref:`Mesh<class_Mesh>` при малюнку. Це може повернути :ref:`GeometryInstance3D.material_override<class_GeometryInstance3D_property_material_override>`, поверхневий надвисокий :ref:`Material<class_Material>`, визначений в цьому **MeshInstance3D**, або поверхня :ref:`Material<class_Material>`, визначена в :ref:`mesh<class_MeshInstance3D_property_mesh>`. Наприклад, якщо використовується :ref:`GeometryInstance3D.material_override<class_GeometryInstance3D_property_material_override>`, всі поверхні повернеться на матеріал наднижнього.

Повертаємо ``null``, якщо не працює матеріал, в тому числі при :ref:`mesh<class_MeshInstance3D_property_mesh>` ``null``.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_get_blend_shape_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_blend_shape_count**\ (\ ) |const| :ref:`🔗<class_MeshInstance3D_method_get_blend_shape_count>`

Повертаємо кількість форм змішування. ``null``.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_get_blend_shape_value:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_blend_shape_value**\ (\ blend_shape_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshInstance3D_method_get_blend_shape_value>`

Повертає значення форми блендера на даній ``mix_shape_idx``. Повертаємо ``0.0`` і виробляє помилку, якщо :ref:`mesh<class_MeshInstance3D_property_mesh>` є ``null`` або не має форму суміш в цьому індексі.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_get_skin_reference:

.. rst-class:: classref-method

:ref:`SkinReference<class_SkinReference>` **get_skin_reference**\ (\ ) |const| :ref:`🔗<class_MeshInstance3D_method_get_skin_reference>`

Повертаємо внутрішню :ref:`SkinReference<class_SkinReference>`, що містить скелет :ref:`RID<class_RID>`, прикріплену до цього RID. Дивись також :ref:`Resource.get_rid()<class_Resource_method_get_rid>`, :ref:`пошуку.get_skeleton()<class_пошуку_method_get_skeleton>`, а :ref:`RenderingServer.instance_attach_skeleton()<class_RenderingServer_method_instance_attach_skeleton>`.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_get_surface_override_material:

.. rst-class:: classref-method

:ref:`Material<class_Material>` **get_surface_override_material**\ (\ surface\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshInstance3D_method_get_surface_override_material>`

Повернення перенареченого :ref:`Material<class_Material>` за вказану ``surface`` ресурсу :ref:`Mesh<class_Mesh>`. Дивись також :ref:`get_surface_override_material_count()<class_MeshInstance3D_method_get_surface_override_material_count>`.

\ **Примітка:** Це повертає :ref:`Material<class_Material>`, пов'язаний з **MeshInstance3D**'s Surface Material Override властивості, не матеріал в межах :ref:`Mesh<class_Mesh>` ресурсу. Щоб отримати матеріал в ресурсі :ref:`Mesh<class_Mesh>`, скористайтеся :ref:`Mesh.surface_get_material()<class_Mesh_method_surface_get_material>`.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_get_surface_override_material_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_surface_override_material_count**\ (\ ) |const| :ref:`🔗<class_MeshInstance3D_method_get_surface_override_material_count>`

Повертаємо кількість поверхневих надрядних матеріалів. Це еквівалент :ref:`Mesh.get_surface_count()<class_Mesh_method_get_surface_count>`. Дивись також :ref:`get_surface_override_material()<class_MeshInstance3D_method_get_surface_override_material>`.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_set_blend_shape_value:

.. rst-class:: classref-method

|void| **set_blend_shape_value**\ (\ blend_shape_idx\: :ref:`int<class_int>`, value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_MeshInstance3D_method_set_blend_shape_value>`

Встановлює значення форми блендера на ``mix_shape_idx`` до ``value``. ``null`` або не має форми блендера в цьому індексі.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_set_surface_override_material:

.. rst-class:: classref-method

|void| **set_surface_override_material**\ (\ surface\: :ref:`int<class_int>`, material\: :ref:`Material<class_Material>`\ ) :ref:`🔗<class_MeshInstance3D_method_set_surface_override_material>`

Встановлює перевизначення ``material`` для вказаної ``surface`` ресурсу :ref:`Mesh<class_Mesh>`. Цей матеріал пов’язаний із цим **MeshInstance3D**, а не з :ref:`mesh<class_MeshInstance3D_property_mesh>`. 

\ **Примітка:** це призначає :ref:`Material<class_Material>`, пов’язаний із властивостями Surface Material Override **MeshInstance3D**, а не матеріалом у ресурсі :ref:`Mesh<class_Mesh>`. Щоб установити матеріал у межах ресурсу :ref:`Mesh<class_Mesh>`, замість цього використовуйте :ref:`Mesh.surface_set_material()<class_Mesh_method_surface_set_material>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
