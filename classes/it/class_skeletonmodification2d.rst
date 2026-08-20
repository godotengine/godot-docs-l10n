:github_url: hide

.. _class_SkeletonModification2D:

SkeletonModification2D
======================

**Sperimentale:** This class may be changed or removed in future versions.

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`SkeletonModification2DCCDIK<class_SkeletonModification2DCCDIK>`, :ref:`SkeletonModification2DFABRIK<class_SkeletonModification2DFABRIK>`, :ref:`SkeletonModification2DJiggle<class_SkeletonModification2DJiggle>`, :ref:`SkeletonModification2DLookAt<class_SkeletonModification2DLookAt>`, :ref:`SkeletonModification2DPhysicalBones<class_SkeletonModification2DPhysicalBones>`, :ref:`SkeletonModification2DStackHolder<class_SkeletonModification2DStackHolder>`, :ref:`SkeletonModification2DTwoBoneIK<class_SkeletonModification2DTwoBoneIK>`

Classe di base per le risorse che operano sui :ref:`Bone2D<class_Bone2D>` in uno :ref:`Skeleton2D<class_Skeleton2D>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questa risorsa fornisce un'interfaccia che può essere ampliata in modo che il codice che opera sui nodi :ref:`Bone2D<class_Bone2D>` in uno :ref:`Skeleton2D<class_Skeleton2D>` possa essere mescolato e abbinato insieme per creare interazioni complesse.

Questa serve per fornire a Godot una soluzione di cinematica inversa flessibile e potente che può essere adattata per molti usi diversi.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------+-----------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>` | :ref:`enabled<class_SkeletonModification2D_property_enabled>`               | ``true`` |
   +-------------------------+-----------------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`   | :ref:`execution_mode<class_SkeletonModification2D_property_execution_mode>` | ``0``    |
   +-------------------------+-----------------------------------------------------------------------------+----------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`_draw_editor_gizmo<class_SkeletonModification2D_private_method__draw_editor_gizmo>`\ (\ ) |virtual|                                                                                                        |
   +-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`_execute<class_SkeletonModification2D_private_method__execute>`\ (\ delta\: :ref:`float<class_float>`\ ) |virtual|                                                                                         |
   +-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`_setup_modification<class_SkeletonModification2D_private_method__setup_modification>`\ (\ modification_stack\: :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`\ ) |virtual|          |
   +-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                             | :ref:`clamp_angle<class_SkeletonModification2D_method_clamp_angle>`\ (\ angle\: :ref:`float<class_float>`, min\: :ref:`float<class_float>`, max\: :ref:`float<class_float>`, invert\: :ref:`bool<class_bool>`\ ) |
   +-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`get_editor_draw_gizmo<class_SkeletonModification2D_method_get_editor_draw_gizmo>`\ (\ ) |const|                                                                                                            |
   +-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`get_is_setup<class_SkeletonModification2D_method_get_is_setup>`\ (\ ) |const|                                                                                                                              |
   +-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>` | :ref:`get_modification_stack<class_SkeletonModification2D_method_get_modification_stack>`\ (\ )                                                                                                                  |
   +-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_editor_draw_gizmo<class_SkeletonModification2D_method_set_editor_draw_gizmo>`\ (\ draw_gizmo\: :ref:`bool<class_bool>`\ )                                                                              |
   +-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_is_setup<class_SkeletonModification2D_method_set_is_setup>`\ (\ is_setup\: :ref:`bool<class_bool>`\ )                                                                                                  |
   +-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_SkeletonModification2D_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** = ``true`` :ref:`🔗<class_SkeletonModification2D_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enabled**\ (\ )

Se ``true``, la funzione :ref:`_execute()<class_SkeletonModification2D_private_method__execute>` della modificazione sarà chiamata dallo :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2D_property_execution_mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **execution_mode** = ``0`` :ref:`🔗<class_SkeletonModification2D_property_execution_mode>`

.. rst-class:: classref-property-setget

