:github_url: hide

.. _class_MeshLibrary:

MeshLibrary
===========

**Успадковує:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Бібліотека сіточок.

.. rst-class:: classref-introduction-group

Опис
--------

Бібліотека сіточок. Містить список ресурсів :ref:`Mesh<class_Mesh>`, кожен з ім'ям та ID. Кожен елемент також може включати зіткнення та навігаційні форми. Цей ресурс використовується в :ref:`GridMap<class_GridMap>`.

.. rst-class:: classref-introduction-group

Посібники
------------------

- `Демонстрація тривимірного кінематичного персонажа <https://godotengine.org/asset-library/asset/2739>`__

- `Демонстрація 3D-платформера <https://godotengine.org/asset-library/asset/2748>`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`String<class_String>`                 | :ref:`item/{index}/category<class_MeshLibrary_property_item/{index}/category>`                                   | ``&""``                                             |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Mesh<class_Mesh>`                     | :ref:`item/{index}/mesh<class_MeshLibrary_property_item/{index}/mesh>`                                           |                                                     |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`int<class_int>`                       | :ref:`item/{index}/mesh_cast_shadow<class_MeshLibrary_property_item/{index}/mesh_cast_shadow>`                   | ``1``                                               |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`       | :ref:`item/{index}/mesh_transform<class_MeshLibrary_property_item/{index}/mesh_transform>`                       | ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`String<class_String>`                 | :ref:`item/{index}/name<class_MeshLibrary_property_item/{index}/name>`                                           | ``""``                                              |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`int<class_int>`                       | :ref:`item/{index}/navigation_layers<class_MeshLibrary_property_item/{index}/navigation_layers>`                 | ``1``                                               |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`NavigationMesh<class_NavigationMesh>` | :ref:`item/{index}/navigation_mesh<class_MeshLibrary_property_item/{index}/navigation_mesh>`                     |                                                     |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`       | :ref:`item/{index}/navigation_mesh_transform<class_MeshLibrary_property_item/{index}/navigation_mesh_transform>` | ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`           | :ref:`item/{index}/preview<class_MeshLibrary_property_item/{index}/preview>`                                     |                                                     |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Array<class_Array>`                   | :ref:`item/{index}/shapes<class_MeshLibrary_property_item/{index}/shapes>`                                       | ``[]``                                              |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`clear<class_MeshLibrary_method_clear>`\ (\ )                                                                                                                                                                      |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`create_item<class_MeshLibrary_method_create_item>`\ (\ id\: :ref:`int<class_int>`\ )                                                                                                                              |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                  | :ref:`find_item_by_name<class_MeshLibrary_method_find_item_by_name>`\ (\ name\: :ref:`String<class_String>`\ ) |const|                                                                                                  |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                                    | :ref:`get_item_category<class_MeshLibrary_method_get_item_category>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                                          |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                  | :ref:`get_item_count<class_MeshLibrary_method_get_item_count>`\ (\ ) |const|                                                                                                                                            |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`                        | :ref:`get_item_list<class_MeshLibrary_method_get_item_list>`\ (\ ) |const|                                                                                                                                              |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Mesh<class_Mesh>`                                                | :ref:`get_item_mesh<class_MeshLibrary_method_get_item_mesh>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                                                  |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ShadowCastingSetting<enum_RenderingServer_ShadowCastingSetting>` | :ref:`get_item_mesh_cast_shadow<class_MeshLibrary_method_get_item_mesh_cast_shadow>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                          |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                                  | :ref:`get_item_mesh_transform<class_MeshLibrary_method_get_item_mesh_transform>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                              |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                            | :ref:`get_item_name<class_MeshLibrary_method_get_item_name>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                                                  |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                  | :ref:`get_item_navigation_layers<class_MeshLibrary_method_get_item_navigation_layers>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                        |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NavigationMesh<class_NavigationMesh>`                            | :ref:`get_item_navigation_mesh<class_MeshLibrary_method_get_item_navigation_mesh>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                            |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                                  | :ref:`get_item_navigation_mesh_transform<class_MeshLibrary_method_get_item_navigation_mesh_transform>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                        |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                                      | :ref:`get_item_preview<class_MeshLibrary_method_get_item_preview>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                                            |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                                              | :ref:`get_item_shapes<class_MeshLibrary_method_get_item_shapes>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                                              |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                  | :ref:`get_last_unused_item_id<class_MeshLibrary_method_get_last_unused_item_id>`\ (\ ) |const|                                                                                                                          |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`remove_item<class_MeshLibrary_method_remove_item>`\ (\ id\: :ref:`int<class_int>`\ )                                                                                                                              |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_item_category<class_MeshLibrary_method_set_item_category>`\ (\ id\: :ref:`int<class_int>`, category\: :ref:`StringName<class_StringName>`\ )                                                                  |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_item_mesh<class_MeshLibrary_method_set_item_mesh>`\ (\ id\: :ref:`int<class_int>`, mesh\: :ref:`Mesh<class_Mesh>`\ )                                                                                          |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_item_mesh_cast_shadow<class_MeshLibrary_method_set_item_mesh_cast_shadow>`\ (\ id\: :ref:`int<class_int>`, shadow_casting_setting\: :ref:`ShadowCastingSetting<enum_RenderingServer_ShadowCastingSetting>`\ ) |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_item_mesh_transform<class_MeshLibrary_method_set_item_mesh_transform>`\ (\ id\: :ref:`int<class_int>`, mesh_transform\: :ref:`Transform3D<class_Transform3D>`\ )                                              |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_item_name<class_MeshLibrary_method_set_item_name>`\ (\ id\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ )                                                                                      |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_item_navigation_layers<class_MeshLibrary_method_set_item_navigation_layers>`\ (\ id\: :ref:`int<class_int>`, navigation_layers\: :ref:`int<class_int>`\ )                                                     |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_item_navigation_mesh<class_MeshLibrary_method_set_item_navigation_mesh>`\ (\ id\: :ref:`int<class_int>`, navigation_mesh\: :ref:`NavigationMesh<class_NavigationMesh>`\ )                                     |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_item_navigation_mesh_transform<class_MeshLibrary_method_set_item_navigation_mesh_transform>`\ (\ id\: :ref:`int<class_int>`, navigation_mesh\: :ref:`Transform3D<class_Transform3D>`\ )                       |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_item_preview<class_MeshLibrary_method_set_item_preview>`\ (\ id\: :ref:`int<class_int>`, texture\: :ref:`Texture2D<class_Texture2D>`\ )                                                                       |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_item_shapes<class_MeshLibrary_method_set_item_shapes>`\ (\ id\: :ref:`int<class_int>`, shapes\: :ref:`Array<class_Array>`\ )                                                                                  |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_MeshLibrary_property_item/{index}/category:

.. rst-class:: classref-property

:ref:`String<class_String>` **item/{index}/category** = ``&""`` :ref:`🔗<class_MeshLibrary_property_item/{index}/category>`

The item's category. Used to organize meshes in the :ref:`GridMap<class_GridMap>` editor. A category can include ``/`` as a delimiter to create subcategories.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_property_item/{index}/mesh:

.. rst-class:: classref-property

:ref:`Mesh<class_Mesh>` **item/{index}/mesh** :ref:`🔗<class_MeshLibrary_property_item/{index}/mesh>`

The item's mesh. Used by other parts of the engine (e.g. :ref:`GridMap<class_GridMap>`, which displays them in a 3D tile).

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_property_item/{index}/mesh_cast_shadow:

.. rst-class:: classref-property

:ref:`int<class_int>` **item/{index}/mesh_cast_shadow** = ``1`` :ref:`🔗<class_MeshLibrary_property_item/{index}/mesh_cast_shadow>`

The shadow casting mode used by the item's mesh. See :ref:`ShadowCastingSetting<enum_RenderingServer_ShadowCastingSetting>`.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_property_item/{index}/mesh_transform:

.. rst-class:: classref-property

:ref:`Transform3D<class_Transform3D>` **item/{index}/mesh_transform** = ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_MeshLibrary_property_item/{index}/mesh_transform>`

