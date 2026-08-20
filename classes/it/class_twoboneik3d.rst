:github_url: hide

.. _class_TwoBoneIK3D:

TwoBoneIK3D
===========

**Eredita:** :ref:`IKModifier3D<class_IKModifier3D>` **<** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Rotation based intersection of two circles inverse kinematics solver.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questo :ref:`IKModifier3D<class_IKModifier3D>` richiede un obiettivo di polo. Fornisce risultati deterministici costruendo un piano a partire da ogni articolazione e obiettivo di polo, e trovando l'intersezione di due cerchi (dischi in 3D).

Questo IK può gestire la torsione impostando la direzione del polo. Se ci sono più ossa tra ciascun osso impostato, le loro rotazioni sono ignorate e la linea retta che collega le articolazioni radice-centro e centro-fine sono trattate come ossa virtuali.

\ **Nota:** Tutti i metodi di questa classe accettano un parametro ``index``. Questo parametro specifica quale voce nell'elenco delle impostazioni restituire, se l'IK ha più voci (ad esempio, ``settings/<index>/root_bone_name``).

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------+----------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`setting_count<class_TwoBoneIK3D_property_setting_count>` | ``0`` |
   +-----------------------+----------------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                 | :ref:`get_end_bone<class_TwoBoneIK3D_method_get_end_bone>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                           |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>`           | :ref:`get_end_bone_direction<class_TwoBoneIK3D_method_get_end_bone_direction>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                       |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                             | :ref:`get_end_bone_length<class_TwoBoneIK3D_method_get_end_bone_length>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                             |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                           | :ref:`get_end_bone_name<class_TwoBoneIK3D_method_get_end_bone_name>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                 |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                 | :ref:`get_middle_bone<class_TwoBoneIK3D_method_get_middle_bone>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                     |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                           | :ref:`get_middle_bone_name<class_TwoBoneIK3D_method_get_middle_bone_name>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                           |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>` | :ref:`get_pole_direction<class_TwoBoneIK3D_method_get_pole_direction>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                               |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                         | :ref:`get_pole_direction_vector<class_TwoBoneIK3D_method_get_pole_direction_vector>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                 |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                                       | :ref:`get_pole_node<class_TwoBoneIK3D_method_get_pole_node>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                         |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                 | :ref:`get_root_bone<class_TwoBoneIK3D_method_get_root_bone>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                         |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                           | :ref:`get_root_bone_name<class_TwoBoneIK3D_method_get_root_bone_name>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                               |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                                       | :ref:`get_target_node<class_TwoBoneIK3D_method_get_target_node>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                     |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`is_end_bone_extended<class_TwoBoneIK3D_method_is_end_bone_extended>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                           |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`is_using_virtual_end<class_TwoBoneIK3D_method_is_using_virtual_end>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                           |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_end_bone<class_TwoBoneIK3D_method_set_end_bone>`\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ )                                                                     |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_end_bone_direction<class_TwoBoneIK3D_method_set_end_bone_direction>`\ (\ index\: :ref:`int<class_int>`, bone_direction\: :ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>`\ ) |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_end_bone_length<class_TwoBoneIK3D_method_set_end_bone_length>`\ (\ index\: :ref:`int<class_int>`, length\: :ref:`float<class_float>`\ )                                                 |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_end_bone_name<class_TwoBoneIK3D_method_set_end_bone_name>`\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ )                                                |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_extend_end_bone<class_TwoBoneIK3D_method_set_extend_end_bone>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                  |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_middle_bone<class_TwoBoneIK3D_method_set_middle_bone>`\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ )                                                               |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_middle_bone_name<class_TwoBoneIK3D_method_set_middle_bone_name>`\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ )                                          |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_pole_direction<class_TwoBoneIK3D_method_set_pole_direction>`\ (\ index\: :ref:`int<class_int>`, direction\: :ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>`\ )    |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_pole_direction_vector<class_TwoBoneIK3D_method_set_pole_direction_vector>`\ (\ index\: :ref:`int<class_int>`, vector\: :ref:`Vector3<class_Vector3>`\ )                                 |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_pole_node<class_TwoBoneIK3D_method_set_pole_node>`\ (\ index\: :ref:`int<class_int>`, pole_node\: :ref:`NodePath<class_NodePath>`\ )                                                    |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_root_bone<class_TwoBoneIK3D_method_set_root_bone>`\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ )                                                                   |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_root_bone_name<class_TwoBoneIK3D_method_set_root_bone_name>`\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ )                                              |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_target_node<class_TwoBoneIK3D_method_set_target_node>`\ (\ index\: :ref:`int<class_int>`, target_node\: :ref:`NodePath<class_NodePath>`\ )                                              |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_use_virtual_end<class_TwoBoneIK3D_method_set_use_virtual_end>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                  |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_TwoBoneIK3D_property_setting_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **setting_count** = ``0`` :ref:`🔗<class_TwoBoneIK3D_property_setting_count>`

