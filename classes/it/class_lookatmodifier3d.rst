:github_url: hide

.. _class_LookAtModifier3D:

LookAtModifier3D
================

**Eredita:** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Il **LookAtModifier3D** ruota un osso per puntare verso un obiettivo.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questo :ref:`SkeletonModification2D<class_SkeletonModification2D>` ruota un osso per puntare verso un obiettivo. È estremamente utile per muovere la testa di un personaggio per guardare il giocatore, ruotare una torretta per guardare un bersaglio o qualsiasi altro caso in cui si voglia far ruotare un osso verso qualcosa in modo rapido e facile.

Quando si applicano più **LookAtModifier3D**, il **LookAtModifier3D** assegnato all'osso padre deve essere posizionato sopra il **LookAtModifier3D** assegnato all'osso figlio nella lista, affinché i risultati dell'osso figlio siano corretti.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                               | :ref:`bone<class_LookAtModifier3D_property_bone>`                                                           | ``-1``               |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`String<class_String>`                         | :ref:`bone_name<class_LookAtModifier3D_property_bone_name>`                                                 | ``""``               |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                           | :ref:`duration<class_LookAtModifier3D_property_duration>`                                                   | ``0.0``              |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`EaseType<enum_Tween_EaseType>`                | :ref:`ease_type<class_LookAtModifier3D_property_ease_type>`                                                 | ``0``                |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>`   | :ref:`forward_axis<class_LookAtModifier3D_property_forward_axis>`                                           | ``4``                |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                               | :ref:`origin_bone<class_LookAtModifier3D_property_origin_bone>`                                             |                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`String<class_String>`                         | :ref:`origin_bone_name<class_LookAtModifier3D_property_origin_bone_name>`                                   |                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`NodePath<class_NodePath>`                     | :ref:`origin_external_node<class_LookAtModifier3D_property_origin_external_node>`                           |                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`OriginFrom<enum_LookAtModifier3D_OriginFrom>` | :ref:`origin_from<class_LookAtModifier3D_property_origin_from>`                                             | ``0``                |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`                       | :ref:`origin_offset<class_LookAtModifier3D_property_origin_offset>`                                         | ``Vector3(0, 0, 0)`` |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                           | :ref:`origin_safe_margin<class_LookAtModifier3D_property_origin_safe_margin>`                               | ``0.1``              |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                           | :ref:`primary_damp_threshold<class_LookAtModifier3D_property_primary_damp_threshold>`                       |                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                           | :ref:`primary_limit_angle<class_LookAtModifier3D_property_primary_limit_angle>`                             |                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                           | :ref:`primary_negative_damp_threshold<class_LookAtModifier3D_property_primary_negative_damp_threshold>`     |                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                           | :ref:`primary_negative_limit_angle<class_LookAtModifier3D_property_primary_negative_limit_angle>`           |                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                           | :ref:`primary_positive_damp_threshold<class_LookAtModifier3D_property_primary_positive_damp_threshold>`     |                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                           | :ref:`primary_positive_limit_angle<class_LookAtModifier3D_property_primary_positive_limit_angle>`           |                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`Axis<enum_Vector3_Axis>`                      | :ref:`primary_rotation_axis<class_LookAtModifier3D_property_primary_rotation_axis>`                         | ``1``                |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                             | :ref:`relative<class_LookAtModifier3D_property_relative>`                                                   | ``false``            |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                           | :ref:`secondary_damp_threshold<class_LookAtModifier3D_property_secondary_damp_threshold>`                   |                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                           | :ref:`secondary_limit_angle<class_LookAtModifier3D_property_secondary_limit_angle>`                         |                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                           | :ref:`secondary_negative_damp_threshold<class_LookAtModifier3D_property_secondary_negative_damp_threshold>` |                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                           | :ref:`secondary_negative_limit_angle<class_LookAtModifier3D_property_secondary_negative_limit_angle>`       |                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                           | :ref:`secondary_positive_damp_threshold<class_LookAtModifier3D_property_secondary_positive_damp_threshold>` |                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                           | :ref:`secondary_positive_limit_angle<class_LookAtModifier3D_property_secondary_positive_limit_angle>`       |                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                             | :ref:`symmetry_limitation<class_LookAtModifier3D_property_symmetry_limitation>`                             |                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`NodePath<class_NodePath>`                     | :ref:`target_node<class_LookAtModifier3D_property_target_node>`                                             | ``NodePath("")``     |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`TransitionType<enum_Tween_TransitionType>`    | :ref:`transition_type<class_LookAtModifier3D_property_transition_type>`                                     | ``0``                |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                             | :ref:`use_angle_limitation<class_LookAtModifier3D_property_use_angle_limitation>`                           | ``false``            |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                             | :ref:`use_secondary_rotation<class_LookAtModifier3D_property_use_secondary_rotation>`                       | ``true``             |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_interpolation_remaining<class_LookAtModifier3D_method_get_interpolation_remaining>`\ (\ ) |const| |
   +---------------------------+-------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`is_interpolating<class_LookAtModifier3D_method_is_interpolating>`\ (\ ) |const|                       |
   +---------------------------+-------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`is_target_within_limitation<class_LookAtModifier3D_method_is_target_within_limitation>`\ (\ ) |const| |
   +---------------------------+-------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_LookAtModifier3D_OriginFrom:

