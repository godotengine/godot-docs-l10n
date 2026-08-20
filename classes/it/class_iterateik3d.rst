:github_url: hide

.. _class_IterateIK3D:

IterateIK3D
===========

**Eredita:** :ref:`ChainIK3D<class_ChainIK3D>` **<** :ref:`IKModifier3D<class_IKModifier3D>` **<** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`CCDIK3D<class_CCDIK3D>`, :ref:`FABRIK3D<class_FABRIK3D>`, :ref:`JacobianIK3D<class_JacobianIK3D>`

Uno :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` per avvicinarsi all'obiettivo ripetendo piccole rotazioni.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Classe base di :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` per raggiungere l'obiettivo ripetendo piccole rotazioni.

Ogni catena di ossa (impostazione) ha un effettore, che è elaborato nell'ordine dell'elenco delle impostazioni. È possibile impostare alcune limitazioni per ogni articolazione.

\ **Nota:** Tutti i metodi di questa classe accettano un parametro ``index``. Questo parametro specifica quale voce nell'elenco delle impostazioni restituire, se l'IK ha più voci (ad esempio, ``settings/<index>/target_node``).

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------+-----------------+
   | :ref:`float<class_float>` | :ref:`angular_delta_limit<class_IterateIK3D_property_angular_delta_limit>` | ``0.034906585`` |
   +---------------------------+----------------------------------------------------------------------------+-----------------+
   | :ref:`bool<class_bool>`   | :ref:`deterministic<class_IterateIK3D_property_deterministic>`             | ``false``       |
   +---------------------------+----------------------------------------------------------------------------+-----------------+
   | :ref:`int<class_int>`     | :ref:`max_iterations<class_IterateIK3D_property_max_iterations>`           | ``4``           |
   +---------------------------+----------------------------------------------------------------------------+-----------------+
   | :ref:`float<class_float>` | :ref:`min_distance<class_IterateIK3D_property_min_distance>`               | ``0.001``       |
   +---------------------------+----------------------------------------------------------------------------+-----------------+
   | :ref:`int<class_int>`     | :ref:`setting_count<class_IterateIK3D_property_setting_count>`             | ``0``           |
   +---------------------------+----------------------------------------------------------------------------+-----------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`JointLimitation3D<class_JointLimitation3D>`                     | :ref:`get_joint_limitation<class_IterateIK3D_method_get_joint_limitation>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const|                                                                                                  |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>` | :ref:`get_joint_limitation_right_axis<class_IterateIK3D_method_get_joint_limitation_right_axis>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const|                                                                            |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                         | :ref:`get_joint_limitation_right_axis_vector<class_IterateIK3D_method_get_joint_limitation_right_axis_vector>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const|                                                              |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>`                                   | :ref:`get_joint_limitation_rotation_offset<class_IterateIK3D_method_get_joint_limitation_rotation_offset>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const|                                                                  |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RotationAxis<enum_SkeletonModifier3D_RotationAxis>`             | :ref:`get_joint_rotation_axis<class_IterateIK3D_method_get_joint_rotation_axis>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const|                                                                                            |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                         | :ref:`get_joint_rotation_axis_vector<class_IterateIK3D_method_get_joint_rotation_axis_vector>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const|                                                                              |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                                       | :ref:`get_target_node<class_IterateIK3D_method_get_target_node>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                                                           |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_joint_limitation<class_IterateIK3D_method_set_joint_limitation>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`, limitation\: :ref:`JointLimitation3D<class_JointLimitation3D>`\ )                                          |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_joint_limitation_right_axis<class_IterateIK3D_method_set_joint_limitation_right_axis>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`, direction\: :ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>`\ ) |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_joint_limitation_right_axis_vector<class_IterateIK3D_method_set_joint_limitation_right_axis_vector>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`, vector\: :ref:`Vector3<class_Vector3>`\ )                              |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_joint_limitation_rotation_offset<class_IterateIK3D_method_set_joint_limitation_rotation_offset>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`, offset\: :ref:`Quaternion<class_Quaternion>`\ )                            |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_joint_rotation_axis<class_IterateIK3D_method_set_joint_rotation_axis>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`, axis\: :ref:`RotationAxis<enum_SkeletonModifier3D_RotationAxis>`\ )                                  |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_joint_rotation_axis_vector<class_IterateIK3D_method_set_joint_rotation_axis_vector>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`, axis_vector\: :ref:`Vector3<class_Vector3>`\ )                                         |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_target_node<class_IterateIK3D_method_set_target_node>`\ (\ index\: :ref:`int<class_int>`, target_node\: :ref:`NodePath<class_NodePath>`\ )                                                                                                    |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_IterateIK3D_property_angular_delta_limit:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_delta_limit** = ``0.034906585`` :ref:`🔗<class_IterateIK3D_property_angular_delta_limit>`

