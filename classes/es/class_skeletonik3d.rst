:github_url: hide

.. _class_SkeletonIK3D:

SkeletonIK3D
============

**Obsoleto:** This class may be changed or removed in future versions.

**Hereda:** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un nodo usado para rotar todos los huesos de una cadena de huesos de :ref:`Skeleton3D<class_Skeleton3D>` de tal manera que coloca el hueso final en una posición 3D deseada.

.. rst-class:: classref-introduction-group

Descripción
----------------------

SkeletonIK3D is used to rotate all bones of a :ref:`Skeleton3D<class_Skeleton3D>` bone chain a way that places the end bone at a desired 3D position. A typical scenario for IK in games is to place a character's feet on the ground or a character's hands on a currently held object. SkeletonIK uses FabrikInverseKinematic internally to solve the bone chain and applies the results to the :ref:`Skeleton3D<class_Skeleton3D>` ``bones_global_pose_override`` property for all affected bones in the chain. If fully applied, this overwrites any bone transform from :ref:`Animation<class_Animation>`\ s or bone custom poses set by users. The applied amount can be controlled with the :ref:`SkeletonModifier3D.influence<class_SkeletonModifier3D_property_influence>` property.

::

    # Apply IK effect automatically on every new frame (not the current)
    skeleton_ik_node.start()

    # Apply IK effect only on the current frame
    skeleton_ik_node.start(true)

    # Stop IK effect and reset bones_global_pose_override on Skeleton
    skeleton_ik_node.stop()

    # Apply full IK effect
    skeleton_ik_node.set_influence(1.0)

    # Apply half IK effect
    skeleton_ik_node.set_influence(0.5)

    # Apply zero IK effect (a value at or below 0.01 also removes bones_global_pose_override on Skeleton)
    skeleton_ik_node.set_influence(0.0)

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`interpolation<class_SkeletonIK3D_property_interpolation>`           |                                                     |
   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`         | :ref:`magnet<class_SkeletonIK3D_property_magnet>`                         | ``Vector3(0, 0, 0)``                                |
   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`max_iterations<class_SkeletonIK3D_property_max_iterations>`         | ``10``                                              |
   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`min_distance<class_SkeletonIK3D_property_min_distance>`             | ``0.01``                                            |
   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`override_tip_basis<class_SkeletonIK3D_property_override_tip_basis>` | ``true``                                            |
   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`StringName<class_StringName>`   | :ref:`root_bone<class_SkeletonIK3D_property_root_bone>`                   | ``&""``                                             |
   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`target<class_SkeletonIK3D_property_target>`                         | ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` |
   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`       | :ref:`target_node<class_SkeletonIK3D_property_target_node>`               | ``NodePath("")``                                    |
   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`StringName<class_StringName>`   | :ref:`tip_bone<class_SkeletonIK3D_property_tip_bone>`                     | ``&""``                                             |
   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`use_magnet<class_SkeletonIK3D_property_use_magnet>`                 | ``false``                                           |
   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`Skeleton3D<class_Skeleton3D>` | :ref:`get_parent_skeleton<class_SkeletonIK3D_method_get_parent_skeleton>`\ (\ ) |const|         |
   +-------------------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_running<class_SkeletonIK3D_method_is_running>`\ (\ )                                   |
   +-------------------------------------+-------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`start<class_SkeletonIK3D_method_start>`\ (\ one_time\: :ref:`bool<class_bool>` = false\ ) |
   +-------------------------------------+-------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`stop<class_SkeletonIK3D_method_stop>`\ (\ )                                               |
   +-------------------------------------+-------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_SkeletonIK3D_property_interpolation:

.. rst-class:: classref-property

:ref:`float<class_float>` **interpolation** :ref:`🔗<class_SkeletonIK3D_property_interpolation>`

.. rst-class:: classref-property-setget

- |void| **set_interpolation**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_interpolation**\ (\ )

**Obsoleto:** Use :ref:`SkeletonModifier3D.influence<class_SkeletonModifier3D_property_influence>` instead.

Valor de interpolación de cuánto se aplican los resultados de la IK a la cadena de huesos del esqueleto actual. Un valor de ``1.0`` sobreescribirá por completo todas las transformaciones de los huesos del esqueleto, mientras que un valor de ``0.0`` desactivará visualmente el SkeletonIK.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_property_magnet:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **magnet** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_SkeletonIK3D_property_magnet>`

.. rst-class:: classref-property-setget

- |void| **set_magnet_position**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_magnet_position**\ (\ )

Posición del objetivo secundario (el primero es la propiedad :ref:`target<class_SkeletonIK3D_property_target>` o :ref:`target_node<class_SkeletonIK3D_property_target_node>`) para la cadena de IK. Usa la posición del imán (objetivo polar) para controlar la flexión de la cadena de IK. Solo funciona si la cadena de huesos tiene más de 2 huesos. La posición del hueso central de la cadena se interpolará linealmente con la posición del imán.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_property_max_iterations:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_iterations** = ``10`` :ref:`🔗<class_SkeletonIK3D_property_max_iterations>`

.. rst-class:: classref-property-setget

- |void| **set_max_iterations**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_iterations**\ (\ )

Número de bucles de iteración utilizados por el solucionador de IK para producir resultados más precisos (y elegantes) en la cadena de huesos.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_property_min_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **min_distance** = ``0.01`` :ref:`🔗<class_SkeletonIK3D_property_min_distance>`

.. rst-class:: classref-property-setget

- |void| **set_min_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_min_distance**\ (\ )

La distancia mínima entre el hueso y el objetivo. Si la distancia es inferior a este valor, el solucionador de IK detiene las iteraciones posteriores.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_property_override_tip_basis:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **override_tip_basis** = ``true`` :ref:`🔗<class_SkeletonIK3D_property_override_tip_basis>`

.. rst-class:: classref-property-setget

- |void| **set_override_tip_basis**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_override_tip_basis**\ (\ )

Si es ``true``, sobrescribe la rotación del hueso de la punta con la rotación del :ref:`target<class_SkeletonIK3D_property_target>` (o :ref:`target_node<class_SkeletonIK3D_property_target_node>` si está definido).

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_property_root_bone:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **root_bone** = ``&""`` :ref:`🔗<class_SkeletonIK3D_property_root_bone>`

.. rst-class:: classref-property-setget

- |void| **set_root_bone**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_root_bone**\ (\ )

El nombre del hueso raíz actual, el primer hueso de la cadena de IK.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_property_target:

.. rst-class:: classref-property

:ref:`Transform3D<class_Transform3D>` **target** = ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_SkeletonIK3D_property_target>`