.. rst-class:: classref-enumeration

enum **OriginFrom**: :ref:`🔗<enum_LookAtModifier3D_OriginFrom>`

.. _class_LookAtModifier3D_constant_ORIGIN_FROM_SELF:

.. rst-class:: classref-enumeration-constant

:ref:`OriginFrom<enum_LookAtModifier3D_OriginFrom>` **ORIGIN_FROM_SELF** = ``0``

Come origine viene utilizzata la posizione di appoggio dell'osso specificato in :ref:`bone<class_LookAtModifier3D_property_bone>`.

.. _class_LookAtModifier3D_constant_ORIGIN_FROM_SPECIFIC_BONE:

.. rst-class:: classref-enumeration-constant

:ref:`OriginFrom<enum_LookAtModifier3D_OriginFrom>` **ORIGIN_FROM_SPECIFIC_BONE** = ``1``

Come origine viene utilizzata la posizione globale dell'appoggio dell'osso specificato in :ref:`origin_bone<class_LookAtModifier3D_property_origin_bone>`.

\ **Nota:** Si consiglia di selezionare solo l'osso padre, a meno che non si abbia familiarità con il processo di elaborazione dell'osso. L'appoggio dell'osso specificato al momento dell'elaborazione di **LookAtModifier3D** viene utilizzato come riferimento. In altre parole, se si specifica un osso figlio e **LookAtModifier3D** fa muovere l'osso figlio, il risultato e la direzione renderizzati non corrisponderanno.

.. _class_LookAtModifier3D_constant_ORIGIN_FROM_EXTERNAL_NODE:

.. rst-class:: classref-enumeration-constant

:ref:`OriginFrom<enum_LookAtModifier3D_OriginFrom>` **ORIGIN_FROM_EXTERNAL_NODE** = ``2``

La posizione globale del :ref:`Node3D<class_Node3D>` specificato in :ref:`origin_external_node<class_LookAtModifier3D_property_origin_external_node>` viene utilizzata come origine.

\ **Nota:** Come per :ref:`ORIGIN_FROM_SPECIFIC_BONE<class_LookAtModifier3D_constant_ORIGIN_FROM_SPECIFIC_BONE>`, quando si specifica un :ref:`BoneAttachment3D<class_BoneAttachment3D>` con un osso figlio assegnato, il risultato renderizzato e la direzione non corrisponderanno.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_LookAtModifier3D_property_bone:

.. rst-class:: classref-property

:ref:`int<class_int>` **bone** = ``-1`` :ref:`🔗<class_LookAtModifier3D_property_bone>`

.. rst-class:: classref-property-setget

- |void| **set_bone**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bone**\ (\ )

Indice del :ref:`bone_name<class_LookAtModifier3D_property_bone_name>` nello :ref:`Skeleton3D<class_Skeleton3D>` genitore.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_bone_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **bone_name** = ``""`` :ref:`🔗<class_LookAtModifier3D_property_bone_name>`

.. rst-class:: classref-property-setget

- |void| **set_bone_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_bone_name**\ (\ )

Il nome dell'osso dello :ref:`Skeleton3D<class_Skeleton3D>` su cui opererà la modificazione.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_duration:

.. rst-class:: classref-property

:ref:`float<class_float>` **duration** = ``0.0`` :ref:`🔗<class_LookAtModifier3D_property_duration>`

.. rst-class:: classref-property-setget

- |void| **set_duration**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_duration**\ (\ )