.. rst-class:: classref-property-setget

- |void| **set_angular_delta_limit**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_angular_delta_limit**\ (\ )

La rotazione massima consentita per ciascun osso in una singola iterazione.

\ **Nota:** Questa limitazione viene applicata durante ogni iterazione. Ad esempio, se :ref:`max_iterations<class_IterateIK3D_property_max_iterations>` è ``4`` e :ref:`angular_delta_limit<class_IterateIK3D_property_angular_delta_limit>` è ``5`` gradi, la rotazione massima possibile in un singolo frame è di ``20`` gradi.

.. rst-class:: classref-item-separator

----

.. _class_IterateIK3D_property_deterministic:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **deterministic** = ``false`` :ref:`🔗<class_IterateIK3D_property_deterministic>`

.. rst-class:: classref-property-setget

- |void| **set_deterministic**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_deterministic**\ (\ )

Se ``false``, il risultato viene calcolato a partire dal risultato **IterateIK3D** del frame precedente come stato iniziale.

Se ``true``, il risultato **IterateIK3D** del frame precedente viene scartato. A questo punto, il nuovo risultato viene calcolato a partire dalla posa dell'osso escludendo **IterateIK3D** come stato iniziale. Ciò significa che il risultato sarà sempre uguale finché la posizione di destinazione e la posa dell'osso precedente sono le stesse. Tuttavia, se :ref:`angular_delta_limit<class_IterateIK3D_property_angular_delta_limit>` e :ref:`max_iterations<class_IterateIK3D_property_max_iterations>` sono impostati su valori troppo piccoli, l'osso finale della catena non raggiungerà mai la destinazione.

.. rst-class:: classref-item-separator

----

.. _class_IterateIK3D_property_max_iterations:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_iterations** = ``4`` :ref:`🔗<class_IterateIK3D_property_max_iterations>`

.. rst-class:: classref-property-setget

- |void| **set_max_iterations**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_iterations**\ (\ )

Il numero di cicli di iterazione utilizzati dal risolutore IK per produrre risultati più accurati.

.. rst-class:: classref-item-separator

----

.. _class_IterateIK3D_property_min_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **min_distance** = ``0.001`` :ref:`🔗<class_IterateIK3D_property_min_distance>`

.. rst-class:: classref-property-setget

- |void| **set_min_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_min_distance**\ (\ )

La distanza minima tra l'osso finale e la destinazione. Se la distanza è inferiore a questo valore, il risolutore IK interrompe ulteriori iterazioni.

.. rst-class:: classref-item-separator

----

.. _class_IterateIK3D_property_setting_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **setting_count** = ``0`` :ref:`🔗<class_IterateIK3D_property_setting_count>`

.. rst-class:: classref-property-setget

- |void| **set_setting_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_setting_count**\ (\ )

Il numero di impostazioni.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_IterateIK3D_method_get_joint_limitation:

.. rst-class:: classref-method

:ref:`JointLimitation3D<class_JointLimitation3D>` **get_joint_limitation**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_IterateIK3D_method_get_joint_limitation>`

Restituisce la limitazione dell'articolazione in ``joint`` nella lista delle articolazioni della catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_IterateIK3D_method_get_joint_limitation_right_axis:

.. rst-class:: classref-method

:ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>` **get_joint_limitation_right_axis**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_IterateIK3D_method_get_joint_limitation_right_axis>`

Restituisce l'asse destro della limitazione dell'articolazione in ``joint`` nella lista delle articolazioni della catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_IterateIK3D_method_get_joint_limitation_right_axis_vector:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_joint_limitation_right_axis_vector**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_IterateIK3D_method_get_joint_limitation_right_axis_vector>`