- |void| **set_execution_mode**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_execution_mode**\ (\ )

La modalità di esecuzione per la modificazione. Indica alla pila di modificazioni quando eseguire la modificazione. Alcune modificazioni hanno impostazioni disponibili solo in determinate modalità di esecuzione.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_SkeletonModification2D_private_method__draw_editor_gizmo:

.. rst-class:: classref-method

|void| **_draw_editor_gizmo**\ (\ ) |virtual| :ref:`🔗<class_SkeletonModification2D_private_method__draw_editor_gizmo>`

Utilizzato per disegnare il gizmo di modificazione **solo editor**. Questa funzione verrà chiamata solo nell'editor Godot e può essere sovrascritta per disegnare gizmo personalizzati.

\ **Nota:** Dovrai usare Skeleton2D da :ref:`SkeletonModificationStack2D.get_skeleton()<class_SkeletonModificationStack2D_method_get_skeleton>` e le sue funzioni di disegno, poiché la risorsa **SkeletonModification2D** non può disegnare da sola.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2D_private_method__execute:

.. rst-class:: classref-method

|void| **_execute**\ (\ delta\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_SkeletonModification2D_private_method__execute>`

Esegue la modificazione fornita. Qui è dove la modificazione esegue qualsiasi funzione per cui è stata progettata.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2D_private_method__setup_modification:

.. rst-class:: classref-method

|void| **_setup_modification**\ (\ modification_stack\: :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`\ ) |virtual| :ref:`🔗<class_SkeletonModification2D_private_method__setup_modification>`

Chiamato quando la modificazione è impostata. Qui è dove la modificazione esegue l'inizializzazione.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2D_method_clamp_angle:

.. rst-class:: classref-method

:ref:`float<class_float>` **clamp_angle**\ (\ angle\: :ref:`float<class_float>`, min\: :ref:`float<class_float>`, max\: :ref:`float<class_float>`, invert\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SkeletonModification2D_method_clamp_angle>`

Prende un angolo e lo limita in modo che rientri nell'intervallo ``min`` e ``max`` passati. ``invert`` limiterà inversamente l'angolo, limitandolo nell'intervallo al di fuori dei limiti specificati.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2D_method_get_editor_draw_gizmo:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_editor_draw_gizmo**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2D_method_get_editor_draw_gizmo>`

Restituisce se questa modificazione chiamerà :ref:`_draw_editor_gizmo()<class_SkeletonModification2D_private_method__draw_editor_gizmo>` nell'editor di Godot per disegnare i gizmo specifici della modificazione.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2D_method_get_is_setup:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_is_setup**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2D_method_get_is_setup>`

Restituisce se questa modificazione è stata impostata correttamente o meno.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2D_method_get_modification_stack:

.. rst-class:: classref-method

:ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>` **get_modification_stack**\ (\ ) :ref:`🔗<class_SkeletonModification2D_method_get_modification_stack>`

Restituisce lo :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>` a cui è associata questa modificazione. Attraverso la pila di modificazione, è possibile accedere allo Skeleton2D su cui sta operando la modificazione.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2D_method_set_editor_draw_gizmo:

.. rst-class:: classref-method

|void| **set_editor_draw_gizmo**\ (\ draw_gizmo\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SkeletonModification2D_method_set_editor_draw_gizmo>`

Imposta se questa modificazione chiamerà :ref:`_draw_editor_gizmo()<class_SkeletonModification2D_private_method__draw_editor_gizmo>` nell'editor Godot per disegnare i gizmo specifici della modificazione.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2D_method_set_is_setup:

.. rst-class:: classref-method

|void| **set_is_setup**\ (\ is_setup\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SkeletonModification2D_method_set_is_setup>`

Consente di impostare manualmente lo stato di configurazione della modificazione. Questa funzione dovrebbe essere usata solo raramente, poiché lo :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>` a cui è associata la modificazione dovrebbe gestire l'impostazione della modificazione.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
