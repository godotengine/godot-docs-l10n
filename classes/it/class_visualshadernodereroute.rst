:github_url: hide

.. _class_VisualShaderNodeReroute:

VisualShaderNodeReroute
=======================

**Eredita:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un nodo che permette di reindirizzare un collegamento all'interno del grafico di visual shader.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Adatta automaticamente il tipo di porta al tipo di collegamento in entrata e garantisce collegamenti validi.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`PortType<enum_VisualShaderNode_PortType>` | :ref:`get_port_type<class_VisualShaderNodeReroute_method_get_port_type>`\ (\ ) |const| |
   +-------------------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_VisualShaderNodeReroute_method_get_port_type:

.. rst-class:: classref-method

:ref:`PortType<enum_VisualShaderNode_PortType>` **get_port_type**\ (\ ) |const| :ref:`🔗<class_VisualShaderNodeReroute_method_get_port_type>`

Restituisce il tipo di porta del nodo di reindirizzamento.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