Restituisce il vettore dell'asse destro per la limitazione dell'articolazione in ``joint`` nella lista delle articolazioni della catena d'ossa.

Se :ref:`get_joint_limitation_right_axis()<class_IterateIK3D_method_get_joint_limitation_right_axis>` è :ref:`SkeletonModifier3D.SECONDARY_DIRECTION_NONE<class_SkeletonModifier3D_constant_SECONDARY_DIRECTION_NONE>`, questo metodo restituisce ``Vector3(0, 0, 0)``.

.. rst-class:: classref-item-separator

----

.. _class_IterateIK3D_method_get_joint_limitation_rotation_offset:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **get_joint_limitation_rotation_offset**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_IterateIK3D_method_get_joint_limitation_rotation_offset>`

Restituisce l'offset di rotazione della limitazione dell'articolazione in ``joint`` nell'elenco delle articolazioni della catena d'ossa.

La rotazione è effettuata nello spazio locale, definito dalla direzione dell'osso (in generale da genitore a figlio) come asse +Y e da :ref:`get_joint_limitation_right_axis_vector()<class_IterateIK3D_method_get_joint_limitation_right_axis_vector>` come asse +X.

Se gli assi +X e +Y non sono ortogonali, l'asse +X viene implicitamente modificato per renderlo ortogonale.

Inoltre, se la lunghezza di :ref:`get_joint_limitation_right_axis_vector()<class_IterateIK3D_method_get_joint_limitation_right_axis_vector>` è zero, lo spazio viene creato ruotando la posa di riferimento attraverso l'arco più breve che ruota l'asse +Y della posa di riferimento, in modo da farlo coincidere con la direzione dell'osso.

Qui, la posa di riferimento è la posa dell'osso immediatamente prima dell'elaborazione dell'IK.

.. rst-class:: classref-item-separator

----

.. _class_IterateIK3D_method_get_joint_rotation_axis:

.. rst-class:: classref-method

:ref:`RotationAxis<enum_SkeletonModifier3D_RotationAxis>` **get_joint_rotation_axis**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_IterateIK3D_method_get_joint_rotation_axis>`

Restituisce l'asse di rotazione in ``joint`` nella lista delle articolazioni della catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_IterateIK3D_method_get_joint_rotation_axis_vector:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_joint_rotation_axis_vector**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_IterateIK3D_method_get_joint_rotation_axis_vector>`

Restituisce il vettore dell'asse di rotazione per l'articolazione specificata nella catena d'ossa. Questo vettore rappresenta l'asse attorno al quale l'articolazione può ruotare. È determinato in base all'asse di rotazione impostato per l'articolazione.

Se :ref:`get_joint_rotation_axis()<class_IterateIK3D_method_get_joint_rotation_axis>` è :ref:`SkeletonModifier3D.ROTATION_AXIS_ALL<class_SkeletonModifier3D_constant_ROTATION_AXIS_ALL>`, questo metodo restituisce ``Vector3(0, 0, 0)``.

.. rst-class:: classref-item-separator

----

.. _class_IterateIK3D_method_get_target_node:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_target_node**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_IterateIK3D_method_get_target_node>`

Restituisce il nodo di destinazione che l'osso finale sta tentando di raggiungere.

.. rst-class:: classref-item-separator

----

.. _class_IterateIK3D_method_set_joint_limitation:

.. rst-class:: classref-method

|void| **set_joint_limitation**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`, limitation\: :ref:`JointLimitation3D<class_JointLimitation3D>`\ ) :ref:`🔗<class_IterateIK3D_method_set_joint_limitation>`

Imposta la limitazione dell'articolazione in ``joint`` nella lista delle articolazioni della catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_IterateIK3D_method_set_joint_limitation_right_axis:

.. rst-class:: classref-method

|void| **set_joint_limitation_right_axis**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`, direction\: :ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>`\ ) :ref:`🔗<class_IterateIK3D_method_set_joint_limitation_right_axis>`

