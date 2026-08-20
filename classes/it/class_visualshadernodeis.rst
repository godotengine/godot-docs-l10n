:github_url: hide

.. _class_VisualShaderNodeIs:

VisualShaderNodeIs
==================

**Eredita:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un operatore di confronto booleano da utilizzare all'interno del grafico di visual shader.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Restituisce il risultato booleano del confronto tra ``INF`` o ``NaN`` e un parametro scalare.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------------------------------+-------------------------------------------------------------+-------+
   | :ref:`Function<enum_VisualShaderNodeIs_Function>` | :ref:`function<class_VisualShaderNodeIs_property_function>` | ``0`` |
   +---------------------------------------------------+-------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_VisualShaderNodeIs_Function:

.. rst-class:: classref-enumeration

enum **Function**: :ref:`🔗<enum_VisualShaderNodeIs_Function>`

.. _class_VisualShaderNodeIs_constant_FUNC_IS_INF:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeIs_Function>` **FUNC_IS_INF** = ``0``

Confronto con ``INF`` (infinità).

.. _class_VisualShaderNodeIs_constant_FUNC_IS_NAN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeIs_Function>` **FUNC_IS_NAN** = ``1``

Confronto con ``NaN`` (Not a Number; indica i risultati numerici non validi, come la divisione per zero).

.. _class_VisualShaderNodeIs_constant_FUNC_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeIs_Function>` **FUNC_MAX** = ``2``

Rappresenta la dimensione dell'enumerazione :ref:`Function<enum_VisualShaderNodeIs_Function>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_VisualShaderNodeIs_property_function:

.. rst-class:: classref-property

:ref:`Function<enum_VisualShaderNodeIs_Function>` **function** = ``0`` :ref:`🔗<class_VisualShaderNodeIs_property_function>`

.. rst-class:: classref-property-setget

- |void| **set_function**\ (\ value\: :ref:`Function<enum_VisualShaderNodeIs_Function>`\ )
- :ref:`Function<enum_VisualShaderNodeIs_Function>` **get_function**\ (\ )

La funzione di confronto.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
