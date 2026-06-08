:github_url: hide

.. _class_BoneTwistDisperser3D:

BoneTwistDisperser3D
====================

**Eredita:** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

A node that propagates and disperses the child bone's twist to the parent bones.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questo **BoneTwistDisperser3D** consente un'interpolazione fluida della torsione tra più ossa, distribuendo la torsione dell'osso finale agli ossi genitori. Così viene modificata solo la torsione, senza alterare la posizione globale di ciascuna articolazione.

È utile per torcere le ossa fluidamente in combinazione con :ref:`CopyTransformModifier3D<class_CopyTransformModifier3D>` e IK.

\ **Nota:** Se la torsione estratta è superiore a 180 gradi, avviene un ribaltamento. Questo comportamento è simile a quello di :ref:`ConvertTransformModifier3D<class_ConvertTransformModifier3D>`.

\ **Nota:** La maggior parte dei metodi di questa classe accetta un parametro ``index``. Questo parametro specifica quale voce nell'elenco delle impostazioni restituire, se l'IK ha più voci (ad esempio, ``settings/<index>/root_bone_name``).

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------+---------------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>` | :ref:`mutable_bone_axes<class_BoneTwistDisperser3D_property_mutable_bone_axes>` | ``true`` |
   +-------------------------+---------------------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`   | :ref:`setting_count<class_BoneTwistDisperser3D_property_setting_count>`         | ``0``    |
   +-------------------------+---------------------------------------------------------------------------------+----------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`clear_settings<class_BoneTwistDisperser3D_method_clear_settings>`\ (\ )                                                                                                                              |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Curve<class_Curve>`                                   | :ref:`get_damping_curve<class_BoneTwistDisperser3D_method_get_damping_curve>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                 |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`DisperseMode<enum_BoneTwistDisperser3D_DisperseMode>` | :ref:`get_disperse_mode<class_BoneTwistDisperser3D_method_get_disperse_mode>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                 |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                       | :ref:`get_end_bone<class_BoneTwistDisperser3D_method_get_end_bone>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                           |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>` | :ref:`get_end_bone_direction<class_BoneTwistDisperser3D_method_get_end_bone_direction>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                       |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                 | :ref:`get_end_bone_name<class_BoneTwistDisperser3D_method_get_end_bone_name>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                 |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                       | :ref:`get_joint_bone<class_BoneTwistDisperser3D_method_get_joint_bone>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const|                                                        |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                 | :ref:`get_joint_bone_name<class_BoneTwistDisperser3D_method_get_joint_bone_name>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const|                                              |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                       | :ref:`get_joint_count<class_BoneTwistDisperser3D_method_get_joint_count>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                     |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                   | :ref:`get_joint_twist_amount<class_BoneTwistDisperser3D_method_get_joint_twist_amount>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const|                                        |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                       | :ref:`get_reference_bone<class_BoneTwistDisperser3D_method_get_reference_bone>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                               |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                 | :ref:`get_reference_bone_name<class_BoneTwistDisperser3D_method_get_reference_bone_name>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                     |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                       | :ref:`get_root_bone<class_BoneTwistDisperser3D_method_get_root_bone>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                         |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                 | :ref:`get_root_bone_name<class_BoneTwistDisperser3D_method_get_root_bone_name>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                               |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>`                         | :ref:`get_twist_from<class_BoneTwistDisperser3D_method_get_twist_from>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                       |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                   | :ref:`get_weight_position<class_BoneTwistDisperser3D_method_get_weight_position>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                             |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                     | :ref:`is_end_bone_extended<class_BoneTwistDisperser3D_method_is_end_bone_extended>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                           |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                     | :ref:`is_twist_from_rest<class_BoneTwistDisperser3D_method_is_twist_from_rest>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                               |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_damping_curve<class_BoneTwistDisperser3D_method_set_damping_curve>`\ (\ index\: :ref:`int<class_int>`, curve\: :ref:`Curve<class_Curve>`\ )                                                      |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_disperse_mode<class_BoneTwistDisperser3D_method_set_disperse_mode>`\ (\ index\: :ref:`int<class_int>`, disperse_mode\: :ref:`DisperseMode<enum_BoneTwistDisperser3D_DisperseMode>`\ )            |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_end_bone<class_BoneTwistDisperser3D_method_set_end_bone>`\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ )                                                                     |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_end_bone_direction<class_BoneTwistDisperser3D_method_set_end_bone_direction>`\ (\ index\: :ref:`int<class_int>`, bone_direction\: :ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>`\ ) |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_end_bone_name<class_BoneTwistDisperser3D_method_set_end_bone_name>`\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ )                                                |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_extend_end_bone<class_BoneTwistDisperser3D_method_set_extend_end_bone>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                  |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_joint_twist_amount<class_BoneTwistDisperser3D_method_set_joint_twist_amount>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`, twist_amount\: :ref:`float<class_float>`\ )      |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_root_bone<class_BoneTwistDisperser3D_method_set_root_bone>`\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ )                                                                   |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_root_bone_name<class_BoneTwistDisperser3D_method_set_root_bone_name>`\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ )                                              |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_twist_from<class_BoneTwistDisperser3D_method_set_twist_from>`\ (\ index\: :ref:`int<class_int>`, from\: :ref:`Quaternion<class_Quaternion>`\ )                                                   |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_twist_from_rest<class_BoneTwistDisperser3D_method_set_twist_from_rest>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                  |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_weight_position<class_BoneTwistDisperser3D_method_set_weight_position>`\ (\ index\: :ref:`int<class_int>`, weight_position\: :ref:`float<class_float>`\ )                                        |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_BoneTwistDisperser3D_DisperseMode:

.. rst-class:: classref-enumeration

enum **DisperseMode**: :ref:`🔗<enum_BoneTwistDisperser3D_DisperseMode>`

.. _class_BoneTwistDisperser3D_constant_DISPERSE_MODE_EVEN:

.. rst-class:: classref-enumeration-constant

:ref:`DisperseMode<enum_BoneTwistDisperser3D_DisperseMode>` **DISPERSE_MODE_EVEN** = ``0``

Assign amounts so that they monotonically increase from ``0.0`` to ``1.0``, ensuring all weights are equal. For example, with five joints, the amounts would be ``0.2``, ``0.4``, ``0.6``, ``0.8``, and ``1.0`` starting from the root bone.

.. _class_BoneTwistDisperser3D_constant_DISPERSE_MODE_WEIGHTED:

.. rst-class:: classref-enumeration-constant

:ref:`DisperseMode<enum_BoneTwistDisperser3D_DisperseMode>` **DISPERSE_MODE_WEIGHTED** = ``1``

Assign amounts so that they monotonically increase from ``0.0`` to ``1.0``, based on the length of the bones between joint segments. See also :ref:`set_weight_position()<class_BoneTwistDisperser3D_method_set_weight_position>`.

.. _class_BoneTwistDisperser3D_constant_DISPERSE_MODE_CUSTOM:

.. rst-class:: classref-enumeration-constant

:ref:`DisperseMode<enum_BoneTwistDisperser3D_DisperseMode>` **DISPERSE_MODE_CUSTOM** = ``2``

You can assign arbitrary amounts to the joint list. See also :ref:`set_joint_twist_amount()<class_BoneTwistDisperser3D_method_set_joint_twist_amount>`.

When :ref:`is_end_bone_extended()<class_BoneTwistDisperser3D_method_is_end_bone_extended>` is ``false``, a child of the reference bone exists solely to determine the twist axis, so its custom amount has absolutely no effect at all.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_BoneTwistDisperser3D_property_mutable_bone_axes:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **mutable_bone_axes** = ``true`` :ref:`🔗<class_BoneTwistDisperser3D_property_mutable_bone_axes>`

.. rst-class:: classref-property-setget

- |void| **set_mutable_bone_axes**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **are_bone_axes_mutable**\ (\ )

If ``true``, the solver retrieves the bone axis from the bone pose every frame.

If ``false``, the solver retrieves the bone axis from the bone rest and caches it.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_property_setting_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **setting_count** = ``0`` :ref:`🔗<class_BoneTwistDisperser3D_property_setting_count>`

.. rst-class:: classref-property-setget

- |void| **set_setting_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_setting_count**\ (\ )

Il numero di impostazioni.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_BoneTwistDisperser3D_method_clear_settings:

.. rst-class:: classref-method

|void| **clear_settings**\ (\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_clear_settings>`