La durata dell'interpolazione basata sul tempo. L'interpolazione viene attivata nei seguenti casi:

- Quando il nodo obiettivo viene modificato

- Quando un asse viene capovolto a causa della limitazione dell'angolo

\ **Nota:** Il capovolgimento avviene quando l'obiettivo è al di fuori del limite angolare e l'asse di rotazione secondaria calcolato internamente del vettore in avanti viene capovolto. Visivamente, avviene quando l'obiettivo è al di fuori del limite angolare e attraversa il piano di :ref:`forward_axis<class_LookAtModifier3D_property_forward_axis>` e :ref:`primary_rotation_axis<class_LookAtModifier3D_property_primary_rotation_axis>`.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_ease_type:

.. rst-class:: classref-property

:ref:`EaseType<enum_Tween_EaseType>` **ease_type** = ``0`` :ref:`🔗<class_LookAtModifier3D_property_ease_type>`

.. rst-class:: classref-property-setget

- |void| **set_ease_type**\ (\ value\: :ref:`EaseType<enum_Tween_EaseType>`\ )
- :ref:`EaseType<enum_Tween_EaseType>` **get_ease_type**\ (\ )

The ease type of the time-based interpolation. See also :ref:`EaseType<enum_Tween_EaseType>`.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_forward_axis:

.. rst-class:: classref-property

:ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>` **forward_axis** = ``4`` :ref:`🔗<class_LookAtModifier3D_property_forward_axis>`

.. rst-class:: classref-property-setget

- |void| **set_forward_axis**\ (\ value\: :ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>`\ )
- :ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>` **get_forward_axis**\ (\ )

L'asse in avanti dell'osso. Questo :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` modifica l'osso in modo che questo asse punti verso il :ref:`target_node<class_LookAtModifier3D_property_target_node>`.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_origin_bone:

.. rst-class:: classref-property

:ref:`int<class_int>` **origin_bone** :ref:`🔗<class_LookAtModifier3D_property_origin_bone>`

.. rst-class:: classref-property-setget

- |void| **set_origin_bone**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_origin_bone**\ (\ )

Indice del :ref:`origin_bone_name<class_LookAtModifier3D_property_origin_bone_name>` nello :ref:`Skeleton3D<class_Skeleton3D>` genitore.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_origin_bone_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **origin_bone_name** :ref:`🔗<class_LookAtModifier3D_property_origin_bone_name>`

.. rst-class:: classref-property-setget

- |void| **set_origin_bone_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_origin_bone_name**\ (\ )

Se :ref:`origin_from<class_LookAtModifier3D_property_origin_from>` è :ref:`ORIGIN_FROM_SPECIFIC_BONE<class_LookAtModifier3D_constant_ORIGIN_FROM_SPECIFIC_BONE>`, la posizione globale della posa dell'osso specificata per questo è utilizzata come origine.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_origin_external_node:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **origin_external_node** :ref:`🔗<class_LookAtModifier3D_property_origin_external_node>`

.. rst-class:: classref-property-setget

- |void| **set_origin_external_node**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_origin_external_node**\ (\ )

Se :ref:`origin_from<class_LookAtModifier3D_property_origin_from>` è :ref:`ORIGIN_FROM_EXTERNAL_NODE<class_LookAtModifier3D_constant_ORIGIN_FROM_EXTERNAL_NODE>`, la posizione globale del :ref:`Node3D<class_Node3D>` specificato per questo è utilizzata come origine.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_origin_from:

.. rst-class:: classref-property

:ref:`OriginFrom<enum_LookAtModifier3D_OriginFrom>` **origin_from** = ``0`` :ref:`🔗<class_LookAtModifier3D_property_origin_from>`

.. rst-class:: classref-property-setget

- |void| **set_origin_from**\ (\ value\: :ref:`OriginFrom<enum_LookAtModifier3D_OriginFrom>`\ )
- :ref:`OriginFrom<enum_LookAtModifier3D_OriginFrom>` **get_origin_from**\ (\ )

