:github_url: hide

.. _class_SkeletonModification2DCCDIK:

SkeletonModification2DCCDIK
===========================

**Experimental:** This class may be changed or removed in future versions.

**Hereda:** :ref:`SkeletonModification2D<class_SkeletonModification2D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una modificación que usa CCDIK para manipular una serie de huesos y alcanzar un objetivo en 2D.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Este :ref:`SkeletonModification2D<class_SkeletonModification2D>` utiliza un algoritmo llamado Cinemática Inversa de Descenso de Coordenadas Cíclicas, o CCDIK, para manipular una cadena de huesos en un :ref:`Skeleton2D<class_Skeleton2D>` para que alcance un objetivo definido.

CCDIK funciona rotando un conjunto de huesos, típicamente llamado "cadena de huesos", en un solo eje. Cada hueso se rota para encarar el objetivo desde la punta (por defecto), lo que a lo largo de una cadena de huesos le permite rotar correctamente para alcanzar el objetivo. Debido a que los huesos solo rotan en un solo eje, CCDIK *puede* parecer más robótico que otros solucionadores IK.

\ **Nota:** El modificador CCDIK tiene ``ccdik_joints``, que son los objetos de datos que contienen los datos de cada articulación en la cadena CCDIK. ¡Esto es diferente de un hueso! Las articulaciones CCDIK contienen los datos necesarios para cada hueso en la cadena de huesos utilizada por CCDIK.

CCDIK también es totalmente compatible con las restricciones de ángulo, lo que permite un mayor control sobre cómo se encuentra una solución.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------------+----------------------------------------------------------------------------------------------------+------------------+
   | :ref:`int<class_int>`           | :ref:`ccdik_data_chain_length<class_SkeletonModification2DCCDIK_property_ccdik_data_chain_length>` | ``0``            |
   +---------------------------------+----------------------------------------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`target_nodepath<class_SkeletonModification2DCCDIK_property_target_nodepath>`                 | ``NodePath("")`` |
   +---------------------------------+----------------------------------------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`tip_nodepath<class_SkeletonModification2DCCDIK_property_tip_nodepath>`                       | ``NodePath("")`` |
   +---------------------------------+----------------------------------------------------------------------------------------------------+------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`get_ccdik_joint_bone2d_node<class_SkeletonModification2DCCDIK_method_get_ccdik_joint_bone2d_node>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                                   |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`get_ccdik_joint_bone_index<class_SkeletonModification2DCCDIK_method_get_ccdik_joint_bone_index>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                                     |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`get_ccdik_joint_constraint_angle_invert<class_SkeletonModification2DCCDIK_method_get_ccdik_joint_constraint_angle_invert>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                           |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`       | :ref:`get_ccdik_joint_constraint_angle_max<class_SkeletonModification2DCCDIK_method_get_ccdik_joint_constraint_angle_max>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                 |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`       | :ref:`get_ccdik_joint_constraint_angle_min<class_SkeletonModification2DCCDIK_method_get_ccdik_joint_constraint_angle_min>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                 |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`get_ccdik_joint_enable_constraint<class_SkeletonModification2DCCDIK_method_get_ccdik_joint_enable_constraint>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                       |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`get_ccdik_joint_rotate_from_joint<class_SkeletonModification2DCCDIK_method_get_ccdik_joint_rotate_from_joint>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                       |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_ccdik_joint_bone2d_node<class_SkeletonModification2DCCDIK_method_set_ccdik_joint_bone2d_node>`\ (\ joint_idx\: :ref:`int<class_int>`, bone2d_nodepath\: :ref:`NodePath<class_NodePath>`\ )        |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_ccdik_joint_bone_index<class_SkeletonModification2DCCDIK_method_set_ccdik_joint_bone_index>`\ (\ joint_idx\: :ref:`int<class_int>`, bone_idx\: :ref:`int<class_int>`\ )                           |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_ccdik_joint_constraint_angle_invert<class_SkeletonModification2DCCDIK_method_set_ccdik_joint_constraint_angle_invert>`\ (\ joint_idx\: :ref:`int<class_int>`, invert\: :ref:`bool<class_bool>`\ ) |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_ccdik_joint_constraint_angle_max<class_SkeletonModification2DCCDIK_method_set_ccdik_joint_constraint_angle_max>`\ (\ joint_idx\: :ref:`int<class_int>`, angle_max\: :ref:`float<class_float>`\ )  |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_ccdik_joint_constraint_angle_min<class_SkeletonModification2DCCDIK_method_set_ccdik_joint_constraint_angle_min>`\ (\ joint_idx\: :ref:`int<class_int>`, angle_min\: :ref:`float<class_float>`\ )  |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_ccdik_joint_enable_constraint<class_SkeletonModification2DCCDIK_method_set_ccdik_joint_enable_constraint>`\ (\ joint_idx\: :ref:`int<class_int>`, enable_constraint\: :ref:`bool<class_bool>`\ )  |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_ccdik_joint_rotate_from_joint<class_SkeletonModification2DCCDIK_method_set_ccdik_joint_rotate_from_joint>`\ (\ joint_idx\: :ref:`int<class_int>`, rotate_from_joint\: :ref:`bool<class_bool>`\ )  |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_SkeletonModification2DCCDIK_property_ccdik_data_chain_length:

.. rst-class:: classref-property

:ref:`int<class_int>` **ccdik_data_chain_length** = ``0`` :ref:`🔗<class_SkeletonModification2DCCDIK_property_ccdik_data_chain_length>`

.. rst-class:: classref-property-setget

- |void| **set_ccdik_data_chain_length**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_ccdik_data_chain_length**\ (\ )

El número de articulaciones CCDIK en la modificación CCDIK.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DCCDIK_property_target_nodepath:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **target_nodepath** = ``NodePath("")`` :ref:`🔗<class_SkeletonModification2DCCDIK_property_target_nodepath>`

.. rst-class:: classref-property-setget

- |void| **set_target_node**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_target_node**\ (\ )

La NodePath al nodo que es el objetivo de la modificación CCDIK. Este nodo es hacia donde la cadena CCDIK intentará rotar la cadena de huesos.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DCCDIK_property_tip_nodepath:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **tip_nodepath** = ``NodePath("")`` :ref:`🔗<class_SkeletonModification2DCCDIK_property_tip_nodepath>`

.. rst-class:: classref-property-setget

- |void| **set_tip_node**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_tip_node**\ (\ )

La posición final de la cadena CCDIK. Típicamente, este debería ser un hijo de un nodo :ref:`Bone2D<class_Bone2D>` adjunto al :ref:`Bone2D<class_Bone2D>` final en la cadena CCDIK.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_SkeletonModification2DCCDIK_method_get_ccdik_joint_bone2d_node:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_ccdik_joint_bone2d_node**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DCCDIK_method_get_ccdik_joint_bone2d_node>`

