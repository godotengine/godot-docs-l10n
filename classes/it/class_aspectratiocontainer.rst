:github_url: hide

.. _class_AspectRatioContainer:

AspectRatioContainer
====================

**Eredita:** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un contenitore che conserva le proporzioni dei suoi controlli figlio.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un tipo di contenitore che dispone i suoi controlli figlio in modo da preservare automaticamente le loro proporzioni quando il contenitore viene ridimensionato. Utile quando un contenitore ha una dimensione dinamica e i nodi figlio devono adattare le loro dimensioni di conseguenza senza perdere i loro rapporti d'aspetto.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Utilizzo dei Container <../tutorials/ui/gui_containers>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------------------------------------------+---------------------------------------------------------------------------------------+---------+
   | :ref:`AlignmentMode<enum_AspectRatioContainer_AlignmentMode>` | :ref:`alignment_horizontal<class_AspectRatioContainer_property_alignment_horizontal>` | ``1``   |
   +---------------------------------------------------------------+---------------------------------------------------------------------------------------+---------+
   | :ref:`AlignmentMode<enum_AspectRatioContainer_AlignmentMode>` | :ref:`alignment_vertical<class_AspectRatioContainer_property_alignment_vertical>`     | ``1``   |
   +---------------------------------------------------------------+---------------------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>`                                     | :ref:`ratio<class_AspectRatioContainer_property_ratio>`                               | ``1.0`` |
   +---------------------------------------------------------------+---------------------------------------------------------------------------------------+---------+
   | :ref:`StretchMode<enum_AspectRatioContainer_StretchMode>`     | :ref:`stretch_mode<class_AspectRatioContainer_property_stretch_mode>`                 | ``2``   |
   +---------------------------------------------------------------+---------------------------------------------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_AspectRatioContainer_StretchMode:

.. rst-class:: classref-enumeration

enum **StretchMode**: :ref:`🔗<enum_AspectRatioContainer_StretchMode>`

.. _class_AspectRatioContainer_constant_STRETCH_WIDTH_CONTROLS_HEIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_AspectRatioContainer_StretchMode>` **STRETCH_WIDTH_CONTROLS_HEIGHT** = ``0``

L'altezza dei controlli figli è regolata automaticamente in base alla larghezza del contenitore.

.. _class_AspectRatioContainer_constant_STRETCH_HEIGHT_CONTROLS_WIDTH:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_AspectRatioContainer_StretchMode>` **STRETCH_HEIGHT_CONTROLS_WIDTH** = ``1``

La larghezza dei controlli figli è regolata automaticamente in base all'altezza del contenitore.

.. _class_AspectRatioContainer_constant_STRETCH_FIT:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_AspectRatioContainer_StretchMode>` **STRETCH_FIT** = ``2``

Il rettangolo di delimitazione dei controlli figli è regolato automaticamente per adattarsi all'interno del contenitore mantenendo il rapporto di aspetto.

.. _class_AspectRatioContainer_constant_STRETCH_COVER:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_AspectRatioContainer_StretchMode>` **STRETCH_COVER** = ``3``

La larghezza e l'altezza dei controlli figli sono regolate automaticamente in modo che il loro rettangolo di delimitazione copre l'intera area del contenitore, allo stesso tempo mantenendo il rapporto di aspetto.

Quando il rettangolo di delimitazione dei controlli figli supera le dimensioni del contenitore e :ref:`Control.clip_contents<class_Control_property_clip_contents>` è abilitato, questo permette di mostrare solo l'area del contenitore limitata dal proprio rettangolo di delimitazione.

.. rst-class:: classref-item-separator

----

.. _enum_AspectRatioContainer_AlignmentMode:

.. rst-class:: classref-enumeration

enum **AlignmentMode**: :ref:`🔗<enum_AspectRatioContainer_AlignmentMode>`

.. _class_AspectRatioContainer_constant_ALIGNMENT_BEGIN:

.. rst-class:: classref-enumeration-constant

:ref:`AlignmentMode<enum_AspectRatioContainer_AlignmentMode>` **ALIGNMENT_BEGIN** = ``0``

Allinea i controlli figli con l'inizio (a sinistra o in alto) del contenitore.

.. _class_AspectRatioContainer_constant_ALIGNMENT_CENTER:

.. rst-class:: classref-enumeration-constant

:ref:`AlignmentMode<enum_AspectRatioContainer_AlignmentMode>` **ALIGNMENT_CENTER** = ``1``

Allinea i controlli figli con il centro del contenitore.

.. _class_AspectRatioContainer_constant_ALIGNMENT_END:

.. rst-class:: classref-enumeration-constant

:ref:`AlignmentMode<enum_AspectRatioContainer_AlignmentMode>` **ALIGNMENT_END** = ``2``

Allinea i controlli figli con la fine (a destra o in basso) del contenitore.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_AspectRatioContainer_property_alignment_horizontal:

.. rst-class:: classref-property

:ref:`AlignmentMode<enum_AspectRatioContainer_AlignmentMode>` **alignment_horizontal** = ``1`` :ref:`🔗<class_AspectRatioContainer_property_alignment_horizontal>`

.. rst-class:: classref-property-setget

- |void| **set_alignment_horizontal**\ (\ value\: :ref:`AlignmentMode<enum_AspectRatioContainer_AlignmentMode>`\ )
- :ref:`AlignmentMode<enum_AspectRatioContainer_AlignmentMode>` **get_alignment_horizontal**\ (\ )

Specifica la posizione relativa orizzontale dei controlli figli.

.. rst-class:: classref-item-separator

----

.. _class_AspectRatioContainer_property_alignment_vertical:

.. rst-class:: classref-property

:ref:`AlignmentMode<enum_AspectRatioContainer_AlignmentMode>` **alignment_vertical** = ``1`` :ref:`🔗<class_AspectRatioContainer_property_alignment_vertical>`

.. rst-class:: classref-property-setget

- |void| **set_alignment_vertical**\ (\ value\: :ref:`AlignmentMode<enum_AspectRatioContainer_AlignmentMode>`\ )
- :ref:`AlignmentMode<enum_AspectRatioContainer_AlignmentMode>` **get_alignment_vertical**\ (\ )

Specifica la posizione relativa verticale dei controlli figli.

.. rst-class:: classref-item-separator

----

.. _class_AspectRatioContainer_property_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **ratio** = ``1.0`` :ref:`🔗<class_AspectRatioContainer_property_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_ratio**\ (\ )

Il rapporto di aspetto da applicare sui controlli figli. Questa è la larghezza divisa dall'altezza. Il rapporto dipende da :ref:`stretch_mode<class_AspectRatioContainer_property_stretch_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_AspectRatioContainer_property_stretch_mode:

.. rst-class:: classref-property

:ref:`StretchMode<enum_AspectRatioContainer_StretchMode>` **stretch_mode** = ``2`` :ref:`🔗<class_AspectRatioContainer_property_stretch_mode>`

.. rst-class:: classref-property-setget

- |void| **set_stretch_mode**\ (\ value\: :ref:`StretchMode<enum_AspectRatioContainer_StretchMode>`\ )
- :ref:`StretchMode<enum_AspectRatioContainer_StretchMode>` **get_stretch_mode**\ (\ )

La modalità di stiramento utilizzata per allineare i controlli figli.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
