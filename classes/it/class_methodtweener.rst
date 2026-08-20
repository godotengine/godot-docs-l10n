:github_url: hide

.. _class_MethodTweener:

MethodTweener
=============

**Eredita:** :ref:`Tweener<class_Tweener>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Interpola un valore astratto e lo fornisce a un metodo richiamato nel tempo.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

**MethodTweener** è simile a una combinazione di :ref:`CallbackTweener<class_CallbackTweener>` e :ref:`PropertyTweener<class_PropertyTweener>`. Richiama un metodo fornendo un valore interpolato come parametro. Vedi :ref:`Tween.tween_method()<class_Tween_method_tween_method>` per ulteriori informazioni sull'utilizzo.

Il tweener terminerà automaticamente se l'oggetto di destinazione del callback viene liberato.

\ **Nota:** :ref:`Tween.tween_method()<class_Tween_method_tween_method>` è l'unico modo corretto per creare **MethodTweener**. Qualsiasi **MethodTweener** creato manualmente non funzionerà correttamente.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------------------+------------------------------------------------------------------------------------------------------------------------+
   | :ref:`MethodTweener<class_MethodTweener>` | :ref:`set_delay<class_MethodTweener_method_set_delay>`\ (\ delay\: :ref:`float<class_float>`\ )                        |
   +-------------------------------------------+------------------------------------------------------------------------------------------------------------------------+
   | :ref:`MethodTweener<class_MethodTweener>` | :ref:`set_ease<class_MethodTweener_method_set_ease>`\ (\ ease\: :ref:`EaseType<enum_Tween_EaseType>`\ )                |
   +-------------------------------------------+------------------------------------------------------------------------------------------------------------------------+
   | :ref:`MethodTweener<class_MethodTweener>` | :ref:`set_trans<class_MethodTweener_method_set_trans>`\ (\ trans\: :ref:`TransitionType<enum_Tween_TransitionType>`\ ) |
   +-------------------------------------------+------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_MethodTweener_method_set_delay:

.. rst-class:: classref-method

:ref:`MethodTweener<class_MethodTweener>` **set_delay**\ (\ delay\: :ref:`float<class_float>`\ ) :ref:`🔗<class_MethodTweener_method_set_delay>`

Imposta il tempo in secondi dopo il quale **MethodTweener** inizierà l'interpolazione. Per impostazione predefinita, non c'è alcun ritardo.

.. rst-class:: classref-item-separator

----

.. _class_MethodTweener_method_set_ease:

.. rst-class:: classref-method

:ref:`MethodTweener<class_MethodTweener>` **set_ease**\ (\ ease\: :ref:`EaseType<enum_Tween_EaseType>`\ ) :ref:`🔗<class_MethodTweener_method_set_ease>`

Imposta il tipo di andamento utilizzato, da :ref:`EaseType<enum_Tween_EaseType>`. Se non impostato, sarà utilizzato l'andamento predefinito dal :ref:`Tween<class_Tween>` che contiene questo Tweener.

.. rst-class:: classref-item-separator

----

.. _class_MethodTweener_method_set_trans:

.. rst-class:: classref-method

:ref:`MethodTweener<class_MethodTweener>` **set_trans**\ (\ trans\: :ref:`TransitionType<enum_Tween_TransitionType>`\ ) :ref:`🔗<class_MethodTweener_method_set_trans>`

Imposta il tipo di transizione utilizzata, da :ref:`TransitionType<enum_Tween_TransitionType>`. Se non impostata, viene utilizzata la transizione predefinita dal :ref:`Tween<class_Tween>` che contiene questo Tweener.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