.. rst-class:: classref-property-setget

- |void| **set_setting_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_setting_count**\ (\ )

Il numero di impostazioni.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_TwoBoneIK3D_method_get_end_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_end_bone**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TwoBoneIK3D_method_get_end_bone>`

Restituisce l'indice dell'osso finale.

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_get_end_bone_direction:

.. rst-class:: classref-method

:ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>` **get_end_bone_direction**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TwoBoneIK3D_method_get_end_bone_direction>`

Restituisce la direzione della coda dell'osso finale quando :ref:`is_end_bone_extended()<class_TwoBoneIK3D_method_is_end_bone_extended>` è ``true``.

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_get_end_bone_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_end_bone_length**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TwoBoneIK3D_method_get_end_bone_length>`

Restituisce la lunghezza della coda dell'osso finale della catena d'ossa quando :ref:`is_end_bone_extended()<class_TwoBoneIK3D_method_is_end_bone_extended>` è ``true``.

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_get_end_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_end_bone_name**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TwoBoneIK3D_method_get_end_bone_name>`

Restituisce il nome dell'osso finale.

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_get_middle_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_middle_bone**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TwoBoneIK3D_method_get_middle_bone>`

Restituisce l'indice dell'osso medio.

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_get_middle_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_middle_bone_name**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TwoBoneIK3D_method_get_middle_bone_name>`

Restituisce il nome dell'osso medio.

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_get_pole_direction:

.. rst-class:: classref-method

:ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>` **get_pole_direction**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TwoBoneIK3D_method_get_pole_direction>`

Restituisce la direzione del polo.

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_get_pole_direction_vector:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_pole_direction_vector**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TwoBoneIK3D_method_get_pole_direction_vector>`

Restituisce il vettore di direzione del polo.

Se :ref:`get_pole_direction()<class_TwoBoneIK3D_method_get_pole_direction>` è :ref:`SkeletonModifier3D.SECONDARY_DIRECTION_NONE<class_SkeletonModifier3D_constant_SECONDARY_DIRECTION_NONE>`, questo metodo restituisce ``Vector3(0, 0, 0)``.

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_get_pole_node:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_pole_node**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TwoBoneIK3D_method_get_pole_node>`

Restituisce il nodo di destinazione del polo che costruisce un piano su cui si trovano tutte le articolazioni e il polo sta cercando di dirigere.

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_get_root_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_root_bone**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TwoBoneIK3D_method_get_root_bone>`

Restituisce l'indice dell'osso radice.

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_get_root_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_root_bone_name**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TwoBoneIK3D_method_get_root_bone_name>`

Restituisce il nome dell'osso radice.

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_get_target_node:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_target_node**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TwoBoneIK3D_method_get_target_node>`

Restituisce il nodo di destinazione che l'osso finale sta tentando di raggiungere.

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_is_end_bone_extended:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_end_bone_extended**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TwoBoneIK3D_method_is_end_bone_extended>`

Restituisce ``true`` se l'osso finale è prolungato per avere una coda.

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_is_using_virtual_end:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_using_virtual_end**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TwoBoneIK3D_method_is_using_virtual_end>`

Restituisce ``true`` se l'osso finale è prolungato dall'osso medio come osso virtuale.

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_set_end_bone:

.. rst-class:: classref-method

|void| **set_end_bone**\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TwoBoneIK3D_method_set_end_bone>`

Imposta l'indice dell'osso finale.

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_set_end_bone_direction:

.. rst-class:: classref-method

|void| **set_end_bone_direction**\ (\ index\: :ref:`int<class_int>`, bone_direction\: :ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>`\ ) :ref:`🔗<class_TwoBoneIK3D_method_set_end_bone_direction>`

