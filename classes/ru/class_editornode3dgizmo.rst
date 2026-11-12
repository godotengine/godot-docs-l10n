:github_url: hide

.. _class_EditorNode3DGizmo:

EditorNode3DGizmo
=================

**Наследует:** :ref:`Node3DGizmo<class_Node3DGizmo>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Gizmo для редактирования объектов :ref:`Node3D<class_Node3D>`.

.. rst-class:: classref-introduction-group

Описание
----------------

Гизмо, используемое для предоставления пользовательских возможностей визуализации и редактирования (ручек и подгизмо) для объектов :ref:`Node3D<class_Node3D>`. Его можно переопределить для создания пользовательских гизмо, но для простых гизмо обычно рекомендуется создать :ref:`EditorNode3DGizmoPlugin<class_EditorNode3DGizmoPlugin>`.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                        | :ref:`_begin_handle_action<class_EditorNode3DGizmo_private_method__begin_handle_action>`\ (\ id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`\ ) |virtual|                                                                                                                                                        |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                        | :ref:`_commit_handle<class_EditorNode3DGizmo_private_method__commit_handle>`\ (\ id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`, restore\: :ref:`Variant<class_Variant>`, cancel\: :ref:`bool<class_bool>`\ ) |virtual|                                                                                         |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                        | :ref:`_commit_subgizmos<class_EditorNode3DGizmo_private_method__commit_subgizmos>`\ (\ ids\: :ref:`PackedInt32Array<class_PackedInt32Array>`, restores\: :ref:`Array<class_Array>`\[:ref:`Transform3D<class_Transform3D>`\], cancel\: :ref:`bool<class_bool>`\ ) |virtual|                                                       |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                   | :ref:`_get_handle_name<class_EditorNode3DGizmo_private_method__get_handle_name>`\ (\ id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`\ ) |virtual| |const|                                                                                                                                                        |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                 | :ref:`_get_handle_value<class_EditorNode3DGizmo_private_method__get_handle_value>`\ (\ id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`\ ) |virtual| |const|                                                                                                                                                      |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                         | :ref:`_get_subgizmo_transform<class_EditorNode3DGizmo_private_method__get_subgizmo_transform>`\ (\ id\: :ref:`int<class_int>`\ ) |virtual| |const|                                                                                                                                                                               |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                       | :ref:`_is_handle_highlighted<class_EditorNode3DGizmo_private_method__is_handle_highlighted>`\ (\ id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`\ ) |virtual| |const|                                                                                                                                            |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                        | :ref:`_redraw<class_EditorNode3DGizmo_private_method__redraw>`\ (\ ) |virtual|                                                                                                                                                                                                                                                   |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                        | :ref:`_set_handle<class_EditorNode3DGizmo_private_method__set_handle>`\ (\ id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`, camera\: :ref:`Camera3D<class_Camera3D>`, point\: :ref:`Vector2<class_Vector2>`\ ) |virtual|                                                                                         |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                        | :ref:`_set_subgizmo_transform<class_EditorNode3DGizmo_private_method__set_subgizmo_transform>`\ (\ id\: :ref:`int<class_int>`, transform\: :ref:`Transform3D<class_Transform3D>`\ ) |virtual|                                                                                                                                    |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`               | :ref:`_subgizmos_intersect_frustum<class_EditorNode3DGizmo_private_method__subgizmos_intersect_frustum>`\ (\ camera\: :ref:`Camera3D<class_Camera3D>`, frustum\: :ref:`Array<class_Array>`\[:ref:`Plane<class_Plane>`\]\ ) |virtual| |const|                                                                                     |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                         | :ref:`_subgizmos_intersect_ray<class_EditorNode3DGizmo_private_method__subgizmos_intersect_ray>`\ (\ camera\: :ref:`Camera3D<class_Camera3D>`, point\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |const|                                                                                                                        |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                        | :ref:`add_collision_segments<class_EditorNode3DGizmo_method_add_collision_segments>`\ (\ segments\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ )                                                                                                                                                                       |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                        | :ref:`add_collision_triangles<class_EditorNode3DGizmo_method_add_collision_triangles>`\ (\ triangles\: :ref:`TriangleMesh<class_TriangleMesh>`\ )                                                                                                                                                                                |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                        | :ref:`add_handles<class_EditorNode3DGizmo_method_add_handles>`\ (\ handles\: :ref:`PackedVector3Array<class_PackedVector3Array>`, material\: :ref:`Material<class_Material>`, ids\: :ref:`PackedInt32Array<class_PackedInt32Array>`, billboard\: :ref:`bool<class_bool>` = false, secondary\: :ref:`bool<class_bool>` = false\ ) |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                        | :ref:`add_lines<class_EditorNode3DGizmo_method_add_lines>`\ (\ lines\: :ref:`PackedVector3Array<class_PackedVector3Array>`, material\: :ref:`Material<class_Material>`, billboard\: :ref:`bool<class_bool>` = false, modulate\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1)\ )                                                 |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                        | :ref:`add_mesh<class_EditorNode3DGizmo_method_add_mesh>`\ (\ mesh\: :ref:`Mesh<class_Mesh>`, material\: :ref:`Material<class_Material>` = null, transform\: :ref:`Transform3D<class_Transform3D>` = Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0), skeleton\: :ref:`SkinReference<class_SkinReference>` = null\ )              |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                        | :ref:`add_unscaled_billboard<class_EditorNode3DGizmo_method_add_unscaled_billboard>`\ (\ material\: :ref:`Material<class_Material>`, default_scale\: :ref:`float<class_float>` = 1, modulate\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1)\ )                                                                                  |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                        | :ref:`clear<class_EditorNode3DGizmo_method_clear>`\ (\ )                                                                                                                                                                                                                                                                         |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Node3D<class_Node3D>`                                   | :ref:`get_node_3d<class_EditorNode3DGizmo_method_get_node_3d>`\ (\ ) |const|                                                                                                                                                                                                                                                     |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`EditorNode3DGizmoPlugin<class_EditorNode3DGizmoPlugin>` | :ref:`get_plugin<class_EditorNode3DGizmo_method_get_plugin>`\ (\ ) |const|                                                                                                                                                                                                                                                       |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`               | :ref:`get_subgizmo_selection<class_EditorNode3DGizmo_method_get_subgizmo_selection>`\ (\ ) |const|                                                                                                                                                                                                                               |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                       | :ref:`is_selected<class_EditorNode3DGizmo_method_is_selected>`\ (\ ) |const|                                                                                                                                                                                                                                                     |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                       | :ref:`is_subgizmo_selected<class_EditorNode3DGizmo_method_is_subgizmo_selected>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                       |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                        | :ref:`set_hidden<class_EditorNode3DGizmo_method_set_hidden>`\ (\ hidden\: :ref:`bool<class_bool>`\ )                                                                                                                                                                                                                             |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                        | :ref:`set_node_3d<class_EditorNode3DGizmo_method_set_node_3d>`\ (\ node\: :ref:`Node<class_Node>`\ )                                                                                                                                                                                                                             |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_EditorNode3DGizmo_private_method__begin_handle_action:

.. rst-class:: classref-method

|void| **_begin_handle_action**\ (\ id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_EditorNode3DGizmo_private_method__begin_handle_action>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_private_method__commit_handle:

.. rst-class:: classref-method

|void| **_commit_handle**\ (\ id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`, restore\: :ref:`Variant<class_Variant>`, cancel\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_EditorNode3DGizmo_private_method__commit_handle>`

Переопределите этот метод, чтобы зафиксировать редактируемый дескриптор (дескрипторы должны быть ранее добавлены :ref:`add_handles()<class_EditorNode3DGizmo_method_add_handles>`). Обычно это означает создание действия :ref:`UndoRedo<class_UndoRedo>` для изменения, используя текущее значение дескриптора как «do» и аргумент ``restore`` как «undo».

Если аргумент ``cancel`` равен ``true``, значение ``restore`` должно быть установлено напрямую, без какого-либо действия :ref:`UndoRedo<class_UndoRedo>`.

Аргумент ``secondary`` равен ``true``, когда зафиксированный дескриптор является вторичным (см. :ref:`add_handles()<class_EditorNode3DGizmo_method_add_handles>` для получения дополнительной информации).

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_private_method__commit_subgizmos:

.. rst-class:: classref-method

|void| **_commit_subgizmos**\ (\ ids\: :ref:`PackedInt32Array<class_PackedInt32Array>`, restores\: :ref:`Array<class_Array>`\[:ref:`Transform3D<class_Transform3D>`\], cancel\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_EditorNode3DGizmo_private_method__commit_subgizmos>`

