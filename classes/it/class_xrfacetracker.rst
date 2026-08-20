:github_url: hide

.. _class_XRFaceTracker:

XRFaceTracker
=============

**Sperimentale:** This class may be changed or removed in future versions.

**Eredita:** :ref:`XRTracker<class_XRTracker>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un volto tracciato.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un'istanza di questo oggetto rappresenta un volto tracciato e le sue forme di fusione corrispondenti. Le forme di fusione provengono dallo standard `Unified Expressions <https://docs.vrcft.io/docs/tutorial-avatars/tutorial-avatars-extras/unified-blendshapes>`__ e contengono dettagli estesi e immagini per ogni forma di fusione. Inoltre, la pagina `Tracking Standard Comparison <https://docs.vrcft.io/docs/tutorial-avatars/tutorial-avatars-extras/compatibility/overview>`__ documenta la relazione tra Unified Expressions e altri standard.

Quando i tracciatori di volti sono attivati, sono registrati con il :ref:`XRServer<class_XRServer>`.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Indice della documentazione XR <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+----------------------------------------------------------------+--------------------------------------------------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>` | :ref:`blend_shapes<class_XRFaceTracker_property_blend_shapes>` | ``PackedFloat32Array()``                                           |
   +-----------------------------------------------------+----------------------------------------------------------------+--------------------------------------------------------------------+
   | :ref:`TrackerType<enum_XRServer_TrackerType>`       | type                                                           | ``64`` (overrides :ref:`XRTracker<class_XRTracker_property_type>`) |
   +-----------------------------------------------------+----------------------------------------------------------------+--------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_blend_shape<class_XRFaceTracker_method_get_blend_shape>`\ (\ blend_shape\: :ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>`\ ) |const|                             |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_blend_shape<class_XRFaceTracker_method_set_blend_shape>`\ (\ blend_shape\: :ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>`, weight\: :ref:`float<class_float>`\ ) |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_XRFaceTracker_BlendShapeEntry:

.. rst-class:: classref-enumeration

enum **BlendShapeEntry**: :ref:`🔗<enum_XRFaceTracker_BlendShapeEntry>`

.. _class_XRFaceTracker_constant_FT_EYE_LOOK_OUT_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_LOOK_OUT_RIGHT** = ``0``

L'occhio destro guarda verso l'esterno.

.. _class_XRFaceTracker_constant_FT_EYE_LOOK_IN_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_LOOK_IN_RIGHT** = ``1``

L'occhio destro guarda verso l'interno.

.. _class_XRFaceTracker_constant_FT_EYE_LOOK_UP_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_LOOK_UP_RIGHT** = ``2``

L'occhio destro guarda verso l'alto.

.. _class_XRFaceTracker_constant_FT_EYE_LOOK_DOWN_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_LOOK_DOWN_RIGHT** = ``3``

L'occhio destro guarda verso il basso.

.. _class_XRFaceTracker_constant_FT_EYE_LOOK_OUT_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_LOOK_OUT_LEFT** = ``4``

L'occhio sinistro guarda verso l'esterno.

.. _class_XRFaceTracker_constant_FT_EYE_LOOK_IN_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_LOOK_IN_LEFT** = ``5``

L'occhio sinistro guarda verso l'interno.

.. _class_XRFaceTracker_constant_FT_EYE_LOOK_UP_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_LOOK_UP_LEFT** = ``6``

L'occhio sinistro guarda verso l'alto.

.. _class_XRFaceTracker_constant_FT_EYE_LOOK_DOWN_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_LOOK_DOWN_LEFT** = ``7``

L'occhio sinistro guarda verso il basso.

.. _class_XRFaceTracker_constant_FT_EYE_CLOSED_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_CLOSED_RIGHT** = ``8``

Chiude la palpebra destra.

.. _class_XRFaceTracker_constant_FT_EYE_CLOSED_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_CLOSED_LEFT** = ``9``

Chiude la palpebra sinistra.

.. _class_XRFaceTracker_constant_FT_EYE_SQUINT_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_SQUINT_RIGHT** = ``10``

Contrae i muscoli della cavità dell'occhio destro.

.. _class_XRFaceTracker_constant_FT_EYE_SQUINT_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_SQUINT_LEFT** = ``11``

Contrae i muscoli della cavità dell'occhio sinistro.

.. _class_XRFaceTracker_constant_FT_EYE_WIDE_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_WIDE_RIGHT** = ``12``

La palpebra destra si allarga oltre il rilassamento.

.. _class_XRFaceTracker_constant_FT_EYE_WIDE_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_WIDE_LEFT** = ``13``

La palpebra sinistra si allarga oltre il rilassamento.

.. _class_XRFaceTracker_constant_FT_EYE_DILATION_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_DILATION_RIGHT** = ``14``

Dilata la pupilla dell'occhio destro.

.. _class_XRFaceTracker_constant_FT_EYE_DILATION_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_DILATION_LEFT** = ``15``

Dilata la pupilla dell'occhio sinistro.

.. _class_XRFaceTracker_constant_FT_EYE_CONSTRICT_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_CONSTRICT_RIGHT** = ``16``

Restringe la pupilla dell'occhio destro.

.. _class_XRFaceTracker_constant_FT_EYE_CONSTRICT_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_CONSTRICT_LEFT** = ``17``

Restringe la pupilla dell'occhio sinistro.

.. _class_XRFaceTracker_constant_FT_BROW_PINCH_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_PINCH_RIGHT** = ``18``

Il sopracciglio destro si incurva.

.. _class_XRFaceTracker_constant_FT_BROW_PINCH_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_PINCH_LEFT** = ``19``

Il sopracciglio sinistro si incurva.

.. _class_XRFaceTracker_constant_FT_BROW_LOWERER_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_LOWERER_RIGHT** = ``20``

Il sopracciglio esterno destro si abbassa.

.. _class_XRFaceTracker_constant_FT_BROW_LOWERER_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_LOWERER_LEFT** = ``21``

Il sopracciglio esterno sinistro si abbassa.

.. _class_XRFaceTracker_constant_FT_BROW_INNER_UP_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_INNER_UP_RIGHT** = ``22``

Il sopracciglio interno destro si alza.

.. _class_XRFaceTracker_constant_FT_BROW_INNER_UP_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_INNER_UP_LEFT** = ``23``

Il sopracciglio interno sinistro si alza.

.. _class_XRFaceTracker_constant_FT_BROW_OUTER_UP_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_OUTER_UP_RIGHT** = ``24``

Il sopracciglio esterno destro si alza.

.. _class_XRFaceTracker_constant_FT_BROW_OUTER_UP_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_OUTER_UP_LEFT** = ``25``

Il sopracciglio esterno sinistro si alza.

.. _class_XRFaceTracker_constant_FT_NOSE_SNEER_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_NOSE_SNEER_RIGHT** = ``26``

Il volto sogghigna al lato destro.

.. _class_XRFaceTracker_constant_FT_NOSE_SNEER_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_NOSE_SNEER_LEFT** = ``27``

Il volto sogghigna al lato sinistro.

.. _class_XRFaceTracker_constant_FT_NASAL_DILATION_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_NASAL_DILATION_RIGHT** = ``28``

Il canale destro del naso si dilata.

.. _class_XRFaceTracker_constant_FT_NASAL_DILATION_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_NASAL_DILATION_LEFT** = ``29``

Il canale sinistro del naso si dilata.

.. _class_XRFaceTracker_constant_FT_NASAL_CONSTRICT_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_NASAL_CONSTRICT_RIGHT** = ``30``

Il canale destro del naso si restringe.

.. _class_XRFaceTracker_constant_FT_NASAL_CONSTRICT_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_NASAL_CONSTRICT_LEFT** = ``31``

Il canale sinistro del naso si restringe.

.. _class_XRFaceTracker_constant_FT_CHEEK_SQUINT_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_CHEEK_SQUINT_RIGHT** = ``32``

Alza la guancia al lato destro.

.. _class_XRFaceTracker_constant_FT_CHEEK_SQUINT_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_CHEEK_SQUINT_LEFT** = ``33``

Alza la guancia al lato sinistro.

.. _class_XRFaceTracker_constant_FT_CHEEK_PUFF_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_CHEEK_PUFF_RIGHT** = ``34``

Gonfia la guancia al lato destro.

.. _class_XRFaceTracker_constant_FT_CHEEK_PUFF_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_CHEEK_PUFF_LEFT** = ``35``

Gonfia la guancia al lato sinistro.

.. _class_XRFaceTracker_constant_FT_CHEEK_SUCK_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_CHEEK_SUCK_RIGHT** = ``36``

Risucchia la guancia al lato destro.

.. _class_XRFaceTracker_constant_FT_CHEEK_SUCK_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_CHEEK_SUCK_LEFT** = ``37``

Risucchia la guancia al lato sinistro.

.. _class_XRFaceTracker_constant_FT_JAW_OPEN:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_JAW_OPEN** = ``38``

Apre la mandibola.

.. _class_XRFaceTracker_constant_FT_MOUTH_CLOSED:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_CLOSED** = ``39``

Chiude la bocca.

.. _class_XRFaceTracker_constant_FT_JAW_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_JAW_RIGHT** = ``40``

Spinge la mandibola a destra.

.. _class_XRFaceTracker_constant_FT_JAW_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_JAW_LEFT** = ``41``

Spinge la mandibola a sinistra.

.. _class_XRFaceTracker_constant_FT_JAW_FORWARD:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_JAW_FORWARD** = ``42``

Spinge la mandibola in avanti.

.. _class_XRFaceTracker_constant_FT_JAW_BACKWARD:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_JAW_BACKWARD** = ``43``

Spinge la mandibola all'indietro.

.. _class_XRFaceTracker_constant_FT_JAW_CLENCH:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_JAW_CLENCH** = ``44``

Contrae i muscoli della mandibola.

.. _class_XRFaceTracker_constant_FT_JAW_MANDIBLE_RAISE:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_JAW_MANDIBLE_RAISE** = ``45``

Solleva la mandibola.

.. _class_XRFaceTracker_constant_FT_LIP_SUCK_UPPER_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_SUCK_UPPER_RIGHT** = ``46``

Labbro superiore destro si infila nella bocca.

.. _class_XRFaceTracker_constant_FT_LIP_SUCK_UPPER_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_SUCK_UPPER_LEFT** = ``47``

Labbro superiore sinistro si infila nella bocca.

.. _class_XRFaceTracker_constant_FT_LIP_SUCK_LOWER_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_SUCK_LOWER_RIGHT** = ``48``

Labbro inferiore destro si infila nella bocca.

.. _class_XRFaceTracker_constant_FT_LIP_SUCK_LOWER_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_SUCK_LOWER_LEFT** = ``49``

Labbro inferiore sinistro si infila nella bocca.

.. _class_XRFaceTracker_constant_FT_LIP_SUCK_CORNER_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_SUCK_CORNER_RIGHT** = ``50``

Angolo del labbro destro si piega nella bocca.

.. _class_XRFaceTracker_constant_FT_LIP_SUCK_CORNER_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_SUCK_CORNER_LEFT** = ``51``

Angolo del labbro sinistro si piega nella bocca.

.. _class_XRFaceTracker_constant_FT_LIP_FUNNEL_UPPER_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_FUNNEL_UPPER_RIGHT** = ``52``

Labbro superiore destro spinge in una forma di imbuto.

.. _class_XRFaceTracker_constant_FT_LIP_FUNNEL_UPPER_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_FUNNEL_UPPER_LEFT** = ``53``

Labbro superiore sinistro spinge in una forma di imbuto.

.. _class_XRFaceTracker_constant_FT_LIP_FUNNEL_LOWER_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_FUNNEL_LOWER_RIGHT** = ``54``

Labbro inferiore destro spinge in una forma di imbuto.

.. _class_XRFaceTracker_constant_FT_LIP_FUNNEL_LOWER_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_FUNNEL_LOWER_LEFT** = ``55``

Labbro inferiore sinistro spinge in una forma di imbuto.

.. _class_XRFaceTracker_constant_FT_LIP_PUCKER_UPPER_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_PUCKER_UPPER_RIGHT** = ``56``

Labbro superiore destro spinge all'infuori.

.. _class_XRFaceTracker_constant_FT_LIP_PUCKER_UPPER_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_PUCKER_UPPER_LEFT** = ``57``

Labbro superiore sinistro spinge all'infuori.

.. _class_XRFaceTracker_constant_FT_LIP_PUCKER_LOWER_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_PUCKER_LOWER_RIGHT** = ``58``

Labbro inferiore destro spinge all'infuori.

.. _class_XRFaceTracker_constant_FT_LIP_PUCKER_LOWER_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_PUCKER_LOWER_LEFT** = ``59``

Labbro inferiore sinistro spinge all'infuori.

.. _class_XRFaceTracker_constant_FT_MOUTH_UPPER_UP_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_UPPER_UP_RIGHT** = ``60``

La parte superiore destra del labbro tira su.

.. _class_XRFaceTracker_constant_FT_MOUTH_UPPER_UP_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_UPPER_UP_LEFT** = ``61``

La parte superiore sinistra del labbro tira su.

.. _class_XRFaceTracker_constant_FT_MOUTH_LOWER_DOWN_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_LOWER_DOWN_RIGHT** = ``62``

La parte inferiore destra del labbro tira su.

.. _class_XRFaceTracker_constant_FT_MOUTH_LOWER_DOWN_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_LOWER_DOWN_LEFT** = ``63``

La parte inferiore sinistra del labbro tira su.

.. _class_XRFaceTracker_constant_FT_MOUTH_UPPER_DEEPEN_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_UPPER_DEEPEN_RIGHT** = ``64``

La parte superiore destra del labbro spinge nella guancia.

.. _class_XRFaceTracker_constant_FT_MOUTH_UPPER_DEEPEN_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_UPPER_DEEPEN_LEFT** = ``65``

La parte superiore sinistra del labbro spinge nella guancia.

.. _class_XRFaceTracker_constant_FT_MOUTH_UPPER_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_UPPER_RIGHT** = ``66``

Muove il labbro superiore a destra.

.. _class_XRFaceTracker_constant_FT_MOUTH_UPPER_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_UPPER_LEFT** = ``67``

Muove il labbro superiore a sinistra.

.. _class_XRFaceTracker_constant_FT_MOUTH_LOWER_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_LOWER_RIGHT** = ``68``

Muove il labbro inferiore a destra.

.. _class_XRFaceTracker_constant_FT_MOUTH_LOWER_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_LOWER_LEFT** = ``69``

Muove il labbro inferiore a sinistra.

.. _class_XRFaceTracker_constant_FT_MOUTH_CORNER_PULL_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_CORNER_PULL_RIGHT** = ``70``

Angolo del labbro destro tira diagonalmente in alto e fuori.

.. _class_XRFaceTracker_constant_FT_MOUTH_CORNER_PULL_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_CORNER_PULL_LEFT** = ``71``

Angolo del labbro sinistro tira diagonalmente in alto e fuori.

.. _class_XRFaceTracker_constant_FT_MOUTH_CORNER_SLANT_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_CORNER_SLANT_RIGHT** = ``72``

Labbro dell'angolo destro si inclina in alto.

.. _class_XRFaceTracker_constant_FT_MOUTH_CORNER_SLANT_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_CORNER_SLANT_LEFT** = ``73``

Labbro dell'angolo sinistro si inclina in alto.

.. _class_XRFaceTracker_constant_FT_MOUTH_FROWN_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_FROWN_RIGHT** = ``74``

Labbro dell'angolo destro tira in basso.

.. _class_XRFaceTracker_constant_FT_MOUTH_FROWN_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_FROWN_LEFT** = ``75``

Labbro dell'angolo sinistro tira in basso.

.. _class_XRFaceTracker_constant_FT_MOUTH_STRETCH_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_STRETCH_RIGHT** = ``76``

Labbro dell'angolo della bocca tira fuori e in basso.

.. _class_XRFaceTracker_constant_FT_MOUTH_STRETCH_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_STRETCH_LEFT** = ``77``

Labbro dell'angolo della bocca tira fuori e in basso.

.. _class_XRFaceTracker_constant_FT_MOUTH_DIMPLE_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_DIMPLE_RIGHT** = ``78``

Angolo destro del labbro è spinto all'indietro.

.. _class_XRFaceTracker_constant_FT_MOUTH_DIMPLE_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_DIMPLE_LEFT** = ``79``

Angolo sinistro del labbro è spinto all'indietro.

.. _class_XRFaceTracker_constant_FT_MOUTH_RAISER_UPPER:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_RAISER_UPPER** = ``80``

Alza e spinge leggermente fuori la bocca superiore.

.. _class_XRFaceTracker_constant_FT_MOUTH_RAISER_LOWER:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_RAISER_LOWER** = ``81``

Alza e spinge leggermente fuori la bocca inferiore.

.. _class_XRFaceTracker_constant_FT_MOUTH_PRESS_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_PRESS_RIGHT** = ``82``

Labbra al lato destro premono e si appiattiscono verticalmente.

.. _class_XRFaceTracker_constant_FT_MOUTH_PRESS_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_PRESS_LEFT** = ``83``

Labbra al lato sinistro premono e si appiattiscono verticalmente.

.. _class_XRFaceTracker_constant_FT_MOUTH_TIGHTENER_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_TIGHTENER_RIGHT** = ``84``

Labbra al lato destro si comprimono orizzontalmente.

.. _class_XRFaceTracker_constant_FT_MOUTH_TIGHTENER_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_TIGHTENER_LEFT** = ``85``

Labbra al lato sinistro si comprimono orizzontalmente.

.. _class_XRFaceTracker_constant_FT_TONGUE_OUT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_TONGUE_OUT** = ``86``

La lingua si sporge visibilmente fuori dalla bocca.

.. _class_XRFaceTracker_constant_FT_TONGUE_UP:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_TONGUE_UP** = ``87``

La lingua punta in alto.

.. _class_XRFaceTracker_constant_FT_TONGUE_DOWN:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_TONGUE_DOWN** = ``88``

La lingua punta in basso.

.. _class_XRFaceTracker_constant_FT_TONGUE_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_TONGUE_RIGHT** = ``89``

La lingua punta a destra.

.. _class_XRFaceTracker_constant_FT_TONGUE_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_TONGUE_LEFT** = ``90``

La lingua punta a sinistra.

.. _class_XRFaceTracker_constant_FT_TONGUE_ROLL:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_TONGUE_ROLL** = ``91``

I lati della lingua si arrotolano, creando un imbuto.

.. _class_XRFaceTracker_constant_FT_TONGUE_BLEND_DOWN:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_TONGUE_BLEND_DOWN** = ``92``

La lingua si inarca in su poi in giù dentro la bocca.

.. _class_XRFaceTracker_constant_FT_TONGUE_CURL_UP:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_TONGUE_CURL_UP** = ``93``

La lingua si inarca in giù poi in su dentro la bocca.

.. _class_XRFaceTracker_constant_FT_TONGUE_SQUISH:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_TONGUE_SQUISH** = ``94``

La lingua si comprime tra di essa e si spessisce.

.. _class_XRFaceTracker_constant_FT_TONGUE_FLAT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_TONGUE_FLAT** = ``95``

La lingua si appiattisce e si assottiglia.

.. _class_XRFaceTracker_constant_FT_TONGUE_TWIST_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_TONGUE_TWIST_RIGHT** = ``96``

La punta della lingua ruota in senso orario, con il resto seguendo gradualmente.

.. _class_XRFaceTracker_constant_FT_TONGUE_TWIST_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_TONGUE_TWIST_LEFT** = ``97``

La punta della lingua ruota in senso antiorario, con il resto seguendo gradualmente.

.. _class_XRFaceTracker_constant_FT_SOFT_PALATE_CLOSE:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_SOFT_PALATE_CLOSE** = ``98``

La gola della bocca interna si chiude.

.. _class_XRFaceTracker_constant_FT_THROAT_SWALLOW:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_THROAT_SWALLOW** = ``99``

Il pomo di Adam inghiotte visibilmente.

.. _class_XRFaceTracker_constant_FT_NECK_FLEX_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_NECK_FLEX_RIGHT** = ``100``

Il collo al lato destro si contrae visibilmente.

.. _class_XRFaceTracker_constant_FT_NECK_FLEX_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_NECK_FLEX_LEFT** = ``101``

Il collo al lato sinistro si contrae visibilmente.

.. _class_XRFaceTracker_constant_FT_EYE_CLOSED:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_CLOSED** = ``102``

Chiude entrambe le palpebre.

.. _class_XRFaceTracker_constant_FT_EYE_WIDE:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_WIDE** = ``103``

Allarga entrambe le palpebre.

.. _class_XRFaceTracker_constant_FT_EYE_SQUINT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_SQUINT** = ``104``

Socchiude entrambe le palpebre.

.. _class_XRFaceTracker_constant_FT_EYE_DILATION:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_DILATION** = ``105``

Dilata entrambe le palpebre.

.. _class_XRFaceTracker_constant_FT_EYE_CONSTRICT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_CONSTRICT** = ``106``

Restringe entrambe le palpebre.

.. _class_XRFaceTracker_constant_FT_BROW_DOWN_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_DOWN_RIGHT** = ``107``

Tira il sopracciglio destro giù e dentro.

.. _class_XRFaceTracker_constant_FT_BROW_DOWN_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_DOWN_LEFT** = ``108``

Tira il sopracciglio sinistro giù e dentro.

.. _class_XRFaceTracker_constant_FT_BROW_DOWN:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_DOWN** = ``109``

Tira entrambe le sopracciglia giù e dentro.

.. _class_XRFaceTracker_constant_FT_BROW_UP_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_UP_RIGHT** = ``110``

Il sopracciglio destro sembra preoccupato.

.. _class_XRFaceTracker_constant_FT_BROW_UP_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_UP_LEFT** = ``111``

Il sopracciglio sinistro sembra preoccupato.

.. _class_XRFaceTracker_constant_FT_BROW_UP:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_UP** = ``112``

Entrambe le sopracciglia sembrano preoccupate.

.. _class_XRFaceTracker_constant_FT_NOSE_SNEER:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_NOSE_SNEER** = ``113``

L'intero volto ghigna.

.. _class_XRFaceTracker_constant_FT_NASAL_DILATION:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_NASAL_DILATION** = ``114``

Entrambi i canali del naso si dilatano.

.. _class_XRFaceTracker_constant_FT_NASAL_CONSTRICT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_NASAL_CONSTRICT** = ``115``

Entrambi i canali del naso si restringono.

.. _class_XRFaceTracker_constant_FT_CHEEK_PUFF:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_CHEEK_PUFF** = ``116``

Gonfia entrambe le guance.

.. _class_XRFaceTracker_constant_FT_CHEEK_SUCK:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_CHEEK_SUCK** = ``117``

Risucchia entrambe le guance.

.. _class_XRFaceTracker_constant_FT_CHEEK_SQUINT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_CHEEK_SQUINT** = ``118``

Alza entrambe le guance.

.. _class_XRFaceTracker_constant_FT_LIP_SUCK_UPPER:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_SUCK_UPPER** = ``119``

Infila le labbra superiori.

.. _class_XRFaceTracker_constant_FT_LIP_SUCK_LOWER:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_SUCK_LOWER** = ``120``

Infila le labbra inferiori.

.. _class_XRFaceTracker_constant_FT_LIP_SUCK:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_SUCK** = ``121``

Infila entrambe le labbra.

.. _class_XRFaceTracker_constant_FT_LIP_FUNNEL_UPPER:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_FUNNEL_UPPER** = ``122``

Spinge a forma di imbuto le labbra superiori.

.. _class_XRFaceTracker_constant_FT_LIP_FUNNEL_LOWER:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_FUNNEL_LOWER** = ``123``

Spinge a forma di imbuto le labbra inferiori.

.. _class_XRFaceTracker_constant_FT_LIP_FUNNEL:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_FUNNEL** = ``124``

Spinge a forma di imbuto entrambe le labbra.

.. _class_XRFaceTracker_constant_FT_LIP_PUCKER_UPPER:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_PUCKER_UPPER** = ``125``

La parte superiore del labbro spinge all'infuori.

.. _class_XRFaceTracker_constant_FT_LIP_PUCKER_LOWER:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_PUCKER_LOWER** = ``126``

La parte inferiore del labbro spinge all'infuori.

.. _class_XRFaceTracker_constant_FT_LIP_PUCKER:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_PUCKER** = ``127``

Le labbra spingono all'infuori.

.. _class_XRFaceTracker_constant_FT_MOUTH_UPPER_UP:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_UPPER_UP** = ``128``

Alza le labbra superiori.

.. _class_XRFaceTracker_constant_FT_MOUTH_LOWER_DOWN:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_LOWER_DOWN** = ``129``

Abbassa le labbra inferiori.

.. _class_XRFaceTracker_constant_FT_MOUTH_OPEN:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_OPEN** = ``130``

La bocca si apre, rivelando i denti.

.. _class_XRFaceTracker_constant_FT_MOUTH_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_RIGHT** = ``131``

Muove la bocca a destra.

.. _class_XRFaceTracker_constant_FT_MOUTH_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_LEFT** = ``132``

Muove la bocca a sinistra.

.. _class_XRFaceTracker_constant_FT_MOUTH_SMILE_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_SMILE_RIGHT** = ``133``

Il lato destro della bocca sorride.

.. _class_XRFaceTracker_constant_FT_MOUTH_SMILE_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_SMILE_LEFT** = ``134``

Il lato sinistro della bocca sorride.

.. _class_XRFaceTracker_constant_FT_MOUTH_SMILE:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_SMILE** = ``135``

La bocca esprime un sorriso.

.. _class_XRFaceTracker_constant_FT_MOUTH_SAD_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_SAD_RIGHT** = ``136``

Il lato destro della bocca esprime tristezza.

.. _class_XRFaceTracker_constant_FT_MOUTH_SAD_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_SAD_LEFT** = ``137``

Il lato sinistro della bocca esprime tristezza.

.. _class_XRFaceTracker_constant_FT_MOUTH_SAD:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_SAD** = ``138``

La bocca esprime tristezza.

.. _class_XRFaceTracker_constant_FT_MOUTH_STRETCH:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_STRETCH** = ``139``

La bocca si allunga.

.. _class_XRFaceTracker_constant_FT_MOUTH_DIMPLE:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_DIMPLE** = ``140``

Gli angoli del labbro si infossano.

.. _class_XRFaceTracker_constant_FT_MOUTH_TIGHTENER:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_TIGHTENER** = ``141``

La bocca si stringe.

.. _class_XRFaceTracker_constant_FT_MOUTH_PRESS:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_PRESS** = ``142``

La bocca preme tra di essa.

.. _class_XRFaceTracker_constant_FT_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MAX** = ``143``

Rappresenta la dimensione dell'enumerazione :ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_XRFaceTracker_property_blend_shapes:

.. rst-class:: classref-property

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **blend_shapes** = ``PackedFloat32Array()`` :ref:`🔗<class_XRFaceTracker_property_blend_shapes>`

.. rst-class:: classref-property-setget

- |void| **set_blend_shapes**\ (\ value\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ )
- :ref:`PackedFloat32Array<class_PackedFloat32Array>` **get_blend_shapes**\ (\ )

L'array dei pesi delle forme di fusione del volto con indici corrispondenti all'enumerazione :ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>`.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedFloat32Array<class_PackedFloat32Array>` for more details.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_XRFaceTracker_method_get_blend_shape:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_blend_shape**\ (\ blend_shape\: :ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>`\ ) |const| :ref:`🔗<class_XRFaceTracker_method_get_blend_shape>`

Restituisce il peso richiesto della forma di fusione per il viso.

.. rst-class:: classref-item-separator

----

.. _class_XRFaceTracker_method_set_blend_shape:

.. rst-class:: classref-method

|void| **set_blend_shape**\ (\ blend_shape\: :ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>`, weight\: :ref:`float<class_float>`\ ) :ref:`🔗<class_XRFaceTracker_method_set_blend_shape>`

Imposta un peso della forma di fusione per il viso.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
