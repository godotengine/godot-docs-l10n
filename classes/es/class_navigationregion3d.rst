:github_url: hide

.. _class_NavigationRegion3D:

NavigationRegion3D
==================

**Experimental:** This class may be changed or removed in future versions.

**Hereda:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Una región 3D transitable que los :ref:`NavigationAgent3D<class_NavigationAgent3D>`\ s pueden usar para la búsqueda de rutas.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Una región 3D transitable basada en un :ref:`NavigationMesh<class_NavigationMesh>` que los :ref:`NavigationAgent3D<class_NavigationAgent3D>`\ s pueden usar para la búsqueda de rutas.

Dos regiones se pueden conectar entre sí si comparten un borde similar. Puedes establecer la distancia mínima entre dos vértices necesarios para conectar dos bordes utilizando :ref:`NavigationServer3D.map_set_edge_connection_margin()<class_NavigationServer3D_method_map_set_edge_connection_margin>`.

\ **Nota:** Superponer las mallas de navegación de dos regiones no es suficiente para conectar dos regiones. Deben compartir un borde similar.

El costo de entrar a esta región desde otra región se puede controlar con el valor :ref:`enter_cost<class_NavigationRegion3D_property_enter_cost>`.

\ **Nota:** Este valor no se agrega al costo de la ruta cuando la posición de inicio ya está dentro de esta región.

El costo de viajar distancias dentro de esta región se puede controlar con el multiplicador :ref:`travel_cost<class_NavigationRegion3D_property_travel_cost>`.

\ **Nota:** Este nodo almacena en caché los cambios en sus propiedades, por lo que si realiza cambios en la región :ref:`RID<class_RID>` subyacente en :ref:`NavigationServer3D<class_NavigationServer3D>`, no se reflejarán en las propiedades de este nodo.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Utilizando NavigationRegions <../tutorials/navigation/navigation_using_navigationregions>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------------------------+-------------------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`                     | :ref:`enabled<class_NavigationRegion3D_property_enabled>`                           | ``true`` |
   +---------------------------------------------+-------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>`                   | :ref:`enter_cost<class_NavigationRegion3D_property_enter_cost>`                     | ``0.0``  |
   +---------------------------------------------+-------------------------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`                       | :ref:`navigation_layers<class_NavigationRegion3D_property_navigation_layers>`       | ``1``    |
   +---------------------------------------------+-------------------------------------------------------------------------------------+----------+
   | :ref:`NavigationMesh<class_NavigationMesh>` | :ref:`navigation_mesh<class_NavigationRegion3D_property_navigation_mesh>`           |          |
   +---------------------------------------------+-------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>`                   | :ref:`travel_cost<class_NavigationRegion3D_property_travel_cost>`                   | ``1.0``  |
   +---------------------------------------------+-------------------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`                     | :ref:`use_edge_connections<class_NavigationRegion3D_property_use_edge_connections>` | ``true`` |
   +---------------------------------------------+-------------------------------------------------------------------------------------+----------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`bake_navigation_mesh<class_NavigationRegion3D_method_bake_navigation_mesh>`\ (\ on_thread\: :ref:`bool<class_bool>` = true\ )                                        |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>` | :ref:`get_bounds<class_NavigationRegion3D_method_get_bounds>`\ (\ ) |const|                                                                                                |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`get_navigation_layer_value<class_NavigationRegion3D_method_get_navigation_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`   | :ref:`get_navigation_map<class_NavigationRegion3D_method_get_navigation_map>`\ (\ ) |const|                                                                                |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`   | :ref:`get_region_rid<class_NavigationRegion3D_method_get_region_rid>`\ (\ ) |const|                                                                                        |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`   | :ref:`get_rid<class_NavigationRegion3D_method_get_rid>`\ (\ ) |const|                                                                                                      |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_baking<class_NavigationRegion3D_method_is_baking>`\ (\ ) |const|                                                                                                  |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_navigation_layer_value<class_NavigationRegion3D_method_set_navigation_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_navigation_map<class_NavigationRegion3D_method_set_navigation_map>`\ (\ navigation_map\: :ref:`RID<class_RID>`\ )                                                |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Señales
--------------

.. _class_NavigationRegion3D_signal_bake_finished:

.. rst-class:: classref-signal

**bake_finished**\ (\ ) :ref:`🔗<class_NavigationRegion3D_signal_bake_finished>`

Notifica cuando se completa la operación de procesado de la malla de navegación.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion3D_signal_navigation_mesh_changed:

.. rst-class:: classref-signal

**navigation_mesh_changed**\ (\ ) :ref:`🔗<class_NavigationRegion3D_signal_navigation_mesh_changed>`

Notifica cuando la :ref:`NavigationMesh<class_NavigationMesh>` ha cambiado.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_NavigationRegion3D_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** = ``true`` :ref:`🔗<class_NavigationRegion3D_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_enabled**\ (\ )

Determina si **NavigationRegion3D** está habilitado o deshabilitado.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion3D_property_enter_cost:

.. rst-class:: classref-property

:ref:`float<class_float>` **enter_cost** = ``0.0`` :ref:`🔗<class_NavigationRegion3D_property_enter_cost>`

.. rst-class:: classref-property-setget

- |void| **set_enter_cost**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_enter_cost**\ (\ )

When pathfinding enters this region's navigation mesh from another region's navigation mesh, this property's value is added to the path distance used to determine the shortest path.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion3D_property_navigation_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **navigation_layers** = ``1`` :ref:`🔗<class_NavigationRegion3D_property_navigation_layers>`

.. rst-class:: classref-property-setget

- |void| **set_navigation_layers**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_navigation_layers**\ (\ )

Un campo de bits que determina todas las capas de navegación a las que pertenece la región. Estas capas de navegación se pueden verificar al solicitar una ruta con :ref:`NavigationServer3D.map_get_path()<class_NavigationServer3D_method_map_get_path>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion3D_property_navigation_mesh:

