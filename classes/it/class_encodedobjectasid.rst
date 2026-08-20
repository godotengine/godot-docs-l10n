:github_url: hide

.. _class_EncodedObjectAsID:

EncodedObjectAsID
=================

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Contiene un riferimento all'ID d'istanza di un :ref:`Object<class_Object>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Classe di utilità che contiene un riferimento all'identificatore interno di un'istanza :ref:`Object<class_Object>`, come specificato da :ref:`Object.get_instance_id()<class_Object_method_get_instance_id>`. Questo ID può quindi essere utilizzato per recuperare l'istanza dell'oggetto con :ref:`@GlobalScope.instance_from_id()<class_@GlobalScope_method_instance_from_id>`.

Questa classe è utilizzata internamente dall'ispettore dell'editor e dal debugger dello script, ma può anche essere utilizzata nelle estensioni per passare e visualizzare gli oggetti tramite i loro ID.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------+--------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`object_id<class_EncodedObjectAsID_property_object_id>` | ``0`` |
   +-----------------------+--------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_EncodedObjectAsID_property_object_id:

.. rst-class:: classref-property

:ref:`int<class_int>` **object_id** = ``0`` :ref:`🔗<class_EncodedObjectAsID_property_object_id>`

.. rst-class:: classref-property-setget

- |void| **set_object_id**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_object_id**\ (\ )

L'identificatore dell':ref:`Object<class_Object>` memorizzato in questa istanza **EncodedObjectAsID**. L'istanza dell'oggetto può essere recuperata con :ref:`@GlobalScope.instance_from_id()<class_@GlobalScope_method_instance_from_id>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
