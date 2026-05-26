:github_url: hide

.. _class_NavigationObstacle3D:

NavigationObstacle3D
====================

**Experimental:** This class may be changed or removed in future versions.

**Hereda:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

3D obstacle used to affect navigation mesh baking or constrain velocities of avoidance controlled agents.

.. rst-class:: classref-introduction-group

Descripción
----------------------

An obstacle needs a navigation map and outline :ref:`vertices<class_NavigationObstacle3D_property_vertices>` defined to work correctly. The outlines can not cross or overlap and are restricted to a plane projection. This means the y-axis of the vertices is ignored, instead the obstacle's global y-axis position is used for placement. The projected shape is extruded by the obstacles height along the y-axis.

Obstacles can be included in the navigation mesh baking process when :ref:`affect_navigation_mesh<class_NavigationObstacle3D_property_affect_navigation_mesh>` is enabled. They do not add walkable geometry, instead their role is to discard other source geometry inside the shape. This can be used to prevent navigation mesh from appearing in unwanted places, e.g. inside "solid" geometry or on top of it. If :ref:`carve_navigation_mesh<class_NavigationObstacle3D_property_carve_navigation_mesh>` is enabled the baked shape will not be affected by offsets of the navigation mesh baking, e.g. the agent radius.

With :ref:`avoidance_enabled<class_NavigationObstacle3D_property_avoidance_enabled>` the obstacle can constrain the avoidance velocities of avoidance using agents. If the obstacle's vertices are wound in clockwise order, avoidance agents will be pushed in by the obstacle, otherwise, avoidance agents will be pushed out. Obstacles using vertices and avoidance can warp to a new position but should not be moved every single frame as each change requires a rebuild of the avoidance map.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Utilizando NavigationObstacles <../tutorials/navigation/navigation_using_navigationobstacles>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`affect_navigation_mesh<class_NavigationObstacle3D_property_affect_navigation_mesh>` | ``false``                |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`avoidance_enabled<class_NavigationObstacle3D_property_avoidance_enabled>`           | ``true``                 |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`int<class_int>`                               | :ref:`avoidance_layers<class_NavigationObstacle3D_property_avoidance_layers>`             | ``1``                    |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`carve_navigation_mesh<class_NavigationObstacle3D_property_carve_navigation_mesh>`   | ``false``                |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`float<class_float>`                           | :ref:`height<class_NavigationObstacle3D_property_height>`                                 | ``1.0``                  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`float<class_float>`                           | :ref:`radius<class_NavigationObstacle3D_property_radius>`                                 | ``0.0``                  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`use_3d_avoidance<class_NavigationObstacle3D_property_use_3d_avoidance>`             | ``false``                |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`Vector3<class_Vector3>`                       | :ref:`velocity<class_NavigationObstacle3D_property_velocity>`                             | ``Vector3(0, 0, 0)``     |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`vertices<class_NavigationObstacle3D_property_vertices>`                             | ``PackedVector3Array()`` |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`get_avoidance_layer_value<class_NavigationObstacle3D_method_get_avoidance_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`   | :ref:`get_navigation_map<class_NavigationObstacle3D_method_get_navigation_map>`\ (\ ) |const|                                                                              |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`   | :ref:`get_rid<class_NavigationObstacle3D_method_get_rid>`\ (\ ) |const|                                                                                                    |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_avoidance_layer_value<class_NavigationObstacle3D_method_set_avoidance_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_navigation_map<class_NavigationObstacle3D_method_set_navigation_map>`\ (\ navigation_map\: :ref:`RID<class_RID>`\ )                                              |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_NavigationObstacle3D_property_affect_navigation_mesh:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **affect_navigation_mesh** = ``false`` :ref:`🔗<class_NavigationObstacle3D_property_affect_navigation_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_affect_navigation_mesh**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_affect_navigation_mesh**\ (\ )

Si está habilitado y se procesa en un proceso de baking de malla de navegación, el obstáculo descartará la geometría de origen dentro de su forma definida por :ref:`vertices<class_NavigationObstacle3D_property_vertices>` y :ref:`height<class_NavigationObstacle3D_property_height>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle3D_property_avoidance_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **avoidance_enabled** = ``true`` :ref:`🔗<class_NavigationObstacle3D_property_avoidance_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_avoidance_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_avoidance_enabled**\ (\ )

Si es ``true``, el obstáculo afecta la evasión usando agentes.

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle3D_property_avoidance_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **avoidance_layers** = ``1`` :ref:`🔗<class_NavigationObstacle3D_property_avoidance_layers>`

.. rst-class:: classref-property-setget

- |void| **set_avoidance_layers**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_avoidance_layers**\ (\ )

