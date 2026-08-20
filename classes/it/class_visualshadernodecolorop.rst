:github_url: hide

.. _class_VisualShaderNodeColorOp:

VisualShaderNodeColorOp
=======================

**Eredita:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un operatore :ref:`Color<class_Color>` da utilizzare all'interno del grafico di shader visivo.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Applica :ref:`operator<class_VisualShaderNodeColorOp_property_operator>` a due ingressi di colore.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +--------------------------------------------------------+------------------------------------------------------------------+-------+
   | :ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` | :ref:`operator<class_VisualShaderNodeColorOp_property_operator>` | ``0`` |
   +--------------------------------------------------------+------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_VisualShaderNodeColorOp_Operator:

.. rst-class:: classref-enumeration

enum **Operator**: :ref:`🔗<enum_VisualShaderNodeColorOp_Operator>`

.. _class_VisualShaderNodeColorOp_constant_OP_SCREEN:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` **OP_SCREEN** = ``0``

Produce un effetto schermo con la seguente formula:

::

    result = vec3(1.0) - (vec3(1.0) - a) * (vec3(1.0) - b);

.. _class_VisualShaderNodeColorOp_constant_OP_DIFFERENCE:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` **OP_DIFFERENCE** = ``1``

Produce un effetto differenza con la seguente formula:

::

    result = abs(a - b);

.. _class_VisualShaderNodeColorOp_constant_OP_DARKEN:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` **OP_DARKEN** = ``2``

Produce un effetto scurente dalla seguente formula:

::

    result = min(a, b);

.. _class_VisualShaderNodeColorOp_constant_OP_LIGHTEN:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` **OP_LIGHTEN** = ``3``

Produce un effetto schiarente dalla seguente formula:

::

    result = max(a, b);

.. _class_VisualShaderNodeColorOp_constant_OP_OVERLAY:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` **OP_OVERLAY** = ``4``

Produce un effetto sovrapposizione con la seguente formula:

::

    for (int i = 0; i < 3; i++) {
        float base = a[i];
        float blend = b[i];
        if (base < 0.5) {
            result[i] = 2.0 * base * blend;
        } else {
            result[i] = 1.0 - 2.0 * (1.0 - blend) * (1.0 - base);
        }
    }

.. _class_VisualShaderNodeColorOp_constant_OP_DODGE:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` **OP_DODGE** = ``5``

Produci un effetto evasione con la seguente formula:

::

    result = a / (vec3(1.0) - b);

.. _class_VisualShaderNodeColorOp_constant_OP_BURN:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` **OP_BURN** = ``6``

Produce un effetto bruciatura con la seguente formula:

::

    result = vec3(1.0) - (vec3(1.0) - a) / b;

.. _class_VisualShaderNodeColorOp_constant_OP_SOFT_LIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` **OP_SOFT_LIGHT** = ``7``

Produce un effetto luce soffusa con la seguente formula:

::

    for (int i = 0; i < 3; i++) {
        float base = a[i];
        float blend = b[i];
        if (base < 0.5) {
            result[i] = base * (blend + 0.5);
        } else {
            result[i] = 1.0 - (1.0 - base) * (1.0 - (blend - 0.5));
        }
    }

.. _class_VisualShaderNodeColorOp_constant_OP_HARD_LIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` **OP_HARD_LIGHT** = ``8``

Produce un effetto luce intensa con la seguente formula:

::

    for (int i = 0; i < 3; i++) {
        float base = a[i];
        float blend = b[i];
        if (base < 0.5) {
            result[i] = base * (2.0 * blend);
        } else {
            result[i] = 1.0 - (1.0 - base) * (1.0 - 2.0 * (blend - 0.5));
        }
    }

.. _class_VisualShaderNodeColorOp_constant_OP_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` **OP_MAX** = ``9``

Rappresenta la dimensione dell'enumerazione :ref:`Operator<enum_VisualShaderNodeColorOp_Operator>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_VisualShaderNodeColorOp_property_operator:

.. rst-class:: classref-property

:ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` **operator** = ``0`` :ref:`🔗<class_VisualShaderNodeColorOp_property_operator>`

.. rst-class:: classref-property-setget

- |void| **set_operator**\ (\ value\: :ref:`Operator<enum_VisualShaderNodeColorOp_Operator>`\ )
- :ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` **get_operator**\ (\ )

Un operatore da applicare agli ingressi.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
