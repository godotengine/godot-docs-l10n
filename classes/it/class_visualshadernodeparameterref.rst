:github_url: hide

.. _class_VisualShaderNodeParameterRef:

VisualShaderNodeParameterRef
============================

**Eredita:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un riferimento a un :ref:`VisualShaderNodeParameter<class_VisualShaderNodeParameter>` esistente.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

La creazione di un riferimento a un :ref:`VisualShaderNodeParameter<class_VisualShaderNodeParameter>` consente di riutilizzare facilmente questo parametro in diversi shader o fasi di uno shader.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------+-----------------------------------------------------------------------------------+--------------+
   | :ref:`String<class_String>` | :ref:`parameter_name<class_VisualShaderNodeParameterRef_property_parameter_name>` | ``"[None]"`` |
   +-----------------------------+-----------------------------------------------------------------------------------+--------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_VisualShaderNodeParameterRef_property_parameter_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **parameter_name** = ``"[None]"`` :ref:`🔗<class_VisualShaderNodeParameterRef_property_parameter_name>`

.. rst-class:: classref-property-setget

- |void| **set_parameter_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_parameter_name**\ (\ )

Il nome del parametro a cui questo riferimento indica.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
