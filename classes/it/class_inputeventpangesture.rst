:github_url: hide

.. _class_InputEventPanGesture:

InputEventPanGesture
====================

**Eredita:** :ref:`InputEventGesture<class_InputEventGesture>` **<** :ref:`InputEventWithModifiers<class_InputEventWithModifiers>` **<** :ref:`InputEventFromWindow<class_InputEventFromWindow>` **<** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Rappresenta un gesto di tocco panoramico.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Memorizza informazioni sui gesti di panoramica. Un gesto di panoramica viene eseguito quando l'utente scorre sul touch screen con due dita. È solitamente utilizzato per la panoramica o lo scorrimento.

\ **Nota:** Su Android, questo richiede che l'impostazione del progetto :ref:`ProjectSettings.input_devices/pointing/android/enable_pan_and_scale_gestures<class_ProjectSettings_property_input_devices/pointing/android/enable_pan_and_scale_gestures>` sia abilitata.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Utilizzo di InputEvent <../tutorials/inputs/inputevent>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`delta<class_InputEventPanGesture_property_delta>` | ``Vector2(0, 0)`` |
   +-------------------------------+---------------------------------------------------------+-------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_InputEventPanGesture_property_delta:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **delta** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventPanGesture_property_delta>`

.. rst-class:: classref-property-setget

- |void| **set_delta**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_delta**\ (\ )

Quantità di scorrimento dall'ultimo evento di panoramica.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