Cancella tutte le impostazioni.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_damping_curve:

.. rst-class:: classref-method

:ref:`Curve<class_Curve>` **get_damping_curve**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_damping_curve>`

Returns the damping curve when :ref:`get_disperse_mode()<class_BoneTwistDisperser3D_method_get_disperse_mode>` is :ref:`DISPERSE_MODE_CUSTOM<class_BoneTwistDisperser3D_constant_DISPERSE_MODE_CUSTOM>`.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_disperse_mode:

.. rst-class:: classref-method

:ref:`DisperseMode<enum_BoneTwistDisperser3D_DisperseMode>` **get_disperse_mode**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_disperse_mode>`

Returns whether to use automatic amount assignment or to allow manual assignment.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_end_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_end_bone**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_end_bone>`

Restituisce l'indice dell'osso finale della catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_end_bone_direction:

.. rst-class:: classref-method

:ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>` **get_end_bone_direction**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_end_bone_direction>`

Returns the tail direction of the end bone of the bone chain when :ref:`is_end_bone_extended()<class_BoneTwistDisperser3D_method_is_end_bone_extended>` is ``true``.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_end_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_end_bone_name**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_end_bone_name>`

Restituisce il nome dell'osso finale della coda d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_joint_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_joint_bone**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_joint_bone>`

