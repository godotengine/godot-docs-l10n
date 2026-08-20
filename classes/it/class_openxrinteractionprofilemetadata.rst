:github_url: hide

.. _class_OpenXRInteractionProfileMetadata:

OpenXRInteractionProfileMetadata
================================

**Eredita:** :ref:`Object<class_Object>`

Meta-classe che registra i dispositivi supportati in OpenXR.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questa classe consente alla base e alle estensioni OpenXR di registrare metadati relativi ai dispositivi di interazione supportati, quali controller, tracciatori, dispositivi tattili, ecc. È utilizzata principalmente dall'editor delle mappe di azioni e per ripulire qualsiasi mappa di azioni, rimuovendo le voci dipendenti dall'estensione, dove applicabile.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`register_interaction_profile<class_OpenXRInteractionProfileMetadata_method_register_interaction_profile>`\ (\ display_name\: :ref:`String<class_String>`, openxr_path\: :ref:`String<class_String>`, openxr_extension_names\: :ref:`String<class_String>`\ )                                                                                                                                        |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`register_io_path<class_OpenXRInteractionProfileMetadata_method_register_io_path>`\ (\ interaction_profile\: :ref:`String<class_String>`, display_name\: :ref:`String<class_String>`, toplevel_path\: :ref:`String<class_String>`, openxr_path\: :ref:`String<class_String>`, openxr_extension_names\: :ref:`String<class_String>`, action_type\: :ref:`ActionType<enum_OpenXRAction_ActionType>`\ ) |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`register_path_rename<class_OpenXRInteractionProfileMetadata_method_register_path_rename>`\ (\ old_name\: :ref:`String<class_String>`, new_name\: :ref:`String<class_String>`\ )                                                                                                                                                                                                                     |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`register_profile_rename<class_OpenXRInteractionProfileMetadata_method_register_profile_rename>`\ (\ old_name\: :ref:`String<class_String>`, new_name\: :ref:`String<class_String>`\ )                                                                                                                                                                                                               |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`register_top_level_path<class_OpenXRInteractionProfileMetadata_method_register_top_level_path>`\ (\ display_name\: :ref:`String<class_String>`, openxr_path\: :ref:`String<class_String>`, openxr_extension_names\: :ref:`String<class_String>`\ )                                                                                                                                                  |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_OpenXRInteractionProfileMetadata_method_register_interaction_profile:

.. rst-class:: classref-method

|void| **register_interaction_profile**\ (\ display_name\: :ref:`String<class_String>`, openxr_path\: :ref:`String<class_String>`, openxr_extension_names\: :ref:`String<class_String>`\ ) :ref:`🔗<class_OpenXRInteractionProfileMetadata_method_register_interaction_profile>`

Registra un profilo di interazione utilizzando la sua designazione OpenXR (ad esempio ``/interaction_profiles/khr/simple_controller`` è il profilo per il profilo del controller semplice di OpenXR).

\ ``display_name`` è la descrizione visualizzata all'utente. ``openxr_path`` è il percorso del profilo di interazione che viene registrato. ``openxr_extension_names`` limita facoltativamente questo profilo all'estensione specificata che è abilitata/disponibile. Se l'estensione non è disponibile, il profilo e tutte le voci correlate utilizzate in una mappa di azioni sono filtrate.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInteractionProfileMetadata_method_register_io_path:

.. rst-class:: classref-method

|void| **register_io_path**\ (\ interaction_profile\: :ref:`String<class_String>`, display_name\: :ref:`String<class_String>`, toplevel_path\: :ref:`String<class_String>`, openxr_path\: :ref:`String<class_String>`, openxr_extension_names\: :ref:`String<class_String>`, action_type\: :ref:`ActionType<enum_OpenXRAction_ActionType>`\ ) :ref:`🔗<class_OpenXRInteractionProfileMetadata_method_register_io_path>`

Registra un percorso di input/output per il profilo di interazione ``interaction_profile``. Il profilo dovrebbe essere stato registrato in precedenza tramite :ref:`register_interaction_profile()<class_OpenXRInteractionProfileMetadata_method_register_interaction_profile>`. ``display_name`` è la descrizione mostrata all'utente. ``toplevel_path`` specifica il percorso di associazione a cui questo input/output può essere associato (ad esempio ``/user/hand/left`` o ``/user/hand/right``). ``openxr_path`` è l'input/output dell'azione che è registrata (ad esempio ``/user/hand/left/input/aim/pose``). ``openxr_extension_names`` limita questo input/output a un'estensione abilitata/disponibile, non è necessario che ripeta l'estensione sul profilo, ma si riferisce all'estensione sovrapposta (ad esempio ``XR_EXT_palm_pose`` che introduce i percorsi di input ``…/input/palm_ext/pose``). ``action_type`` definisce il tipo di input o output fornito da OpenXR.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInteractionProfileMetadata_method_register_path_rename:

.. rst-class:: classref-method

|void| **register_path_rename**\ (\ old_name\: :ref:`String<class_String>`, new_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_OpenXRInteractionProfileMetadata_method_register_path_rename>`

Consente di rinominare i vecchi percorsi di input/output in nuovi percorsi, al fine di caricare e elaborare le vecchie mappe di azione.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInteractionProfileMetadata_method_register_profile_rename:

.. rst-class:: classref-method

|void| **register_profile_rename**\ (\ old_name\: :ref:`String<class_String>`, new_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_OpenXRInteractionProfileMetadata_method_register_profile_rename>`

Consente di rinominare i vecchi percorsi dei profili di interazione in nuovi percorsi, al fine di caricare ed elaborare le vecchie mappe di azione.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInteractionProfileMetadata_method_register_top_level_path:

.. rst-class:: classref-method

|void| **register_top_level_path**\ (\ display_name\: :ref:`String<class_String>`, openxr_path\: :ref:`String<class_String>`, openxr_extension_names\: :ref:`String<class_String>`\ ) :ref:`🔗<class_OpenXRInteractionProfileMetadata_method_register_top_level_path>`

Registra un percorso di livello superiore a cui è possibile associare i profili. Ad esempio, ``/user/hand/left`` si riferisce al punto di associazione per la mano sinistra del giocatore. Le estensioni possono registrare ulteriori percorsi di livello superiore, ad esempio un'estensione di giubbotto tattile potrebbe registrare ``/user/body/vest``.

\ ``display_name`` è il nome visualizzato all'utente. ``openxr_path`` è il percorso di livello superiore che viene registrato. ``openxr_extension_names`` è facoltativo e assicura che il percorso di livello superiore sia utilizzato solo se l'estensione specificata è disponibile/abilitata.

Quando un percorso di livello superiore viene associato da OpenXR, un :ref:`XRPositionalTracker<class_XRPositionalTracker>` viene istanziato per gestire lo stato del dispositivo.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
