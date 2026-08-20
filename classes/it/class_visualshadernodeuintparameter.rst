:github_url: hide

.. _class_VisualShaderNodeUIntParameter:

VisualShaderNodeUIntParameter
=============================

**Eredita:** :ref:`VisualShaderNodeParameter<class_VisualShaderNodeParameter>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un nodo di visual shader per un parametro di shader (uniforme) di tipo :ref:`int<class_int>` senza segno.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un :ref:`VisualShaderNodeParameter<class_VisualShaderNodeParameter>` di tipo :ref:`int<class_int>` senza segno. Offre un'ulteriore personalizzazione per l'intervallo di valori accettati.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`   | :ref:`default_value<class_VisualShaderNodeUIntParameter_property_default_value>`                 | ``0``     |
   +-------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`default_value_enabled<class_VisualShaderNodeUIntParameter_property_default_value_enabled>` | ``false`` |
   +-------------------------+--------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_VisualShaderNodeUIntParameter_property_default_value:

.. rst-class:: classref-property

:ref:`int<class_int>` **default_value** = ``0`` :ref:`🔗<class_VisualShaderNodeUIntParameter_property_default_value>`

.. rst-class:: classref-property-setget

- |void| **set_default_value**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_default_value**\ (\ )

Valore predefinito di questo parametro, che verrà utilizzato se non impostato esternamente. :ref:`default_value_enabled<class_VisualShaderNodeUIntParameter_property_default_value_enabled>` deve essere abilitato; altrimenti è predefinito a ``0``.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeUIntParameter_property_default_value_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **default_value_enabled** = ``false`` :ref:`🔗<class_VisualShaderNodeUIntParameter_property_default_value_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_default_value_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_default_value_enabled**\ (\ )

Se ``true``, il nodo avrà un valore predefinito personalizzato.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
