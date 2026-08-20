:github_url: hide

.. _class_CSGShape3D:

CSGShape3D
==========

**Hereda:** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`CSGCombiner3D<class_CSGCombiner3D>`, :ref:`CSGPrimitive3D<class_CSGPrimitive3D>`

La clase base del CSG.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Esta es la clase base de CSG que proporciona soporte para operaciones CSG a los diversos nodos CSG en Godot.

\ **Rendimiento:** Los nodos CSG están destinados únicamente al prototipado, ya que tienen un coste de rendimiento de CPU significativo. Considera hornear (bake) los resultados finales de las operaciones CSG en geometría estática que reemplace a los nodos CSG.

Los resultados de nodos raíz CSG individuales pueden hornearse a nodos con recursos estáticos mediante el menú del editor que aparece cuando se selecciona un nodo raíz CSG.

Los nodos raíz CSG individuales también pueden hornearse a recursos estáticos mediante scripts llamando a :ref:`bake_static_mesh()<class_CSGShape3D_method_bake_static_mesh>` para la malla visual o a :ref:`bake_collision_shape()<class_CSGShape3D_method_bake_collision_shape>` para la colisión física.

Escenas enteras de nodos CSG pueden hornearse a geometría estática y exportarse con el exportador de escenas glTF del editor: **Escena > Exportar como... > Escena glTF 2.0...**

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Prototipado de niveles con CSG <../tutorials/3d/csg_tools>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                     | :ref:`autosmooth<class_CSGShape3D_property_autosmooth>`                 | ``false`` |
   +---------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                     | :ref:`calculate_tangents<class_CSGShape3D_property_calculate_tangents>` | ``true``  |
   +---------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                       | :ref:`collision_layer<class_CSGShape3D_property_collision_layer>`       | ``1``     |
   +---------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                       | :ref:`collision_mask<class_CSGShape3D_property_collision_mask>`         | ``1``     |
   +---------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                   | :ref:`collision_priority<class_CSGShape3D_property_collision_priority>` | ``1.0``   |
   +---------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`Operation<enum_CSGShape3D_Operation>` | :ref:`operation<class_CSGShape3D_property_operation>`                   | ``0``     |
   +---------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                   | :ref:`smoothing_angle<class_CSGShape3D_property_smoothing_angle>`       | ``50.0``  |
   +---------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                   | :ref:`snap<class_CSGShape3D_property_snap>`                             |           |
   +---------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                     | :ref:`use_collision<class_CSGShape3D_property_use_collision>`           | ``false`` |
   +---------------------------------------------+-------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>` | :ref:`bake_collision_shape<class_CSGShape3D_method_bake_collision_shape>`\ (\ )                                                                                  |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ArrayMesh<class_ArrayMesh>`                         | :ref:`bake_static_mesh<class_CSGShape3D_method_bake_static_mesh>`\ (\ )                                                                                          |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`get_collision_layer_value<class_CSGShape3D_method_get_collision_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`get_collision_mask_value<class_CSGShape3D_method_get_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                            |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                                 | :ref:`get_meshes<class_CSGShape3D_method_get_meshes>`\ (\ ) |const|                                                                                              |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`is_root_shape<class_CSGShape3D_method_is_root_shape>`\ (\ ) |const|                                                                                        |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`set_collision_layer_value<class_CSGShape3D_method_set_collision_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`set_collision_mask_value<class_CSGShape3D_method_set_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ )   |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_CSGShape3D_Operation:

.. rst-class:: classref-enumeration

enum **Operation**: :ref:`🔗<enum_CSGShape3D_Operation>`

.. _class_CSGShape3D_constant_OPERATION_UNION:

.. rst-class:: classref-enumeration-constant

:ref:`Operation<enum_CSGShape3D_Operation>` **OPERATION_UNION** = ``0``

La geometría de ambas primitivas se fusiona, la geometría que se interseca se elimina.

.. _class_CSGShape3D_constant_OPERATION_INTERSECTION:

.. rst-class:: classref-enumeration-constant

:ref:`Operation<enum_CSGShape3D_Operation>` **OPERATION_INTERSECTION** = ``1``

Solo queda la geometría de intersección, el resto se elimina.

.. _class_CSGShape3D_constant_OPERATION_SUBTRACTION:

.. rst-class:: classref-enumeration-constant

:ref:`Operation<enum_CSGShape3D_Operation>` **OPERATION_SUBTRACTION** = ``2``

La segunda forma se resta de la primera, dejando una depresión con su forma.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_CSGShape3D_property_autosmooth:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **autosmooth** = ``false`` :ref:`🔗<class_CSGShape3D_property_autosmooth>`

