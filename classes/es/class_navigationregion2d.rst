:github_url: hide

.. _class_NavigationRegion2D:

NavigationRegion2D
==================

**Experimental:** This class may be changed or removed in future versions.

**Hereda:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Una región 2D transitable que los :ref:`NavigationAgent2D<class_NavigationAgent2D>`\ s pueden usar para la búsqueda de rutas.

.. rst-class:: classref-introduction-group

Descripción
----------------------

A traversable 2D region based on a :ref:`NavigationPolygon<class_NavigationPolygon>` that :ref:`NavigationAgent2D<class_NavigationAgent2D>`\ s can use for pathfinding.

Two regions can be connected to each other if they share a similar edge. You can set the minimum distance between two vertices required to connect two edges by using :ref:`NavigationServer2D.map_set_edge_connection_margin()<class_NavigationServer2D_method_map_set_edge_connection_margin>`.

\ **Note:** Overlapping two regions' navigation polygons is not enough for connecting two regions. They must share a similar edge.

The pathfinding cost of entering a region from another region can be controlled with the :ref:`enter_cost<class_NavigationRegion2D_property_enter_cost>` value.

\ **Note:** This value is not added to the path cost when the start position is already inside this region.

The pathfinding cost of traveling distances inside this region can be controlled with the :ref:`travel_cost<class_NavigationRegion2D_property_travel_cost>` multiplier.

\ **Note:** This node caches changes to its properties, so if you make changes to the underlying region :ref:`RID<class_RID>` in :ref:`NavigationServer2D<class_NavigationServer2D>`, they will not be reflected in this node's properties.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Utilizando NavigationRegions <../tutorials/navigation/navigation_using_navigationregions>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------------------------------+-------------------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`                           | :ref:`enabled<class_NavigationRegion2D_property_enabled>`                           | ``true`` |
   +---------------------------------------------------+-------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>`                         | :ref:`enter_cost<class_NavigationRegion2D_property_enter_cost>`                     | ``0.0``  |
   +---------------------------------------------------+-------------------------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`                             | :ref:`navigation_layers<class_NavigationRegion2D_property_navigation_layers>`       | ``1``    |
   +---------------------------------------------------+-------------------------------------------------------------------------------------+----------+
   | :ref:`NavigationPolygon<class_NavigationPolygon>` | :ref:`navigation_polygon<class_NavigationRegion2D_property_navigation_polygon>`     |          |
   +---------------------------------------------------+-------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>`                         | :ref:`travel_cost<class_NavigationRegion2D_property_travel_cost>`                   | ``1.0``  |
   +---------------------------------------------------+-------------------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`                           | :ref:`use_edge_connections<class_NavigationRegion2D_property_use_edge_connections>` | ``true`` |
   +---------------------------------------------------+-------------------------------------------------------------------------------------+----------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`bake_navigation_polygon<class_NavigationRegion2D_method_bake_navigation_polygon>`\ (\ on_thread\: :ref:`bool<class_bool>` = true\ )                                  |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`get_bounds<class_NavigationRegion2D_method_get_bounds>`\ (\ ) |const|                                                                                                |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`get_navigation_layer_value<class_NavigationRegion2D_method_get_navigation_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`     | :ref:`get_navigation_map<class_NavigationRegion2D_method_get_navigation_map>`\ (\ ) |const|                                                                                |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`     | :ref:`get_region_rid<class_NavigationRegion2D_method_get_region_rid>`\ (\ ) |const|                                                                                        |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`     | :ref:`get_rid<class_NavigationRegion2D_method_get_rid>`\ (\ ) |const|                                                                                                      |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`is_baking<class_NavigationRegion2D_method_is_baking>`\ (\ ) |const|                                                                                                  |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_navigation_layer_value<class_NavigationRegion2D_method_set_navigation_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_navigation_map<class_NavigationRegion2D_method_set_navigation_map>`\ (\ navigation_map\: :ref:`RID<class_RID>`\ )                                                |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Señales
--------------

.. _class_NavigationRegion2D_signal_bake_finished:

.. rst-class:: classref-signal

**bake_finished**\ (\ ) :ref:`🔗<class_NavigationRegion2D_signal_bake_finished>`

Emitida cuando se completa una operación de procesado de polígono de navegación.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion2D_signal_navigation_polygon_changed:

.. rst-class:: classref-signal

**navigation_polygon_changed**\ (\ ) :ref:`🔗<class_NavigationRegion2D_signal_navigation_polygon_changed>`

Se emite cuando el polígono de navegación utilizado se reemplaza o se confirman los cambios en los elementos internos del polígono de navegación actual.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_NavigationRegion2D_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** = ``true`` :ref:`🔗<class_NavigationRegion2D_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_enabled**\ (\ )

Determina si el **NavigationRegion2D** está habilitado o deshabilitado.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion2D_property_enter_cost:

.. rst-class:: classref-property

:ref:`float<class_float>` **enter_cost** = ``0.0`` :ref:`🔗<class_NavigationRegion2D_property_enter_cost>`

.. rst-class:: classref-property-setget

- |void| **set_enter_cost**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_enter_cost**\ (\ )

When pathfinding enters this region's navigation mesh from another region's navigation mesh, this property's value is added to the path distance used to determine the shortest path.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion2D_property_navigation_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **navigation_layers** = ``1`` :ref:`🔗<class_NavigationRegion2D_property_navigation_layers>`

