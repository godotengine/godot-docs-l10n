:github_url: hide

.. _class_FlowContainer:

FlowContainer
=============

**Eredita:** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`HFlowContainer<class_HFlowContainer>`, :ref:`VFlowContainer<class_VFlowContainer>`

Un contenitore che dispone i suoi controlli figli orizzontalmente o verticalmente e li avvolge attorno ai bordi.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un contenitore che dispone i suoi controlli figli orizzontalmente o verticalmente e li avvolge attorno ai bordi. Ciò è simile a come il testo in un libro si avvolge quando non ci sono più parole che possono rimanere su una riga.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Utilizzo dei Container <../tutorials/ui/gui_containers>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +------------------------------------------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`AlignmentMode<enum_FlowContainer_AlignmentMode>`                 | :ref:`alignment<class_FlowContainer_property_alignment>`                     | ``0``     |
   +------------------------------------------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`LastWrapAlignmentMode<enum_FlowContainer_LastWrapAlignmentMode>` | :ref:`last_wrap_alignment<class_FlowContainer_property_last_wrap_alignment>` | ``0``     |
   +------------------------------------------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                                | :ref:`reverse_fill<class_FlowContainer_property_reverse_fill>`               | ``false`` |
   +------------------------------------------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                                | :ref:`vertical<class_FlowContainer_property_vertical>`                       | ``false`` |
   +------------------------------------------------------------------------+------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------+--------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`get_line_count<class_FlowContainer_method_get_line_count>`\ (\ ) |const| |
   +-----------------------+--------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Proprietà del tema
------------------------------------

.. table::
   :widths: auto

   +-----------------------+----------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`h_separation<class_FlowContainer_theme_constant_h_separation>` | ``4`` |
   +-----------------------+----------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`v_separation<class_FlowContainer_theme_constant_v_separation>` | ``4`` |
   +-----------------------+----------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_FlowContainer_AlignmentMode:

.. rst-class:: classref-enumeration

enum **AlignmentMode**: :ref:`🔗<enum_FlowContainer_AlignmentMode>`

.. _class_FlowContainer_constant_ALIGNMENT_BEGIN:

.. rst-class:: classref-enumeration-constant

:ref:`AlignmentMode<enum_FlowContainer_AlignmentMode>` **ALIGNMENT_BEGIN** = ``0``

I controlli figli saranno disposti all'inizio del contenitore, ovvero in alto se l'orientamento è verticale, a sinistra se l'orientamento è orizzontale (a destra per il layout RTL).

.. _class_FlowContainer_constant_ALIGNMENT_CENTER:

.. rst-class:: classref-enumeration-constant

:ref:`AlignmentMode<enum_FlowContainer_AlignmentMode>` **ALIGNMENT_CENTER** = ``1``

I controlli figli saranno centrati nel contenitore.

.. _class_FlowContainer_constant_ALIGNMENT_END:

.. rst-class:: classref-enumeration-constant

:ref:`AlignmentMode<enum_FlowContainer_AlignmentMode>` **ALIGNMENT_END** = ``2``

I controlli figlio saranno disposti alla fine del contenitore, ovvero in basso se l'orientamento è verticale, a destra se l'orientamento è orizzontale (a sinistra per il layout RTL).

.. rst-class:: classref-item-separator

----

.. _enum_FlowContainer_LastWrapAlignmentMode:

.. rst-class:: classref-enumeration

enum **LastWrapAlignmentMode**: :ref:`🔗<enum_FlowContainer_LastWrapAlignmentMode>`

.. _class_FlowContainer_constant_LAST_WRAP_ALIGNMENT_INHERIT:

.. rst-class:: classref-enumeration-constant

:ref:`LastWrapAlignmentMode<enum_FlowContainer_LastWrapAlignmentMode>` **LAST_WRAP_ALIGNMENT_INHERIT** = ``0``

L'ultima riga o colonna parzialmente riempita sarà allineata alla riga o colonna precedente in base a :ref:`alignment<class_FlowContainer_property_alignment>`.

.. _class_FlowContainer_constant_LAST_WRAP_ALIGNMENT_BEGIN:

.. rst-class:: classref-enumeration-constant

:ref:`LastWrapAlignmentMode<enum_FlowContainer_LastWrapAlignmentMode>` **LAST_WRAP_ALIGNMENT_BEGIN** = ``1``

L'ultima riga o colonna parzialmente riempita sarà allineata all'inizio della riga o colonna precedente.

.. _class_FlowContainer_constant_LAST_WRAP_ALIGNMENT_CENTER:

.. rst-class:: classref-enumeration-constant

:ref:`LastWrapAlignmentMode<enum_FlowContainer_LastWrapAlignmentMode>` **LAST_WRAP_ALIGNMENT_CENTER** = ``2``