.. rst-class:: classref-property-setget

- |void| **set_autosmooth**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_autosmooth**\ (\ )

Habilita el suavizado automático. Esto anula cualquier suavizado en el nodo CSG y en su lugar utiliza :ref:`smoothing_angle<class_CSGShape3D_property_smoothing_angle>` para calcular normales basándose en el ángulo entre caras.

Los hijos de un nodo :ref:`CSGCombiner3D<class_CSGCombiner3D>` se tratarán como una única malla.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_property_calculate_tangents:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **calculate_tangents** = ``true`` :ref:`🔗<class_CSGShape3D_property_calculate_tangents>`

.. rst-class:: classref-property-setget

- |void| **set_calculate_tangents**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_calculating_tangents**\ (\ )

Calcula las tangentes para la forma CSG, lo que permite el uso de mapas de normales y de altura. Esto solo se aplica a la forma raíz; este ajuste se ignora en cualquier hijo. Establecer esto en ``false`` puede acelerar ligeramente la generación de la forma.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_property_collision_layer:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_layer** = ``1`` :ref:`🔗<class_CSGShape3D_property_collision_layer>`

.. rst-class:: classref-property-setget

- |void| **set_collision_layer**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_layer**\ (\ )

The physics layers this area is in.

Collidable objects can exist in any of 32 different layers. These layers work like a tagging system, and are not visual. A collidable can use these layers to select with which objects it can collide, using the collision_mask property.

A contact is detected if object A is in any of the layers that object B scans, or object B is in any layer scanned by object A. See `Collision layers and masks <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__ in the documentation for more information.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_property_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_mask** = ``1`` :ref:`🔗<class_CSGShape3D_property_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

Las capas de física en las que esta forma CSG busca colisiones. Solo es efectivo si :ref:`use_collision<class_CSGShape3D_property_use_collision>` es ``true``. Consulta `Capas y máscaras de colisión <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__ en la documentación para más información.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_property_collision_priority:

.. rst-class:: classref-property

:ref:`float<class_float>` **collision_priority** = ``1.0`` :ref:`🔗<class_CSGShape3D_property_collision_priority>`

.. rst-class:: classref-property-setget

- |void| **set_collision_priority**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_collision_priority**\ (\ )

La prioridad utilizada para resolver colisiones cuando ocurre una penetración. Solo es efectiva si :ref:`use_collision<class_CSGShape3D_property_use_collision>` es ``true``. Cuanto mayor sea la prioridad, menor será la penetración en el objeto. Esto se puede utilizar, por ejemplo, para evitar que el jugador atraviese los límites de un nivel.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_property_operation:

.. rst-class:: classref-property

:ref:`Operation<enum_CSGShape3D_Operation>` **operation** = ``0`` :ref:`🔗<class_CSGShape3D_property_operation>`

.. rst-class:: classref-property-setget

- |void| **set_operation**\ (\ value\: :ref:`Operation<enum_CSGShape3D_Operation>`\ )
- :ref:`Operation<enum_CSGShape3D_Operation>` **get_operation**\ (\ )

La operación que se realiza en esta forma. Esto se ignora para el primer nodo hijo de CSG ya que la operación es entre este nodo y el hijo previo a este nodo padre.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_property_smoothing_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **smoothing_angle** = ``50.0`` :ref:`🔗<class_CSGShape3D_property_smoothing_angle>`

.. rst-class:: classref-property-setget

- |void| **set_smoothing_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_smoothing_angle**\ (\ )

Cuando el autolisado está activado, las caras con un ángulo mayor entre ellas se suavizarán, mientras que las caras con un ángulo menor permanecerán afiladas.

Nota: Un ángulo inferior a 0,1 desactivará todo el suavizado, lo que puede usarse para aumentar el rendimiento.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_property_snap:

.. rst-class:: classref-property

:ref:`float<class_float>` **snap** :ref:`🔗<class_CSGShape3D_property_snap>`

.. rst-class:: classref-property-setget

- |void| **set_snap**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_snap**\ (\ )

**Obsoleto:** The CSG library no longer uses snapping.

Esta propiedad no hace nada.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_property_use_collision:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_collision** = ``false`` :ref:`🔗<class_CSGShape3D_property_use_collision>`

.. rst-class:: classref-property-setget

- |void| **set_use_collision**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_collision**\ (\ )

Adds a collision shape to the physics engine for our CSG shape. This will always act like a static body. Note that the collision shape is still active even if the CSG shape itself is hidden. See also :ref:`collision_mask<class_CSGShape3D_property_collision_mask>` and :ref:`collision_priority<class_CSGShape3D_property_collision_priority>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_CSGShape3D_method_bake_collision_shape:

