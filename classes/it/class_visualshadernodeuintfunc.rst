:github_url: hide

.. _class_VisualShaderNodeUIntFunc:

VisualShaderNodeUIntFunc
========================

**Eredita:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una funzione di intero scalare non firmato da utilizzare all'interno del grafico di visual shader.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Accetti un intero scalare senza segno (``x``) alla porta in ingresso e lo trasforma secondo alla funzione :ref:`function<class_VisualShaderNodeUIntFunc_property_function>`.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------------------------------------+-------------------------------------------------------------------+-------+
   | :ref:`Function<enum_VisualShaderNodeUIntFunc_Function>` | :ref:`function<class_VisualShaderNodeUIntFunc_property_function>` | ``0`` |
   +---------------------------------------------------------+-------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_VisualShaderNodeUIntFunc_Function:

.. rst-class:: classref-enumeration

enum **Function**: :ref:`🔗<enum_VisualShaderNodeUIntFunc_Function>`

.. _class_VisualShaderNodeUIntFunc_constant_FUNC_NEGATE:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeUIntFunc_Function>` **FUNC_NEGATE** = ``0``

Nega la ``x`` usando ``-(x)``.

.. _class_VisualShaderNodeUIntFunc_constant_FUNC_BITWISE_NOT:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeUIntFunc_Function>` **FUNC_BITWISE_NOT** = ``1``

Restituisce il risultato dell'operazione sui bit ``NOT`` sull'intero. Tradotto come ``~a`` nel Godot Shader Language.

.. _class_VisualShaderNodeUIntFunc_constant_FUNC_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeUIntFunc_Function>` **FUNC_MAX** = ``2``

Rappresenta la dimensione dell'enumerazione :ref:`Function<enum_VisualShaderNodeUIntFunc_Function>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_VisualShaderNodeUIntFunc_property_function:

.. rst-class:: classref-property

:ref:`Function<enum_VisualShaderNodeUIntFunc_Function>` **function** = ``0`` :ref:`🔗<class_VisualShaderNodeUIntFunc_property_function>`

.. rst-class:: classref-property-setget

- |void| **set_function**\ (\ value\: :ref:`Function<enum_VisualShaderNodeUIntFunc_Function>`\ )
- :ref:`Function<enum_VisualShaderNodeUIntFunc_Function>` **get_function**\ (\ )

Una funzione da applicare allo scalare.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