Imposta la direzione della coda dell'osso finale quando :ref:`is_end_bone_extended()<class_TwoBoneIK3D_method_is_end_bone_extended>` è ``true``.

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_set_end_bone_length:

.. rst-class:: classref-method

|void| **set_end_bone_length**\ (\ index\: :ref:`int<class_int>`, length\: :ref:`float<class_float>`\ ) :ref:`🔗<class_TwoBoneIK3D_method_set_end_bone_length>`

Imposta la lunghezza della coda dell'osso finale quando :ref:`is_end_bone_extended()<class_TwoBoneIK3D_method_is_end_bone_extended>` è ``true``.

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_set_end_bone_name:

.. rst-class:: classref-method

|void| **set_end_bone_name**\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_TwoBoneIK3D_method_set_end_bone_name>`

Imposta il nome dell'osso finale.

\ **Nota:** L'osso finale deve essere figlio dell'osso medio.

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_set_extend_end_bone:

.. rst-class:: classref-method

|void| **set_extend_end_bone**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_TwoBoneIK3D_method_set_extend_end_bone>`

Se ``enabled`` è ``true``, l'osso finale è prolungato per avere una coda.

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_set_middle_bone:

.. rst-class:: classref-method

|void| **set_middle_bone**\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TwoBoneIK3D_method_set_middle_bone>`

Imposta l'indice dell'osso medio.

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_set_middle_bone_name:

.. rst-class:: classref-method

|void| **set_middle_bone_name**\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_TwoBoneIK3D_method_set_middle_bone_name>`

Imposta il nome dell'osso medio.

\ **Nota:** L'osso medio deve essere figlio dell'osso radice.

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_set_pole_direction:

.. rst-class:: classref-method

|void| **set_pole_direction**\ (\ index\: :ref:`int<class_int>`, direction\: :ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>`\ ) :ref:`🔗<class_TwoBoneIK3D_method_set_pole_direction>`

Imposta la direzione del polo.

Il polo si trova sull'osso medio e si dirigerà verso la destinazione del polo.

L'asse di rotazione è un vettore ortogonale a questo e al vettore in avanti.

\ **Nota:** La direzione del polo e il vettore in avanti non devono essere colineari per evitare rotazioni involontarie.

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_set_pole_direction_vector:

.. rst-class:: classref-method

|void| **set_pole_direction_vector**\ (\ index\: :ref:`int<class_int>`, vector\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_TwoBoneIK3D_method_set_pole_direction_vector>`

Imposta il vettore di direzione del polo.

Questo vettore è normalizzato da un processo interno.

Se la lunghezza del vettore è ``0``, è considerato come sinonimo di :ref:`SkeletonModifier3D.SECONDARY_DIRECTION_NONE<class_SkeletonModifier3D_constant_SECONDARY_DIRECTION_NONE>`.

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_set_pole_node:

.. rst-class:: classref-method

|void| **set_pole_node**\ (\ index\: :ref:`int<class_int>`, pole_node\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_TwoBoneIK3D_method_set_pole_node>`

Imposta il nodo di destinazione del polo che costruisce un piano su cui si trovano tutte le articolazioni e il polo sta cercando di dirigere.

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_set_root_bone:

.. rst-class:: classref-method

|void| **set_root_bone**\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TwoBoneIK3D_method_set_root_bone>`

Imposta l'indice dell'osso radice.

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_set_root_bone_name:

.. rst-class:: classref-method

|void| **set_root_bone_name**\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_TwoBoneIK3D_method_set_root_bone_name>`

Imposta il nome dell'osso radice.

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_set_target_node:

.. rst-class:: classref-method

|void| **set_target_node**\ (\ index\: :ref:`int<class_int>`, target_node\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_TwoBoneIK3D_method_set_target_node>`

Imposta il nodo di destinazione che l'osso finale sta tentando di raggiungere.

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_set_use_virtual_end:

.. rst-class:: classref-method

|void| **set_use_virtual_end**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_TwoBoneIK3D_method_set_use_virtual_end>`

Se ``enabled`` è ``true``, l'osso finale è prolungato dall'osso medio come osso virtuale.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
