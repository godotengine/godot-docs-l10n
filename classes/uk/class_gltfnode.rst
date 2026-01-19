:github_url: hide

.. _class_GLTFNode:

GLTFNode
========

**Успадковує:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

клас вузла glTF.

.. rst-class:: classref-introduction-group

Опис
--------

Представляє вузол glTF. Вузли glTF можуть мати імена, перетворення, дочірні елементи (інші вузли glTF) і більш спеціалізовані властивості (представлені власними класами). 

Вузли glTF зазвичай існують усередині :ref:`GLTFState<class_GLTFState>`, який представляє всі дані файлу glTF. Більшість властивостей GLTFNode є індексами інших даних у файлі glTF. Ви можете розширити вузол glTF додатковими властивостями за допомогою :ref:`get_additional_data()<class_GLTFNode_method_get_additional_data>` і :ref:`set_additional_data()<class_GLTFNode_method_set_additional_data>`.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Завантаження та збереження файлів під час виконання <../tutorials/io/runtime_file_loading_and_saving>`

- `специфікації сцени та вузла glTF <https://github.com/KhronosGroup/glTF-Tutorials/blob/master/gltfTutorial/gltfTutorial_004_ScenesNodes.md">`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

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

Методи
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

Описи властивостей
------------------------------------

.. _class_GLTFNode_property_camera:

.. rst-class:: classref-property

:ref:`int<class_int>` **camera** = ``-1`` :ref:`🔗<class_GLTFNode_property_camera>`

.. rst-class:: classref-property-setget

- |void| **set_camera**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_camera**\ (\ )

Якщо цей вузол glTF є камерою, індекс :ref:`GLTFCamera<class_GLTFCamera>` у :ref:`GLTFState<class_GLTFState>`, який описує властивості камери. Якщо ``-1``, цей вузол не є камерою.

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_property_children:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **children** = ``PackedInt32Array()`` :ref:`🔗<class_GLTFNode_property_children>`

.. rst-class:: classref-property-setget

- |void| **set_children**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_children**\ (\ )

Індекси дочірніх вузлів у :ref:`GLTFState<class_GLTFState>`. Якщо цей вузол glTF не має дітей, це буде порожній масив.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt32Array<class_PackedInt32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_property_height:

.. rst-class:: classref-property

:ref:`int<class_int>` **height** = ``-1`` :ref:`🔗<class_GLTFNode_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_height**\ (\ )

Як глибоко в вершину ієрархії цей вузол. У кореневу вершину буде висота 0, її діти матимуть висоту 1, і так далі. Якщо -1, висота не була розрахована.

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_property_light:

.. rst-class:: classref-property

:ref:`int<class_int>` **light** = ``-1`` :ref:`🔗<class_GLTFNode_property_light>`

.. rst-class:: classref-property-setget

- |void| **set_light**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_light**\ (\ )

Якщо цей вузол glTF є світлом, індекс :ref:`GLTFLight<class_GLTFLight>` у :ref:`GLTFState<class_GLTFState>`, який описує властивості світла. Якщо -1, цей вузол не є світлом.

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_property_mesh:

.. rst-class:: classref-property

:ref:`int<class_int>` **mesh** = ``-1`` :ref:`🔗<class_GLTFNode_property_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_mesh**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_mesh**\ (\ )

Якщо цей вузол glTF є сіткою, індекс :ref:`GLTFMesh<class_GLTFMesh>` у :ref:`GLTFState<class_GLTFState>`, який описує властивості сіті. Якщо -1, цей вузол не є сіткою.

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_property_original_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **original_name** = ``""`` :ref:`🔗<class_GLTFNode_property_original_name>`

.. rst-class:: classref-property-setget

- |void| **set_original_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_original_name**\ (\ )

Оригінальна назва вузла.

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_property_parent:

.. rst-class:: classref-property

:ref:`int<class_int>` **parent** = ``-1`` :ref:`🔗<class_GLTFNode_property_parent>`

.. rst-class:: classref-property-setget

- |void| **set_parent**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_parent**\ (\ )

Індекс материнської вершини в :ref:`GLTFState<class_GLTFState>`. Якщо -1, цей вузол є кореневою вершиною.

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_property_position:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **position** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_GLTFNode_property_position>`

.. rst-class:: classref-property-setget

- |void| **set_position**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_position**\ (\ )

Положення вузла glTF відносно його батьківського вузла.

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_property_rotation:

.. rst-class:: classref-property

:ref:`Quaternion<class_Quaternion>` **rotation** = ``Quaternion(0, 0, 0, 1)`` :ref:`🔗<class_GLTFNode_property_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_rotation**\ (\ value\: :ref:`Quaternion<class_Quaternion>`\ )
- :ref:`Quaternion<class_Quaternion>` **get_rotation**\ (\ )