L'ultima riga o colonna parzialmente riempita sarà allineata al centro della riga o colonna precedente.

.. _class_FlowContainer_constant_LAST_WRAP_ALIGNMENT_END:

.. rst-class:: classref-enumeration-constant

:ref:`LastWrapAlignmentMode<enum_FlowContainer_LastWrapAlignmentMode>` **LAST_WRAP_ALIGNMENT_END** = ``3``

L'ultima riga o colonna parzialmente riempita sarà allineata alla fine della riga o colonna precedente.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_FlowContainer_property_alignment:

.. rst-class:: classref-property

:ref:`AlignmentMode<enum_FlowContainer_AlignmentMode>` **alignment** = ``0`` :ref:`🔗<class_FlowContainer_property_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_alignment**\ (\ value\: :ref:`AlignmentMode<enum_FlowContainer_AlignmentMode>`\ )
- :ref:`AlignmentMode<enum_FlowContainer_AlignmentMode>` **get_alignment**\ (\ )

L'allineamento dei nodi figli del contenitore (deve essere :ref:`ALIGNMENT_BEGIN<class_FlowContainer_constant_ALIGNMENT_BEGIN>`, :ref:`ALIGNMENT_CENTER<class_FlowContainer_constant_ALIGNMENT_CENTER>` o :ref:`ALIGNMENT_END<class_FlowContainer_constant_ALIGNMENT_END>`).

.. rst-class:: classref-item-separator

----

.. _class_FlowContainer_property_last_wrap_alignment:

.. rst-class:: classref-property

:ref:`LastWrapAlignmentMode<enum_FlowContainer_LastWrapAlignmentMode>` **last_wrap_alignment** = ``0`` :ref:`🔗<class_FlowContainer_property_last_wrap_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_last_wrap_alignment**\ (\ value\: :ref:`LastWrapAlignmentMode<enum_FlowContainer_LastWrapAlignmentMode>`\ )
- :ref:`LastWrapAlignmentMode<enum_FlowContainer_LastWrapAlignmentMode>` **get_last_wrap_alignment**\ (\ )

Comportamento di avvolgimento dell'ultima riga o colonna parzialmente riempita (deve essere uno tra :ref:`LAST_WRAP_ALIGNMENT_INHERIT<class_FlowContainer_constant_LAST_WRAP_ALIGNMENT_INHERIT>`, :ref:`LAST_WRAP_ALIGNMENT_BEGIN<class_FlowContainer_constant_LAST_WRAP_ALIGNMENT_BEGIN>`, :ref:`LAST_WRAP_ALIGNMENT_CENTER<class_FlowContainer_constant_LAST_WRAP_ALIGNMENT_CENTER>` o :ref:`LAST_WRAP_ALIGNMENT_END<class_FlowContainer_constant_LAST_WRAP_ALIGNMENT_END>`).

.. rst-class:: classref-item-separator

----

.. _class_FlowContainer_property_reverse_fill:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **reverse_fill** = ``false`` :ref:`🔗<class_FlowContainer_property_reverse_fill>`

.. rst-class:: classref-property-setget

- |void| **set_reverse_fill**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_reverse_fill**\ (\ )

Se ``true``, inverte la direzione di riempimento. I **FlowContainer** orizzontali riempiranno le righe dal basso verso l'alto, i **FlowContainer** verticali riempiranno le colonne da destra a sinistra.

Quando si utilizza un **FlowContainer** verticale con un :ref:`Control.layout_direction<class_Control_property_layout_direction>` da destra a sinistra, le colonne si riempiranno invece da sinistra a destra.

.. rst-class:: classref-item-separator

----

.. _class_FlowContainer_property_vertical:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **vertical** = ``false`` :ref:`🔗<class_FlowContainer_property_vertical>`

.. rst-class:: classref-property-setget

- |void| **set_vertical**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_vertical**\ (\ )

Se ``true``, il **FlowContainer** organizzerà i suoi nodi figli verticalmente, anziché orizzontalmente.

Non può essere modificato quando si utilizzano :ref:`HFlowContainer<class_HFlowContainer>` e :ref:`VFlowContainer<class_VFlowContainer>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_FlowContainer_method_get_line_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_line_count**\ (\ ) |const| :ref:`🔗<class_FlowContainer_method_get_line_count>`

Restituisce il numero di righe attuale.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà del tema
------------------------------------------------------------------------

.. _class_FlowContainer_theme_constant_h_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **h_separation** = ``4`` :ref:`🔗<class_FlowContainer_theme_constant_h_separation>`

La separazione orizzontale dei nodi figli.

.. rst-class:: classref-item-separator

----

.. _class_FlowContainer_theme_constant_v_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **v_separation** = ``4`` :ref:`🔗<class_FlowContainer_theme_constant_v_separation>`

La separazione verticale dei nodi figli.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