.. rst-class:: classref-property-setget

- |void| **set_target_transform**\ (\ value\: :ref:`Transform3D<class_Transform3D>`\ )
- :ref:`Transform3D<class_Transform3D>` **get_target_transform**\ (\ )

The first target of the IK chain where the tip bone is placed and, if :ref:`override_tip_basis<class_SkeletonIK3D_property_override_tip_basis>` is ``true``, how the tip bone is rotated. If :ref:`target_node<class_SkeletonIK3D_property_target_node>` points to a valid node, that node's transform is used instead and this property is ignored.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_property_target_node:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **target_node** = ``NodePath("")`` :ref:`🔗<class_SkeletonIK3D_property_target_node>`

.. rst-class:: classref-property-setget

- |void| **set_target_node**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_target_node**\ (\ )

Nodo objetivo :ref:`NodePath<class_NodePath>` para la cadena de IK. Si está disponible, se utiliza el :ref:`Transform3D<class_Transform3D>` actual del nodo en lugar de la propiedad :ref:`target<class_SkeletonIK3D_property_target>`.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_property_tip_bone:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **tip_bone** = ``&""`` :ref:`🔗<class_SkeletonIK3D_property_tip_bone>`

.. rst-class:: classref-property-setget

- |void| **set_tip_bone**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_tip_bone**\ (\ )

El nombre del hueso de la punta actual, el último hueso de la cadena de IK colocado en la transformación de :ref:`target<class_SkeletonIK3D_property_target>` (o :ref:`target_node<class_SkeletonIK3D_property_target_node>` si está definido).

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_property_use_magnet:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_magnet** = ``false`` :ref:`🔗<class_SkeletonIK3D_property_use_magnet>`

.. rst-class:: classref-property-setget

- |void| **set_use_magnet**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_magnet**\ (\ )

Si es ``true``, instruye al solucionador de IK para que considere el objetivo magnético secundario (objetivo polar) al calcular la cadena de huesos. Usa la posición del imán (objetivo polar) para controlar la flexión de la cadena de IK.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_SkeletonIK3D_method_get_parent_skeleton:

.. rst-class:: classref-method

:ref:`Skeleton3D<class_Skeleton3D>` **get_parent_skeleton**\ (\ ) |const| :ref:`🔗<class_SkeletonIK3D_method_get_parent_skeleton>`

Devuelve el nodo padre :ref:`Skeleton3D<class_Skeleton3D>` que estaba presente cuando SkeletonIK entró en el árbol de escenas. Devuelve ``null`` si el nodo padre no era un nodo :ref:`Skeleton3D<class_Skeleton3D>` cuando SkeletonIK3D entró en el árbol de escenas.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_method_is_running:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_running**\ (\ ) :ref:`🔗<class_SkeletonIK3D_method_is_running>`

Devuelve ``true`` si SkeletonIK está aplicando efectos de IK en fotogramas continuos a los huesos del :ref:`Skeleton3D<class_Skeleton3D>`. Devuelve ``false`` si SkeletonIK está detenido o si se usó :ref:`start()<class_SkeletonIK3D_method_start>` con el parámetro ``one_time`` establecido en ``true``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_method_start:

.. rst-class:: classref-method

|void| **start**\ (\ one_time\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_SkeletonIK3D_method_start>`

Comienza a aplicar efectos de IK en cada fotograma a los huesos del :ref:`Skeleton3D<class_Skeleton3D>`, pero solo tendrá efecto a partir del siguiente fotograma. Si ``one_time`` es ``true``, esto tendrá efecto inmediatamente pero también se reiniciará en el siguiente fotograma.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_method_stop:

.. rst-class:: classref-method

|void| **stop**\ (\ ) :ref:`🔗<class_SkeletonIK3D_method_stop>`

Deja de aplicar efectos de IK en cada fotograma a los huesos del :ref:`Skeleton3D<class_Skeleton3D>` y también llama a :ref:`Skeleton3D.clear_bones_global_pose_override()<class_Skeleton3D_method_clear_bones_global_pose_override>` para eliminar las sobrescrituras existentes en todos los huesos.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
