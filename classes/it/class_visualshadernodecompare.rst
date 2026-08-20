:github_url: hide

.. _class_VisualShaderNodeCompare:

VisualShaderNodeCompare
=======================

**Eredita:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una funzione di confronto per i tipi comuni all'interno del grafico di shader visivo.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Confronta ``a`` e ``b`` di :ref:`type<class_VisualShaderNodeCompare_property_type>` tramite :ref:`function<class_VisualShaderNodeCompare_property_function>`. Restituisce uno scalare booleano. Tradotto nell'istruzione ``if`` nel codice di shader.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +--------------------------------------------------------------------+--------------------------------------------------------------------+-------+
   | :ref:`Condition<enum_VisualShaderNodeCompare_Condition>`           | :ref:`condition<class_VisualShaderNodeCompare_property_condition>` | ``0`` |
   +--------------------------------------------------------------------+--------------------------------------------------------------------+-------+
   | :ref:`Function<enum_VisualShaderNodeCompare_Function>`             | :ref:`function<class_VisualShaderNodeCompare_property_function>`   | ``0`` |
   +--------------------------------------------------------------------+--------------------------------------------------------------------+-------+
   | :ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>` | :ref:`type<class_VisualShaderNodeCompare_property_type>`           | ``0`` |
   +--------------------------------------------------------------------+--------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_VisualShaderNodeCompare_ComparisonType:

.. rst-class:: classref-enumeration

enum **ComparisonType**: :ref:`🔗<enum_VisualShaderNodeCompare_ComparisonType>`

.. _class_VisualShaderNodeCompare_constant_CTYPE_SCALAR:

.. rst-class:: classref-enumeration-constant

:ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>` **CTYPE_SCALAR** = ``0``

Uno scalare in virgola mobile.

.. _class_VisualShaderNodeCompare_constant_CTYPE_SCALAR_INT:

.. rst-class:: classref-enumeration-constant

:ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>` **CTYPE_SCALAR_INT** = ``1``

Uno scalare intero.

.. _class_VisualShaderNodeCompare_constant_CTYPE_SCALAR_UINT:

.. rst-class:: classref-enumeration-constant

:ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>` **CTYPE_SCALAR_UINT** = ``2``

Uno scalare intero senza segno.

.. _class_VisualShaderNodeCompare_constant_CTYPE_VECTOR_2D:

.. rst-class:: classref-enumeration-constant

:ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>` **CTYPE_VECTOR_2D** = ``3``

Un tipo di vettore 2D.

.. _class_VisualShaderNodeCompare_constant_CTYPE_VECTOR_3D:

.. rst-class:: classref-enumeration-constant

:ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>` **CTYPE_VECTOR_3D** = ``4``

Un tipo di vettore 3D.

.. _class_VisualShaderNodeCompare_constant_CTYPE_VECTOR_4D:

.. rst-class:: classref-enumeration-constant

:ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>` **CTYPE_VECTOR_4D** = ``5``

Un tipo di vettore 4D.

.. _class_VisualShaderNodeCompare_constant_CTYPE_BOOLEAN:

.. rst-class:: classref-enumeration-constant

:ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>` **CTYPE_BOOLEAN** = ``6``

Un tipo booleano.

.. _class_VisualShaderNodeCompare_constant_CTYPE_TRANSFORM:

.. rst-class:: classref-enumeration-constant

:ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>` **CTYPE_TRANSFORM** = ``7``

Un tipo di trasformazione (``mat4``).

.. _class_VisualShaderNodeCompare_constant_CTYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>` **CTYPE_MAX** = ``8``

Rappresenta la dimensione dell'enumerazione :ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>`.

.. rst-class:: classref-item-separator

----

.. _enum_VisualShaderNodeCompare_Function:

.. rst-class:: classref-enumeration

enum **Function**: :ref:`🔗<enum_VisualShaderNodeCompare_Function>`

.. _class_VisualShaderNodeCompare_constant_FUNC_EQUAL:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeCompare_Function>` **FUNC_EQUAL** = ``0``

Il confronto per uguaglianza (``a == b``).

.. _class_VisualShaderNodeCompare_constant_FUNC_NOT_EQUAL:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeCompare_Function>` **FUNC_NOT_EQUAL** = ``1``

Il confronto per disuguaglianza (``a != b``).

.. _class_VisualShaderNodeCompare_constant_FUNC_GREATER_THAN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeCompare_Function>` **FUNC_GREATER_THAN** = ``2``

Il confronto per maggiore di (``a > b``). Non può essere utilizzato se :ref:`type<class_VisualShaderNodeCompare_property_type>` è impostato su :ref:`CTYPE_BOOLEAN<class_VisualShaderNodeCompare_constant_CTYPE_BOOLEAN>` o :ref:`CTYPE_TRANSFORM<class_VisualShaderNodeCompare_constant_CTYPE_TRANSFORM>`.

.. _class_VisualShaderNodeCompare_constant_FUNC_GREATER_THAN_EQUAL:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeCompare_Function>` **FUNC_GREATER_THAN_EQUAL** = ``3``