Devuelve el nodo :ref:`Bone2D<class_Bone2D>` asignado a la articulación CCDIK en ``joint_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DCCDIK_method_get_ccdik_joint_bone_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_ccdik_joint_bone_index**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DCCDIK_method_get_ccdik_joint_bone_index>`

Devuelve el índice del nodo :ref:`Bone2D<class_Bone2D>` asignado a la articulación CCDIK en ``joint_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DCCDIK_method_get_ccdik_joint_constraint_angle_invert:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_ccdik_joint_constraint_angle_invert**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DCCDIK_method_get_ccdik_joint_constraint_angle_invert>`

Devuelve si la articulación CCDIK en ``joint_idx`` utiliza una restricción de articulación invertida. Véase :ref:`set_ccdik_joint_constraint_angle_invert()<class_SkeletonModification2DCCDIK_method_set_ccdik_joint_constraint_angle_invert>` para más detalles.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DCCDIK_method_get_ccdik_joint_constraint_angle_max:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_ccdik_joint_constraint_angle_max**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DCCDIK_method_get_ccdik_joint_constraint_angle_max>`

Devuelve la restricción de ángulo máxima para la articulación en ``joint_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DCCDIK_method_get_ccdik_joint_constraint_angle_min:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_ccdik_joint_constraint_angle_min**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DCCDIK_method_get_ccdik_joint_constraint_angle_min>`

