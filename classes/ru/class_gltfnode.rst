:github_url: hide

.. _class_GLTFNode:

GLTFNode
========

**Наследует:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Класс узла glTF.

.. rst-class:: classref-introduction-group

Описание
----------------

Представляет узел glTF. Узлы glTF могут иметь имена, преобразования, дочерние элементы (другие узлы glTF) и более специализированные свойства (представленные их собственными классами).

Узлы glTF обычно существуют внутри :ref:`GLTFState<class_GLTFState>`, который представляет все данные файла glTF. Большинство свойств GLTFNode являются индексами других данных в файле glTF. Вы можете расширить узел glTF дополнительными свойствами, используя :ref:`get_additional_data()<class_GLTFNode_method_get_additional_data>` и :ref:`set_additional_data()<class_GLTFNode_method_set_additional_data>`.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Загрузка и сохранение файла времени выполнения <../tutorials/io/runtime_file_loading_and_saving>`

- `Сцена glTF и спецификация узла <https://github.com/KhronosGroup/glTF-Tutorials/blob/master/gltfTutorial/gltfTutorial_004_ScenesNodes.md">`__

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------------------------------+-------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`camera<class_GLTFNode_property_camera>`               | ``-1``                                              |
   +-------------------------------------------------+-------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`children<class_GLTFNode_property_children>`           | ``PackedInt32Array()``                              |
   +-------------------------------------------------+-------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`height<class_GLTFNode_property_height>`               | ``-1``                                              |
   +-------------------------------------------------+-------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`light<class_GLTFNode_property_light>`                 | ``-1``                                              |
   +-------------------------------------------------+-------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`mesh<class_GLTFNode_property_mesh>`                   | ``-1``                                              |
   +-------------------------------------------------+-------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`String<class_String>`                     | :ref:`original_name<class_GLTFNode_property_original_name>` | ``""``                                              |
   +-------------------------------------------------+-------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`parent<class_GLTFNode_property_parent>`               | ``-1``                                              |
   +-------------------------------------------------+-------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                   | :ref:`position<class_GLTFNode_property_position>`           | ``Vector3(0, 0, 0)``                                |
   +-------------------------------------------------+-------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>`             | :ref:`rotation<class_GLTFNode_property_rotation>`           | ``Quaternion(0, 0, 0, 1)``                          |
   +-------------------------------------------------+-------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                   | :ref:`scale<class_GLTFNode_property_scale>`                 | ``Vector3(1, 1, 1)``                                |
   +-------------------------------------------------+-------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`skeleton<class_GLTFNode_property_skeleton>`           | ``-1``                                              |
   +-------------------------------------------------+-------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`skin<class_GLTFNode_property_skin>`                   | ``-1``                                              |
   +-------------------------------------------------+-------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`visible<class_GLTFNode_property_visible>`             | ``true``                                            |
   +-------------------------------------------------+-------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`           | :ref:`xform<class_GLTFNode_property_xform>`                 | ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` |
   +-------------------------------------------------+-------------------------------------------------------------+-----------------------------------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`append_child_index<class_GLTFNode_method_append_child_index>`\ (\ child_index\: :ref:`int<class_int>`\ )                                                                     |
   +---------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`   | :ref:`get_additional_data<class_GLTFNode_method_get_additional_data>`\ (\ extension_name\: :ref:`StringName<class_StringName>`\ )                                                  |
   +---------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`get_scene_node_path<class_GLTFNode_method_get_scene_node_path>`\ (\ gltf_state\: :ref:`GLTFState<class_GLTFState>`, handle_skeletons\: :ref:`bool<class_bool>` = true\ )     |
   +---------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_additional_data<class_GLTFNode_method_set_additional_data>`\ (\ extension_name\: :ref:`StringName<class_StringName>`, additional_data\: :ref:`Variant<class_Variant>`\ ) |
   +---------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_GLTFNode_property_camera:

.. rst-class:: classref-property

:ref:`int<class_int>` **camera** = ``-1`` :ref:`🔗<class_GLTFNode_property_camera>`

.. rst-class:: classref-property-setget

- |void| **set_camera**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_camera**\ (\ )

Если этот узел glTF является камерой, индекс :ref:`GLTFCamera<class_GLTFCamera>` в :ref:`GLTFState<class_GLTFState>`, который описывает свойства камеры. Если ``-1``, этот узел не является камерой.

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_property_children:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **children** = ``PackedInt32Array()`` :ref:`🔗<class_GLTFNode_property_children>`

.. rst-class:: classref-property-setget

- |void| **set_children**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_children**\ (\ )

Индексы дочерних узлов в :ref:`GLTFState<class_GLTFState>`. Если у этого узла glTF нет дочерних узлов, это будет пустой массив.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt32Array<class_PackedInt32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_property_height:

.. rst-class:: classref-property

:ref:`int<class_int>` **height** = ``-1`` :ref:`🔗<class_GLTFNode_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_height**\ (\ )