The transform to apply to the item's mesh.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_property_item/{index}/name:

.. rst-class:: classref-property

:ref:`String<class_String>` **item/{index}/name** = ``""`` :ref:`🔗<class_MeshLibrary_property_item/{index}/name>`

The item's name, shown in the editor. It can also be used to look up the item later using :ref:`find_item_by_name()<class_MeshLibrary_method_find_item_by_name>`.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_property_item/{index}/navigation_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **item/{index}/navigation_layers** = ``1`` :ref:`🔗<class_MeshLibrary_property_item/{index}/navigation_layers>`

The item's navigation layers bitmask.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_property_item/{index}/navigation_mesh:

.. rst-class:: classref-property

:ref:`NavigationMesh<class_NavigationMesh>` **item/{index}/navigation_mesh** :ref:`🔗<class_MeshLibrary_property_item/{index}/navigation_mesh>`

The item's navigation mesh.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_property_item/{index}/navigation_mesh_transform:

.. rst-class:: classref-property

:ref:`Transform3D<class_Transform3D>` **item/{index}/navigation_mesh_transform** = ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_MeshLibrary_property_item/{index}/navigation_mesh_transform>`

The transform to apply to the item's navigation mesh.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_property_item/{index}/preview:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **item/{index}/preview** :ref:`🔗<class_MeshLibrary_property_item/{index}/preview>`

The texture to use as the item's preview icon in the editor.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_property_item/{index}/shapes:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **item/{index}/shapes** = ``[]`` :ref:`🔗<class_MeshLibrary_property_item/{index}/shapes>`

The item's collision shapes. The array should consist of :ref:`Shape3D<class_Shape3D>` objects, each followed by a :ref:`Transform3D<class_Transform3D>` that will be applied to it. For shapes that should not have a transform, use :ref:`Transform3D.IDENTITY<class_Transform3D_constant_IDENTITY>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_MeshLibrary_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_MeshLibrary_method_clear>`

Очистити бібліотеку.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_create_item:

.. rst-class:: classref-method

|void| **create_item**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_MeshLibrary_method_create_item>`

