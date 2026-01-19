:github_url: hide

.. _class_NavigationLink2D:

NavigationLink2D
================

**Experimental:** This class may be changed or removed in future versions.

**Hereda:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un enlace entre dos posiciones en :ref:`NavigationRegion2D<class_NavigationRegion2D>`\ s por el que los agentes pueden ser enrutados.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Un enlace entre dos posiciones en :ref:`NavigationRegion2D<class_NavigationRegion2D>`\ s por el que los agentes pueden ser enrutados. Estas posiciones pueden estar en el mismo :ref:`NavigationRegion2D<class_NavigationRegion2D>` o en dos diferentes. Los enlaces son útiles para expresar métodos de navegación distintos a viajar a lo largo de la superficie del polígono de navegación, como tirolinas, teletransportadores o huecos que se pueden saltar.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Utilizando NavigationLinks <../tutorials/navigation/navigation_using_navigationlinks>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`       | :ref:`bidirectional<class_NavigationLink2D_property_bidirectional>`         | ``true``          |
   +-------------------------------+-----------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`       | :ref:`enabled<class_NavigationLink2D_property_enabled>`                     | ``true``          |
   +-------------------------------+-----------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`end_position<class_NavigationLink2D_property_end_position>`           | ``Vector2(0, 0)`` |
   +-------------------------------+-----------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`     | :ref:`enter_cost<class_NavigationLink2D_property_enter_cost>`               | ``0.0``           |
   +-------------------------------+-----------------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`         | :ref:`navigation_layers<class_NavigationLink2D_property_navigation_layers>` | ``1``             |
   +-------------------------------+-----------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`start_position<class_NavigationLink2D_property_start_position>`       | ``Vector2(0, 0)`` |
   +-------------------------------+-----------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`     | :ref:`travel_cost<class_NavigationLink2D_property_travel_cost>`             | ``1.0``           |
   +-------------------------------+-----------------------------------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_global_end_position<class_NavigationLink2D_method_get_global_end_position>`\ (\ ) |const|                                                                      |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_global_start_position<class_NavigationLink2D_method_get_global_start_position>`\ (\ ) |const|                                                                  |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`get_navigation_layer_value<class_NavigationLink2D_method_get_navigation_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`         | :ref:`get_navigation_map<class_NavigationLink2D_method_get_navigation_map>`\ (\ ) |const|                                                                                |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`         | :ref:`get_rid<class_NavigationLink2D_method_get_rid>`\ (\ ) |const|                                                                                                      |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_global_end_position<class_NavigationLink2D_method_set_global_end_position>`\ (\ position\: :ref:`Vector2<class_Vector2>`\ )                                    |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_global_start_position<class_NavigationLink2D_method_set_global_start_position>`\ (\ position\: :ref:`Vector2<class_Vector2>`\ )                                |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_navigation_layer_value<class_NavigationLink2D_method_set_navigation_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_navigation_map<class_NavigationLink2D_method_set_navigation_map>`\ (\ navigation_map\: :ref:`RID<class_RID>`\ )                                                |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_NavigationLink2D_property_bidirectional:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **bidirectional** = ``true`` :ref:`🔗<class_NavigationLink2D_property_bidirectional>`

.. rst-class:: classref-property-setget

- |void| **set_bidirectional**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_bidirectional**\ (\ )

Indica si este enlace puede ser recorrido en ambas direcciones o solo desde :ref:`start_position<class_NavigationLink2D_property_start_position>` hasta :ref:`end_position<class_NavigationLink2D_property_end_position>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationLink2D_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** = ``true`` :ref:`🔗<class_NavigationLink2D_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_enabled**\ (\ )

Si este enlace está actualmente activo. Si es ``false``, :ref:`NavigationServer2D.map_get_path()<class_NavigationServer2D_method_map_get_path>` ignorará este enlace.

.. rst-class:: classref-item-separator

----

.. _class_NavigationLink2D_property_end_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **end_position** = ``Vector2(0, 0)`` :ref:`🔗<class_NavigationLink2D_property_end_position>`

.. rst-class:: classref-property-setget

- |void| **set_end_position**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_end_position**\ (\ )

Posición final del enlace.

Esta posición buscará el polígono más cercano en la malla de navegación para conectarlo.

La distancia que buscará el enlace se controla mediante :ref:`NavigationServer2D.map_set_link_connection_radius()<class_NavigationServer2D_method_map_set_link_connection_radius>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationLink2D_property_enter_cost:

.. rst-class:: classref-property

:ref:`float<class_float>` **enter_cost** = ``0.0`` :ref:`🔗<class_NavigationLink2D_property_enter_cost>`

.. rst-class:: classref-property-setget

- |void| **set_enter_cost**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_enter_cost**\ (\ )

Cuando la búsqueda de trayectos entra en este enlace desde la malla de navegación de otra región, el valor :ref:`enter_cost<class_NavigationLink2D_property_enter_cost>` se añade a la distancia del trayecto para determinar el trayecto más corto.

