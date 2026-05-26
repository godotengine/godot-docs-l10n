:github_url: hide

.. _class_AnimationLibrary:

AnimationLibrary
================

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Contenitore per le risorse di :ref:`Animation<class_Animation>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Una libreria di animazione memorizza una serie di animazioni accessibili attraverso i chiavi :ref:`StringName<class_StringName>`, per l'uso con i nodi :ref:`AnimationPlayer<class_AnimationPlayer>`.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Indice del tutorial di animazione <../tutorials/animation/index>`

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`add_animation<class_AnimationLibrary_method_add_animation>`\ (\ name\: :ref:`StringName<class_StringName>`, animation\: :ref:`Animation<class_Animation>`\ )       |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Animation<class_Animation>`                                | :ref:`get_animation<class_AnimationLibrary_method_get_animation>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                              |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] | :ref:`get_animation_list<class_AnimationLibrary_method_get_animation_list>`\ (\ ) |const|                                                                                |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`get_animation_list_size<class_AnimationLibrary_method_get_animation_list_size>`\ (\ ) |const|                                                                      |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`has_animation<class_AnimationLibrary_method_has_animation>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                              |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`remove_animation<class_AnimationLibrary_method_remove_animation>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`rename_animation<class_AnimationLibrary_method_rename_animation>`\ (\ name\: :ref:`StringName<class_StringName>`, newname\: :ref:`StringName<class_StringName>`\ ) |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_AnimationLibrary_signal_animation_added:

.. rst-class:: classref-signal

**animation_added**\ (\ anim_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationLibrary_signal_animation_added>`

Emitted when an :ref:`Animation<class_Animation>` is added, under the key ``anim_name``.

.. rst-class:: classref-item-separator

----

.. _class_AnimationLibrary_signal_animation_changed:

.. rst-class:: classref-signal

**animation_changed**\ (\ anim_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationLibrary_signal_animation_changed>`

Emitted when there's a change in one of the animations, e.g. tracks are added, moved or have changed paths. ``anim_name`` is the key of the animation that was changed.

See also :ref:`Resource.changed<class_Resource_signal_changed>`, which this acts as a relay for.

.. rst-class:: classref-item-separator

----

.. _class_AnimationLibrary_signal_animation_removed:

.. rst-class:: classref-signal

**animation_removed**\ (\ anim_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationLibrary_signal_animation_removed>`

Emitted when an :ref:`Animation<class_Animation>` stored with the key ``anim_name`` is removed.

.. rst-class:: classref-item-separator

----

.. _class_AnimationLibrary_signal_animation_renamed:

.. rst-class:: classref-signal

**animation_renamed**\ (\ old_name\: :ref:`StringName<class_StringName>`, new_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationLibrary_signal_animation_renamed>`

Emitted when the key for an :ref:`Animation<class_Animation>` is changed, from ``old_name`` to ``new_name``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_AnimationLibrary_method_add_animation:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **add_animation**\ (\ name\: :ref:`StringName<class_StringName>`, animation\: :ref:`Animation<class_Animation>`\ ) :ref:`🔗<class_AnimationLibrary_method_add_animation>`

Aggiunge l'animazione ``animation`` alla libreria, accessibile dalla chiave ``name``.

.. rst-class:: classref-item-separator

----

.. _class_AnimationLibrary_method_get_animation:

.. rst-class:: classref-method

:ref:`Animation<class_Animation>` **get_animation**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationLibrary_method_get_animation>`

Restituisce l':ref:`Animation<class_Animation>` con la chiave ``name``. Se l'animazione non esiste, ``null`` è restituito ed è generato un errore.

.. rst-class:: classref-item-separator

----

.. _class_AnimationLibrary_method_get_animation_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] **get_animation_list**\ (\ ) |const| :ref:`🔗<class_AnimationLibrary_method_get_animation_list>`

Restituisce le chiavi per l'animazione memorizzata nella libreria.

.. rst-class:: classref-item-separator

----

.. _class_AnimationLibrary_method_get_animation_list_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_animation_list_size**\ (\ ) |const| :ref:`🔗<class_AnimationLibrary_method_get_animation_list_size>`

Restituisce il numero di chiavi per le risorse :ref:`Animation<class_Animation>` memorizzate nella libreria.

.. rst-class:: classref-item-separator

----

.. _class_AnimationLibrary_method_has_animation:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_animation**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationLibrary_method_has_animation>`

Restituisce ``true`` se la libreria memorizza un animazione con ``name`` come chiave.

.. rst-class:: classref-item-separator

----

.. _class_AnimationLibrary_method_remove_animation:

.. rst-class:: classref-method

|void| **remove_animation**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationLibrary_method_remove_animation>`

Rimuove l'animazione con la chiave ``name``.

.. rst-class:: classref-item-separator

----

.. _class_AnimationLibrary_method_rename_animation:

.. rst-class:: classref-method

|void| **rename_animation**\ (\ name\: :ref:`StringName<class_StringName>`, newname\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationLibrary_method_rename_animation>`

Modifica la chiave dell':ref:`Animation<class_Animation>` associata con la chiave ``name`` a ``newname``.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