Насколько глубоко в иерархии узлов находится этот узел. Корневой узел будет иметь высоту 0, его потомки будут иметь высоту 1 и т. д. Если -1, высота не была рассчитана.

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_property_light:

.. rst-class:: classref-property

:ref:`int<class_int>` **light** = ``-1`` :ref:`🔗<class_GLTFNode_property_light>`

.. rst-class:: classref-property-setget

- |void| **set_light**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_light**\ (\ )

Если этот узел glTF является источником света, индекс :ref:`GLTFLight<class_GLTFLight>` в :ref:`GLTFState<class_GLTFState>`, который описывает свойства источника света. Если -1, этот узел не является источником света.

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_property_mesh:

.. rst-class:: classref-property

:ref:`int<class_int>` **mesh** = ``-1`` :ref:`🔗<class_GLTFNode_property_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_mesh**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_mesh**\ (\ )

Если этот узел glTF является сеткой, индекс :ref:`GLTFMesh<class_GLTFMesh>` в :ref:`GLTFState<class_GLTFState>`, который описывает свойства сетки. Если -1, этот узел не является сеткой.

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_property_original_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **original_name** = ``""`` :ref:`🔗<class_GLTFNode_property_original_name>`

.. rst-class:: classref-property-setget

- |void| **set_original_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_original_name**\ (\ )

Первоначальное имя узла.

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_property_parent:

.. rst-class:: classref-property

:ref:`int<class_int>` **parent** = ``-1`` :ref:`🔗<class_GLTFNode_property_parent>`

.. rst-class:: classref-property-setget

- |void| **set_parent**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_parent**\ (\ )

Индекс родительского узла в :ref:`GLTFState<class_GLTFState>`. Если -1, этот узел является корневым узлом.

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_property_position:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **position** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_GLTFNode_property_position>`

.. rst-class:: classref-property-setget

- |void| **set_position**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_position**\ (\ )

Положение узла glTF относительно его родителя.

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_property_rotation:

.. rst-class:: classref-property