Il confronto per maggiore o uguale a (``a >= b``). Non può essere utilizzato se :ref:`type<class_VisualShaderNodeCompare_property_type>` è impostato su :ref:`CTYPE_BOOLEAN<class_VisualShaderNodeCompare_constant_CTYPE_BOOLEAN>` o :ref:`CTYPE_TRANSFORM<class_VisualShaderNodeCompare_constant_CTYPE_TRANSFORM>`.

.. _class_VisualShaderNodeCompare_constant_FUNC_LESS_THAN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeCompare_Function>` **FUNC_LESS_THAN** = ``4``

Il confronto per minore di (``a < b``). Non può essere utilizzato se :ref:`type<class_VisualShaderNodeCompare_property_type>` è impostato su :ref:`CTYPE_BOOLEAN<class_VisualShaderNodeCompare_constant_CTYPE_BOOLEAN>` o :ref:`CTYPE_TRANSFORM<class_VisualShaderNodeCompare_constant_CTYPE_TRANSFORM>`.

.. _class_VisualShaderNodeCompare_constant_FUNC_LESS_THAN_EQUAL:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeCompare_Function>` **FUNC_LESS_THAN_EQUAL** = ``5``

Il confronto per minore o uguale a (``a <= b``). Non può essere utilizzato se :ref:`type<class_VisualShaderNodeCompare_property_type>` è impostato su :ref:`CTYPE_BOOLEAN<class_VisualShaderNodeCompare_constant_CTYPE_BOOLEAN>` o :ref:`CTYPE_TRANSFORM<class_VisualShaderNodeCompare_constant_CTYPE_TRANSFORM>`.

.. _class_VisualShaderNodeCompare_constant_FUNC_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeCompare_Function>` **FUNC_MAX** = ``6``

Rappresenta la dimensione dell'enumerazione :ref:`Function<enum_VisualShaderNodeCompare_Function>`.

.. rst-class:: classref-item-separator

----

.. _enum_VisualShaderNodeCompare_Condition:

.. rst-class:: classref-enumeration

enum **Condition**: :ref:`🔗<enum_VisualShaderNodeCompare_Condition>`

.. _class_VisualShaderNodeCompare_constant_COND_ALL:

.. rst-class:: classref-enumeration-constant

:ref:`Condition<enum_VisualShaderNodeCompare_Condition>` **COND_ALL** = ``0``

Il risultato sarà ``true`` se tutti i componenti del vettore soddisfano la condizione del confronto.

.. _class_VisualShaderNodeCompare_constant_COND_ANY:

.. rst-class:: classref-enumeration-constant

:ref:`Condition<enum_VisualShaderNodeCompare_Condition>` **COND_ANY** = ``1``

Il risultato sarà ``true`` se uno qualsiasi dei componenti del vettore soddisfa la condizione del confronto.

.. _class_VisualShaderNodeCompare_constant_COND_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Condition<enum_VisualShaderNodeCompare_Condition>` **COND_MAX** = ``2``

Rappresenta la dimensione dell'enumerazione :ref:`Condition<enum_VisualShaderNodeCompare_Condition>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_VisualShaderNodeCompare_property_condition:

.. rst-class:: classref-property

:ref:`Condition<enum_VisualShaderNodeCompare_Condition>` **condition** = ``0`` :ref:`🔗<class_VisualShaderNodeCompare_property_condition>`

.. rst-class:: classref-property-setget

- |void| **set_condition**\ (\ value\: :ref:`Condition<enum_VisualShaderNodeCompare_Condition>`\ )
- :ref:`Condition<enum_VisualShaderNodeCompare_Condition>` **get_condition**\ (\ )

Condizione aggiuntiva che è applicata se :ref:`type<class_VisualShaderNodeCompare_property_type>` è impostato su :ref:`CTYPE_VECTOR_3D<class_VisualShaderNodeCompare_constant_CTYPE_VECTOR_3D>`.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCompare_property_function:

.. rst-class:: classref-property

:ref:`Function<enum_VisualShaderNodeCompare_Function>` **function** = ``0`` :ref:`🔗<class_VisualShaderNodeCompare_property_function>`

.. rst-class:: classref-property-setget

- |void| **set_function**\ (\ value\: :ref:`Function<enum_VisualShaderNodeCompare_Function>`\ )
- :ref:`Function<enum_VisualShaderNodeCompare_Function>` **get_function**\ (\ )

Una funzione di confronto.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCompare_property_type:

.. rst-class:: classref-property

:ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>` **type** = ``0`` :ref:`🔗<class_VisualShaderNodeCompare_property_type>`

.. rst-class:: classref-property-setget

- |void| **set_comparison_type**\ (\ value\: :ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>`\ )
- :ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>` **get_comparison_type**\ (\ )

Il tipo da utilizzare nel confronto.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
