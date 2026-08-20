:github_url: hide

.. _class_InputEventAction:

InputEventAction
================

**Eredita:** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un tipo di evento di input per le azioni.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Contiene un'azione generica che può essere indirizzata da diversi tipi di input. Le azioni e i loro eventi possono essere impostati nella scheda **Mappa di input** in **Progetto > Impostazioni del progetto**, o con la classe :ref:`InputMap<class_InputMap>`.

\ **Nota:** A differenza delle altre sottoclassi di :ref:`InputEvent<class_InputEvent>` che mappano eventi fisici univoci, questa virtuale non è emessa dal motore. Questa classe è utile per emettere azioni manualmente con :ref:`Input.parse_input_event()<class_Input_method_parse_input_event>`, che vengono poi ricevute in :ref:`Node._input()<class_Node_private_method__input>`. Per verificare se un evento fisico corrisponde a un'azione dalla Mappa di input, utilizza :ref:`InputEvent.is_action()<class_InputEvent_method_is_action>` e :ref:`InputEvent.is_action_pressed()<class_InputEvent_method_is_action_pressed>`.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- `Utilizzo di InputEvent: Azioni <../tutorials/inputs/inputevent.html#actions>`__

- `Demo 2D "Dodge The Creeps" <https://godotengine.org/asset-library/asset/2712>`__

- `Demo di voxel 3D <https://godotengine.org/asset-library/asset/2755>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------------+-----------------------------------------------------------------+-----------+
   | :ref:`StringName<class_StringName>` | :ref:`action<class_InputEventAction_property_action>`           | ``&""``   |
   +-------------------------------------+-----------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`               | :ref:`event_index<class_InputEventAction_property_event_index>` | ``-1``    |
   +-------------------------------------+-----------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`pressed<class_InputEventAction_property_pressed>`         | ``false`` |
   +-------------------------------------+-----------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`           | :ref:`strength<class_InputEventAction_property_strength>`       | ``1.0``   |
   +-------------------------------------+-----------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_InputEventAction_property_action:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **action** = ``&""`` :ref:`🔗<class_InputEventAction_property_action>`

.. rst-class:: classref-property-setget

- |void| **set_action**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_action**\ (\ )

Il nome dell'azione. Di solito è il nome di un'azione esistente nell':ref:`InputMap<class_InputMap>` a cui si desidera che questo evento personalizzato corrisponda.

.. rst-class:: classref-item-separator

----

.. _class_InputEventAction_property_event_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **event_index** = ``-1`` :ref:`🔗<class_InputEventAction_property_event_index>`

.. rst-class:: classref-property-setget

- |void| **set_event_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_event_index**\ (\ )

L'indice dell'evento reale nell'azione a cui corrisponde questo evento (da eventi definiti per questa azione in :ref:`InputMap<class_InputMap>`). Se ``-1``, sarà utilizzato un ID univoco e le azioni premute con questo ID dovranno essere rilasciate con un altro **InputEventAction**.

.. rst-class:: classref-item-separator

----

.. _class_InputEventAction_property_pressed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pressed** = ``false`` :ref:`🔗<class_InputEventAction_property_pressed>`

.. rst-class:: classref-property-setget

- |void| **set_pressed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_pressed**\ (\ )

Se ``true``, lo stato dell'azione è premuto. Se ``false``, lo stato dell'azione è rilasciato.

.. rst-class:: classref-item-separator

----

.. _class_InputEventAction_property_strength:

.. rst-class:: classref-property

:ref:`float<class_float>` **strength** = ``1.0`` :ref:`🔗<class_InputEventAction_property_strength>`

.. rst-class:: classref-property-setget

- |void| **set_strength**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_strength**\ (\ )

L'intensità dell'azione compresa tra 0 e 1. Questo valore è considerato uguale a 0 se premuto è ``false``. L'intensità dell'evento consente di simulare eventi di movimento del joypad analogico, specificando la forza con cui l'asse del joypad viene curvato o premuto.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