Обертання вузла glTF відносно його батьківського вузла.

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_property_scale:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **scale** = ``Vector3(1, 1, 1)`` :ref:`🔗<class_GLTFNode_property_scale>`

.. rst-class:: classref-property-setget

- |void| **set_scale**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_scale**\ (\ )

Масштаб вузла glTF відносно його батьківського вузла.

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_property_skeleton:

.. rst-class:: classref-property

:ref:`int<class_int>` **skeleton** = ``-1`` :ref:`🔗<class_GLTFNode_property_skeleton>`

.. rst-class:: classref-property-setget

- |void| **set_skeleton**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_skeleton**\ (\ )

Якщо цей вузол glTF має скелет, індекс :ref:`GLTFSkeleton<class_GLTFSkeleton>` у :ref:`GLTFState<class_GLTFState>`, який описує властивості скелета. Якщо -1, цей вузол не має скелета.

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_property_skin:

.. rst-class:: classref-property

:ref:`int<class_int>` **skin** = ``-1`` :ref:`🔗<class_GLTFNode_property_skin>`

.. rst-class:: classref-property-setget

- |void| **set_skin**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_skin**\ (\ )

Якщо цей вузол glTF має оболонку, індекс :ref:`GLTFSkin<class_GLTFSkin>` у :ref:`GLTFState<class_GLTFState>`, який описує властивості оболонки. Якщо -1, цей вузол не має шкіри.

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_property_visible:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **visible** = ``true`` :ref:`🔗<class_GLTFNode_property_visible>`

.. rst-class:: classref-property-setget

- |void| **set_visible**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_visible**\ (\ )

Якщо ``true``, вузол GLTF видимий. Якщо ``false``, вузол GLTF невидимий. Це перетворюється на властивість :ref:`Node3D.visible<class_Node3D_property_visible>` у сцені Godot та експортується до ``KHR_node_visibility``, коли ``false``.

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_property_xform:

.. rst-class:: classref-property

:ref:`Transform3D<class_Transform3D>` **xform** = ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_GLTFNode_property_xform>`

.. rst-class:: classref-property-setget

- |void| **set_xform**\ (\ value\: :ref:`Transform3D<class_Transform3D>`\ )
- :ref:`Transform3D<class_Transform3D>` **get_xform**\ (\ )

Перетворення вузла glTF відносно його батьківського вузла. Ця властивість зазвичай не використовується, оскільки перевага надається властивостям положення, обертання та масштабу.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_GLTFNode_method_append_child_index:

.. rst-class:: classref-method

|void| **append_child_index**\ (\ child_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_GLTFNode_method_append_child_index>`

Додає заданий індекс дочірнього вузла до масиву :ref:`children<class_GLTFNode_property_children>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_method_get_additional_data:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_additional_data**\ (\ extension_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_GLTFNode_method_get_additional_data>`

Отримує додаткові довільні дані в цьому екземплярі **GLTFNode**. Це можна використовувати для збереження даних про стан кожного вузла в класах :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>`, що важливо, оскільки вони не мають стану. 

Аргументом має бути ім’я :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` (не має збігатися з ім’ям розширення у файлі glTF), а значенням, що повертається, може бути будь-яке, яке ви встановите. Якщо нічого не встановлено, повертається значення ``null``.

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_method_get_scene_node_path:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_scene_node_path**\ (\ gltf_state\: :ref:`GLTFState<class_GLTFState>`, handle_skeletons\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_GLTFNode_method_get_scene_node_path>`

Повертає :ref:`NodePath<class_NodePath>`, який цей вузол GLTF матиме в дереві сцени Godot після імпорту. Це корисно під час імпорту вказівників об’єктної моделі glTF за допомогою :ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>` для обробки таких розширень, як ``KHR_animation_pointer`` або ``KHR_interactivity``. 

Якщо ``handle_skeletons`` має значення ``true``, шляхи до вузлів glTF кісток скелета будуть розпізнані належним чином. Наприклад, шлях, який буде ``^"A/B/C/Bone1/Bone2/Bone3"``, якщо ``false`` стане ``^"A/B/C/Skeleton3D:Bone3"``.

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_method_set_additional_data:

.. rst-class:: classref-method

|void| **set_additional_data**\ (\ extension_name\: :ref:`StringName<class_StringName>`, additional_data\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_GLTFNode_method_set_additional_data>`

Встановлює додаткові довільні дані в цьому екземплярі **GLTFNode**. Це можна використовувати для збереження даних про стан кожного вузла в класах :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>`, що важливо, оскільки вони не мають стану. 

Першим аргументом має бути ім’я :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` (не має збігатися з ім’ям розширення у файлі glTF), а другий аргумент може бути будь-яким.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
