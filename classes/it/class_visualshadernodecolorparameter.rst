:github_url: hide

.. _class_VisualShaderNodeColorParameter:

VisualShaderNodeColorParameter
==============================

**Eredita:** :ref:`VisualShaderNodeParameter<class_VisualShaderNodeParameter>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un parametro :ref:`Color<class_Color>` da utilizzare all'interno del grafico di shader visivo.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Tradotto in ``uniform vec4`` nel linguaggio shader.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>` | :ref:`default_value<class_VisualShaderNodeColorParameter_property_default_value>`                 | ``Color(1, 1, 1, 1)`` |
   +---------------------------+---------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`   | :ref:`default_value_enabled<class_VisualShaderNodeColorParameter_property_default_value_enabled>` | ``false``             |
   +---------------------------+---------------------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_VisualShaderNodeColorParameter_property_default_value:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **default_value** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_VisualShaderNodeColorParameter_property_default_value>`

.. rst-class:: classref-property-setget

- |void| **set_default_value**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_default_value**\ (\ )

Un valore predefinito da assegnare all'interno dello shader.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeColorParameter_property_default_value_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **default_value_enabled** = ``false`` :ref:`🔗<class_VisualShaderNodeColorParameter_property_default_value_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_default_value_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_default_value_enabled**\ (\ )

Abilita l'uso di :ref:`default_value<class_VisualShaderNodeColorParameter_property_default_value>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