Questo valore determina da quale origine vengono recuperati i dati da utilizzare nel calcolo del vettore in avanti.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_origin_offset:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **origin_offset** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_LookAtModifier3D_property_origin_offset>`

.. rst-class:: classref-property-setget

- |void| **set_origin_offset**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_origin_offset**\ (\ )

L'offset dell'origine della posa d'ossa. Far corrispondere le origini tramite un offset è utile nei casi in cui più ossa devono sempre essere rivolte nella stessa direzione, come gli occhi.

\ **Nota:** Questo valore indica la posizione locale dell'oggetto impostato in :ref:`origin_from<class_LookAtModifier3D_property_origin_from>`.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_origin_safe_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **origin_safe_margin** = ``0.1`` :ref:`🔗<class_LookAtModifier3D_property_origin_safe_margin>`

.. rst-class:: classref-property-setget

- |void| **set_origin_safe_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_origin_safe_margin**\ (\ )

Se l'obiettivo passa troppo vicino all'origine rispetto a questo valore, viene utilizzata l'interpolazione basata sul tempo anche se l'obiettivo si trova entro i limiti angolari, per evitare che la velocità angolare diventi troppo elevata.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_primary_damp_threshold:

.. rst-class:: classref-property

:ref:`float<class_float>` **primary_damp_threshold** :ref:`🔗<class_LookAtModifier3D_property_primary_damp_threshold>`

.. rst-class:: classref-property-setget

- |void| **set_primary_damp_threshold**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_primary_damp_threshold**\ (\ )

La soglia per iniziare lo smorzamento per :ref:`primary_limit_angle<class_LookAtModifier3D_property_primary_limit_angle>`. Fornisce un'interpolazione non lineare (b-spline), facendo percepire più resistenza quanto più ruota verso il limite dei bordi. Ciò è utile per simulare i limiti del movimento umano.

Se ``1.0``, non viene effettuato alcuno smorzamento. Se ``0.0``, lo smorzamento viene sempre effettuato.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_primary_limit_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **primary_limit_angle** :ref:`🔗<class_LookAtModifier3D_property_primary_limit_angle>`

.. rst-class:: classref-property-setget

- |void| **set_primary_limit_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_primary_limit_angle**\ (\ )

The limit angle of the primary rotation when :ref:`symmetry_limitation<class_LookAtModifier3D_property_symmetry_limitation>` is ``true``, in radians.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_primary_negative_damp_threshold:

.. rst-class:: classref-property

:ref:`float<class_float>` **primary_negative_damp_threshold** :ref:`🔗<class_LookAtModifier3D_property_primary_negative_damp_threshold>`

.. rst-class:: classref-property-setget

- |void| **set_primary_negative_damp_threshold**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_primary_negative_damp_threshold**\ (\ )

La soglia per iniziare lo smorzamento per :ref:`primary_negative_limit_angle<class_LookAtModifier3D_property_primary_negative_limit_angle>`.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_primary_negative_limit_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **primary_negative_limit_angle** :ref:`🔗<class_LookAtModifier3D_property_primary_negative_limit_angle>`

.. rst-class:: classref-property-setget

- |void| **set_primary_negative_limit_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_primary_negative_limit_angle**\ (\ )

The limit angle of negative side of the primary rotation when :ref:`symmetry_limitation<class_LookAtModifier3D_property_symmetry_limitation>` is ``false``, in radians.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_primary_positive_damp_threshold:

.. rst-class:: classref-property

:ref:`float<class_float>` **primary_positive_damp_threshold** :ref:`🔗<class_LookAtModifier3D_property_primary_positive_damp_threshold>`

.. rst-class:: classref-property-setget

- |void| **set_primary_positive_damp_threshold**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_primary_positive_damp_threshold**\ (\ )

La soglia per iniziare lo smorzamento per :ref:`primary_positive_limit_angle<class_LookAtModifier3D_property_primary_positive_limit_angle>`.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_primary_positive_limit_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **primary_positive_limit_angle** :ref:`🔗<class_LookAtModifier3D_property_primary_positive_limit_angle>`

.. rst-class:: classref-property-setget

- |void| **set_primary_positive_limit_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_primary_positive_limit_angle**\ (\ )

The limit angle of positive side of the primary rotation when :ref:`symmetry_limitation<class_LookAtModifier3D_property_symmetry_limitation>` is ``false``, in radians.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_primary_rotation_axis:

.. rst-class:: classref-property

:ref:`Axis<enum_Vector3_Axis>` **primary_rotation_axis** = ``1`` :ref:`🔗<class_LookAtModifier3D_property_primary_rotation_axis>`

.. rst-class:: classref-property-setget

- |void| **set_primary_rotation_axis**\ (\ value\: :ref:`Axis<enum_Vector3_Axis>`\ )
- :ref:`Axis<enum_Vector3_Axis>` **get_primary_rotation_axis**\ (\ )

L'asse della prima rotazione. Questo :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` funziona componendo la rotazione tramite angoli di Eulero per impedire la rotazione di :ref:`forward_axis<class_LookAtModifier3D_property_forward_axis>`.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_relative:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **relative** = ``false`` :ref:`🔗<class_LookAtModifier3D_property_relative>`

