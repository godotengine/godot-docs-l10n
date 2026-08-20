:github_url: hide

.. _class_LimitAngularVelocityModifier3D:

LimitAngularVelocityModifier3D
==============================

**Eredita:** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Limita la velocità angolare di rotazione delle ossa.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questo modificatore limita la velocità angolare di rotazione delle ossa confrontando le pose tra il frame precedente e quello attuale.

È possibile aggiungere catene di ossa specificando le ossa radice e finale, poi aggiungere le ossa intermedie a un elenco. Il modificatore elabora tale elenco oppure le ossa escludendo quelle presenti nell'elenco, a seconda dell'opzione :ref:`exclude<class_LimitAngularVelocityModifier3D_property_exclude>`.

\ **Nota:** La maggior parte dei metodi di questa classe accetta un parametro ``index``. Questo parametro specifica quale voce nell'elenco delle impostazioni restituire, se l'IK ha più voci (ad esempio, ``settings/<index>/target_node``).

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------------------------------------------+---------------+
   | :ref:`int<class_int>`     | :ref:`chain_count<class_LimitAngularVelocityModifier3D_property_chain_count>`                   | ``0``         |
   +---------------------------+-------------------------------------------------------------------------------------------------+---------------+
   | :ref:`bool<class_bool>`   | :ref:`exclude<class_LimitAngularVelocityModifier3D_property_exclude>`                           | ``false``     |
   +---------------------------+-------------------------------------------------------------------------------------------------+---------------+
   | :ref:`int<class_int>`     | :ref:`joint_count<class_LimitAngularVelocityModifier3D_property_joint_count>`                   | ``0``         |
   +---------------------------+-------------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`max_angular_velocity<class_LimitAngularVelocityModifier3D_property_max_angular_velocity>` | ``6.2831855`` |
   +---------------------------+-------------------------------------------------------------------------------------------------+---------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`clear_chains<class_LimitAngularVelocityModifier3D_method_clear_chains>`\ (\ )                                                                                     |
   +-----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_end_bone<class_LimitAngularVelocityModifier3D_method_get_end_bone>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                              |
   +-----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_end_bone_name<class_LimitAngularVelocityModifier3D_method_get_end_bone_name>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                    |
   +-----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_root_bone<class_LimitAngularVelocityModifier3D_method_get_root_bone>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                            |
   +-----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_root_bone_name<class_LimitAngularVelocityModifier3D_method_get_root_bone_name>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                  |
   +-----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`reset<class_LimitAngularVelocityModifier3D_method_reset>`\ (\ )                                                                                                   |
   +-----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`set_end_bone<class_LimitAngularVelocityModifier3D_method_set_end_bone>`\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ )                        |
   +-----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`set_end_bone_name<class_LimitAngularVelocityModifier3D_method_set_end_bone_name>`\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ )   |
   +-----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`set_root_bone<class_LimitAngularVelocityModifier3D_method_set_root_bone>`\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ )                      |
   +-----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`set_root_bone_name<class_LimitAngularVelocityModifier3D_method_set_root_bone_name>`\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ ) |
   +-----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_LimitAngularVelocityModifier3D_property_chain_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **chain_count** = ``0`` :ref:`🔗<class_LimitAngularVelocityModifier3D_property_chain_count>`

.. rst-class:: classref-property-setget

- |void| **set_chain_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_chain_count**\ (\ )

Il numero di catene.

.. rst-class:: classref-item-separator

----

.. _class_LimitAngularVelocityModifier3D_property_exclude:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **exclude** = ``false`` :ref:`🔗<class_LimitAngularVelocityModifier3D_property_exclude>`

.. rst-class:: classref-property-setget

- |void| **set_exclude**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_exclude**\ (\ )

Se ``true``, il modificatore elabora le ossa non incluse nell'elenco delle ossa.

Se ``false``, le ossa elaborate dal modificatore sono solo quelle presenti nell'elenco delle ossa.

.. rst-class:: classref-item-separator

----

.. _class_LimitAngularVelocityModifier3D_property_joint_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **joint_count** = ``0`` :ref:`🔗<class_LimitAngularVelocityModifier3D_property_joint_count>`

Il numero di articolazioni nell'elenco creati dinamicamente per le catene.

.. rst-class:: classref-item-separator

----

.. _class_LimitAngularVelocityModifier3D_property_max_angular_velocity:

.. rst-class:: classref-property

:ref:`float<class_float>` **max_angular_velocity** = ``6.2831855`` :ref:`🔗<class_LimitAngularVelocityModifier3D_property_max_angular_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_max_angular_velocity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max_angular_velocity**\ (\ )

La velocità angolare massima al secondo.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_LimitAngularVelocityModifier3D_method_clear_chains:

.. rst-class:: classref-method

|void| **clear_chains**\ (\ ) :ref:`🔗<class_LimitAngularVelocityModifier3D_method_clear_chains>`

Cancella tutte le catene.

.. rst-class:: classref-item-separator

----

.. _class_LimitAngularVelocityModifier3D_method_get_end_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_end_bone**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_LimitAngularVelocityModifier3D_method_get_end_bone>`

Restituisce l'indice dell'osso finale della catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_LimitAngularVelocityModifier3D_method_get_end_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_end_bone_name**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_LimitAngularVelocityModifier3D_method_get_end_bone_name>`

Restituisce il nome dell'osso finale della coda d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_LimitAngularVelocityModifier3D_method_get_root_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_root_bone**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_LimitAngularVelocityModifier3D_method_get_root_bone>`

Restituisce l'indice dell'osso radice della catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_LimitAngularVelocityModifier3D_method_get_root_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_root_bone_name**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_LimitAngularVelocityModifier3D_method_get_root_bone_name>`

Restituisce il nome dell'osso radice della catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_LimitAngularVelocityModifier3D_method_reset:

.. rst-class:: classref-method

|void| **reset**\ (\ ) :ref:`🔗<class_LimitAngularVelocityModifier3D_method_reset>`

Imposta la posa di riferimento (per il confronto angolare) alla posa attuale, eliminando l'influenza dei vincoli. Questa funzione si attiva automaticamente quando cambiano le articolazioni o all'attivazione.

.. rst-class:: classref-item-separator

----

.. _class_LimitAngularVelocityModifier3D_method_set_end_bone:

.. rst-class:: classref-method

|void| **set_end_bone**\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ ) :ref:`🔗<class_LimitAngularVelocityModifier3D_method_set_end_bone>`

Imposta l'indice dell'osso finale della catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_LimitAngularVelocityModifier3D_method_set_end_bone_name:

.. rst-class:: classref-method

|void| **set_end_bone_name**\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_LimitAngularVelocityModifier3D_method_set_end_bone_name>`

Imposta il nome dell'osso finale della catena d'ossa.

\ **Nota:** L'osso finale deve essere l'osso radice o un figlio dell'osso radice.

.. rst-class:: classref-item-separator

----

.. _class_LimitAngularVelocityModifier3D_method_set_root_bone:

.. rst-class:: classref-method

|void| **set_root_bone**\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ ) :ref:`🔗<class_LimitAngularVelocityModifier3D_method_set_root_bone>`

Imposta l'indice dell'osso radice della catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_LimitAngularVelocityModifier3D_method_set_root_bone_name:

.. rst-class:: classref-method

|void| **set_root_bone_name**\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_LimitAngularVelocityModifier3D_method_set_root_bone_name>`

Imposta il nome dell'osso radice della catena d'ossa.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