A bitfield determining the avoidance layers for this obstacle. Agents with a matching bit on the their avoidance mask will avoid this obstacle.

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle3D_property_carve_navigation_mesh:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **carve_navigation_mesh** = ``false`` :ref:`🔗<class_NavigationObstacle3D_property_carve_navigation_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_carve_navigation_mesh**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_carve_navigation_mesh**\ (\ )

If enabled the obstacle vertices will carve into the baked navigation mesh with the shape unaffected by additional offsets (e.g. agent radius).

It will still be affected by further postprocessing of the baking process, like edge and polygon simplification.

Requires :ref:`affect_navigation_mesh<class_NavigationObstacle3D_property_affect_navigation_mesh>` to be enabled.

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle3D_property_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **height** = ``1.0`` :ref:`🔗<class_NavigationObstacle3D_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_height**\ (\ )

Establece la altura del obstáculo utilizada en la evitación 2D. La evitación 2D, al usar agentes, ignora los obstáculos que están por debajo o por encima de ellos.

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle3D_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``0.0`` :ref:`🔗<class_NavigationObstacle3D_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

Establece el radio de evitación del obstáculo.

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle3D_property_use_3d_avoidance:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_3d_avoidance** = ``false`` :ref:`🔗<class_NavigationObstacle3D_property_use_3d_avoidance>`

.. rst-class:: classref-property-setget

- |void| **set_use_3d_avoidance**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_3d_avoidance**\ (\ )

Si es ``true``, el obstáculo afecta la evitación 3D usando agentes con :ref:`radius<class_NavigationObstacle3D_property_radius>` del obstáculo.

Si es ``false``, el obstáculo afecta la evitación 2D usando agentes con :ref:`vertices<class_NavigationObstacle3D_property_vertices>` del obstáculo, así como con :ref:`radius<class_NavigationObstacle3D_property_radius>` del obstáculo.

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle3D_property_velocity:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **velocity** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_NavigationObstacle3D_property_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_velocity**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_velocity**\ (\ )

Sets the wanted velocity for the obstacle so other agent's can better predict the obstacle if it is moved with a velocity regularly (every frame) instead of warped to a new position. Does only affect avoidance for the obstacles :ref:`radius<class_NavigationObstacle3D_property_radius>`. Does nothing for the obstacles static vertices.

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle3D_property_vertices:

.. rst-class:: classref-property

:ref:`PackedVector3Array<class_PackedVector3Array>` **vertices** = ``PackedVector3Array()`` :ref:`🔗<class_NavigationObstacle3D_property_vertices>`

.. rst-class:: classref-property-setget

- |void| **set_vertices**\ (\ value\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ )
- :ref:`PackedVector3Array<class_PackedVector3Array>` **get_vertices**\ (\ )

The outline vertices of the obstacle. If the vertices are winded in clockwise order agents will be pushed in by the obstacle, else they will be pushed out. Outlines can not be crossed or overlap. Should the vertices using obstacle be warped to a new position agent's can not predict this movement and may get trapped inside the obstacle.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector3Array<class_PackedVector3Array>` for more details.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_NavigationObstacle3D_method_get_avoidance_layer_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_avoidance_layer_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NavigationObstacle3D_method_get_avoidance_layer_value>`

Returns whether or not the specified layer of the :ref:`avoidance_layers<class_NavigationObstacle3D_property_avoidance_layers>` bitmask is enabled, given a ``layer_number`` between 1 and 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle3D_method_get_navigation_map:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_navigation_map**\ (\ ) |const| :ref:`🔗<class_NavigationObstacle3D_method_get_navigation_map>`

Returns the :ref:`RID<class_RID>` of the navigation map for this NavigationObstacle node. This function returns always the map set on the NavigationObstacle node and not the map of the abstract obstacle on the NavigationServer. If the obstacle map is changed directly with the NavigationServer API the NavigationObstacle node will not be aware of the map change. Use :ref:`set_navigation_map()<class_NavigationObstacle3D_method_set_navigation_map>` to change the navigation map for the NavigationObstacle and also update the obstacle on the NavigationServer.

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle3D_method_get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_rid**\ (\ ) |const| :ref:`🔗<class_NavigationObstacle3D_method_get_rid>`

Devuelve el :ref:`RID<class_RID>` de este obstáculo en :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle3D_method_set_avoidance_layer_value:

.. rst-class:: classref-method

|void| **set_avoidance_layer_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_NavigationObstacle3D_method_set_avoidance_layer_value>`

Based on ``value``, enables or disables the specified layer in the :ref:`avoidance_layers<class_NavigationObstacle3D_property_avoidance_layers>` bitmask, given a ``layer_number`` between 1 and 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle3D_method_set_navigation_map:

.. rst-class:: classref-method

|void| **set_navigation_map**\ (\ navigation_map\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_NavigationObstacle3D_method_set_navigation_map>`

Establece el :ref:`RID<class_RID>` del mapa de navegación que debe usar este nodo NavigationObstacle y también actualiza el ``obstáculo`` en NavigationServer.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
