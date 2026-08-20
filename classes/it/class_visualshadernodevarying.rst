:github_url: hide

.. _class_VisualShaderNodeVarying:

VisualShaderNodeVarying
=======================

**Eredita:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`VisualShaderNodeVaryingGetter<class_VisualShaderNodeVaryingGetter>`, :ref:`VisualShaderNodeVaryingSetter<class_VisualShaderNodeVaryingSetter>`

Un nodo di visual shader che rappresenta un valore "varying" di shader.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

I valori di varying sono variabili di shader che possono essere passati tra le funzioni di shader, ad esempio dal Vertex shader al Fragment shader.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------------------------------+--------------------------------------------------------------------------+--------------+
   | :ref:`String<class_String>`                       | :ref:`varying_name<class_VisualShaderNodeVarying_property_varying_name>` | ``"[None]"`` |
   +---------------------------------------------------+--------------------------------------------------------------------------+--------------+
   | :ref:`VaryingType<enum_VisualShader_VaryingType>` | :ref:`varying_type<class_VisualShaderNodeVarying_property_varying_type>` | ``0``        |
   +---------------------------------------------------+--------------------------------------------------------------------------+--------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_VisualShaderNodeVarying_property_varying_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **varying_name** = ``"[None]"`` :ref:`🔗<class_VisualShaderNodeVarying_property_varying_name>`

.. rst-class:: classref-property-setget

- |void| **set_varying_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_varying_name**\ (\ )

Nome della variabile. Deve essere unico.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeVarying_property_varying_type:

.. rst-class:: classref-property

:ref:`VaryingType<enum_VisualShader_VaryingType>` **varying_type** = ``0`` :ref:`🔗<class_VisualShaderNodeVarying_property_varying_type>`

.. rst-class:: classref-property-setget

- |void| **set_varying_type**\ (\ value\: :ref:`VaryingType<enum_VisualShader_VaryingType>`\ )
- :ref:`VaryingType<enum_VisualShader_VaryingType>` **get_varying_type**\ (\ )

Tipo della variabile. Determina dove è possibile accedere alla variabile.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
