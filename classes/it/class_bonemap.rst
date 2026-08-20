:github_url: hide

.. _class_BoneMap:

BoneMap
=======

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Definisce una mappatura dei nomi delle ossa per il reindirizzamento di :ref:`Skeleton3D<class_Skeleton3D>` in nomi comuni definiti da un :ref:`SkeletonProfile<class_SkeletonProfile>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questa classe contiene un dizionario che utilizza un elenco di nomi di ossa in :ref:`SkeletonProfile<class_SkeletonProfile>` come nomi chiave.

Assegnando il nome effettivo dell'osso di :ref:`Skeleton3D<class_Skeleton3D>` come valore di chiave, mappa lo :ref:`Skeleton3D<class_Skeleton3D>` allo :ref:`SkeletonProfile<class_SkeletonProfile>`.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Reindirizzare gli scheletri 3D <../tutorials/assets_pipeline/retargeting_3d_skeletons>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------------------------+------------------------------------------------+
   | :ref:`SkeletonProfile<class_SkeletonProfile>` | :ref:`profile<class_BoneMap_property_profile>` |
   +-----------------------------------------------+------------------------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>` | :ref:`find_profile_bone_name<class_BoneMap_method_find_profile_bone_name>`\ (\ skeleton_bone_name\: :ref:`StringName<class_StringName>`\ ) |const|                                                  |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>` | :ref:`get_skeleton_bone_name<class_BoneMap_method_get_skeleton_bone_name>`\ (\ profile_bone_name\: :ref:`StringName<class_StringName>`\ ) |const|                                                   |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`set_skeleton_bone_name<class_BoneMap_method_set_skeleton_bone_name>`\ (\ profile_bone_name\: :ref:`StringName<class_StringName>`, skeleton_bone_name\: :ref:`StringName<class_StringName>`\ ) |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_BoneMap_signal_bone_map_updated:

.. rst-class:: classref-signal

**bone_map_updated**\ (\ ) :ref:`🔗<class_BoneMap_signal_bone_map_updated>`

Questo segnale viene emesso quando si modifica il valore della chiave nella **BoneMap**. È utilizzato per verificare la mappatura e per aggiornare l'editor della **BoneMap**.

.. rst-class:: classref-item-separator

----

.. _class_BoneMap_signal_profile_updated:

.. rst-class:: classref-signal

**profile_updated**\ (\ ) :ref:`🔗<class_BoneMap_signal_profile_updated>`

Questo segnale viene emesso quando si modifica il valore nel profilo o si modifica il riferimento del profilo. È utilizzato per aggiornare i nomi delle chiavi nella **BoneMap** e per ridisegnare l'editor della **BoneMap**.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_BoneMap_property_profile:

.. rst-class:: classref-property

:ref:`SkeletonProfile<class_SkeletonProfile>` **profile** :ref:`🔗<class_BoneMap_property_profile>`

.. rst-class:: classref-property-setget

- |void| **set_profile**\ (\ value\: :ref:`SkeletonProfile<class_SkeletonProfile>`\ )
- :ref:`SkeletonProfile<class_SkeletonProfile>` **get_profile**\ (\ )

Uno :ref:`SkeletonProfile<class_SkeletonProfile>` della destinazione di mappatura. I nomi delle chiavi nella **BoneMap** sono sincronizzati con esso.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_BoneMap_method_find_profile_bone_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **find_profile_bone_name**\ (\ skeleton_bone_name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_BoneMap_method_find_profile_bone_name>`

Restituisce un nome di osso nel profilo con ``skeleton_bone_name``. Se non viene trovato, verrà restituito uno :ref:`StringName<class_StringName>` vuoto.

Nel processo di reindirizzamento, il nome restituito è il nome dell'osso dello scheletro di destinazione.

.. rst-class:: classref-item-separator

----

.. _class_BoneMap_method_get_skeleton_bone_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_skeleton_bone_name**\ (\ profile_bone_name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_BoneMap_method_get_skeleton_bone_name>`

Restituisce un nome di osso dello scheletro mappato su ``profile_bone_name``.

Nel processo di Nel processo di reindirizzamento, il nome restituito è il nome dell'osso dello scheletro di destinazione.

.. rst-class:: classref-item-separator

----

.. _class_BoneMap_method_set_skeleton_bone_name:

.. rst-class:: classref-method

|void| **set_skeleton_bone_name**\ (\ profile_bone_name\: :ref:`StringName<class_StringName>`, skeleton_bone_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_BoneMap_method_set_skeleton_bone_name>`

Mappa un nome di un osso dello scheletro a ``profile_bone_name``.

Nel processo di Nel processo di reindirizzamento, il nome impostato è il nome dell'osso dello scheletro sorgente.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
