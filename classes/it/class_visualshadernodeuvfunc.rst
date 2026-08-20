:github_url: hide

.. _class_VisualShaderNodeUVFunc:

VisualShaderNodeUVFunc
======================

**Eredita:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Contiene funzioni per modificare le coordinate di texture (``uv``) da utilizzare all'interno del grafico di visual shader.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Le funzioni UV sono simili alle funzioni :ref:`Vector2<class_Vector2>`, ma la porta d'ingresso di questo nodo utilizza il valore di UV dello shader come impostazione predefinita.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------------------------------+-----------------------------------------------------------------+-------+
   | :ref:`Function<enum_VisualShaderNodeUVFunc_Function>` | :ref:`function<class_VisualShaderNodeUVFunc_property_function>` | ``0`` |
   +-------------------------------------------------------+-----------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_VisualShaderNodeUVFunc_Function:

.. rst-class:: classref-enumeration

enum **Function**: :ref:`🔗<enum_VisualShaderNodeUVFunc_Function>`

.. _class_VisualShaderNodeUVFunc_constant_FUNC_PANNING:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeUVFunc_Function>` **FUNC_PANNING** = ``0``

Trasla l'``uv`` utilizzando i valori ``scale`` e ``offset`` attraverso la seguente formula: ``uv = uv + offset * scale``. La porta ``uv`` è collegata all'``UV`` integrato predefinito.

.. _class_VisualShaderNodeUVFunc_constant_FUNC_SCALING:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeUVFunc_Function>` **FUNC_SCALING** = ``1``

Ridimensiona l'``uv`` utilizzando i valori ``scale`` e ``pivot`` attraverso la seguente formula: ``uv = (uv - pivot) * scale + pivot``. La porta ``uv`` è collegata all'``UV`` integrato predefinito.

.. _class_VisualShaderNodeUVFunc_constant_FUNC_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeUVFunc_Function>` **FUNC_MAX** = ``2``

Rappresenta la dimensione dell'enumerazione :ref:`Function<enum_VisualShaderNodeUVFunc_Function>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_VisualShaderNodeUVFunc_property_function:

.. rst-class:: classref-property

:ref:`Function<enum_VisualShaderNodeUVFunc_Function>` **function** = ``0`` :ref:`🔗<class_VisualShaderNodeUVFunc_property_function>`

.. rst-class:: classref-property-setget

- |void| **set_function**\ (\ value\: :ref:`Function<enum_VisualShaderNodeUVFunc_Function>`\ )
- :ref:`Function<enum_VisualShaderNodeUVFunc_Function>` **get_function**\ (\ )

Una funzione da applicare alle coordinate della texture.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