Створення нового елемента в бібліотеці з даним ідентифікатором.

Ви можете отримати невикористаний ідентифікатор з :ref:`get_last_unused_item_id()<class_MeshLibrary_method_get_last_unused_item_id>`.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_find_item_by_name:

.. rst-class:: classref-method

:ref:`int<class_int>` **find_item_by_name**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_MeshLibrary_method_find_item_by_name>`

Повертає перший елемент з вказаною назвою, або ``-1``, якщо елемента не знайдено.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_get_item_category:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_item_category**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshLibrary_method_get_item_category>`

Returns the category for a specific item ``id``. See also :ref:`set_item_category()<class_MeshLibrary_method_set_item_category>`.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_get_item_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_item_count**\ (\ ) |const| :ref:`🔗<class_MeshLibrary_method_get_item_count>`

Повертає кількість елементів, що містяться в бібліотеці.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_get_item_list:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_item_list**\ (\ ) |const| :ref:`🔗<class_MeshLibrary_method_get_item_list>`

Повертає список ідентифікаторів пункту у використанні.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_get_item_mesh:

.. rst-class:: classref-method

:ref:`Mesh<class_Mesh>` **get_item_mesh**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshLibrary_method_get_item_mesh>`

Повертаємо сіточку виробу.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_get_item_mesh_cast_shadow:

.. rst-class:: classref-method

:ref:`ShadowCastingSetting<enum_RenderingServer_ShadowCastingSetting>` **get_item_mesh_cast_shadow**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshLibrary_method_get_item_mesh_cast_shadow>`

Повертає режим відкидання тіні предмета.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_get_item_mesh_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_item_mesh_transform**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshLibrary_method_get_item_mesh_transform>`

Повертаємо трансформатор, що наноситься на сіточку виробу.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_get_item_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_item_name**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshLibrary_method_get_item_name>`

Повертає назву елемента.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_get_item_navigation_layers:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_item_navigation_layers**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshLibrary_method_get_item_navigation_layers>`

Повертає навігаційні шари виробу бітмаска.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_get_item_navigation_mesh:

.. rst-class:: classref-method

:ref:`NavigationMesh<class_NavigationMesh>` **get_item_navigation_mesh**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshLibrary_method_get_item_navigation_mesh>`

Повертаємо навігацію виробу.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_get_item_navigation_mesh_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_item_navigation_mesh_transform**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshLibrary_method_get_item_navigation_mesh_transform>`

Повертаємо трансформацію на навігацію виробу.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_get_item_preview:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_item_preview**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshLibrary_method_get_item_preview>`

