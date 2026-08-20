:github_url: hide

.. _class_VisualShaderNodeIntParameter:

VisualShaderNodeIntParameter
============================

**Eredita:** :ref:`VisualShaderNodeParameter<class_VisualShaderNodeParameter>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un nodo di visual shader per il parametro shader (uniforme) di tipo :ref:`int<class_int>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un :ref:`VisualShaderNodeParameter<class_VisualShaderNodeParameter>` di tipo :ref:`int<class_int>`. Offre una personalizzazione aggiuntiva per l'intervallo di valori accettati.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                               | :ref:`default_value<class_VisualShaderNodeIntParameter_property_default_value>`                 | ``0``                   |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`default_value_enabled<class_VisualShaderNodeIntParameter_property_default_value_enabled>` | ``false``               |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`   | :ref:`enum_names<class_VisualShaderNodeIntParameter_property_enum_names>`                       | ``PackedStringArray()`` |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`Hint<enum_VisualShaderNodeIntParameter_Hint>` | :ref:`hint<class_VisualShaderNodeIntParameter_property_hint>`                                   | ``0``                   |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                               | :ref:`max<class_VisualShaderNodeIntParameter_property_max>`                                     | ``100``                 |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                               | :ref:`min<class_VisualShaderNodeIntParameter_property_min>`                                     | ``0``                   |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                               | :ref:`step<class_VisualShaderNodeIntParameter_property_step>`                                   | ``1``                   |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+-------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_VisualShaderNodeIntParameter_Hint:

.. rst-class:: classref-enumeration

enum **Hint**: :ref:`🔗<enum_VisualShaderNodeIntParameter_Hint>`

.. _class_VisualShaderNodeIntParameter_constant_HINT_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`Hint<enum_VisualShaderNodeIntParameter_Hint>` **HINT_NONE** = ``0``

Il parametro non limiterà il suo valore.

.. _class_VisualShaderNodeIntParameter_constant_HINT_RANGE:

.. rst-class:: classref-enumeration-constant

:ref:`Hint<enum_VisualShaderNodeIntParameter_Hint>` **HINT_RANGE** = ``1``

Il valore del parametro deve essere all'interno dell'intervallo specificato da :ref:`min<class_VisualShaderNodeIntParameter_property_min>` e :ref:`max<class_VisualShaderNodeIntParameter_property_max>`.

.. _class_VisualShaderNodeIntParameter_constant_HINT_RANGE_STEP:

.. rst-class:: classref-enumeration-constant

:ref:`Hint<enum_VisualShaderNodeIntParameter_Hint>` **HINT_RANGE_STEP** = ``2``

Il valore del parametro deve essere all'interno dell'intervallo specificato, con il passo :ref:`step<class_VisualShaderNodeIntParameter_property_step>` fornito tra i valori.

.. _class_VisualShaderNodeIntParameter_constant_HINT_ENUM:

.. rst-class:: classref-enumeration-constant

:ref:`Hint<enum_VisualShaderNodeIntParameter_Hint>` **HINT_ENUM** = ``3``

Il parametro utilizza un enumerazione per associare valori preimpostati a nomi nell'editor.

.. _class_VisualShaderNodeIntParameter_constant_HINT_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Hint<enum_VisualShaderNodeIntParameter_Hint>` **HINT_MAX** = ``4``

Rappresenta la dimensione dell'enumerazione :ref:`Hint<enum_VisualShaderNodeIntParameter_Hint>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_VisualShaderNodeIntParameter_property_default_value:

.. rst-class:: classref-property

:ref:`int<class_int>` **default_value** = ``0`` :ref:`🔗<class_VisualShaderNodeIntParameter_property_default_value>`

.. rst-class:: classref-property-setget

- |void| **set_default_value**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_default_value**\ (\ )

Valore predefinito di questo parametro, che verrà utilizzato se non impostato esternamente. :ref:`default_value_enabled<class_VisualShaderNodeIntParameter_property_default_value_enabled>` deve essere abilitato; altrimenti è predefinito a ``0``.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeIntParameter_property_default_value_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **default_value_enabled** = ``false`` :ref:`🔗<class_VisualShaderNodeIntParameter_property_default_value_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_default_value_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_default_value_enabled**\ (\ )

Se ``true``, il nodo avrà un valore predefinito personalizzato.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeIntParameter_property_enum_names:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **enum_names** = ``PackedStringArray()`` :ref:`🔗<class_VisualShaderNodeIntParameter_property_enum_names>`

.. rst-class:: classref-property-setget

- |void| **set_enum_names**\ (\ value\: :ref:`PackedStringArray<class_PackedStringArray>`\ )
- :ref:`PackedStringArray<class_PackedStringArray>` **get_enum_names**\ (\ )

I nomi utilizzati per la selezione dell'enumerazione nell'editor. :ref:`hint<class_VisualShaderNodeIntParameter_property_hint>` deve essere :ref:`HINT_ENUM<class_VisualShaderNodeIntParameter_constant_HINT_ENUM>` affinché abbia effetto.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeIntParameter_property_hint:

.. rst-class:: classref-property

:ref:`Hint<enum_VisualShaderNodeIntParameter_Hint>` **hint** = ``0`` :ref:`🔗<class_VisualShaderNodeIntParameter_property_hint>`

.. rst-class:: classref-property-setget

- |void| **set_hint**\ (\ value\: :ref:`Hint<enum_VisualShaderNodeIntParameter_Hint>`\ )
- :ref:`Hint<enum_VisualShaderNodeIntParameter_Hint>` **get_hint**\ (\ )

L'indicazione di intervallo di questo nodo. Usalo per personalizzare l'intervallo valido per i parametri.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeIntParameter_property_max:

.. rst-class:: classref-property

:ref:`int<class_int>` **max** = ``100`` :ref:`🔗<class_VisualShaderNodeIntParameter_property_max>`

.. rst-class:: classref-property-setget

- |void| **set_max**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max**\ (\ )

Il valore massimo che questo parametro può accettare. :ref:`hint<class_VisualShaderNodeIntParameter_property_hint>` deve essere o :ref:`HINT_RANGE<class_VisualShaderNodeIntParameter_constant_HINT_RANGE>` o :ref:`HINT_RANGE_STEP<class_VisualShaderNodeIntParameter_constant_HINT_RANGE_STEP>` perché abbia effetto.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeIntParameter_property_min:

.. rst-class:: classref-property

:ref:`int<class_int>` **min** = ``0`` :ref:`🔗<class_VisualShaderNodeIntParameter_property_min>`

.. rst-class:: classref-property-setget

- |void| **set_min**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_min**\ (\ )

Il valore minimo che questo parametro può accettare. :ref:`hint<class_VisualShaderNodeIntParameter_property_hint>` deve essere o :ref:`HINT_RANGE<class_VisualShaderNodeIntParameter_constant_HINT_RANGE>` o :ref:`HINT_RANGE_STEP<class_VisualShaderNodeIntParameter_constant_HINT_RANGE_STEP>` perché abbia effetto.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeIntParameter_property_step:

.. rst-class:: classref-property

:ref:`int<class_int>` **step** = ``1`` :ref:`🔗<class_VisualShaderNodeIntParameter_property_step>`

.. rst-class:: classref-property-setget

- |void| **set_step**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_step**\ (\ )

Il passo tra i valori del parametro. Forza il parametro a essere un multiplo del valore fornito. :ref:`hint<class_VisualShaderNodeIntParameter_property_hint>` deve essere :ref:`HINT_RANGE_STEP<class_VisualShaderNodeIntParameter_constant_HINT_RANGE_STEP>` affinché abbia effetto.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