Переопределите этот метод, чтобы зафиксировать группу редактируемых подобъектов (см. :ref:`_subgizmos_intersect_ray()<class_EditorNode3DGizmo_private_method__subgizmos_intersect_ray>` и :ref:`_subgizmos_intersect_frustum()<class_EditorNode3DGizmo_private_method__subgizmos_intersect_frustum>`). Обычно это означает создание действия :ref:`UndoRedo<class_UndoRedo>` для изменения, используя текущие преобразования как «do» и преобразования ``restores`` как «undo». 

Если аргумент ``cancel`` равен ``true``, преобразования ``restores`` должны быть установлены напрямую, без какого-либо действия :ref:`UndoRedo<class_UndoRedo>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_private_method__get_handle_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_handle_name**\ (\ id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_EditorNode3DGizmo_private_method__get_handle_name>`

Переопределите этот метод, чтобы вернуть имя отредактированного дескриптора (дескрипторы должны быть предварительно добавлены :ref:`add_handles()<class_EditorNode3DGizmo_method_add_handles>`). Дескрипторы могут быть названы для ссылки на пользователя при редактировании. 

Аргумент ``secondary`` равен ``true``, когда запрошенный дескриптор является вторичным (см. :ref:`add_handles()<class_EditorNode3DGizmo_method_add_handles>` для получения дополнительной информации).

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_private_method__get_handle_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_get_handle_value**\ (\ id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_EditorNode3DGizmo_private_method__get_handle_value>`

Переопределите этот метод, чтобы вернуть текущее значение дескриптора. Это значение будет запрошено в начале редактирования и использовано как аргумент ``restore`` в :ref:`_commit_handle()<class_EditorNode3DGizmo_private_method__commit_handle>`. 

Аргумент ``secondary`` равен ``true``, когда запрошенный дескриптор является вторичным (см. :ref:`add_handles()<class_EditorNode3DGizmo_method_add_handles>` для получения дополнительной информации).

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_private_method__get_subgizmo_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **_get_subgizmo_transform**\ (\ id\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_EditorNode3DGizmo_private_method__get_subgizmo_transform>`

Переопределите этот метод, чтобы вернуть текущую трансформацию subgizmo. Эта трансформация будет запрошена в начале редактирования и использована как аргумент ``restore`` в :ref:`_commit_subgizmos()<class_EditorNode3DGizmo_private_method__commit_subgizmos>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_private_method__is_handle_highlighted:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_handle_highlighted**\ (\ id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_EditorNode3DGizmo_private_method__is_handle_highlighted>`

Переопределите этот метод, чтобы он возвращал ``true`` всякий раз, когда указанный дескриптор должен быть выделен в редакторе. 

Аргумент ``secondary`` равен ``true``, когда запрошенный дескриптор является вторичным (см. :ref:`add_handles()<class_EditorNode3DGizmo_method_add_handles>` для получения дополнительной информации).

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_private_method__redraw:

.. rst-class:: classref-method

|void| **_redraw**\ (\ ) |virtual| :ref:`🔗<class_EditorNode3DGizmo_private_method__redraw>`

Переопределите этот метод, чтобы добавлять все элементы гизмо всякий раз, когда запрашивается обновление гизмо. Обычно в начале этого метода вызывают :ref:`clear()<class_EditorNode3DGizmo_method_clear>`, а затем добавляют визуальные элементы в зависимости от свойств узла.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_private_method__set_handle:

.. rst-class:: classref-method

|void| **_set_handle**\ (\ id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`, camera\: :ref:`Camera3D<class_Camera3D>`, point\: :ref:`Vector2<class_Vector2>`\ ) |virtual| :ref:`🔗<class_EditorNode3DGizmo_private_method__set_handle>`

Переопределите этот метод, чтобы обновить свойства узла, когда пользователь перетаскивает ручку гизмо (ранее добавленную с помощью :ref:`add_handles()<class_EditorNode3DGizmo_method_add_handles>`). Предоставленный ``point`` — это положение мыши в экранных координатах, а ``camera`` можно использовать для преобразования его в лучевые потоки.

Аргумент ``secondary`` равен ``true``, когда отредактированная ручка является вторичной (см. :ref:`add_handles()<class_EditorNode3DGizmo_method_add_handles>` для получения дополнительной информации).

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_private_method__set_subgizmo_transform:

.. rst-class:: classref-method

|void| **_set_subgizmo_transform**\ (\ id\: :ref:`int<class_int>`, transform\: :ref:`Transform3D<class_Transform3D>`\ ) |virtual| :ref:`🔗<class_EditorNode3DGizmo_private_method__set_subgizmo_transform>`

Переопределите этот метод для обновления свойств узла во время редактирования subgizmo (см. :ref:`_subgizmos_intersect_ray()<class_EditorNode3DGizmo_private_method__subgizmos_intersect_ray>` и :ref:`_subgizmos_intersect_frustum()<class_EditorNode3DGizmo_private_method__subgizmos_intersect_frustum>`). ``Param transform`` задается в локальной системе координат :ref:`Node3D<class_Node3D>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_private_method__subgizmos_intersect_frustum:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **_subgizmos_intersect_frustum**\ (\ camera\: :ref:`Camera3D<class_Camera3D>`, frustum\: :ref:`Array<class_Array>`\[:ref:`Plane<class_Plane>`\]\ ) |virtual| |const| :ref:`🔗<class_EditorNode3DGizmo_private_method__subgizmos_intersect_frustum>`

Переопределите этот метод, чтобы разрешить выбор подобъектов с помощью выделения области перетаскивания мыши. При наличии ``camera`` и ``frustum`` этот метод должен возвращать, какие подобъекты содержатся в усеченной пирамиде. Аргумент ``frustum`` состоит из массива со всеми :ref:`Plane<class_Plane>`, которые составляют усеченную пирамиду выбора. Возвращаемое значение должно содержать список уникальных идентификаторов подобъектов, которые могут иметь любое неотрицательное значение и будут использоваться в других виртуальных методах, таких как :ref:`_get_subgizmo_transform()<class_EditorNode3DGizmo_private_method__get_subgizmo_transform>` или :ref:`_commit_subgizmos()<class_EditorNode3DGizmo_private_method__commit_subgizmos>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_private_method__subgizmos_intersect_ray:

.. rst-class:: classref-method

:ref:`int<class_int>` **_subgizmos_intersect_ray**\ (\ camera\: :ref:`Camera3D<class_Camera3D>`, point\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |const| :ref:`🔗<class_EditorNode3DGizmo_private_method__subgizmos_intersect_ray>`

Переопределите этот метод, чтобы разрешить выбор подгизмо с помощью щелчков мыши. При наличии ``camera`` и ``point`` в экранных координатах этот метод должен возвращать, какой подгизмо следует выбрать. Возвращаемое значение должно быть уникальным идентификатором подгизмо, который может иметь любое неотрицательное значение и будет использоваться в других виртуальных методах, таких как :ref:`_get_subgizmo_transform()<class_EditorNode3DGizmo_private_method__get_subgizmo_transform>` или :ref:`_commit_subgizmos()<class_EditorNode3DGizmo_private_method__commit_subgizmos>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_method_add_collision_segments:

.. rst-class:: classref-method

|void| **add_collision_segments**\ (\ segments\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ ) :ref:`🔗<class_EditorNode3DGizmo_method_add_collision_segments>`

Добавляет указанные ``segments`` к форме столкновения гизмо для выбора. Вызвать этот метод во время :ref:`_redraw()<class_EditorNode3DGizmo_private_method__redraw>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_method_add_collision_triangles:

.. rst-class:: classref-method

|void| **add_collision_triangles**\ (\ triangles\: :ref:`TriangleMesh<class_TriangleMesh>`\ ) :ref:`🔗<class_EditorNode3DGizmo_method_add_collision_triangles>`

Добавляет треугольники столкновения в гизмо для выбора. :ref:`TriangleMesh<class_TriangleMesh>` также может быть сгенерирован из обычного :ref:`Mesh<class_Mesh>`. Вызывайте этот метод во время :ref:`_redraw()<class_EditorNode3DGizmo_private_method__redraw>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_method_add_handles:

.. rst-class:: classref-method

|void| **add_handles**\ (\ handles\: :ref:`PackedVector3Array<class_PackedVector3Array>`, material\: :ref:`Material<class_Material>`, ids\: :ref:`PackedInt32Array<class_PackedInt32Array>`, billboard\: :ref:`bool<class_bool>` = false, secondary\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_EditorNode3DGizmo_method_add_handles>`

Добавляет список дескрипторов (точек), которые можно использовать для редактирования свойств :ref:`Node3D<class_Node3D>` гизмо. Аргумент ``ids`` можно использовать для указания пользовательского идентификатора для каждого дескриптора, если передан пустой массив, идентификаторы будут назначены автоматически из порядка аргументов ``handles``. 

Аргумент ``secondary`` помечает добавленные дескрипторы как вторичные, то есть они обычно будут иметь более низкий приоритет выбора, чем обычные дескрипторы. Когда пользователь удерживает клавишу Shift, вторичные дескрипторы переключаются на более высокий приоритет, чем обычные дескрипторы. Это изменение приоритета можно использовать для размещения нескольких дескрипторов в одной точке, при этом пользователь все еще может контролировать их выбор.

Существуют виртуальные методы, которые будут вызываться при редактировании этих дескрипторов. Вызовите этот метод во время :ref:`_redraw()<class_EditorNode3DGizmo_private_method__redraw>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_method_add_lines:

.. rst-class:: classref-method

|void| **add_lines**\ (\ lines\: :ref:`PackedVector3Array<class_PackedVector3Array>`, material\: :ref:`Material<class_Material>`, billboard\: :ref:`bool<class_bool>` = false, modulate\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1)\ ) :ref:`🔗<class_EditorNode3DGizmo_method_add_lines>`

Добавляет линии в гизмо (как наборы из 2 точек) с заданным материалом. Линии используются для визуализации гизмо. Вызвать этот метод во время :ref:`_redraw()<class_EditorNode3DGizmo_private_method__redraw>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_method_add_mesh:

.. rst-class:: classref-method

|void| **add_mesh**\ (\ mesh\: :ref:`Mesh<class_Mesh>`, material\: :ref:`Material<class_Material>` = null, transform\: :ref:`Transform3D<class_Transform3D>` = Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0), skeleton\: :ref:`SkinReference<class_SkinReference>` = null\ ) :ref:`🔗<class_EditorNode3DGizmo_method_add_mesh>`

Добавляет сетку к гизмо с указанным ``material``, локальным ``transform`` и ``skeleton``. Вызывайте этот метод во время :ref:`_redraw()<class_EditorNode3DGizmo_private_method__redraw>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_method_add_unscaled_billboard:

.. rst-class:: classref-method

|void| **add_unscaled_billboard**\ (\ material\: :ref:`Material<class_Material>`, default_scale\: :ref:`float<class_float>` = 1, modulate\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1)\ ) :ref:`🔗<class_EditorNode3DGizmo_method_add_unscaled_billboard>`

Добавляет немасштабированный билборд для визуализации и выбора. Вызвать этот метод во время :ref:`_redraw()<class_EditorNode3DGizmo_private_method__redraw>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_EditorNode3DGizmo_method_clear>`

Удаляет все в гизмо, включая сетки, столкновения и ручки.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_method_get_node_3d:

.. rst-class:: classref-method

:ref:`Node3D<class_Node3D>` **get_node_3d**\ (\ ) |const| :ref:`🔗<class_EditorNode3DGizmo_method_get_node_3d>`

Возвращает узел :ref:`Node3D<class_Node3D>`, связанный с этим гизмо.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_method_get_plugin:

.. rst-class:: classref-method

:ref:`EditorNode3DGizmoPlugin<class_EditorNode3DGizmoPlugin>` **get_plugin**\ (\ ) |const| :ref:`🔗<class_EditorNode3DGizmo_method_get_plugin>`

Возвращает :ref:`EditorNode3DGizmoPlugin<class_EditorNode3DGizmoPlugin>`, которому принадлежит этот gizmo. Полезно извлекать материалы с помощью :ref:`EditorNode3DGizmoPlugin.get_material()<class_EditorNode3DGizmoPlugin_method_get_material>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_method_get_subgizmo_selection:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_subgizmo_selection**\ (\ ) |const| :ref:`🔗<class_EditorNode3DGizmo_method_get_subgizmo_selection>`

Возвращает список выбранных в данный момент подэлементов. Может использоваться для выделения выбранных элементов во время :ref:`_redraw()<class_EditorNode3DGizmo_private_method__redraw>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_method_is_selected:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_selected**\ (\ ) |const| :ref:`🔗<class_EditorNode3DGizmo_method_is_selected>`

Returns ``true`` if this gizmo is currently selected. Can be used to write custom visualization logic during :ref:`_redraw()<class_EditorNode3DGizmo_private_method__redraw>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_method_is_subgizmo_selected:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_subgizmo_selected**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_EditorNode3DGizmo_method_is_subgizmo_selected>`

Возвращает ``true``, если указанный subgizmo в данный момент выбран. Может использоваться для подсветки выбранных элементов во время :ref:`_redraw()<class_EditorNode3DGizmo_private_method__redraw>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_method_set_hidden:

.. rst-class:: classref-method

|void| **set_hidden**\ (\ hidden\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorNode3DGizmo_method_set_hidden>`

Устанавливает скрытое состояние гизмо. Если ``true``, гизмо будет скрыто. Если ``false``, оно будет показано.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmo_method_set_node_3d:

.. rst-class:: classref-method

|void| **set_node_3d**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_EditorNode3DGizmo_method_set_node_3d>`

Устанавливает опорный узел :ref:`Node3D<class_Node3D>` для гизмо. ``node`` должен наследовать от :ref:`Node3D<class_Node3D>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