.. rst-class:: classref-property-setget

- |void| **set_navigation_layers**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_navigation_layers**\ (\ )

Un campo de bits que determina todas las capas de navegación a las que pertenece la región. Estas capas de navegación se pueden verificar al solicitar una ruta con :ref:`NavigationServer2D.map_get_path()<class_NavigationServer2D_method_map_get_path>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion2D_property_navigation_polygon:

.. rst-class:: classref-property

:ref:`NavigationPolygon<class_NavigationPolygon>` **navigation_polygon** :ref:`🔗<class_NavigationRegion2D_property_navigation_polygon>`

.. rst-class:: classref-property-setget

- |void| **set_navigation_polygon**\ (\ value\: :ref:`NavigationPolygon<class_NavigationPolygon>`\ )
- :ref:`NavigationPolygon<class_NavigationPolygon>` **get_navigation_polygon**\ (\ )

El recurso :ref:`NavigationPolygon<class_NavigationPolygon>` a utilizar.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion2D_property_travel_cost:

.. rst-class:: classref-property

:ref:`float<class_float>` **travel_cost** = ``1.0`` :ref:`🔗<class_NavigationRegion2D_property_travel_cost>`

.. rst-class:: classref-property-setget

- |void| **set_travel_cost**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_travel_cost**\ (\ )

Cuando la búsqueda de rutas se mueve dentro de la malla de navegación de esta región, las distancias recorridas se multiplican por :ref:`travel_cost<class_NavigationRegion2D_property_travel_cost>` para determinar la ruta más corta.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion2D_property_use_edge_connections:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_edge_connections** = ``true`` :ref:`🔗<class_NavigationRegion2D_property_use_edge_connections>`

.. rst-class:: classref-property-setget

- |void| **set_use_edge_connections**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_edge_connections**\ (\ )

Si está habilitada, la región de navegación utilizará conexiones de borde para conectarse con otras regiones de navegación dentro de la proximidad del margen de conexión de borde del mapa de navegación.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_NavigationRegion2D_method_bake_navigation_polygon:

.. rst-class:: classref-method

|void| **bake_navigation_polygon**\ (\ on_thread\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_NavigationRegion2D_method_bake_navigation_polygon>`

Procesa el :ref:`NavigationPolygon<class_NavigationPolygon>`. Si ``on_thread`` se establece como ``true`` (predeterminado), el procesamiento se realiza en un hilo separado.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion2D_method_get_bounds:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **get_bounds**\ (\ ) |const| :ref:`🔗<class_NavigationRegion2D_method_get_bounds>`

Devuelve el rectángulo alineado con los ejes para la malla de navegación transformada de la región.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion2D_method_get_navigation_layer_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_navigation_layer_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NavigationRegion2D_method_get_navigation_layer_value>`

Devuelve si la capa especificada de la máscara de bits :ref:`navigation_layers<class_NavigationRegion2D_property_navigation_layers>` está habilitada, dado un ``layer_number`` entre 1 y 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion2D_method_get_navigation_map:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_navigation_map**\ (\ ) |const| :ref:`🔗<class_NavigationRegion2D_method_get_navigation_map>`

Devuelve el :ref:`RID<class_RID>` del mapa de navegación actual utilizado por esta región.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion2D_method_get_region_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_region_rid**\ (\ ) |const| :ref:`🔗<class_NavigationRegion2D_method_get_region_rid>`

**Obsoleto:** Use :ref:`get_rid()<class_NavigationRegion2D_method_get_rid>` instead.

Devuelve el :ref:`RID<class_RID>` de esta región en el :ref:`NavigationServer2D<class_NavigationServer2D>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion2D_method_get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_rid**\ (\ ) |const| :ref:`🔗<class_NavigationRegion2D_method_get_rid>`

Devuelve el :ref:`RID<class_RID>` de esta región en el :ref:`NavigationServer2D<class_NavigationServer2D>`. Combinado con :ref:`NavigationServer2D.map_get_closest_point_owner()<class_NavigationServer2D_method_map_get_closest_point_owner>` se puede usar para identificar el **NavigationRegion2D** más cercano a un punto en el mapa de navegación fusionado.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion2D_method_is_baking:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_baking**\ (\ ) |const| :ref:`🔗<class_NavigationRegion2D_method_is_baking>`

Devuelve ``true`` cuando el :ref:`NavigationPolygon<class_NavigationPolygon>` se está procesando en un hilo en segundo plano.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion2D_method_set_navigation_layer_value:

.. rst-class:: classref-method

|void| **set_navigation_layer_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_NavigationRegion2D_method_set_navigation_layer_value>`

Based on ``value``, enables or disables the specified layer in the :ref:`navigation_layers<class_NavigationRegion2D_property_navigation_layers>` bitmask, given a ``layer_number`` between 1 and 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion2D_method_set_navigation_map:

.. rst-class:: classref-method

|void| **set_navigation_map**\ (\ navigation_map\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_NavigationRegion2D_method_set_navigation_map>`

Establece el :ref:`RID<class_RID>` del mapa de navegación que debe usar esta región. De forma predeterminada, la región se unirá automáticamente al mapa de navegación predeterminado de :ref:`World2D<class_World2D>`, por lo que esta función solo es necesaria para sobrescribir el mapa predeterminado.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
