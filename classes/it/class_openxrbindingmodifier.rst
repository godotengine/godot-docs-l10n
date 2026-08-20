:github_url: hide

.. _class_OpenXRBindingModifier:

OpenXRBindingModifier
=====================

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`OpenXRActionBindingModifier<class_OpenXRActionBindingModifier>`, :ref:`OpenXRIPBindingModifier<class_OpenXRIPBindingModifier>`

Classe base di un modificatore di associazione.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Classe base di un modificatore di associazione. Le sottoclassi implementano vari modificatori che alterano il modo in cui un runtime OpenXR elabora gli input.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                   | :ref:`_get_description<class_OpenXRBindingModifier_private_method__get_description>`\ (\ ) |virtual| |required| |const| |
   +-----------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>` | :ref:`_get_ip_modification<class_OpenXRBindingModifier_private_method__get_ip_modification>`\ (\ ) |virtual| |required| |
   +-----------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_OpenXRBindingModifier_private_method__get_description:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_description**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_OpenXRBindingModifier_private_method__get_description>`

Restituisce la descrizione di questa classe, utilizzata per la barra del titolo nell'editor del modificatore di associazione.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRBindingModifier_private_method__get_ip_modification:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **_get_ip_modification**\ (\ ) |virtual| |required| :ref:`🔗<class_OpenXRBindingModifier_private_method__get_ip_modification>`

Restituisce i dati inviati a OpenXR quando si inviano le associazioni interattive suggerite di cui questo modificatore fa parte.

\ **Nota:** Questi dati devono essere compatibili con una struttura ``XrBindingModificationBaseHeaderKHR``.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