Devuelve la restricción de ángulo mínima para la articulación en ``joint_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DCCDIK_method_get_ccdik_joint_enable_constraint:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_ccdik_joint_enable_constraint**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DCCDIK_method_get_ccdik_joint_enable_constraint>`

Devuelve si las restricciones de ángulo en la articulación CCDIK en ``joint_idx`` están habilitadas.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DCCDIK_method_get_ccdik_joint_rotate_from_joint:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_ccdik_joint_rotate_from_joint**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DCCDIK_method_get_ccdik_joint_rotate_from_joint>`

Devuelve si la articulación en ``joint_idx`` está configurada para rotar desde la articulación, ``true``, o para rotar desde la punta, ``false``. El valor por defecto es rotar desde la punta.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DCCDIK_method_set_ccdik_joint_bone2d_node:

.. rst-class:: classref-method

|void| **set_ccdik_joint_bone2d_node**\ (\ joint_idx\: :ref:`int<class_int>`, bone2d_nodepath\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_SkeletonModification2DCCDIK_method_set_ccdik_joint_bone2d_node>`

Establece el nodo :ref:`Bone2D<class_Bone2D>` asignado a la articulación CCDIK en ``joint_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DCCDIK_method_set_ccdik_joint_bone_index:

.. rst-class:: classref-method

|void| **set_ccdik_joint_bone_index**\ (\ joint_idx\: :ref:`int<class_int>`, bone_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SkeletonModification2DCCDIK_method_set_ccdik_joint_bone_index>`

Establece el índice del hueso, ``bone_idx``, de la articulación CCDIK en ``joint_idx``. Cuando sea posible, esto también actualizará el ``bone2d_node`` de la articulación CCDIK basándose en los datos proporcionados por el esqueleto vinculado.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DCCDIK_method_set_ccdik_joint_constraint_angle_invert:

.. rst-class:: classref-method

|void| **set_ccdik_joint_constraint_angle_invert**\ (\ joint_idx\: :ref:`int<class_int>`, invert\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SkeletonModification2DCCDIK_method_set_ccdik_joint_constraint_angle_invert>`

Sets whether the CCDIK joint at ``joint_idx`` uses an inverted joint constraint.

An inverted joint constraint only constraints the CCDIK joint to the angles *outside of* the inputted minimum and maximum angles. For this reason, it is referred to as an inverted joint constraint, as it constraints the joint to the outside of the inputted values.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DCCDIK_method_set_ccdik_joint_constraint_angle_max:

.. rst-class:: classref-method

|void| **set_ccdik_joint_constraint_angle_max**\ (\ joint_idx\: :ref:`int<class_int>`, angle_max\: :ref:`float<class_float>`\ ) :ref:`🔗<class_SkeletonModification2DCCDIK_method_set_ccdik_joint_constraint_angle_max>`

Establece la restricción de ángulo máximo para la articulación en ``joint_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DCCDIK_method_set_ccdik_joint_constraint_angle_min:

.. rst-class:: classref-method

|void| **set_ccdik_joint_constraint_angle_min**\ (\ joint_idx\: :ref:`int<class_int>`, angle_min\: :ref:`float<class_float>`\ ) :ref:`🔗<class_SkeletonModification2DCCDIK_method_set_ccdik_joint_constraint_angle_min>`

Establece la restricción de ángulo mínimo para la articulación en ``joint_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DCCDIK_method_set_ccdik_joint_enable_constraint:

.. rst-class:: classref-method

|void| **set_ccdik_joint_enable_constraint**\ (\ joint_idx\: :ref:`int<class_int>`, enable_constraint\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SkeletonModification2DCCDIK_method_set_ccdik_joint_enable_constraint>`

Determina si las restricciones de ángulo en la articulación CCDIK en ``joint_idx`` están habilitadas. Cuando es ``true``, las restricciones estarán habilitadas y se tendrán en cuenta al resolver.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DCCDIK_method_set_ccdik_joint_rotate_from_joint:

.. rst-class:: classref-method

|void| **set_ccdik_joint_rotate_from_joint**\ (\ joint_idx\: :ref:`int<class_int>`, rotate_from_joint\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SkeletonModification2DCCDIK_method_set_ccdik_joint_rotate_from_joint>`

Establece si la articulación en ``joint_idx`` está configurada para rotar desde la articulación, ``true``, o para rotar desde la punta, ``false``.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
