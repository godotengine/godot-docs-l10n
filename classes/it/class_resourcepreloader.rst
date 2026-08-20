:github_url: hide

.. _class_ResourcePreloader:

ResourcePreloader
=================

**Eredita:** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un nodo utilizzato per precaricare sotto-risorse all'interno di una scena.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questo nodo serve per precaricare le sotto-risorse all'interno di una scena, in modo che quando la scena viene caricata, tutte le risorse sono pronte per l'uso e possono essere recuperate dal preloader. È possibile aggiungere le risorse attraverso la scheda ResourcePreloader quando il nodo è selezionato.

GDScript fornisce il metodo integrato semplificato :ref:`@GDScript.preload()<class_@GDScript_method_preload>` che è sufficiente nella maggior parte delle situazioni, lasciando l'uso di **ResourcePreloader** per motivi più avanzati.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`add_resource<class_ResourcePreloader_method_add_resource>`\ (\ name\: :ref:`StringName<class_StringName>`, resource\: :ref:`Resource<class_Resource>`\ )          |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>`                   | :ref:`get_resource<class_ResourcePreloader_method_get_resource>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                              |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_resource_list<class_ResourcePreloader_method_get_resource_list>`\ (\ ) |const|                                                                                |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`has_resource<class_ResourcePreloader_method_has_resource>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                              |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`remove_resource<class_ResourcePreloader_method_remove_resource>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`rename_resource<class_ResourcePreloader_method_rename_resource>`\ (\ name\: :ref:`StringName<class_StringName>`, newname\: :ref:`StringName<class_StringName>`\ ) |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_ResourcePreloader_method_add_resource:

.. rst-class:: classref-method

|void| **add_resource**\ (\ name\: :ref:`StringName<class_StringName>`, resource\: :ref:`Resource<class_Resource>`\ ) :ref:`🔗<class_ResourcePreloader_method_add_resource>`

Aggiunge una risorsa al precaricatore con il nome ``name``. Se una risorsa con il nome specificato esiste già, la nuova risorsa sarà rinominata in "``name`` N", dove N è un numero incrementale che parte da 2.

.. rst-class:: classref-item-separator

----

.. _class_ResourcePreloader_method_get_resource:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **get_resource**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ResourcePreloader_method_get_resource>`

Restituisce la risorsa associata al nome ``name``.

.. rst-class:: classref-item-separator

----

.. _class_ResourcePreloader_method_get_resource_list:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_resource_list**\ (\ ) |const| :ref:`🔗<class_ResourcePreloader_method_get_resource_list>`

Restituisce la lista delle risorse presenti nel precaricatore.

.. rst-class:: classref-item-separator

----

.. _class_ResourcePreloader_method_has_resource:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_resource**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ResourcePreloader_method_has_resource>`

Restituisce ``true`` se il preloader contiene una risorsa associata al nome ``name``.

.. rst-class:: classref-item-separator

----

.. _class_ResourcePreloader_method_remove_resource:

.. rst-class:: classref-method

|void| **remove_resource**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_ResourcePreloader_method_remove_resource>`

Rimuove la risorsa associata al nome ``name`` dal precaricatore.

.. rst-class:: classref-item-separator

----

.. _class_ResourcePreloader_method_rename_resource:

.. rst-class:: classref-method

|void| **rename_resource**\ (\ name\: :ref:`StringName<class_StringName>`, newname\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_ResourcePreloader_method_rename_resource>`

Rinomina una risorsa all'interno del precaricatore da ``name`` a ``newname``.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