Imposta l'asse destro della limitazione dell'articolazione in ``joint`` nella lista delle articolazioni della catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_IterateIK3D_method_set_joint_limitation_right_axis_vector:

.. rst-class:: classref-method

|void| **set_joint_limitation_right_axis_vector**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`, vector\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_IterateIK3D_method_set_joint_limitation_right_axis_vector>`

Imposta il vettore facoltativo dell'asse destro per la limitazione dell'articolazione in ``joint`` nella lista delle articolazioni della catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_IterateIK3D_method_set_joint_limitation_rotation_offset:

.. rst-class:: classref-method

|void| **set_joint_limitation_rotation_offset**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`, offset\: :ref:`Quaternion<class_Quaternion>`\ ) :ref:`🔗<class_IterateIK3D_method_set_joint_limitation_rotation_offset>`

Imposta l'offset di rotazione della limitazione dell'articolazione in ``joint`` nell'elenco delle articolazioni della catena d'ossa.

La rotazione è effettuata nello spazio locale, definito dalla direzione dell'osso (in generale da genitore a figlio) come asse +Y e da :ref:`get_joint_limitation_right_axis_vector()<class_IterateIK3D_method_get_joint_limitation_right_axis_vector>` come asse +X.

Se gli assi +X e +Y non sono ortogonali, l'asse +X viene implicitamente modificato per renderlo ortogonale.

Inoltre, se la lunghezza di :ref:`get_joint_limitation_right_axis_vector()<class_IterateIK3D_method_get_joint_limitation_right_axis_vector>` è zero, lo spazio viene creato ruotando la posa di riferimento attraverso l'arco più breve che ruota l'asse +Y della posa di riferimento, in modo da farlo coincidere con la direzione dell'osso.

Qui, la posa di riferimento è la posa dell'osso immediatamente prima dell'elaborazione dell'IK.

.. rst-class:: classref-item-separator

----

.. _class_IterateIK3D_method_set_joint_rotation_axis:

.. rst-class:: classref-method

|void| **set_joint_rotation_axis**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`, axis\: :ref:`RotationAxis<enum_SkeletonModifier3D_RotationAxis>`\ ) :ref:`🔗<class_IterateIK3D_method_set_joint_rotation_axis>`

Imposta l'asse di rotazione dell'articolazione ``joint`` nell'elenco delle articolazioni della catena d'ossa.

Gli assi si basano sullo spazio della posa di riferimento. Se ``axis`` è :ref:`SkeletonModifier3D.ROTATION_AXIS_CUSTOM<class_SkeletonModifier3D_constant_ROTATION_AXIS_CUSTOM>`, è possibile specificare qualsiasi asse.

Qui, la posa di riferimento è la posa dell'osso immediatamente prima dell'elaborazione dell'IK.

\ **Nota:** L'asse di rotazione e il vettore in avanti non dovrebbero essere collineari per evitare rotazioni indesiderate poiché :ref:`ChainIK3D<class_ChainIK3D>` non tiene conto delle forze di torsione.

.. rst-class:: classref-item-separator

----

.. _class_IterateIK3D_method_set_joint_rotation_axis_vector:

.. rst-class:: classref-method

|void| **set_joint_rotation_axis_vector**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`, axis_vector\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_IterateIK3D_method_set_joint_rotation_axis_vector>`

Imposta il vettore dell'asse di rotazione per l'articolazione specificata nella catena d'ossa.

Questo vettore è normalizzato da un processo interno e rappresenta l'asse attorno al quale la catena d'ossa può ruotare.

Se la lunghezza del vettore è ``0``, è considerato come sinonimo di :ref:`SkeletonModifier3D.ROTATION_AXIS_ALL<class_SkeletonModifier3D_constant_ROTATION_AXIS_ALL>`.

.. rst-class:: classref-item-separator

----

.. _class_IterateIK3D_method_set_target_node:

.. rst-class:: classref-method

|void| **set_target_node**\ (\ index\: :ref:`int<class_int>`, target_node\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_IterateIK3D_method_set_target_node>`

Imposta il nodo di destinazione che l'osso finale sta tentando di raggiungere.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
