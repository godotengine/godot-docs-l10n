:github_url: hide

.. _class_OpenXRBindingModifierEditor:

OpenXRBindingModifierEditor
===========================

**Eredita:** :ref:`PanelContainer<class_PanelContainer>` **<** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Editor di modificatori di associazioni.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questo è l'editor predefinito dei modificatori di associazioni, utilizzato nella mappa delle azioni OpenXR.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRBindingModifier<class_OpenXRBindingModifier>` | :ref:`get_binding_modifier<class_OpenXRBindingModifierEditor_method_get_binding_modifier>`\ (\ ) |const|                                                                                                     |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`setup<class_OpenXRBindingModifierEditor_method_setup>`\ (\ action_map\: :ref:`OpenXRActionMap<class_OpenXRActionMap>`, binding_modifier\: :ref:`OpenXRBindingModifier<class_OpenXRBindingModifier>`\ ) |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_OpenXRBindingModifierEditor_signal_binding_modifier_removed:

.. rst-class:: classref-signal

**binding_modifier_removed**\ (\ binding_modifier_editor\: :ref:`Object<class_Object>`\ ) :ref:`🔗<class_OpenXRBindingModifierEditor_signal_binding_modifier_removed>`

Segnale emesso quando l'utente preme il pulsante per eliminare il modificatore di associazione per questo modificatore.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_OpenXRBindingModifierEditor_method_get_binding_modifier:

.. rst-class:: classref-method

:ref:`OpenXRBindingModifier<class_OpenXRBindingModifier>` **get_binding_modifier**\ (\ ) |const| :ref:`🔗<class_OpenXRBindingModifierEditor_method_get_binding_modifier>`

Restituisce l':ref:`OpenXRBindingModifier<class_OpenXRBindingModifier>` attualmente in fase di modifica.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRBindingModifierEditor_method_setup:

.. rst-class:: classref-method

|void| **setup**\ (\ action_map\: :ref:`OpenXRActionMap<class_OpenXRActionMap>`, binding_modifier\: :ref:`OpenXRBindingModifier<class_OpenXRBindingModifier>`\ ) :ref:`🔗<class_OpenXRBindingModifierEditor_method_setup>`

Configura questo editor per la mappa di azioni ``action_map`` e il modificatore di associazione ``binding_modifier``.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