При запуску в редакторі, повертає генеруваний пункт попереднього перегляду (до 3D рендерингу в іометричній перспективі). Коли використовується в запущеному проекті, повертає ручний визначений пункт попереднього перегляду, який можна встановити за допомогою :ref:`set_item_preview()<class_MeshLibrary_method_set_item_preview>`. Повертає порожній :ref:`Texture2D<class_Texture2D>`, якщо не було попереднього перегляду вручну встановити в запущений проект.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_get_item_shapes:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_item_shapes**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshLibrary_method_get_item_shapes>`

Повертає форми зіткнення елемента.

масив складається з кожного :ref:`Shape3D<class_Shape3D>`, далі його :ref:`Transform3D<class_Transform3D>`.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_get_last_unused_item_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_last_unused_item_id**\ (\ ) |const| :ref:`🔗<class_MeshLibrary_method_get_last_unused_item_id>`

Отримаєте невикористаний ідентифікатор для нового виробу.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_remove_item:

.. rst-class:: classref-method

|void| **remove_item**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_MeshLibrary_method_remove_item>`

Видалити елемент.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_set_item_category:

.. rst-class:: classref-method

|void| **set_item_category**\ (\ id\: :ref:`int<class_int>`, category\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_MeshLibrary_method_set_item_category>`

Sets the ``category`` for a specific item ``id`` for organization in the :ref:`GridMap<class_GridMap>` editor. A category can include ``/`` as a delimiter to create subcategories.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_set_item_mesh:

.. rst-class:: classref-method

|void| **set_item_mesh**\ (\ id\: :ref:`int<class_int>`, mesh\: :ref:`Mesh<class_Mesh>`\ ) :ref:`🔗<class_MeshLibrary_method_set_item_mesh>`

Настроювання сітки виробу.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_set_item_mesh_cast_shadow:

.. rst-class:: classref-method

|void| **set_item_mesh_cast_shadow**\ (\ id\: :ref:`int<class_int>`, shadow_casting_setting\: :ref:`ShadowCastingSetting<enum_RenderingServer_ShadowCastingSetting>`\ ) :ref:`🔗<class_MeshLibrary_method_set_item_mesh_cast_shadow>`

Встановлює режим відкидання тіні предмета на ``shadow_casting_setting``.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_set_item_mesh_transform:

.. rst-class:: classref-method

|void| **set_item_mesh_transform**\ (\ id\: :ref:`int<class_int>`, mesh_transform\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_MeshLibrary_method_set_item_mesh_transform>`

Встановлює трансформацію до сітки виробу.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_set_item_name:

.. rst-class:: classref-method

|void| **set_item_name**\ (\ id\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_MeshLibrary_method_set_item_name>`

Встановлює назву елемента.

Ця назва відображається в редакторі. Також можна використовувати для перегляду пункту пізніше за допомогою :ref:`find_item_by_name()<class_MeshLibrary_method_find_item_by_name>`.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_set_item_navigation_layers:

.. rst-class:: classref-method

|void| **set_item_navigation_layers**\ (\ id\: :ref:`int<class_int>`, navigation_layers\: :ref:`int<class_int>`\ ) :ref:`🔗<class_MeshLibrary_method_set_item_navigation_layers>`

Встановлює навігаційні шари виробу бітмаска.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_set_item_navigation_mesh:

.. rst-class:: classref-method

|void| **set_item_navigation_mesh**\ (\ id\: :ref:`int<class_int>`, navigation_mesh\: :ref:`NavigationMesh<class_NavigationMesh>`\ ) :ref:`🔗<class_MeshLibrary_method_set_item_navigation_mesh>`

Налаштувати навігацію виробу.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_set_item_navigation_mesh_transform:

.. rst-class:: classref-method

|void| **set_item_navigation_mesh_transform**\ (\ id\: :ref:`int<class_int>`, navigation_mesh\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_MeshLibrary_method_set_item_navigation_mesh_transform>`

Встановлює трансформацію до навігаційної сітки елемента.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_set_item_preview:

.. rst-class:: classref-method

|void| **set_item_preview**\ (\ id\: :ref:`int<class_int>`, texture\: :ref:`Texture2D<class_Texture2D>`\ ) :ref:`🔗<class_MeshLibrary_method_set_item_preview>`

Встановлює фактуру для використання як іконки попереднього перегляду елемента в редакторі.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_set_item_shapes:

.. rst-class:: classref-method

|void| **set_item_shapes**\ (\ id\: :ref:`int<class_int>`, shapes\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_MeshLibrary_method_set_item_shapes>`

Встановлює форми зіткнення елемента.

масив повинен складатися з :ref:`Shape3D<class_Shape3D>` об'єктів, які слідують :ref:`Transform3D<class_Transform3D>`, які будуть застосовані до нього. Для форм, які не повинні мати перетворення, скористайтеся :ref:`Transform3D.IDENTITY<class_Transform3D_constant_IDENTITY>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