.. rst-class:: classref-item-separator

----

.. _class_NavigationLink2D_property_navigation_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **navigation_layers** = ``1`` :ref:`🔗<class_NavigationLink2D_property_navigation_layers>`

.. rst-class:: classref-property-setget

- |void| **set_navigation_layers**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_navigation_layers**\ (\ )

Un campo de bits que determina todas las capas de navegación a las que pertenece el enlace. Estas capas de navegación se comprobarán al solicitar un trayecto con :ref:`NavigationServer2D.map_get_path()<class_NavigationServer2D_method_map_get_path>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationLink2D_property_start_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **start_position** = ``Vector2(0, 0)`` :ref:`🔗<class_NavigationLink2D_property_start_position>`

.. rst-class:: classref-property-setget

- |void| **set_start_position**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_start_position**\ (\ )

Posición inicial del enlace.

Esta posición buscará el polígono más cercano en la malla de navegación para adjuntarse.

La distancia que buscará el enlace está controlada por :ref:`NavigationServer2D.map_set_link_connection_radius()<class_NavigationServer2D_method_map_set_link_connection_radius>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationLink2D_property_travel_cost:

.. rst-class:: classref-property

:ref:`float<class_float>` **travel_cost** = ``1.0`` :ref:`🔗<class_NavigationLink2D_property_travel_cost>`

.. rst-class:: classref-property-setget

- |void| **set_travel_cost**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_travel_cost**\ (\ )

Cuando la búsqueda de trayecto se mueve a lo largo del enlace, la distancia recorrida se multiplica por :ref:`travel_cost<class_NavigationLink2D_property_travel_cost>` para determinar el trayecto más corto.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_NavigationLink2D_method_get_global_end_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_global_end_position**\ (\ ) |const| :ref:`🔗<class_NavigationLink2D_method_get_global_end_position>`

Devuelve la :ref:`end_position<class_NavigationLink2D_property_end_position>` que es relativa al enlace como una posición global.

.. rst-class:: classref-item-separator

----

.. _class_NavigationLink2D_method_get_global_start_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_global_start_position**\ (\ ) |const| :ref:`🔗<class_NavigationLink2D_method_get_global_start_position>`

Devuelve la :ref:`start_position<class_NavigationLink2D_property_start_position>` que es relativa al enlace como una posición global.

.. rst-class:: classref-item-separator

----

.. _class_NavigationLink2D_method_get_navigation_layer_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_navigation_layer_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NavigationLink2D_method_get_navigation_layer_value>`

Devuelve si la capa especificada de la máscara de bits :ref:`navigation_layers<class_NavigationLink2D_property_navigation_layers>` está habilitada, dado un ``layer_number`` entre 1 y 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationLink2D_method_get_navigation_map:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_navigation_map**\ (\ ) |const| :ref:`🔗<class_NavigationLink2D_method_get_navigation_map>`

Devuelve el :ref:`RID<class_RID>` del mapa de navegación actual utilizado por este enlace.

.. rst-class:: classref-item-separator

----

.. _class_NavigationLink2D_method_get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_rid**\ (\ ) |const| :ref:`🔗<class_NavigationLink2D_method_get_rid>`

Devuelve el :ref:`RID<class_RID>` de este enlace en el :ref:`NavigationServer2D<class_NavigationServer2D>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationLink2D_method_set_global_end_position:

.. rst-class:: classref-method

|void| **set_global_end_position**\ (\ position\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_NavigationLink2D_method_set_global_end_position>`

Establece la :ref:`end_position<class_NavigationLink2D_property_end_position>` que es relativa al enlace desde una ``position`` global.

.. rst-class:: classref-item-separator

----

.. _class_NavigationLink2D_method_set_global_start_position:

.. rst-class:: classref-method

|void| **set_global_start_position**\ (\ position\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_NavigationLink2D_method_set_global_start_position>`

Establece la :ref:`start_position<class_NavigationLink2D_property_start_position>` que es relativa al enlace desde una ``position`` global.

.. rst-class:: classref-item-separator

----

.. _class_NavigationLink2D_method_set_navigation_layer_value:

.. rst-class:: classref-method

|void| **set_navigation_layer_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_NavigationLink2D_method_set_navigation_layer_value>`

Based on ``value``, enables or disables the specified layer in the :ref:`navigation_layers<class_NavigationLink2D_property_navigation_layers>` bitmask, given a ``layer_number`` between 1 and 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationLink2D_method_set_navigation_map:

.. rst-class:: classref-method

|void| **set_navigation_map**\ (\ navigation_map\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_NavigationLink2D_method_set_navigation_map>`

Establece el :ref:`RID<class_RID>` del mapa de navegación que debe usar este enlace. Por defecto, el enlace se unirá automáticamente al mapa de navegación predeterminado de :ref:`World2D<class_World2D>`, por lo que esta función solo es necesaria para sobrescribir el mapa predeterminado.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
