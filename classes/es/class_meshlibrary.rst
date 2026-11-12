:github_url: hide

.. _class_MeshLibrary:

MeshLibrary
===========

**Hereda:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Biblioteca de mallas.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Una biblioteca de mallas. Contiene una lista de recursos de :ref:`Mesh<class_Mesh>`, cada uno con un nombre y una ID. Cada elemento también puede incluir formas de colisión y navegación. Este recurso se usa en :ref:`GridMap<class_GridMap>`.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- `Demo de Personaje Cinemático en 3D <https://godotengine.org/asset-library/asset/2739>`__

- `Demo de Plataformas en 3D <https://godotengine.org/asset-library/asset/2748>`__

.. rst-class:: classref-reftable-group

Propiedades
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

Métodos
--------------

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

Descripciones de Propiedades
--------------------------------------------------------

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

Descripciones de Métodos
------------------------------------------------

.. _class_MeshLibrary_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_MeshLibrary_method_clear>`

Limpia la biblioteca.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_create_item:

.. rst-class:: classref-method

|void| **create_item**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_MeshLibrary_method_create_item>`

Crea un nuevo artículo en la biblioteca con la identificación dada.

Puedes obtener un ID sin usar con el :ref:`get_last_unused_item_id()<class_MeshLibrary_method_get_last_unused_item_id>`.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_find_item_by_name:

.. rst-class:: classref-method

:ref:`int<class_int>` **find_item_by_name**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_MeshLibrary_method_find_item_by_name>`

Devuelve el primer elemento con el nombre dado, o ``-1`` si no se encuentra ningún elemento.

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

Devuelve el número de elementos presentes en la biblioteca.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_get_item_list:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_item_list**\ (\ ) |const| :ref:`🔗<class_MeshLibrary_method_get_item_list>`

Devuelve la lista de ID de objetos en uso.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_get_item_mesh:

.. rst-class:: classref-method

:ref:`Mesh<class_Mesh>` **get_item_mesh**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshLibrary_method_get_item_mesh>`

Devuelve la malla del objeto.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_get_item_mesh_cast_shadow:

.. rst-class:: classref-method

:ref:`ShadowCastingSetting<enum_RenderingServer_ShadowCastingSetting>` **get_item_mesh_cast_shadow**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshLibrary_method_get_item_mesh_cast_shadow>`

Devuelve el modo de proyección de sombras del elemento.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_get_item_mesh_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_item_mesh_transform**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshLibrary_method_get_item_mesh_transform>`

Devuelve la transformación aplicada a la malla del elemento.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_get_item_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_item_name**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshLibrary_method_get_item_name>`

Devuelve el nombre del artículo.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_get_item_navigation_layers:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_item_navigation_layers**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshLibrary_method_get_item_navigation_layers>`

Devuelve la máscara de bits de las capas de navegación del elemento.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_get_item_navigation_mesh:

.. rst-class:: classref-method

:ref:`NavigationMesh<class_NavigationMesh>` **get_item_navigation_mesh**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshLibrary_method_get_item_navigation_mesh>`

Devuelve la malla de navegación del objeto.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_get_item_navigation_mesh_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_item_navigation_mesh_transform**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshLibrary_method_get_item_navigation_mesh_transform>`

Devuelve la transformación aplicada a la malla de navegación del objeto.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_get_item_preview:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_item_preview**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshLibrary_method_get_item_preview>`

Cuando se ejecuta en el editor, devuelve una vista previa de elemento generada (una representación 3D en perspectiva isométrica). Cuando se utiliza en un proyecto en ejecución, devuelve la vista previa de elemento definida manualmente que puedes establecer usando :ref:`set_item_preview()<class_MeshLibrary_method_set_item_preview>`. Devuelve una :ref:`Texture2D<class_Texture2D>` vacía si no has establecido manualmente ninguna vista previa en un proyecto en ejecución.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_get_item_shapes:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_item_shapes**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshLibrary_method_get_item_shapes>`

Devuelve las formas de colisión de un objeto.

El array consiste en cada :ref:`Shape3D<class_Shape3D>` seguido de su :ref:`Transform3D<class_Transform3D>`.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_get_last_unused_item_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_last_unused_item_id**\ (\ ) |const| :ref:`🔗<class_MeshLibrary_method_get_last_unused_item_id>`

Obtiene un id sin usar para un nuevo objeto.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_remove_item:

.. rst-class:: classref-method

|void| **remove_item**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_MeshLibrary_method_remove_item>`

Quita el objeto.

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

Establece la malla del objeto.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_set_item_mesh_cast_shadow:

.. rst-class:: classref-method

|void| **set_item_mesh_cast_shadow**\ (\ id\: :ref:`int<class_int>`, shadow_casting_setting\: :ref:`ShadowCastingSetting<enum_RenderingServer_ShadowCastingSetting>`\ ) :ref:`🔗<class_MeshLibrary_method_set_item_mesh_cast_shadow>`

Establece el modo de proyección de sombras del elemento a ``shadow_casting_setting``.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_set_item_mesh_transform:

.. rst-class:: classref-method

|void| **set_item_mesh_transform**\ (\ id\: :ref:`int<class_int>`, mesh_transform\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_MeshLibrary_method_set_item_mesh_transform>`

Establece la transformación a aplicar a la malla del elemento.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_set_item_name:

.. rst-class:: classref-method

|void| **set_item_name**\ (\ id\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_MeshLibrary_method_set_item_name>`

Establece el nombre del artículo.

Este nombre se muestra en el editor. También puede ser usado para buscar el ítem más tarde usando :ref:`find_item_by_name()<class_MeshLibrary_method_find_item_by_name>`.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_set_item_navigation_layers:

.. rst-class:: classref-method

|void| **set_item_navigation_layers**\ (\ id\: :ref:`int<class_int>`, navigation_layers\: :ref:`int<class_int>`\ ) :ref:`🔗<class_MeshLibrary_method_set_item_navigation_layers>`

Establece la máscara de bits de las capas de navegación del elemento.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_set_item_navigation_mesh:

.. rst-class:: classref-method

|void| **set_item_navigation_mesh**\ (\ id\: :ref:`int<class_int>`, navigation_mesh\: :ref:`NavigationMesh<class_NavigationMesh>`\ ) :ref:`🔗<class_MeshLibrary_method_set_item_navigation_mesh>`

Establece la malla de navegación del objeto.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_set_item_navigation_mesh_transform:

.. rst-class:: classref-method

|void| **set_item_navigation_mesh_transform**\ (\ id\: :ref:`int<class_int>`, navigation_mesh\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_MeshLibrary_method_set_item_navigation_mesh_transform>`

Establece la transformación para aplicarla a la malla de navegación del objeto.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_set_item_preview:

.. rst-class:: classref-method

|void| **set_item_preview**\ (\ id\: :ref:`int<class_int>`, texture\: :ref:`Texture2D<class_Texture2D>`\ ) :ref:`🔗<class_MeshLibrary_method_set_item_preview>`

Establece una textura para usar como el icono de vista previa del objeto en el editor.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_set_item_shapes:

.. rst-class:: classref-method

|void| **set_item_shapes**\ (\ id\: :ref:`int<class_int>`, shapes\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_MeshLibrary_method_set_item_shapes>`

Establece las formas de colisión de un objeto.

El array debe consistir en objetos :ref:`Shape3D<class_Shape3D>`, cada uno seguido de una :ref:`Transform3D<class_Transform3D>` que se le aplicará. Para las formas que no deben tener una transformación, usa :ref:`Transform3D.IDENTITY<class_Transform3D_constant_IDENTITY>`.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