Restituisce l'indice dell'osso in ``joint`` nella lista delle articolazioni della catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_joint_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_joint_bone_name**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_joint_bone_name>`

Restituisce il nome dell'osso in ``joint`` nella lista delle articolazioni della catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_joint_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_joint_count**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_joint_count>`

Restituisce il numero di articolazioni nella lista delle articolazioni della catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_joint_twist_amount:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_joint_twist_amount**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_joint_twist_amount>`

Restituisce la quantità di torsione in ``joint`` nella lista delle articolazioni della catena d'ossa quando :ref:`is_config_individual()<class_BoneTwistDisperser3D_method_is_config_individual>` è :ref:`DISPERSE_MODE_CUSTOM<class_BoneTwistDisperser3D_constant_DISPERSE_MODE_CUSTOM>`.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_reference_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_reference_bone**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_reference_bone>`

Returns the reference bone to extract twist of the setting at ``index``.

This bone is either the end of the chain or its parent, depending on :ref:`is_end_bone_extended()<class_BoneTwistDisperser3D_method_is_end_bone_extended>`.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_reference_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_reference_bone_name**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_reference_bone_name>`

Returns the reference bone name to extract twist of the setting at ``index``.

This bone is either the end of the chain or its parent, depending on :ref:`is_end_bone_extended()<class_BoneTwistDisperser3D_method_is_end_bone_extended>`.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_root_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_root_bone**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_root_bone>`

Restituisce l'indice dell'osso radice della catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_root_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_root_bone_name**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_root_bone_name>`

Restituisce il nome dell'osso radice della catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_twist_from:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **get_twist_from**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_twist_from>`

Returns the rotation to an arbitrary state before twisting for the current bone pose to extract the twist when :ref:`is_twist_from_rest()<class_BoneTwistDisperser3D_method_is_twist_from_rest>` is ``false``.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_weight_position:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_weight_position**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_weight_position>`

Returns the position at which to divide the segment between joints for weight assignment when :ref:`get_disperse_mode()<class_BoneTwistDisperser3D_method_get_disperse_mode>` is :ref:`DISPERSE_MODE_WEIGHTED<class_BoneTwistDisperser3D_constant_DISPERSE_MODE_WEIGHTED>`.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_is_end_bone_extended:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_end_bone_extended**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_is_end_bone_extended>`

Returns ``true`` if the end bone is extended to have a tail.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_is_twist_from_rest:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_twist_from_rest**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_is_twist_from_rest>`

Returns ``true`` if extracting the twist amount from the difference between the bone rest and the current bone pose.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_set_damping_curve:

.. rst-class:: classref-method

|void| **set_damping_curve**\ (\ index\: :ref:`int<class_int>`, curve\: :ref:`Curve<class_Curve>`\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_set_damping_curve>`

Sets the damping curve when :ref:`get_disperse_mode()<class_BoneTwistDisperser3D_method_get_disperse_mode>` is :ref:`DISPERSE_MODE_CUSTOM<class_BoneTwistDisperser3D_constant_DISPERSE_MODE_CUSTOM>`.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_set_disperse_mode:

.. rst-class:: classref-method

