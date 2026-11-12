:github_url: hide

.. _class_SpringBoneCollision3D:

SpringBoneCollision3D
=====================

**Hereda:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`SpringBoneCollisionCapsule3D<class_SpringBoneCollisionCapsule3D>`, :ref:`SpringBoneCollisionPlane3D<class_SpringBoneCollisionPlane3D>`, :ref:`SpringBoneCollisionSphere3D<class_SpringBoneCollisionSphere3D>`

Una clase base de la colisión que interactúa con :ref:`SpringBoneSimulator3D<class_SpringBoneSimulator3D>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Una colisión puede ser hijo de :ref:`SpringBoneSimulator3D<class_SpringBoneSimulator3D>`. Si no es hijo de :ref:`SpringBoneSimulator3D<class_SpringBoneSimulator3D>`, no tiene ningún efecto.

La colisión y el deslizamiento se realizan en el proceso de modificación de :ref:`SpringBoneSimulator3D<class_SpringBoneSimulator3D>` en el orden de su lista de colisiones que se establece mediante :ref:`SpringBoneSimulator3D.set_collision_path()<class_SpringBoneSimulator3D_method_set_collision_path>`. Si :ref:`SpringBoneSimulator3D.are_all_child_collisions_enabled()<class_SpringBoneSimulator3D_method_are_all_child_collisions_enabled>` es ``true``, el orden coincide con :ref:`SceneTree<class_SceneTree>`.

Si :ref:`bone<class_SpringBoneCollision3D_property_bone>` está establecido, se sincroniza con la pose del hueso del :ref:`Skeleton3D<class_Skeleton3D>` ancestro, lo que se realiza antes del proceso de modificación de :ref:`SpringBoneSimulator3D<class_SpringBoneSimulator3D>` como el pre-proceso.

\ **Advertencia:** Un **SpringBoneCollision3D** escalado probablemente no se comportará como se espera. Asegúrate de que el :ref:`Skeleton3D<class_Skeleton3D>` padre y sus huesos no estén escalados.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------+------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                               | :ref:`bone<class_SpringBoneCollision3D_property_bone>`                       | ``-1``                                                                        |
   +---------------------------------------------------------------------+------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                         | :ref:`bone_name<class_SpringBoneCollision3D_property_bone_name>`             | ``""``                                                                        |
   +---------------------------------------------------------------------+------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`PhysicsInterpolationMode<enum_Node_PhysicsInterpolationMode>` | physics_interpolation_mode                                                   | ``2`` (overrides :ref:`Node<class_Node_property_physics_interpolation_mode>`) |
   +---------------------------------------------------------------------+------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                       | :ref:`position_offset<class_SpringBoneCollision3D_property_position_offset>` |                                                                               |
   +---------------------------------------------------------------------+------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>`                                 | :ref:`rotation_offset<class_SpringBoneCollision3D_property_rotation_offset>` |                                                                               |
   +---------------------------------------------------------------------+------------------------------------------------------------------------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------------------+------------------------------------------------------------------------------------+
   | :ref:`Skeleton3D<class_Skeleton3D>` | :ref:`get_skeleton<class_SpringBoneCollision3D_method_get_skeleton>`\ (\ ) |const| |
   +-------------------------------------+------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_SpringBoneCollision3D_property_bone:

.. rst-class:: classref-property

:ref:`int<class_int>` **bone** = ``-1`` :ref:`🔗<class_SpringBoneCollision3D_property_bone>`

.. rst-class:: classref-property-setget

- |void| **set_bone**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bone**\ (\ )

El índice del hueso adjunto.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneCollision3D_property_bone_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **bone_name** = ``""`` :ref:`🔗<class_SpringBoneCollision3D_property_bone_name>`

.. rst-class:: classref-property-setget

- |void| **set_bone_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_bone_name**\ (\ )

El nombre del hueso unido.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneCollision3D_property_position_offset:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **position_offset** :ref:`🔗<class_SpringBoneCollision3D_property_position_offset>`

.. rst-class:: classref-property-setget

- |void| **set_position_offset**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_position_offset**\ (\ )

El desplazamiento de la posición desde la posición de la pose del :ref:`bone<class_SpringBoneCollision3D_property_bone>` del :ref:`Skeleton3D<class_Skeleton3D>`.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneCollision3D_property_rotation_offset:

.. rst-class:: classref-property

:ref:`Quaternion<class_Quaternion>` **rotation_offset** :ref:`🔗<class_SpringBoneCollision3D_property_rotation_offset>`

.. rst-class:: classref-property-setget

- |void| **set_rotation_offset**\ (\ value\: :ref:`Quaternion<class_Quaternion>`\ )
- :ref:`Quaternion<class_Quaternion>` **get_rotation_offset**\ (\ )

El desplazamiento de la rotación desde la rotación de la pose del :ref:`bone<class_SpringBoneCollision3D_property_bone>` del :ref:`Skeleton3D<class_Skeleton3D>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_SpringBoneCollision3D_method_get_skeleton:

.. rst-class:: classref-method

:ref:`Skeleton3D<class_Skeleton3D>` **get_skeleton**\ (\ ) |const| :ref:`🔗<class_SpringBoneCollision3D_method_get_skeleton>`

Obtiene el nodo :ref:`Skeleton3D<class_Skeleton3D>` padre del :ref:`SpringBoneSimulator3D<class_SpringBoneSimulator3D>` padre, si se encuentra.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