.. rst-class:: classref-method

:ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>` **bake_collision_shape**\ (\ ) :ref:`🔗<class_CSGShape3D_method_bake_collision_shape>`

Returns a baked physics :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>` of this node's CSG operation result. Returns an empty shape if the node is not a CSG root node or has no valid geometry.

\ **Performance:** If the CSG operation results in a very detailed geometry with many faces physics performance will be very slow. Concave shapes should in general only be used for static level geometry and not with dynamic objects that are moving.

\ **Note:** CSG mesh data updates are deferred, which means they are updated with a delay of one rendered frame. To avoid getting an empty shape or outdated mesh data, make sure to call ``await get_tree().process_frame`` before using :ref:`bake_collision_shape()<class_CSGShape3D_method_bake_collision_shape>` in :ref:`Node._ready()<class_Node_private_method__ready>` or after changing properties on the **CSGShape3D**.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_method_bake_static_mesh:

.. rst-class:: classref-method

:ref:`ArrayMesh<class_ArrayMesh>` **bake_static_mesh**\ (\ ) :ref:`🔗<class_CSGShape3D_method_bake_static_mesh>`

Devuelve una :ref:`ArrayMesh<class_ArrayMesh>` estática procesada con baking con el resultado de la operación CSG de este nodo. Los materiales de los nodos CSG involucrados se añaden como superficies de malla adicionales. Devuelve una malla vacía si el nodo no es un nodo raíz CSG o no tiene una geometría válida.

\ **Nota:** Las actualizaciones de los datos de malla CSG se aplazan, lo que significa que se actualizan con un retraso de un frame renderizado. Para evitar obtener una malla vacía o datos de malla desactualizados, asegúrate de llamar a ``await get_tree().process_frame`` antes de utilizar el :ref:`bake_static_mesh()<class_CSGShape3D_method_bake_static_mesh>` en :ref:`Node._ready()<class_Node_private_method__ready>` o después de modificar las propiedades de **CSGShape3D**.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_method_get_collision_layer_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_layer_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CSGShape3D_method_get_collision_layer_value>`

Devuelve si la capa especificada de :ref:`collision_layer<class_CSGShape3D_property_collision_layer>` está habilitada o no, dado un ``layer_number`` entre 1 y 32.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_method_get_collision_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CSGShape3D_method_get_collision_mask_value>`

Devuelve si la capa especificada de :ref:`collision_mask<class_CSGShape3D_property_collision_mask>` está habilitada o no, dado un ``layer_number`` entre 1 y 32.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_method_get_meshes:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_meshes**\ (\ ) |const| :ref:`🔗<class_CSGShape3D_method_get_meshes>`

Retorna un :ref:`Array<class_Array>` con 2 elementos, el primero es el :ref:`Transform3D<class_Transform3D>` de este nodo y el segundo es el :ref:`Mesh<class_Mesh>` raíz de este nodo. Solo funciona cuando este nodo es la forma raíz.

\ **Nota:** Las actualizaciones de los datos de mesh de CSG son diferidas, lo que significa que se actualizan con un delay de un frame renderizado. Para evitar obtener una forma vacía o datos de mesh desactualizados, asegúrate de llamar a ``await get_tree().process_frame`` antes de usar :ref:`get_meshes()<class_CSGShape3D_method_get_meshes>` en :ref:`Node._ready()<class_Node_private_method__ready>` o después de cambiar propiedades en el **CSGShape3D**.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_method_is_root_shape:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_root_shape**\ (\ ) |const| :ref:`🔗<class_CSGShape3D_method_is_root_shape>`

Devuelve ``true`` si se trata de una forma de raíz y por lo tanto es el objeto que se renderiza.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_method_set_collision_layer_value:

.. rst-class:: classref-method

|void| **set_collision_layer_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CSGShape3D_method_set_collision_layer_value>`

Basado en ``value``, habilita o deshabilita la capa especificada en :ref:`collision_layer<class_CSGShape3D_property_collision_layer>`, dado un ``layer_number`` entre 1 y 32.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_method_set_collision_mask_value:

.. rst-class:: classref-method

|void| **set_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CSGShape3D_method_set_collision_mask_value>`

Basado en ``value``, habilita o deshabilita la capa especificada en :ref:`collision_mask<class_CSGShape3D_property_collision_mask>`, dado un ``layer_number`` entre 1 y 32.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