|void| **set_disperse_mode**\ (\ index\: :ref:`int<class_int>`, disperse_mode\: :ref:`DisperseMode<enum_BoneTwistDisperser3D_DisperseMode>`\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_set_disperse_mode>`

Sets whether to use automatic amount assignment or to allow manual assignment.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_set_end_bone:

.. rst-class:: classref-method

|void| **set_end_bone**\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_set_end_bone>`

Imposta l'indice dell'osso finale della catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_set_end_bone_direction:

.. rst-class:: classref-method

|void| **set_end_bone_direction**\ (\ index\: :ref:`int<class_int>`, bone_direction\: :ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>`\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_set_end_bone_direction>`

Imposta la direzione della coda dell'osso finale della catena d'ossa quando :ref:`is_end_bone_extended()<class_BoneTwistDisperser3D_method_is_end_bone_extended>` è ``true``.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_set_end_bone_name:

.. rst-class:: classref-method

|void| **set_end_bone_name**\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_set_end_bone_name>`

Sets the end bone name of the bone chain.

\ **Note:** The end bone must be a child of the root bone.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_set_extend_end_bone:

.. rst-class:: classref-method

|void| **set_extend_end_bone**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_set_extend_end_bone>`

Se ``enabled`` è ``true``, l'osso finale è allungato per avere una coda.

Se ``enabled`` è ``false``, :ref:`get_reference_bone()<class_BoneTwistDisperser3D_method_get_reference_bone>` diventa un genitore dell'osso finale e utilizza il vettore dell'osso finale come asse di torsione.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_set_joint_twist_amount:

.. rst-class:: classref-method

|void| **set_joint_twist_amount**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`, twist_amount\: :ref:`float<class_float>`\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_set_joint_twist_amount>`

Imposta la quantità di torsione in ``joint`` nella lista delle articolazioni della catena d'ossa quando :ref:`is_config_individual()<class_BoneTwistDisperser3D_method_is_config_individual>` è :ref:`DISPERSE_MODE_CUSTOM<class_BoneTwistDisperser3D_constant_DISPERSE_MODE_CUSTOM>`.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_set_root_bone:

.. rst-class:: classref-method

|void| **set_root_bone**\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_set_root_bone>`

Imposta l'indice dell'osso radice della catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_set_root_bone_name:

.. rst-class:: classref-method

|void| **set_root_bone_name**\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_set_root_bone_name>`

Imposta il nome dell'osso radice della catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_set_twist_from:

.. rst-class:: classref-method

|void| **set_twist_from**\ (\ index\: :ref:`int<class_int>`, from\: :ref:`Quaternion<class_Quaternion>`\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_set_twist_from>`

Sets the rotation to an arbitrary state before twisting for the current bone pose to extract the twist when :ref:`is_twist_from_rest()<class_BoneTwistDisperser3D_method_is_twist_from_rest>` is ``false``.

In other words, by calling :ref:`set_twist_from()<class_BoneTwistDisperser3D_method_set_twist_from>` by :ref:`SkeletonModifier3D.modification_processed<class_SkeletonModifier3D_signal_modification_processed>` of a specific :ref:`SkeletonModifier3D<class_SkeletonModifier3D>`, you can extract only the twists generated by modifiers processed after that but before this **BoneTwistDisperser3D**.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_set_twist_from_rest:

.. rst-class:: classref-method

|void| **set_twist_from_rest**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_set_twist_from_rest>`

If ``enabled`` is ``true``, it extracts the twist amount from the difference between the bone rest and the current bone pose.

If ``enabled`` is ``false``, it extracts the twist amount from the difference between :ref:`get_twist_from()<class_BoneTwistDisperser3D_method_get_twist_from>` and the current bone pose. See also :ref:`set_twist_from()<class_BoneTwistDisperser3D_method_set_twist_from>`.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_set_weight_position:

.. rst-class:: classref-method

|void| **set_weight_position**\ (\ index\: :ref:`int<class_int>`, weight_position\: :ref:`float<class_float>`\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_set_weight_position>`

Sets the position at which to divide the segment between joints for weight assignment when :ref:`get_disperse_mode()<class_BoneTwistDisperser3D_method_get_disperse_mode>` is :ref:`DISPERSE_MODE_WEIGHTED<class_BoneTwistDisperser3D_constant_DISPERSE_MODE_WEIGHTED>`.

For example, when ``weight_position`` is ``0.5``, if two bone segments with a length of ``1.0`` exist between three joints, weights are assigned to each joint from root to end at ratios of ``0.5``, ``1.0``, and ``0.5``. Then amounts become ``0.25``, ``0.75``, and ``1.0`` respectively.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