.. rst-class:: classref-property-setget

- |void| **set_relative**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_relative**\ (\ )

The relative option. If ``true``, the rotation is applied relative to the pose. If ``false``, the rotation is applied relative to the rest. It means to replace the current pose with the **LookAtModifier3D**'s result.

\ **Note:** This option affects the base angle for :ref:`use_angle_limitation<class_LookAtModifier3D_property_use_angle_limitation>` unlike :ref:`IterateIK3D<class_IterateIK3D>`'s :ref:`JointLimitation3D<class_JointLimitation3D>`. Since the **LookAtModifier3D** relies strongly on Euler rotation, the axis that determines the limitation and the actual rotation are strongly tied together.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_secondary_damp_threshold:

.. rst-class:: classref-property

:ref:`float<class_float>` **secondary_damp_threshold** :ref:`🔗<class_LookAtModifier3D_property_secondary_damp_threshold>`

.. rst-class:: classref-property-setget

- |void| **set_secondary_damp_threshold**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_secondary_damp_threshold**\ (\ )

La soglia per iniziare lo smorzamento per :ref:`secondary_limit_angle<class_LookAtModifier3D_property_secondary_limit_angle>`.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_secondary_limit_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **secondary_limit_angle** :ref:`🔗<class_LookAtModifier3D_property_secondary_limit_angle>`

.. rst-class:: classref-property-setget

- |void| **set_secondary_limit_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_secondary_limit_angle**\ (\ )

The limit angle of the secondary rotation when :ref:`symmetry_limitation<class_LookAtModifier3D_property_symmetry_limitation>` is ``true``, in radians.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_secondary_negative_damp_threshold:

.. rst-class:: classref-property

:ref:`float<class_float>` **secondary_negative_damp_threshold** :ref:`🔗<class_LookAtModifier3D_property_secondary_negative_damp_threshold>`

.. rst-class:: classref-property-setget

- |void| **set_secondary_negative_damp_threshold**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_secondary_negative_damp_threshold**\ (\ )

La soglia per iniziare lo smorzamento per :ref:`secondary_negative_limit_angle<class_LookAtModifier3D_property_secondary_negative_limit_angle>`.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_secondary_negative_limit_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **secondary_negative_limit_angle** :ref:`🔗<class_LookAtModifier3D_property_secondary_negative_limit_angle>`

.. rst-class:: classref-property-setget

- |void| **set_secondary_negative_limit_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_secondary_negative_limit_angle**\ (\ )

The limit angle of negative side of the secondary rotation when :ref:`symmetry_limitation<class_LookAtModifier3D_property_symmetry_limitation>` is ``false``, in radians.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_secondary_positive_damp_threshold:

.. rst-class:: classref-property

:ref:`float<class_float>` **secondary_positive_damp_threshold** :ref:`🔗<class_LookAtModifier3D_property_secondary_positive_damp_threshold>`

.. rst-class:: classref-property-setget

- |void| **set_secondary_positive_damp_threshold**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_secondary_positive_damp_threshold**\ (\ )

La soglia per iniziare lo smorzamento per :ref:`secondary_positive_limit_angle<class_LookAtModifier3D_property_secondary_positive_limit_angle>`.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_secondary_positive_limit_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **secondary_positive_limit_angle** :ref:`🔗<class_LookAtModifier3D_property_secondary_positive_limit_angle>`

.. rst-class:: classref-property-setget

- |void| **set_secondary_positive_limit_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_secondary_positive_limit_angle**\ (\ )

The limit angle of positive side of the secondary rotation when :ref:`symmetry_limitation<class_LookAtModifier3D_property_symmetry_limitation>` is ``false``, in radians.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_symmetry_limitation:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **symmetry_limitation** :ref:`🔗<class_LookAtModifier3D_property_symmetry_limitation>`

.. rst-class:: classref-property-setget

- |void| **set_symmetry_limitation**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_limitation_symmetry**\ (\ )

