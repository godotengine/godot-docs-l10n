:github_url: hide

.. _class_ChainIK3D:

ChainIK3D
=========

**Eredita:** :ref:`IKModifier3D<class_IKModifier3D>` **<** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`IterateIK3D<class_IterateIK3D>`, :ref:`SplineIK3D<class_SplineIK3D>`

A :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` to apply inverse kinematics to bone chains containing an arbitrary number of bones.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Base class of :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` that automatically generates a joint list from the bones between the root bone and the end bone.

\ **Note:** All the methods in this class take an ``index`` parameter. This parameter specifies which setting list entry to return if the IK has multiple entries (e.g. ``settings/<index>/root_bone_name``).

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                       | :ref:`get_end_bone<class_ChainIK3D_method_get_end_bone>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                           |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>` | :ref:`get_end_bone_direction<class_ChainIK3D_method_get_end_bone_direction>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                       |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                   | :ref:`get_end_bone_length<class_ChainIK3D_method_get_end_bone_length>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                             |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                 | :ref:`get_end_bone_name<class_ChainIK3D_method_get_end_bone_name>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                 |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                       | :ref:`get_joint_bone<class_ChainIK3D_method_get_joint_bone>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const|                                                        |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                 | :ref:`get_joint_bone_name<class_ChainIK3D_method_get_joint_bone_name>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const|                                              |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                       | :ref:`get_joint_count<class_ChainIK3D_method_get_joint_count>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                     |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                       | :ref:`get_root_bone<class_ChainIK3D_method_get_root_bone>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                         |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                 | :ref:`get_root_bone_name<class_ChainIK3D_method_get_root_bone_name>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                               |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                     | :ref:`is_end_bone_extended<class_ChainIK3D_method_is_end_bone_extended>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                           |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_end_bone<class_ChainIK3D_method_set_end_bone>`\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ )                                                                     |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_end_bone_direction<class_ChainIK3D_method_set_end_bone_direction>`\ (\ index\: :ref:`int<class_int>`, bone_direction\: :ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>`\ ) |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_end_bone_length<class_ChainIK3D_method_set_end_bone_length>`\ (\ index\: :ref:`int<class_int>`, length\: :ref:`float<class_float>`\ )                                                 |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_end_bone_name<class_ChainIK3D_method_set_end_bone_name>`\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ )                                                |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_extend_end_bone<class_ChainIK3D_method_set_extend_end_bone>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                  |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_root_bone<class_ChainIK3D_method_set_root_bone>`\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ )                                                                   |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_root_bone_name<class_ChainIK3D_method_set_root_bone_name>`\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ )                                              |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_ChainIK3D_method_get_end_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_end_bone**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ChainIK3D_method_get_end_bone>`

Restituisce l'indice dell'osso finale della catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_ChainIK3D_method_get_end_bone_direction:

.. rst-class:: classref-method

:ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>` **get_end_bone_direction**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ChainIK3D_method_get_end_bone_direction>`

Returns the tail direction of the end bone of the bone chain when :ref:`is_end_bone_extended()<class_ChainIK3D_method_is_end_bone_extended>` is ``true``.

.. rst-class:: classref-item-separator

----

.. _class_ChainIK3D_method_get_end_bone_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_end_bone_length**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ChainIK3D_method_get_end_bone_length>`

Returns the end bone tail length of the bone chain when :ref:`is_end_bone_extended()<class_ChainIK3D_method_is_end_bone_extended>` is ``true``.

.. rst-class:: classref-item-separator

----

.. _class_ChainIK3D_method_get_end_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_end_bone_name**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ChainIK3D_method_get_end_bone_name>`

Restituisce il nome dell'osso finale della coda d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_ChainIK3D_method_get_joint_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_joint_bone**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ChainIK3D_method_get_joint_bone>`

Restituisce l'indice dell'osso in ``joint`` nella lista delle articolazioni della catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_ChainIK3D_method_get_joint_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_joint_bone_name**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ChainIK3D_method_get_joint_bone_name>`

Restituisce il nome dell'osso in ``joint`` nella lista delle articolazioni della catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_ChainIK3D_method_get_joint_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_joint_count**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ChainIK3D_method_get_joint_count>`

Restituisce il numero di articolazioni nella lista delle articolazioni della catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_ChainIK3D_method_get_root_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_root_bone**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ChainIK3D_method_get_root_bone>`

Restituisce l'indice dell'osso radice della catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_ChainIK3D_method_get_root_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_root_bone_name**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ChainIK3D_method_get_root_bone_name>`

Restituisce il nome dell'osso radice della catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_ChainIK3D_method_is_end_bone_extended:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_end_bone_extended**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ChainIK3D_method_is_end_bone_extended>`

Returns ``true`` if the end bone is extended to have a tail.

.. rst-class:: classref-item-separator

----

.. _class_ChainIK3D_method_set_end_bone:

.. rst-class:: classref-method

|void| **set_end_bone**\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ChainIK3D_method_set_end_bone>`

Imposta l'indice dell'osso finale della catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_ChainIK3D_method_set_end_bone_direction:

.. rst-class:: classref-method

|void| **set_end_bone_direction**\ (\ index\: :ref:`int<class_int>`, bone_direction\: :ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>`\ ) :ref:`🔗<class_ChainIK3D_method_set_end_bone_direction>`

Imposta la direzione della coda dell'osso finale della catena d'ossa quando :ref:`is_end_bone_extended()<class_ChainIK3D_method_is_end_bone_extended>` è ``true``.

.. rst-class:: classref-item-separator

----

.. _class_ChainIK3D_method_set_end_bone_length:

.. rst-class:: classref-method

|void| **set_end_bone_length**\ (\ index\: :ref:`int<class_int>`, length\: :ref:`float<class_float>`\ ) :ref:`🔗<class_ChainIK3D_method_set_end_bone_length>`

Imposta la lunghezza della coda dell'osso finale della catena d'ossa quando :ref:`is_end_bone_extended()<class_ChainIK3D_method_is_end_bone_extended>` è ``true``.

.. rst-class:: classref-item-separator

----

.. _class_ChainIK3D_method_set_end_bone_name:

.. rst-class:: classref-method

|void| **set_end_bone_name**\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ChainIK3D_method_set_end_bone_name>`

Sets the end bone name of the bone chain.

\ **Note:** The end bone must be the root bone or a child of the root bone. If they are the same, the tail must be extended by :ref:`set_extend_end_bone()<class_ChainIK3D_method_set_extend_end_bone>` to modify the bone.

.. rst-class:: classref-item-separator

----

.. _class_ChainIK3D_method_set_extend_end_bone:

.. rst-class:: classref-method

|void| **set_extend_end_bone**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_ChainIK3D_method_set_extend_end_bone>`

If ``enabled`` is ``true``, the end bone is extended to have a tail.

The extended tail config is allocated to the last element in the joint list. In other words, if you set ``enabled`` to ``false``, the config of the last element in the joint list has no effect in the simulated result.

.. rst-class:: classref-item-separator

----

.. _class_ChainIK3D_method_set_root_bone:

.. rst-class:: classref-method

|void| **set_root_bone**\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ChainIK3D_method_set_root_bone>`

Imposta l'indice dell'osso radice della catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_ChainIK3D_method_set_root_bone_name:

.. rst-class:: classref-method

|void| **set_root_bone_name**\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ChainIK3D_method_set_root_bone_name>`

Imposta il nome dell'osso radice della catena d'ossa.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
