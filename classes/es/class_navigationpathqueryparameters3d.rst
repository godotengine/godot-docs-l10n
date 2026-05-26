:github_url: hide

.. _class_NavigationPathQueryParameters3D:

NavigationPathQueryParameters3D
===============================

**Experimental:** This class may be changed or removed in future versions.

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Proporciona parámetros para consultas de ruta de navegación 3D.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Al cambiar varias propiedades de este objeto, como la posición de inicio y de destino, puedes configurar las consultas de ruta al :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Usar NavigationPathQueryObjects <../tutorials/navigation/navigation_using_navigationpathqueryobjects>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\]                                             | :ref:`excluded_regions<class_NavigationPathQueryParameters3D_property_excluded_regions>`                 | ``[]``               |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\]                                             | :ref:`included_regions<class_NavigationPathQueryParameters3D_property_included_regions>`                 | ``[]``               |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`RID<class_RID>`                                                                          | :ref:`map<class_NavigationPathQueryParameters3D_property_map>`                                           | ``RID()``            |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+
   | |bitfield|\[:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters3D_PathMetadataFlags>`\] | :ref:`metadata_flags<class_NavigationPathQueryParameters3D_property_metadata_flags>`                     | ``7``                |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                                                                          | :ref:`navigation_layers<class_NavigationPathQueryParameters3D_property_navigation_layers>`               | ``1``                |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`PathPostProcessing<enum_NavigationPathQueryParameters3D_PathPostProcessing>`             | :ref:`path_postprocessing<class_NavigationPathQueryParameters3D_property_path_postprocessing>`           | ``0``                |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`path_return_max_length<class_NavigationPathQueryParameters3D_property_path_return_max_length>`     | ``0.0``              |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`path_return_max_radius<class_NavigationPathQueryParameters3D_property_path_return_max_radius>`     | ``0.0``              |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`path_search_max_distance<class_NavigationPathQueryParameters3D_property_path_search_max_distance>` | ``0.0``              |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                                                                          | :ref:`path_search_max_polygons<class_NavigationPathQueryParameters3D_property_path_search_max_polygons>` | ``4096``             |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`PathfindingAlgorithm<enum_NavigationPathQueryParameters3D_PathfindingAlgorithm>`         | :ref:`pathfinding_algorithm<class_NavigationPathQueryParameters3D_property_pathfinding_algorithm>`       | ``0``                |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`simplify_epsilon<class_NavigationPathQueryParameters3D_property_simplify_epsilon>`                 | ``0.0``              |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                                                                        | :ref:`simplify_path<class_NavigationPathQueryParameters3D_property_simplify_path>`                       | ``false``            |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`                                                                  | :ref:`start_position<class_NavigationPathQueryParameters3D_property_start_position>`                     | ``Vector3(0, 0, 0)`` |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`                                                                  | :ref:`target_position<class_NavigationPathQueryParameters3D_property_target_position>`                   | ``Vector3(0, 0, 0)`` |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_NavigationPathQueryParameters3D_PathfindingAlgorithm:

.. rst-class:: classref-enumeration

enum **PathfindingAlgorithm**: :ref:`🔗<enum_NavigationPathQueryParameters3D_PathfindingAlgorithm>`

.. _class_NavigationPathQueryParameters3D_constant_PATHFINDING_ALGORITHM_ASTAR:

.. rst-class:: classref-enumeration-constant

:ref:`PathfindingAlgorithm<enum_NavigationPathQueryParameters3D_PathfindingAlgorithm>` **PATHFINDING_ALGORITHM_ASTAR** = ``0``

The path query uses the default A\* pathfinding algorithm.

.. rst-class:: classref-item-separator

----

.. _enum_NavigationPathQueryParameters3D_PathPostProcessing:

.. rst-class:: classref-enumeration

enum **PathPostProcessing**: :ref:`🔗<enum_NavigationPathQueryParameters3D_PathPostProcessing>`

.. _class_NavigationPathQueryParameters3D_constant_PATH_POSTPROCESSING_CORRIDORFUNNEL:

.. rst-class:: classref-enumeration-constant

:ref:`PathPostProcessing<enum_NavigationPathQueryParameters3D_PathPostProcessing>` **PATH_POSTPROCESSING_CORRIDORFUNNEL** = ``0``

Aplica un algoritmo de embudo al corredor de ruta sin procesar encontrado por el algoritmo de búsqueda de rutas. Esto resultará en la ruta más corta posible dentro del corredor de ruta. Este postprocesamiento depende mucho del diseño del polígono de la malla de navegación y del corredor creado. Especialmente los diseños basados en tiles o cuadrículas pueden enfrentar esquinas artificiales con movimiento diagonal debido a un corredor de ruta irregular impuesto por las formas de las celdas.

.. _class_NavigationPathQueryParameters3D_constant_PATH_POSTPROCESSING_EDGECENTERED:

.. rst-class:: classref-enumeration-constant

:ref:`PathPostProcessing<enum_NavigationPathQueryParameters3D_PathPostProcessing>` **PATH_POSTPROCESSING_EDGECENTERED** = ``1``

Centra cada posición de la ruta en el medio del borde del polígono de la malla de navegación recorrido. Esto crea mejores rutas para diseños basados en tiles o cuadrículas que restringen el movimiento al centro de las celdas.

.. _class_NavigationPathQueryParameters3D_constant_PATH_POSTPROCESSING_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`PathPostProcessing<enum_NavigationPathQueryParameters3D_PathPostProcessing>` **PATH_POSTPROCESSING_NONE** = ``2``

No aplica ningún postprocesamiento y devuelve el corredor de ruta sin procesar tal como lo encontró el algoritmo de búsqueda de rutas.

.. rst-class:: classref-item-separator

----

.. _enum_NavigationPathQueryParameters3D_PathMetadataFlags:

.. rst-class:: classref-enumeration

flags **PathMetadataFlags**: :ref:`🔗<enum_NavigationPathQueryParameters3D_PathMetadataFlags>`

.. _class_NavigationPathQueryParameters3D_constant_PATH_METADATA_INCLUDE_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters3D_PathMetadataFlags>` **PATH_METADATA_INCLUDE_NONE** = ``0``

No incluir metadatos adicionales sobre la ruta devuelta.

.. _class_NavigationPathQueryParameters3D_constant_PATH_METADATA_INCLUDE_TYPES:

.. rst-class:: classref-enumeration-constant

:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters3D_PathMetadataFlags>` **PATH_METADATA_INCLUDE_TYPES** = ``1``

Incluye el tipo de primitiva de navegación (región o enlace) por la que pasa cada punto de la ruta.

.. _class_NavigationPathQueryParameters3D_constant_PATH_METADATA_INCLUDE_RIDS:

.. rst-class:: classref-enumeration-constant

:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters3D_PathMetadataFlags>` **PATH_METADATA_INCLUDE_RIDS** = ``2``

Incluye los :ref:`RID<class_RID>`\ s de las regiones y los enlaces por los que pasa cada punto de la ruta.

.. _class_NavigationPathQueryParameters3D_constant_PATH_METADATA_INCLUDE_OWNERS:

.. rst-class:: classref-enumeration-constant

:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters3D_PathMetadataFlags>` **PATH_METADATA_INCLUDE_OWNERS** = ``4``

Incluye los ``ObjectID``\ s de los :ref:`Object<class_Object>`\ s que gestionan las regiones y los enlaces por los que pasa cada punto de la ruta.

.. _class_NavigationPathQueryParameters3D_constant_PATH_METADATA_INCLUDE_ALL:

.. rst-class:: classref-enumeration-constant

:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters3D_PathMetadataFlags>` **PATH_METADATA_INCLUDE_ALL** = ``7``

Incluye todos los metadatos disponibles sobre la ruta devuelta.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_NavigationPathQueryParameters3D_property_excluded_regions:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **excluded_regions** = ``[]`` :ref:`🔗<class_NavigationPathQueryParameters3D_property_excluded_regions>`

.. rst-class:: classref-property-setget

- |void| **set_excluded_regions**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **get_excluded_regions**\ (\ )

La lista de :ref:`RID<class_RID>` de región que se excluirán de la consulta de ruta. Utiliza :ref:`NavigationRegion3D.get_rid()<class_NavigationRegion3D_method_get_rid>` para obtener el :ref:`RID<class_RID>` asociado con un nodo :ref:`NavigationRegion3D<class_NavigationRegion3D>`.

\ **Nota:** El array devuelto se copia y cualquier cambio en él no actualizará el valor de la propiedad original. Para actualizar el valor, debes modificar el array devuelto y, a continuación, volver a establecerlo en la propiedad.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters3D_property_included_regions:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **included_regions** = ``[]`` :ref:`🔗<class_NavigationPathQueryParameters3D_property_included_regions>`

.. rst-class:: classref-property-setget

- |void| **set_included_regions**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **get_included_regions**\ (\ )

La lista de :ref:`RID<class_RID>` de región que se incluirán en la consulta de ruta. Utiliza :ref:`NavigationRegion3D.get_rid()<class_NavigationRegion3D_method_get_rid>` para obtener el :ref:`RID<class_RID>` asociado con un nodo :ref:`NavigationRegion3D<class_NavigationRegion3D>`. Si se deja vacío, se incluyen todas las regiones. Si una región termina siendo incluida y excluida al mismo tiempo, se excluirá.

\ **Nota:** El array devuelto se copia y cualquier cambio en él no actualizará el valor de la propiedad original. Para actualizar el valor, debes modificar el array devuelto y, a continuación, volver a establecerlo en la propiedad.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters3D_property_map:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **map** = ``RID()`` :ref:`🔗<class_NavigationPathQueryParameters3D_property_map>`

.. rst-class:: classref-property-setget

- |void| **set_map**\ (\ value\: :ref:`RID<class_RID>`\ )
- :ref:`RID<class_RID>` **get_map**\ (\ )

El mapa de navegación :ref:`RID<class_RID>` utilizado en la consulta de ruta.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters3D_property_metadata_flags:

.. rst-class:: classref-property

|bitfield|\[:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters3D_PathMetadataFlags>`\] **metadata_flags** = ``7`` :ref:`🔗<class_NavigationPathQueryParameters3D_property_metadata_flags>`

.. rst-class:: classref-property-setget

- |void| **set_metadata_flags**\ (\ value\: |bitfield|\[:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters3D_PathMetadataFlags>`\]\ )
- |bitfield|\[:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters3D_PathMetadataFlags>`\] **get_metadata_flags**\ (\ )

Información adicional a incluir con la ruta de navegación.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters3D_property_navigation_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **navigation_layers** = ``1`` :ref:`🔗<class_NavigationPathQueryParameters3D_property_navigation_layers>`

.. rst-class:: classref-property-setget

- |void| **set_navigation_layers**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_navigation_layers**\ (\ )

Las capas de navegación que usará la consulta (como una máscara de bits).

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters3D_property_path_postprocessing:

.. rst-class:: classref-property

:ref:`PathPostProcessing<enum_NavigationPathQueryParameters3D_PathPostProcessing>` **path_postprocessing** = ``0`` :ref:`🔗<class_NavigationPathQueryParameters3D_property_path_postprocessing>`

.. rst-class:: classref-property-setget

- |void| **set_path_postprocessing**\ (\ value\: :ref:`PathPostProcessing<enum_NavigationPathQueryParameters3D_PathPostProcessing>`\ )
- :ref:`PathPostProcessing<enum_NavigationPathQueryParameters3D_PathPostProcessing>` **get_path_postprocessing**\ (\ )

The path postprocessing applied to the raw path corridor found by the :ref:`pathfinding_algorithm<class_NavigationPathQueryParameters3D_property_pathfinding_algorithm>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters3D_property_path_return_max_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_return_max_length** = ``0.0`` :ref:`🔗<class_NavigationPathQueryParameters3D_property_path_return_max_length>`

.. rst-class:: classref-property-setget

- |void| **set_path_return_max_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_return_max_length**\ (\ )

La longitud máxima permitida de la ruta devuelta en unidades del mundo. Una ruta se cortará al exceder esta longitud. Un valor de ``0`` o inferior se considera deshabilitado.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters3D_property_path_return_max_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_return_max_radius** = ``0.0`` :ref:`🔗<class_NavigationPathQueryParameters3D_property_path_return_max_radius>`

.. rst-class:: classref-property-setget

- |void| **set_path_return_max_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_return_max_radius**\ (\ )

El radio máximo permitido en unidades del mundo que la ruta devuelta puede tener desde el inicio de la ruta. La ruta se recortará cuando supere este radio. Un valor de ``0`` o inferior cuenta como desactivado.

\ **Nota:** Esto realizará una operación de recorte con forma de esfera en la ruta, siendo la primera posición de la ruta la posición central de la esfera.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters3D_property_path_search_max_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_search_max_distance** = ``0.0`` :ref:`🔗<class_NavigationPathQueryParameters3D_property_path_search_max_distance>`

.. rst-class:: classref-property-setget

- |void| **set_path_search_max_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_search_max_distance**\ (\ )

The maximum distance a searched polygon can be away from the start polygon before the pathfinding cancels the search for a path to the (possibly unreachable or very far away) target position polygon. In this case the pathfinding resets and builds a path from the start polygon to the polygon that was found closest to the target position so far. A value of ``0`` or below counts as unlimited. In case of unlimited the pathfinding will search all polygons connected with the start polygon until either the target position polygon is found or all available polygon search options are exhausted.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters3D_property_path_search_max_polygons:

.. rst-class:: classref-property

:ref:`int<class_int>` **path_search_max_polygons** = ``4096`` :ref:`🔗<class_NavigationPathQueryParameters3D_property_path_search_max_polygons>`

.. rst-class:: classref-property-setget

- |void| **set_path_search_max_polygons**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_path_search_max_polygons**\ (\ )

The maximum number of polygons that are searched before the pathfinding cancels the search for a path to the (possibly unreachable or very far away) target position polygon. In this case the pathfinding resets and builds a path from the start polygon to the polygon that was found closest to the target position so far. A value of ``0`` or below counts as unlimited. In case of unlimited the pathfinding will search all polygons connected with the start polygon until either the target position polygon is found or all available polygon search options are exhausted.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters3D_property_pathfinding_algorithm:

.. rst-class:: classref-property

:ref:`PathfindingAlgorithm<enum_NavigationPathQueryParameters3D_PathfindingAlgorithm>` **pathfinding_algorithm** = ``0`` :ref:`🔗<class_NavigationPathQueryParameters3D_property_pathfinding_algorithm>`

.. rst-class:: classref-property-setget

- |void| **set_pathfinding_algorithm**\ (\ value\: :ref:`PathfindingAlgorithm<enum_NavigationPathQueryParameters3D_PathfindingAlgorithm>`\ )
- :ref:`PathfindingAlgorithm<enum_NavigationPathQueryParameters3D_PathfindingAlgorithm>` **get_pathfinding_algorithm**\ (\ )

The pathfinding algorithm used in the path query.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters3D_property_simplify_epsilon:

.. rst-class:: classref-property

:ref:`float<class_float>` **simplify_epsilon** = ``0.0`` :ref:`🔗<class_NavigationPathQueryParameters3D_property_simplify_epsilon>`

.. rst-class:: classref-property-setget

- |void| **set_simplify_epsilon**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_simplify_epsilon**\ (\ )

The path simplification amount in worlds units.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters3D_property_simplify_path:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **simplify_path** = ``false`` :ref:`🔗<class_NavigationPathQueryParameters3D_property_simplify_path>`

.. rst-class:: classref-property-setget

- |void| **set_simplify_path**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_simplify_path**\ (\ )

Si es ``true``, se devolverá una versión simplificada del trayecto con menos puntos críticos de trayectos eliminados. La cantidad de simplificación se controla mediante :ref:`simplify_epsilon<class_NavigationPathQueryParameters3D_property_simplify_epsilon>`. La simplificación utiliza una variante del algoritmo Ramer-Douglas-Peucker para la diezma de puntos de curva.

La simplificación de trayectos puede ser útil para mitigar varios problemas de seguimiento de trayectos que pueden surgir con ciertos tipos de agentes y comportamientos de script. Por ejemplo, agentes de "dirección" o evitación en "campos abiertos".

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters3D_property_start_position:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **start_position** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_NavigationPathQueryParameters3D_property_start_position>`

.. rst-class:: classref-property-setget

- |void| **set_start_position**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_start_position**\ (\ )

La posición de inicio de la búsqueda de ruta en coordenadas globales.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters3D_property_target_position:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **target_position** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_NavigationPathQueryParameters3D_property_target_position>`

.. rst-class:: classref-property-setget

- |void| **set_target_position**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_target_position**\ (\ )

La posición del objetivo de búsqueda de rutas en coordenadas globales.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