.. rst-class:: classref-property

:ref:`NavigationMesh<class_NavigationMesh>` **navigation_mesh** :ref:`🔗<class_NavigationRegion3D_property_navigation_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_navigation_mesh**\ (\ value\: :ref:`NavigationMesh<class_NavigationMesh>`\ )
- :ref:`NavigationMesh<class_NavigationMesh>` **get_navigation_mesh**\ (\ )

El recurso :ref:`NavigationMesh<class_NavigationMesh>` a utilizar.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion3D_property_travel_cost:

.. rst-class:: classref-property

:ref:`float<class_float>` **travel_cost** = ``1.0`` :ref:`🔗<class_NavigationRegion3D_property_travel_cost>`

.. rst-class:: classref-property-setget

- |void| **set_travel_cost**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_travel_cost**\ (\ )

Cuando la búsqueda de rutas se mueve dentro de la malla de navegación de esta región, las distancias recorridas se multiplican por :ref:`travel_cost<class_NavigationRegion3D_property_travel_cost>` para determinar la ruta más corta.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion3D_property_use_edge_connections:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_edge_connections** = ``true`` :ref:`🔗<class_NavigationRegion3D_property_use_edge_connections>`

.. rst-class:: classref-property-setget

- |void| **set_use_edge_connections**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_edge_connections**\ (\ )

Si está habilitada, la región de navegación utilizará conexiones de borde para conectarse con otras regiones de navegación dentro de la proximidad del margen de conexión de borde del mapa de navegación.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_NavigationRegion3D_method_bake_navigation_mesh:

.. rst-class:: classref-method

|void| **bake_navigation_mesh**\ (\ on_thread\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_NavigationRegion3D_method_bake_navigation_mesh>`

Procesa el :ref:`NavigationMesh<class_NavigationMesh>`. Si ``on_thread`` se establece en ``true`` (predeterminado), el procesamiento se realiza en un hilo separado. El procesamiento en un hilo separado es útil porque el procesamiento de la navegación no es una operación barata. Cuando se completa, establece automáticamente el nuevo :ref:`NavigationMesh<class_NavigationMesh>`. Ten en cuenta que el procesamiento en un hilo separado puede ser muy lento si la geometría se analiza desde mallas, ya que el acceso asíncrono a cada malla implica una sincronización pesada. Además, ten en cuenta que el procesamiento en un hilo separado se desactiva automáticamente en los sistemas operativos que no pueden usar hilos (como Web con hilos desactivados).

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion3D_method_get_bounds:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **get_bounds**\ (\ ) |const| :ref:`🔗<class_NavigationRegion3D_method_get_bounds>`

Devuelve el cuadro delimitador alineado con el eje para la malla de navegación transformada de la región.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion3D_method_get_navigation_layer_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_navigation_layer_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NavigationRegion3D_method_get_navigation_layer_value>`

Devuelve si la capa especificada de la máscara de bits :ref:`navigation_layers<class_NavigationRegion3D_property_navigation_layers>` está habilitada, dado un ``layer_number`` entre 1 y 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion3D_method_get_navigation_map:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_navigation_map**\ (\ ) |const| :ref:`🔗<class_NavigationRegion3D_method_get_navigation_map>`

Devuelve el :ref:`RID<class_RID>` del mapa de navegación actual utilizado por esta región.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion3D_method_get_region_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_region_rid**\ (\ ) |const| :ref:`🔗<class_NavigationRegion3D_method_get_region_rid>`

**Obsoleto:** Use :ref:`get_rid()<class_NavigationRegion3D_method_get_rid>` instead.

Devuelve el :ref:`RID<class_RID>` de esta región en el :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion3D_method_get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_rid**\ (\ ) |const| :ref:`🔗<class_NavigationRegion3D_method_get_rid>`

Devuelve el :ref:`RID<class_RID>` de esta región en el :ref:`NavigationServer3D<class_NavigationServer3D>`. Combinado con :ref:`NavigationServer3D.map_get_closest_point_owner()<class_NavigationServer3D_method_map_get_closest_point_owner>` se puede usar para identificar la **NavigationRegion3D** más cercana a un punto en el mapa de navegación fusionado.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion3D_method_is_baking:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_baking**\ (\ ) |const| :ref:`🔗<class_NavigationRegion3D_method_is_baking>`

Devuelve ``true`` cuando el :ref:`NavigationMesh<class_NavigationMesh>` se está procesando en un hilo en segundo plano.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion3D_method_set_navigation_layer_value:

.. rst-class:: classref-method

|void| **set_navigation_layer_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_NavigationRegion3D_method_set_navigation_layer_value>`

Based on ``value``, enables or disables the specified layer in the :ref:`navigation_layers<class_NavigationRegion3D_property_navigation_layers>` bitmask, given a ``layer_number`` between 1 and 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion3D_method_set_navigation_map:

.. rst-class:: classref-method

|void| **set_navigation_map**\ (\ navigation_map\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_NavigationRegion3D_method_set_navigation_map>`

Establece el :ref:`RID<class_RID>` del mapa de navegación que debe usar esta región. De forma predeterminada, la región se unirá automáticamente al mapa de navegación predeterminado de :ref:`World3D<class_World3D>`, por lo que esta función solo es necesaria para sobrescribir el mapa predeterminado.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
