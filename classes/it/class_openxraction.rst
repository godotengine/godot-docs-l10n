:github_url: hide

.. _class_OpenXRAction:

OpenXRAction
============

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un'azione OpenXR.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questa risorsa definisce un'azione OpenXR. Le azioni si possono utilizzare sia per gli input (pulsanti, joystick, trigger, ecc.) sia per gli output (feedback aptico).

OpenXR esegue la conversione automatica tra il tipo di azione e il tipo di input ogni volta che è possibile. Un grilletto analogico associato a un'azione booleana restituirà quindi ``false`` se il grilletto è premuto e ``true`` se premuto completamente.

Le azioni non sono direttamente associate a dispositivi specifici, invece OpenXR riconosce un numero limitato di percorsi di primo livello che identificano i dispositivi in base all'utilizzo. Possiamo limitare i dispositivi a cui un'azione può essere associata da questi percorsi di primo livello. Ad esempio, un'azione che si dovrebbe utilizzare solo per i controller portatili può avere i percorsi di livello primo "/user/hand/left" e "/user/hand/right" associati. Consulta la `sezione di percorso riservato nella specifica OpenXR <https://www.khronos.org/registry/OpenXR/specs/1.0/html/xrspec.html#semantic-path-reserved>`__ per maggiori informazioni sui percorsi di livello primo.

Nota che il nome della risorsa è utilizzato per registrare l'azione.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------------------------------+-------------------------------------------------------------------+-------------------------+
   | :ref:`ActionType<enum_OpenXRAction_ActionType>`   | :ref:`action_type<class_OpenXRAction_property_action_type>`       | ``1``                   |
   +---------------------------------------------------+-------------------------------------------------------------------+-------------------------+
   | :ref:`String<class_String>`                       | :ref:`localized_name<class_OpenXRAction_property_localized_name>` | ``""``                  |
   +---------------------------------------------------+-------------------------------------------------------------------+-------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`toplevel_paths<class_OpenXRAction_property_toplevel_paths>` | ``PackedStringArray()`` |
   +---------------------------------------------------+-------------------------------------------------------------------+-------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_OpenXRAction_ActionType:

.. rst-class:: classref-enumeration

enum **ActionType**: :ref:`🔗<enum_OpenXRAction_ActionType>`

.. _class_OpenXRAction_constant_OPENXR_ACTION_BOOL:

.. rst-class:: classref-enumeration-constant

:ref:`ActionType<enum_OpenXRAction_ActionType>` **OPENXR_ACTION_BOOL** = ``0``

Questa azione fornisce un valore booleano.

.. _class_OpenXRAction_constant_OPENXR_ACTION_FLOAT:

.. rst-class:: classref-enumeration-constant

:ref:`ActionType<enum_OpenXRAction_ActionType>` **OPENXR_ACTION_FLOAT** = ``1``

Questa azione fornisce un valore in virgola mobile compreso tra ``0.0`` e ``1.0`` per qualsiasi input analogico, come i grilletti.

.. _class_OpenXRAction_constant_OPENXR_ACTION_VECTOR2:

.. rst-class:: classref-enumeration-constant

:ref:`ActionType<enum_OpenXRAction_ActionType>` **OPENXR_ACTION_VECTOR2** = ``2``

Questa azione fornisce un valore di tipo :ref:`Vector2<class_Vector2>` e può essere associata ai trackpad e ai joystick incorporati.

.. _class_OpenXRAction_constant_OPENXR_ACTION_POSE:

.. rst-class:: classref-enumeration-constant

:ref:`ActionType<enum_OpenXRAction_ActionType>` **OPENXR_ACTION_POSE** = ``3``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_OpenXRAction_property_action_type:

.. rst-class:: classref-property

:ref:`ActionType<enum_OpenXRAction_ActionType>` **action_type** = ``1`` :ref:`🔗<class_OpenXRAction_property_action_type>`

.. rst-class:: classref-property-setget

- |void| **set_action_type**\ (\ value\: :ref:`ActionType<enum_OpenXRAction_ActionType>`\ )
- :ref:`ActionType<enum_OpenXRAction_ActionType>` **get_action_type**\ (\ )

Il tipo di azione.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRAction_property_localized_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **localized_name** = ``""`` :ref:`🔗<class_OpenXRAction_property_localized_name>`

.. rst-class:: classref-property-setget

- |void| **set_localized_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_localized_name**\ (\ )

La descrizione localizzata di questa azione.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRAction_property_toplevel_paths:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **toplevel_paths** = ``PackedStringArray()`` :ref:`🔗<class_OpenXRAction_property_toplevel_paths>`

.. rst-class:: classref-property-setget

- |void| **set_toplevel_paths**\ (\ value\: :ref:`PackedStringArray<class_PackedStringArray>`\ )
- :ref:`PackedStringArray<class_PackedStringArray>` **get_toplevel_paths**\ (\ )

Una raccolta di percorsi di primo livello a cui è possibile associare questa azione.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