:ref:`Quaternion<class_Quaternion>` **rotation** = ``Quaternion(0, 0, 0, 1)`` :ref:`🔗<class_GLTFNode_property_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_rotation**\ (\ value\: :ref:`Quaternion<class_Quaternion>`\ )
- :ref:`Quaternion<class_Quaternion>` **get_rotation**\ (\ )

Вращение узла glTF относительно его родителя.

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_property_scale:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **scale** = ``Vector3(1, 1, 1)`` :ref:`🔗<class_GLTFNode_property_scale>`

.. rst-class:: classref-property-setget

- |void| **set_scale**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_scale**\ (\ )

Масштаб узла glTF относительно его родителя.

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_property_skeleton:

.. rst-class:: classref-property

:ref:`int<class_int>` **skeleton** = ``-1`` :ref:`🔗<class_GLTFNode_property_skeleton>`

.. rst-class:: classref-property-setget

- |void| **set_skeleton**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_skeleton**\ (\ )

Если этот узел glTF имеет скелет, индекс :ref:`GLTFSkeleton<class_GLTFSkeleton>` в :ref:`GLTFState<class_GLTFState>`, который описывает свойства скелета. Если -1, этот узел не имеет скелета.

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_property_skin:

.. rst-class:: classref-property

:ref:`int<class_int>` **skin** = ``-1`` :ref:`🔗<class_GLTFNode_property_skin>`

.. rst-class:: classref-property-setget

- |void| **set_skin**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_skin**\ (\ )

Если этот узел glTF имеет скин, индекс :ref:`GLTFSkin<class_GLTFSkin>` в :ref:`GLTFState<class_GLTFState>`, который описывает свойства скина. Если -1, этот узел не имеет скина.

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_property_visible:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **visible** = ``true`` :ref:`🔗<class_GLTFNode_property_visible>`

.. rst-class:: classref-property-setget

- |void| **set_visible**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_visible**\ (\ )

Если ``true``, узел GLTF виден. Если ``false``, узел GLTF невидим. Это преобразуется в свойство :ref:`Node3D.visible<class_Node3D_property_visible>` в сцене Godot и экспортируется в ``KHR_node_visibility``, когда ``false``.

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_property_xform:

.. rst-class:: classref-property

:ref:`Transform3D<class_Transform3D>` **xform** = ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_GLTFNode_property_xform>`

.. rst-class:: classref-property-setget

- |void| **set_xform**\ (\ value\: :ref:`Transform3D<class_Transform3D>`\ )
- :ref:`Transform3D<class_Transform3D>` **get_xform**\ (\ )

Преобразование узла glTF относительно его родителя. Это свойство обычно не используется, поскольку предпочтительны свойства положения, вращения и масштаба.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_GLTFNode_method_append_child_index:

.. rst-class:: classref-method

|void| **append_child_index**\ (\ child_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_GLTFNode_method_append_child_index>`

Добавляет заданный индекс дочернего узла к массиву :ref:`children<class_GLTFNode_property_children>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_method_get_additional_data:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_additional_data**\ (\ extension_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_GLTFNode_method_get_additional_data>`

Получает дополнительные произвольные данные в этом экземпляре **GLTFNode**. Это можно использовать для хранения данных о состоянии каждого узла в классах :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>`, что важно, поскольку они не имеют состояния.

Аргументом должно быть имя :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` (не обязательно совпадать с именем расширения в файле glTF), а возвращаемое значение может быть любым, которое вы задали. Если ничего не было задано, возвращаемое значение равно ``null``.

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_method_get_scene_node_path:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_scene_node_path**\ (\ gltf_state\: :ref:`GLTFState<class_GLTFState>`, handle_skeletons\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_GLTFNode_method_get_scene_node_path>`

Возвращает :ref:`NodePath<class_NodePath>`, который будет у этого узла GLTF в дереве сцены Godot после импорта. Это полезно при импорте указателей модели объекта glTF с помощью :ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>` для обработки расширений, таких как ``KHR_animation_pointer`` или ``KHR_interactivity``.

Если ``handle_skeletons`` равен ``true``, пути к узлам скелетной кости glTF будут разрешены правильно. Например, путь, который будет ``^"A/B/C/Bone1/Bone2/Bone3"``, если ``false`` станет ``^"A/B/C/Skeleton3D:Bone3"``.

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_method_set_additional_data:

.. rst-class:: classref-method

|void| **set_additional_data**\ (\ extension_name\: :ref:`StringName<class_StringName>`, additional_data\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_GLTFNode_method_set_additional_data>`

Устанавливает дополнительные произвольные данные в этом экземпляре **GLTFNode**. Это можно использовать для хранения данных о состоянии каждого узла в классах :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>`, что важно, поскольку они не имеют состояния.

Первым аргументом должно быть имя :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` (не обязательно совпадать с именем расширения в файле glTF), а вторым аргументом может быть все, что угодно.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
