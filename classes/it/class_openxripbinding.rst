:github_url: hide

.. _class_OpenXRIPBinding:

OpenXRIPBinding
===============

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Definisce un'associazione tra un :ref:`OpenXRAction<class_OpenXRAction>` e un input o un output XR.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questa risorsa associazione associa un :ref:`OpenXRAction<class_OpenXRAction>` a un input o un output. Poiché la maggior parte dei controller ha versioni per la mano sinistra e per la mano destra che sono gestite dallo stesso profilo di interazione, possiamo specificare più associazioni. Ad esempio, un'azione "Spara" potrebbe essere associata sia a "/user/hand/left/input/trigger" sia a "/user/hand/right/input/trigger". Ciò richiederebbe due voci di associazioni.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------------------------------+----------------------------------------------------------------------------+--------+
   | :ref:`OpenXRAction<class_OpenXRAction>`           | :ref:`action<class_OpenXRIPBinding_property_action>`                       |        |
   +---------------------------------------------------+----------------------------------------------------------------------------+--------+
   | :ref:`Array<class_Array>`                         | :ref:`binding_modifiers<class_OpenXRIPBinding_property_binding_modifiers>` | ``[]`` |
   +---------------------------------------------------+----------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                       | :ref:`binding_path<class_OpenXRIPBinding_property_binding_path>`           | ``""`` |
   +---------------------------------------------------+----------------------------------------------------------------------------+--------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`paths<class_OpenXRIPBinding_property_paths>`                         |        |
   +---------------------------------------------------+----------------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`add_path<class_OpenXRIPBinding_method_add_path>`\ (\ path\: :ref:`String<class_String>`\ )                            |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRActionBindingModifier<class_OpenXRActionBindingModifier>` | :ref:`get_binding_modifier<class_OpenXRIPBinding_method_get_binding_modifier>`\ (\ index\: :ref:`int<class_int>`\ ) |const| |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                 | :ref:`get_binding_modifier_count<class_OpenXRIPBinding_method_get_binding_modifier_count>`\ (\ ) |const|                    |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                 | :ref:`get_path_count<class_OpenXRIPBinding_method_get_path_count>`\ (\ ) |const|                                            |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`has_path<class_OpenXRIPBinding_method_has_path>`\ (\ path\: :ref:`String<class_String>`\ ) |const|                    |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`remove_path<class_OpenXRIPBinding_method_remove_path>`\ (\ path\: :ref:`String<class_String>`\ )                      |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_OpenXRIPBinding_property_action:

.. rst-class:: classref-property

:ref:`OpenXRAction<class_OpenXRAction>` **action** :ref:`🔗<class_OpenXRIPBinding_property_action>`

.. rst-class:: classref-property-setget

- |void| **set_action**\ (\ value\: :ref:`OpenXRAction<class_OpenXRAction>`\ )
- :ref:`OpenXRAction<class_OpenXRAction>` **get_action**\ (\ )

:ref:`OpenXRAction<class_OpenXRAction>` che è associato a :ref:`binding_path<class_OpenXRIPBinding_property_binding_path>`.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRIPBinding_property_binding_modifiers:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **binding_modifiers** = ``[]`` :ref:`🔗<class_OpenXRIPBinding_property_binding_modifiers>`

.. rst-class:: classref-property-setget

- |void| **set_binding_modifiers**\ (\ value\: :ref:`Array<class_Array>`\ )
- :ref:`Array<class_Array>` **get_binding_modifiers**\ (\ )

Modificatori di associazione per questa associazione.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRIPBinding_property_binding_path:

.. rst-class:: classref-property

:ref:`String<class_String>` **binding_path** = ``""`` :ref:`🔗<class_OpenXRIPBinding_property_binding_path>`

.. rst-class:: classref-property-setget

- |void| **set_binding_path**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_binding_path**\ (\ )

Percorso di associazione che definisce l'input o l'output associato a :ref:`action<class_OpenXRIPBinding_property_action>`.

\ **Nota:** I percorsi di associazione sono suggerimenti, un runtime XR può scegliere di associare l'azione a un input o output diverso che emula questo input o output.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRIPBinding_property_paths:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **paths** :ref:`🔗<class_OpenXRIPBinding_property_paths>`

.. rst-class:: classref-property-setget

- |void| **set_paths**\ (\ value\: :ref:`PackedStringArray<class_PackedStringArray>`\ )
- :ref:`PackedStringArray<class_PackedStringArray>` **get_paths**\ (\ )

**Deprecato:** Use :ref:`binding_path<class_OpenXRIPBinding_property_binding_path>` instead.

Percorsi che definiscono gli input o gli output associati al dispositivo.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_OpenXRIPBinding_method_add_path:

.. rst-class:: classref-method

|void| **add_path**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_OpenXRIPBinding_method_add_path>`

**Deprecato:** Binding is for a single path.

Aggiunge un percorso di input/output a questa associazione.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRIPBinding_method_get_binding_modifier:

.. rst-class:: classref-method

:ref:`OpenXRActionBindingModifier<class_OpenXRActionBindingModifier>` **get_binding_modifier**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRIPBinding_method_get_binding_modifier>`

Ottiene l':ref:`OpenXRBindingModifier<class_OpenXRBindingModifier>` a questo indice.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRIPBinding_method_get_binding_modifier_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_binding_modifier_count**\ (\ ) |const| :ref:`🔗<class_OpenXRIPBinding_method_get_binding_modifier_count>`

Ottiene il numero di modificatori di associazione per questa associazione.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRIPBinding_method_get_path_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_path_count**\ (\ ) |const| :ref:`🔗<class_OpenXRIPBinding_method_get_path_count>`

**Deprecato:** Binding is for a single path.

Ottiene il numero di percorsi di input/output in questa associazione.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRIPBinding_method_has_path:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_path**\ (\ path\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_OpenXRIPBinding_method_has_path>`

**Deprecato:** Binding is for a single path.

Restituisce ``true`` se questo percorso di uscita o entrata fa parte di questo binding.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRIPBinding_method_remove_path:

.. rst-class:: classref-method

|void| **remove_path**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_OpenXRIPBinding_method_remove_path>`

**Deprecato:** Binding is for a single path.

Rimuove questo percorso di input/output da questa associazione.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