If ``true``, the limitations are spread from the bone symmetrically.

If ``false``, the limitation can be specified separately for each side of the bone rest.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_target_node:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **target_node** = ``NodePath("")`` :ref:`🔗<class_LookAtModifier3D_property_target_node>`

.. rst-class:: classref-property-setget

- |void| **set_target_node**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_target_node**\ (\ )

Il :ref:`NodePath<class_NodePath>` al nodo che è l'obiettivo per la modificazione "look at". Questo nodo è ciò verso cui la modificazione ruoterà l'osso.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_transition_type:

.. rst-class:: classref-property

:ref:`TransitionType<enum_Tween_TransitionType>` **transition_type** = ``0`` :ref:`🔗<class_LookAtModifier3D_property_transition_type>`

.. rst-class:: classref-property-setget

- |void| **set_transition_type**\ (\ value\: :ref:`TransitionType<enum_Tween_TransitionType>`\ )
- :ref:`TransitionType<enum_Tween_TransitionType>` **get_transition_type**\ (\ )

Il tipo di transizione dell'interpolazione basata sul tempo. Vedi anche :ref:`TransitionType<enum_Tween_TransitionType>`.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_use_angle_limitation:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_angle_limitation** = ``false`` :ref:`🔗<class_LookAtModifier3D_property_use_angle_limitation>`

.. rst-class:: classref-property-setget

- |void| **set_use_angle_limitation**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_angle_limitation**\ (\ )

If ``true``, limits the amount of rotation. For example, this helps to prevent a character's neck from rotating 360 degrees.

\ **Note:** As with :ref:`AnimationTree<class_AnimationTree>` blending, interpolation is provided that favors :ref:`Skeleton3D.get_bone_rest()<class_Skeleton3D_method_get_bone_rest>` or :ref:`Skeleton3D.get_bone_pose()<class_Skeleton3D_method_get_bone_pose>` depends on the :ref:`relative<class_LookAtModifier3D_property_relative>` option. This means that interpolation does not select the shortest path in some cases.

\ **Note:** Some values for :ref:`transition_type<class_LookAtModifier3D_property_transition_type>` (such as :ref:`Tween.TRANS_BACK<class_Tween_constant_TRANS_BACK>`, :ref:`Tween.TRANS_ELASTIC<class_Tween_constant_TRANS_ELASTIC>`, and :ref:`Tween.TRANS_SPRING<class_Tween_constant_TRANS_SPRING>`) may exceed the limitations. If interpolation occurs while overshooting the limitations, the result might not respect the bone rest.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_use_secondary_rotation:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_secondary_rotation** = ``true`` :ref:`🔗<class_LookAtModifier3D_property_use_secondary_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_use_secondary_rotation**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_secondary_rotation**\ (\ )

Se ``true``, fornisce la rotazione su due assi.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_LookAtModifier3D_method_get_interpolation_remaining:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_interpolation_remaining**\ (\ ) |const| :ref:`🔗<class_LookAtModifier3D_method_get_interpolation_remaining>`

Restituisce i secondi rimanenti dell'interpolazione basata sul tempo.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_method_is_interpolating:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_interpolating**\ (\ ) |const| :ref:`🔗<class_LookAtModifier3D_method_is_interpolating>`

Restituisce ``true`` se l'interpolazione basata sul tempo è in esecuzione. Se ``true``, è equivalente a :ref:`get_interpolation_remaining()<class_LookAtModifier3D_method_get_interpolation_remaining>` quando restituisce ``0.0``.

Questo metodo è utile per determinare se è possibile rimuovere un **LookAtModifier3D** in modo sicuro.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_method_is_target_within_limitation:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_target_within_limitation**\ (\ ) |const| :ref:`🔗<class_LookAtModifier3D_method_is_target_within_limitation>`

Restituisce se l'obiettivo rientra nei limiti angolari. È utile per annullare l'impostazione di :ref:`target_node<class_LookAtModifier3D_property_target_node>` quando l'obiettivo è al di fuori dei limiti angolari.

\ **Nota:** Il valore viene aggiornato dopo :ref:`SkeletonModifier3D._process_modification()<class_SkeletonModifier3D_private_method__process_modification>`. Per recuperare correttamente questo valore, consigliamo di utilizzare il segnale :ref:`SkeletonModifier3D.modification_processed<class_SkeletonModifier3D_signal_modification_processed>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
