:github_url: hide

.. _class_OpenXRInteractionProfile:

OpenXRInteractionProfile
========================

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Oggetto suggerito di associazioni per OpenXR.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questo oggetto memorizza le associazioni suggerite per un profilo di interazione. I profili di interazione definiscono i metadati per un dispositivo XR tracciato, come un controller XR.

Per maggiori informazioni, consulta le `informazioni sui profili di interazione nella specifica OpenXR <https://www.khronos.org/registry/OpenXR/specs/1.0/html/xrspec.html#semantic-path-interaction-profiles>`__.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`Array<class_Array>`   | :ref:`binding_modifiers<class_OpenXRInteractionProfile_property_binding_modifiers>`               | ``[]`` |
   +-----------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`Array<class_Array>`   | :ref:`bindings<class_OpenXRInteractionProfile_property_bindings>`                                 | ``[]`` |
   +-----------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>` | :ref:`interaction_profile_path<class_OpenXRInteractionProfile_property_interaction_profile_path>` | ``""`` |
   +-----------------------------+---------------------------------------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRIPBinding<class_OpenXRIPBinding>`                 | :ref:`get_binding<class_OpenXRInteractionProfile_method_get_binding>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                   |
   +---------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                         | :ref:`get_binding_count<class_OpenXRInteractionProfile_method_get_binding_count>`\ (\ ) |const|                                      |
   +---------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRIPBindingModifier<class_OpenXRIPBindingModifier>` | :ref:`get_binding_modifier<class_OpenXRInteractionProfile_method_get_binding_modifier>`\ (\ index\: :ref:`int<class_int>`\ ) |const| |
   +---------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                         | :ref:`get_binding_modifier_count<class_OpenXRInteractionProfile_method_get_binding_modifier_count>`\ (\ ) |const|                    |
   +---------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_OpenXRInteractionProfile_property_binding_modifiers:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **binding_modifiers** = ``[]`` :ref:`🔗<class_OpenXRInteractionProfile_property_binding_modifiers>`

.. rst-class:: classref-property-setget

- |void| **set_binding_modifiers**\ (\ value\: :ref:`Array<class_Array>`\ )
- :ref:`Array<class_Array>` **get_binding_modifiers**\ (\ )

Modificatori di associazioni per questo profilo di interazione.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInteractionProfile_property_bindings:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **bindings** = ``[]`` :ref:`🔗<class_OpenXRInteractionProfile_property_bindings>`

.. rst-class:: classref-property-setget

- |void| **set_bindings**\ (\ value\: :ref:`Array<class_Array>`\ )
- :ref:`Array<class_Array>` **get_bindings**\ (\ )

Associazioni di azioni per questo profilo di interazione.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInteractionProfile_property_interaction_profile_path:

.. rst-class:: classref-property

:ref:`String<class_String>` **interaction_profile_path** = ``""`` :ref:`🔗<class_OpenXRInteractionProfile_property_interaction_profile_path>`

.. rst-class:: classref-property-setget

- |void| **set_interaction_profile_path**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_interaction_profile_path**\ (\ )

Percorso del profilo di interazione che identifica il dispositivo XR.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_OpenXRInteractionProfile_method_get_binding:

.. rst-class:: classref-method

:ref:`OpenXRIPBinding<class_OpenXRIPBinding>` **get_binding**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRInteractionProfile_method_get_binding>`

Recupera l'associazione a questo indice.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInteractionProfile_method_get_binding_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_binding_count**\ (\ ) |const| :ref:`🔗<class_OpenXRInteractionProfile_method_get_binding_count>`

Ottiene il numero di associazioni in questo profilo di interazione.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInteractionProfile_method_get_binding_modifier:

.. rst-class:: classref-method

:ref:`OpenXRIPBindingModifier<class_OpenXRIPBindingModifier>` **get_binding_modifier**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRInteractionProfile_method_get_binding_modifier>`

Ottiene l':ref:`OpenXRBindingModifier<class_OpenXRBindingModifier>` a questo indice.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInteractionProfile_method_get_binding_modifier_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_binding_modifier_count**\ (\ ) |const| :ref:`🔗<class_OpenXRInteractionProfile_method_get_binding_modifier_count>`

Ottiene il numero di modificatori di associazioni in questo profilo di interazione.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
