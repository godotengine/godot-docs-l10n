:github_url: hide

.. _class_XRFaceTracker:

XRFaceTracker
=============

**Expérimental :** This class may be changed or removed in future versions.

**Hérite de :** :ref:`XRTracker<class_XRTracker>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un visage suivi.

.. rst-class:: classref-introduction-group

Description
-----------

Une instance de cet objet représente un visage suivi et ses blend shape correspondantes. Les blendshapes proviennent du standard ` Expressions unifiées <https://docs.vrcft.io/docs/tutorial-avatars/tutorial-avatars-extras/unified-blendshapes>`__ et contient des détails et des visuels étendus pour chaque forme de mélange. En outre, ` Comparaison des standards de suivi <https://docs.vrcft.io/docs/tutorial-avatars/tutorial-avatars-extras/compatibility/overview>`__ documente la relation entre les expressions unifiées et les autres standards.

Tant que les trackers de visage sont allumés, ils sont enregistrés avec le :ref:`XRServer<class_XRServer>`.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Index de la documentation sur la XR <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+----------------------------------------------------------------+--------------------------------------------------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>` | :ref:`blend_shapes<class_XRFaceTracker_property_blend_shapes>` | ``PackedFloat32Array()``                                           |
   +-----------------------------------------------------+----------------------------------------------------------------+--------------------------------------------------------------------+
   | :ref:`TrackerType<enum_XRServer_TrackerType>`       | type                                                           | ``64`` (overrides :ref:`XRTracker<class_XRTracker_property_type>`) |
   +-----------------------------------------------------+----------------------------------------------------------------+--------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

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

Énumérations
------------------------

.. _enum_XRFaceTracker_BlendShapeEntry:

.. rst-class:: classref-enumeration

enum **BlendShapeEntry**: :ref:`🔗<enum_XRFaceTracker_BlendShapeEntry>`

.. _class_XRFaceTracker_constant_FT_EYE_LOOK_OUT_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_LOOK_OUT_RIGHT** = ``0``

L'œil droit regarde vers l'extérieur.

.. _class_XRFaceTracker_constant_FT_EYE_LOOK_IN_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_LOOK_IN_RIGHT** = ``1``

L'œil droit regarde vers l'intérieur.

.. _class_XRFaceTracker_constant_FT_EYE_LOOK_UP_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_LOOK_UP_RIGHT** = ``2``

L'œil droit regarde vers le haut.

.. _class_XRFaceTracker_constant_FT_EYE_LOOK_DOWN_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_LOOK_DOWN_RIGHT** = ``3``

L'œil droit regarde vers le bas.

.. _class_XRFaceTracker_constant_FT_EYE_LOOK_OUT_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_LOOK_OUT_LEFT** = ``4``

L'œil gauche regarde vers l'extérieur.

.. _class_XRFaceTracker_constant_FT_EYE_LOOK_IN_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_LOOK_IN_LEFT** = ``5``

L'œil gauche regarde vers l'intérieur.

.. _class_XRFaceTracker_constant_FT_EYE_LOOK_UP_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_LOOK_UP_LEFT** = ``6``

L'œil gauche regarde vers le haut.

.. _class_XRFaceTracker_constant_FT_EYE_LOOK_DOWN_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_LOOK_DOWN_LEFT** = ``7``

L'œil gauche regarde vers le bas.

.. _class_XRFaceTracker_constant_FT_EYE_CLOSED_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_CLOSED_RIGHT** = ``8``

Ferme la paupière droite.

.. _class_XRFaceTracker_constant_FT_EYE_CLOSED_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_CLOSED_LEFT** = ``9``

Ferme la paupière gauche.

.. _class_XRFaceTracker_constant_FT_EYE_SQUINT_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_SQUINT_RIGHT** = ``10``

Serre les muscles autour de l’œil droit.

.. _class_XRFaceTracker_constant_FT_EYE_SQUINT_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_SQUINT_LEFT** = ``11``

Serre les muscles autour de l’œil gauche.

.. _class_XRFaceTracker_constant_FT_EYE_WIDE_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_WIDE_RIGHT** = ``12``

La paupière droite s'élargit au-delà de relaxée.

.. _class_XRFaceTracker_constant_FT_EYE_WIDE_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_WIDE_LEFT** = ``13``

La paupière gauche s'élargit au-delà de relaxée.

.. _class_XRFaceTracker_constant_FT_EYE_DILATION_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_DILATION_RIGHT** = ``14``

Dilate la pupille de l’œil droit.

.. _class_XRFaceTracker_constant_FT_EYE_DILATION_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_DILATION_LEFT** = ``15``

Dilate la pupille de l’œil gauche.

.. _class_XRFaceTracker_constant_FT_EYE_CONSTRICT_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_CONSTRICT_RIGHT** = ``16``

Constricte la pupille de l’œil droit.

.. _class_XRFaceTracker_constant_FT_EYE_CONSTRICT_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_CONSTRICT_LEFT** = ``17``

Constricte la pupille de l’œil gauche.

.. _class_XRFaceTracker_constant_FT_BROW_PINCH_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_PINCH_RIGHT** = ``18``

Le sourcil droit se fronce.

.. _class_XRFaceTracker_constant_FT_BROW_PINCH_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_PINCH_LEFT** = ``19``

Le sourcil gauche se fronce.

.. _class_XRFaceTracker_constant_FT_BROW_LOWERER_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_LOWERER_RIGHT** = ``20``

Le sourcil droit extérieur descend.

.. _class_XRFaceTracker_constant_FT_BROW_LOWERER_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_LOWERER_LEFT** = ``21``

Le sourcil gauche extérieur descend.

.. _class_XRFaceTracker_constant_FT_BROW_INNER_UP_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_INNER_UP_RIGHT** = ``22``

Le sourcil droit intérieur monte.

.. _class_XRFaceTracker_constant_FT_BROW_INNER_UP_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_INNER_UP_LEFT** = ``23``

Le sourcil gauche intérieur monte.

.. _class_XRFaceTracker_constant_FT_BROW_OUTER_UP_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_OUTER_UP_RIGHT** = ``24``

Le sourcil droit extérieur se lève.

.. _class_XRFaceTracker_constant_FT_BROW_OUTER_UP_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_OUTER_UP_LEFT** = ``25``

Le sourcil gauche extérieur se lève.

.. _class_XRFaceTracker_constant_FT_NOSE_SNEER_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_NOSE_SNEER_RIGHT** = ``26``

Le côté droit du visage ricane.

.. _class_XRFaceTracker_constant_FT_NOSE_SNEER_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_NOSE_SNEER_LEFT** = ``27``

Le côté gauche du visage ricane.

.. _class_XRFaceTracker_constant_FT_NASAL_DILATION_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_NASAL_DILATION_RIGHT** = ``28``

Le canal nasal droit se dilate.

.. _class_XRFaceTracker_constant_FT_NASAL_DILATION_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_NASAL_DILATION_LEFT** = ``29``

Le canal nasal gauche se dilate.

.. _class_XRFaceTracker_constant_FT_NASAL_CONSTRICT_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_NASAL_CONSTRICT_RIGHT** = ``30``

Le canal nasal droit se resserre.

.. _class_XRFaceTracker_constant_FT_NASAL_CONSTRICT_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_NASAL_CONSTRICT_LEFT** = ``31``

Le canal nasal gauche se resserre.

.. _class_XRFaceTracker_constant_FT_CHEEK_SQUINT_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_CHEEK_SQUINT_RIGHT** = ``32``

Soulève la joue droite.

.. _class_XRFaceTracker_constant_FT_CHEEK_SQUINT_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_CHEEK_SQUINT_LEFT** = ``33``

Soulève la joue gauche.

.. _class_XRFaceTracker_constant_FT_CHEEK_PUFF_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_CHEEK_PUFF_RIGHT** = ``34``

Gonfle la joue droite.

.. _class_XRFaceTracker_constant_FT_CHEEK_PUFF_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_CHEEK_PUFF_LEFT** = ``35``

Gonfle la joue gauche.

.. _class_XRFaceTracker_constant_FT_CHEEK_SUCK_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_CHEEK_SUCK_RIGHT** = ``36``

Aspire la joue droite.

.. _class_XRFaceTracker_constant_FT_CHEEK_SUCK_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_CHEEK_SUCK_LEFT** = ``37``

Aspire la joue gauche.

.. _class_XRFaceTracker_constant_FT_JAW_OPEN:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_JAW_OPEN** = ``38``

Ouvre le maxillaire.

.. _class_XRFaceTracker_constant_FT_MOUTH_CLOSED:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_CLOSED** = ``39``

Ferme la bouche.

.. _class_XRFaceTracker_constant_FT_JAW_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_JAW_RIGHT** = ``40``

Pousse la mâchoire à droite.

.. _class_XRFaceTracker_constant_FT_JAW_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_JAW_LEFT** = ``41``

Pousse la mâchoire à gauche.

.. _class_XRFaceTracker_constant_FT_JAW_FORWARD:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_JAW_FORWARD** = ``42``

Pousse la mandibule en avant.

.. _class_XRFaceTracker_constant_FT_JAW_BACKWARD:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_JAW_BACKWARD** = ``43``

Pousse la mandibule en arrière.

.. _class_XRFaceTracker_constant_FT_JAW_CLENCH:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_JAW_CLENCH** = ``44``

Fléchit les muscles de la mâchoire.

.. _class_XRFaceTracker_constant_FT_JAW_MANDIBLE_RAISE:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_JAW_MANDIBLE_RAISE** = ``45``

Remonte la mâchoire.

.. _class_XRFaceTracker_constant_FT_LIP_SUCK_UPPER_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_SUCK_UPPER_RIGHT** = ``46``

La lèvre supérieure droite est rentrée dans la bouche.

.. _class_XRFaceTracker_constant_FT_LIP_SUCK_UPPER_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_SUCK_UPPER_LEFT** = ``47``

La lèvre supérieure gauche est rentrée dans la bouche.

.. _class_XRFaceTracker_constant_FT_LIP_SUCK_LOWER_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_SUCK_LOWER_RIGHT** = ``48``

La lèvre inférieure droite est rentrée dans la bouche.

.. _class_XRFaceTracker_constant_FT_LIP_SUCK_LOWER_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_SUCK_LOWER_LEFT** = ``49``

La lèvre inférieure gauche est rentrée dans la bouche.

.. _class_XRFaceTracker_constant_FT_LIP_SUCK_CORNER_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_SUCK_CORNER_RIGHT** = ``50``

Le coin de la lèvre droit se plie dans la bouche.

.. _class_XRFaceTracker_constant_FT_LIP_SUCK_CORNER_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_SUCK_CORNER_LEFT** = ``51``

Le coin de la lèvre gauche se plie dans la bouche.

.. _class_XRFaceTracker_constant_FT_LIP_FUNNEL_UPPER_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_FUNNEL_UPPER_RIGHT** = ``52``

La lèvre supérieure droite fait un entonnoir.

.. _class_XRFaceTracker_constant_FT_LIP_FUNNEL_UPPER_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_FUNNEL_UPPER_LEFT** = ``53``

La lèvre supérieure gauche fait un entonnoir.

.. _class_XRFaceTracker_constant_FT_LIP_FUNNEL_LOWER_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_FUNNEL_LOWER_RIGHT** = ``54``

La lèvre inférieure droite fait un entonnoir.

.. _class_XRFaceTracker_constant_FT_LIP_FUNNEL_LOWER_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_FUNNEL_LOWER_LEFT** = ``55``

La lèvre inférieure gauche fait un entonnoir.

.. _class_XRFaceTracker_constant_FT_LIP_PUCKER_UPPER_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_PUCKER_UPPER_RIGHT** = ``56``

La lèvre supérieure droit pousse vers l'extérieur.

.. _class_XRFaceTracker_constant_FT_LIP_PUCKER_UPPER_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_PUCKER_UPPER_LEFT** = ``57``

La lèvre supérieure gauche pousse vers l'extérieur.

.. _class_XRFaceTracker_constant_FT_LIP_PUCKER_LOWER_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_PUCKER_LOWER_RIGHT** = ``58``

La lèvre inférieur droit pousse vers l'extérieur.

.. _class_XRFaceTracker_constant_FT_LIP_PUCKER_LOWER_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_PUCKER_LOWER_LEFT** = ``59``

La lèvre inférieur gauche pousse vers l'extérieur.

.. _class_XRFaceTracker_constant_FT_MOUTH_UPPER_UP_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_UPPER_UP_RIGHT** = ``60``

Le côté en haut à droite des lèvres se lève.

.. _class_XRFaceTracker_constant_FT_MOUTH_UPPER_UP_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_UPPER_UP_LEFT** = ``61``

Le côté en haut à gauche des lèvres se lève.

.. _class_XRFaceTracker_constant_FT_MOUTH_LOWER_DOWN_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_LOWER_DOWN_RIGHT** = ``62``

Le côté en bas à droite des lèvres se lève.

.. _class_XRFaceTracker_constant_FT_MOUTH_LOWER_DOWN_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_LOWER_DOWN_LEFT** = ``63``

Le côté en bas à gauche des lèvres se lève.

.. _class_XRFaceTracker_constant_FT_MOUTH_UPPER_DEEPEN_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_UPPER_DEEPEN_RIGHT** = ``64``

La lèvre supérieure droit rentre dans la joue.

.. _class_XRFaceTracker_constant_FT_MOUTH_UPPER_DEEPEN_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_UPPER_DEEPEN_LEFT** = ``65``

La lèvre supérieure gauche rentre dans la joue.

.. _class_XRFaceTracker_constant_FT_MOUTH_UPPER_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_UPPER_RIGHT** = ``66``

Déplace la lèvre supérieure vers la droite.

.. _class_XRFaceTracker_constant_FT_MOUTH_UPPER_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_UPPER_LEFT** = ``67``

Déplace la lèvre supérieure vers la gauche.

.. _class_XRFaceTracker_constant_FT_MOUTH_LOWER_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_LOWER_RIGHT** = ``68``

Déplace la lèvre inférieure vers la droite.

.. _class_XRFaceTracker_constant_FT_MOUTH_LOWER_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_LOWER_LEFT** = ``69``

Déplace la lèvre inférieure vers la gauche.

.. _class_XRFaceTracker_constant_FT_MOUTH_CORNER_PULL_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_CORNER_PULL_RIGHT** = ``70``

La coin droit des lèvres est tiré en diagonal haut vers l'extérieur.

.. _class_XRFaceTracker_constant_FT_MOUTH_CORNER_PULL_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_CORNER_PULL_LEFT** = ``71``

La coin gauche des lèvres est tiré en diagonal haut vers l'extérieur.

.. _class_XRFaceTracker_constant_FT_MOUTH_CORNER_SLANT_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_CORNER_SLANT_RIGHT** = ``72``

Le coin droit des lèvres s'incline vers le haut.

.. _class_XRFaceTracker_constant_FT_MOUTH_CORNER_SLANT_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_CORNER_SLANT_LEFT** = ``73``

Le coin gauche des lèvres s'incline vers le haut.

.. _class_XRFaceTracker_constant_FT_MOUTH_FROWN_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_FROWN_RIGHT** = ``74``

Le coin droit des lèvres s'incline vers le bas.

.. _class_XRFaceTracker_constant_FT_MOUTH_FROWN_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_FROWN_LEFT** = ``75``

Le coin gauche des lèvres s'incline vers le bas.

.. _class_XRFaceTracker_constant_FT_MOUTH_STRETCH_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_STRETCH_RIGHT** = ``76``

Le coin de la lèvre est tiré à l'extérieur et en bas.

.. _class_XRFaceTracker_constant_FT_MOUTH_STRETCH_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_STRETCH_LEFT** = ``77``

Le coin de la lèvre est tiré à l'extérieur et en bas.

.. _class_XRFaceTracker_constant_FT_MOUTH_DIMPLE_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_DIMPLE_RIGHT** = ``78``

Le coin de droite des lèvres est poussé en arrière.

.. _class_XRFaceTracker_constant_FT_MOUTH_DIMPLE_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_DIMPLE_LEFT** = ``79``

Le coin de gauche des lèvres est poussé en arrière.

.. _class_XRFaceTracker_constant_FT_MOUTH_RAISER_UPPER:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_RAISER_UPPER** = ``80``

Relève et pousse légèrement vers l'extérieur la bouche supérieure.

.. _class_XRFaceTracker_constant_FT_MOUTH_RAISER_LOWER:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_RAISER_LOWER** = ``81``

Relève et pousse légèrement vers l'extérieur la bouche inférieure.

.. _class_XRFaceTracker_constant_FT_MOUTH_PRESS_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_PRESS_RIGHT** = ``82``

Le côté droit des lèvres se presse et s’aplatit ensemble verticalement.

.. _class_XRFaceTracker_constant_FT_MOUTH_PRESS_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_PRESS_LEFT** = ``83``

Le côté gauche des lèvres se presse et s’aplatit ensemble verticalement.

.. _class_XRFaceTracker_constant_FT_MOUTH_TIGHTENER_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_TIGHTENER_RIGHT** = ``84``

Le côté droit des lèvres se serre horizontalement.

.. _class_XRFaceTracker_constant_FT_MOUTH_TIGHTENER_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_TIGHTENER_LEFT** = ``85``

Le côté gauche des lèvres se serre horizontalement.

.. _class_XRFaceTracker_constant_FT_TONGUE_OUT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_TONGUE_OUT** = ``86``

La langue sort de la bouche de manière visible.

.. _class_XRFaceTracker_constant_FT_TONGUE_UP:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_TONGUE_UP** = ``87``

La langue pointe vers le haut.

.. _class_XRFaceTracker_constant_FT_TONGUE_DOWN:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_TONGUE_DOWN** = ``88``

La langue pointe vers le bas.

.. _class_XRFaceTracker_constant_FT_TONGUE_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_TONGUE_RIGHT** = ``89``

La langue pointe vers la droite.

.. _class_XRFaceTracker_constant_FT_TONGUE_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_TONGUE_LEFT** = ``90``

La langue pointe vers la gauche.

.. _class_XRFaceTracker_constant_FT_TONGUE_ROLL:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_TONGUE_ROLL** = ``91``

Les côtés de la langue se relèvent, créant un entonnoir.

.. _class_XRFaceTracker_constant_FT_TONGUE_BLEND_DOWN:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_TONGUE_BLEND_DOWN** = ``92``

La langue se courbe vers le haut puis vers le bas à l'intérieur de la bouche.

.. _class_XRFaceTracker_constant_FT_TONGUE_CURL_UP:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_TONGUE_CURL_UP** = ``93``

La langue se courbe vers le bas puis vers le haut à l'intérieur de la bouche.

.. _class_XRFaceTracker_constant_FT_TONGUE_SQUISH:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_TONGUE_SQUISH** = ``94``

La langue se comprime et s'épaissit.

.. _class_XRFaceTracker_constant_FT_TONGUE_FLAT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_TONGUE_FLAT** = ``95``

La langue s’aplatit et s'affine.

.. _class_XRFaceTracker_constant_FT_TONGUE_TWIST_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_TONGUE_TWIST_RIGHT** = ``96``

La pointe de la langue tourne dans le sens des aiguilles d'une montre, le reste suivant progressivement.

.. _class_XRFaceTracker_constant_FT_TONGUE_TWIST_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_TONGUE_TWIST_LEFT** = ``97``

La pointe de la langue tourne dans le sens inverse des aiguilles d'une montre, le reste suivant progressivement.

.. _class_XRFaceTracker_constant_FT_SOFT_PALATE_CLOSE:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_SOFT_PALATE_CLOSE** = ``98``

La gorge interne de la bouche se ferme.

.. _class_XRFaceTracker_constant_FT_THROAT_SWALLOW:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_THROAT_SWALLOW** = ``99``

La pomme d'Adam avale de manière visible.

.. _class_XRFaceTracker_constant_FT_NECK_FLEX_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_NECK_FLEX_RIGHT** = ``100``

La nuque droite se contracte de manière visible.

.. _class_XRFaceTracker_constant_FT_NECK_FLEX_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_NECK_FLEX_LEFT** = ``101``

La nuque gauche se contracte de manière visible.

.. _class_XRFaceTracker_constant_FT_EYE_CLOSED:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_CLOSED** = ``102``

Ferme les deux paupières.

.. _class_XRFaceTracker_constant_FT_EYE_WIDE:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_WIDE** = ``103``

Élargit les deux paupières.

.. _class_XRFaceTracker_constant_FT_EYE_SQUINT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_SQUINT** = ``104``

Plisse les deux paupières.

.. _class_XRFaceTracker_constant_FT_EYE_DILATION:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_DILATION** = ``105``

Dilate les deux pupilles.

.. _class_XRFaceTracker_constant_FT_EYE_CONSTRICT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_CONSTRICT** = ``106``

Constricte les deux pupilles.

.. _class_XRFaceTracker_constant_FT_BROW_DOWN_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_DOWN_RIGHT** = ``107``

Tire le sourcil droit en bas et à l'intérieur.

.. _class_XRFaceTracker_constant_FT_BROW_DOWN_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_DOWN_LEFT** = ``108``

Tire le sourcil gauche en bas et à l'intérieur.

.. _class_XRFaceTracker_constant_FT_BROW_DOWN:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_DOWN** = ``109``

Tire les deux sourcils en bas et à l'intérieur.

.. _class_XRFaceTracker_constant_FT_BROW_UP_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_UP_RIGHT** = ``110``

Le sourcil droit semble inquiet.

.. _class_XRFaceTracker_constant_FT_BROW_UP_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_UP_LEFT** = ``111``

Le sourcil gauche semble inquiet.

.. _class_XRFaceTracker_constant_FT_BROW_UP:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_UP** = ``112``

Les deux sourcils semblent inquiets.

.. _class_XRFaceTracker_constant_FT_NOSE_SNEER:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_NOSE_SNEER** = ``113``

Tout le visage ricane.

.. _class_XRFaceTracker_constant_FT_NASAL_DILATION:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_NASAL_DILATION** = ``114``

Les deux canaux du nez se dilatent.

.. _class_XRFaceTracker_constant_FT_NASAL_CONSTRICT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_NASAL_CONSTRICT** = ``115``

Les deux canaux du nez se constrictent.

.. _class_XRFaceTracker_constant_FT_CHEEK_PUFF:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_CHEEK_PUFF** = ``116``

Gonfle les deux joues.

.. _class_XRFaceTracker_constant_FT_CHEEK_SUCK:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_CHEEK_SUCK** = ``117``

Aspire les deux joues.

.. _class_XRFaceTracker_constant_FT_CHEEK_SQUINT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_CHEEK_SQUINT** = ``118``

Lève les deux joues.

.. _class_XRFaceTracker_constant_FT_LIP_SUCK_UPPER:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_SUCK_UPPER** = ``119``

Rentre la lèvre supérieure.

.. _class_XRFaceTracker_constant_FT_LIP_SUCK_LOWER:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_SUCK_LOWER** = ``120``

Rentre la lèvre inférieure.

.. _class_XRFaceTracker_constant_FT_LIP_SUCK:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_SUCK** = ``121``

Rentre les deux lèvres.

.. _class_XRFaceTracker_constant_FT_LIP_FUNNEL_UPPER:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_FUNNEL_UPPER** = ``122``

Les lèvres supérieures font un entonnoir.

.. _class_XRFaceTracker_constant_FT_LIP_FUNNEL_LOWER:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_FUNNEL_LOWER** = ``123``

Les lèvres inférieures font un entonnoir.

.. _class_XRFaceTracker_constant_FT_LIP_FUNNEL:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_FUNNEL** = ``124``

Funnels in both lips.

.. _class_XRFaceTracker_constant_FT_LIP_PUCKER_UPPER:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_PUCKER_UPPER** = ``125``

La lèvre supérieure pousse vers l’extérieur.

.. _class_XRFaceTracker_constant_FT_LIP_PUCKER_LOWER:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_PUCKER_LOWER** = ``126``

La lèvre inférieure pousse vers l’extérieur.

.. _class_XRFaceTracker_constant_FT_LIP_PUCKER:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_PUCKER** = ``127``

Les lèvres poussent vers l'extérieur.

.. _class_XRFaceTracker_constant_FT_MOUTH_UPPER_UP:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_UPPER_UP** = ``128``

Lève les lèvres supérieures.

.. _class_XRFaceTracker_constant_FT_MOUTH_LOWER_DOWN:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_LOWER_DOWN** = ``129``

Baisse les lèvres inférieures.

.. _class_XRFaceTracker_constant_FT_MOUTH_OPEN:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_OPEN** = ``130``

La bouche s'ouvre, révélant les dents.

.. _class_XRFaceTracker_constant_FT_MOUTH_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_RIGHT** = ``131``

Déplace la bouche vers la droite.

.. _class_XRFaceTracker_constant_FT_MOUTH_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_LEFT** = ``132``

Déplace la joue à gauche.

.. _class_XRFaceTracker_constant_FT_MOUTH_SMILE_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_SMILE_RIGHT** = ``133``

Le côté droit de la bouche sourit.

.. _class_XRFaceTracker_constant_FT_MOUTH_SMILE_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_SMILE_LEFT** = ``134``

Le côté gauche de la bouche sourit.

.. _class_XRFaceTracker_constant_FT_MOUTH_SMILE:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_SMILE** = ``135``

La bouche exprime un sourire.

.. _class_XRFaceTracker_constant_FT_MOUTH_SAD_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_SAD_RIGHT** = ``136``

Le côté droit de la bouche exprime de la tristesse.

.. _class_XRFaceTracker_constant_FT_MOUTH_SAD_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_SAD_LEFT** = ``137``

Le côté gauche de la bouche exprime de la tristesse.

.. _class_XRFaceTracker_constant_FT_MOUTH_SAD:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_SAD** = ``138``

La bouche exprime de la tristesse.

.. _class_XRFaceTracker_constant_FT_MOUTH_STRETCH:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_STRETCH** = ``139``

La bouche s'étire.

.. _class_XRFaceTracker_constant_FT_MOUTH_DIMPLE:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_DIMPLE** = ``140``

Les angles de la lèvre se creusent.

.. _class_XRFaceTracker_constant_FT_MOUTH_TIGHTENER:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_TIGHTENER** = ``141``

La bouche se serre.

.. _class_XRFaceTracker_constant_FT_MOUTH_PRESS:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_PRESS** = ``142``

La bouche se presse ensemble.

.. _class_XRFaceTracker_constant_FT_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MAX** = ``143``

Représente la taille de l'énumération :ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_XRFaceTracker_property_blend_shapes:

.. rst-class:: classref-property

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **blend_shapes** = ``PackedFloat32Array()`` :ref:`🔗<class_XRFaceTracker_property_blend_shapes>`

.. rst-class:: classref-property-setget

- |void| **set_blend_shapes**\ (\ value\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ )
- :ref:`PackedFloat32Array<class_PackedFloat32Array>` **get_blend_shapes**\ (\ )

Le tableau de poids des blend shape de visage avec des indices correspondant à l'énumération :ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>`.



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedFloat32Array<class_PackedFloat32Array>` for more details.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_XRFaceTracker_method_get_blend_shape:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_blend_shape**\ (\ blend_shape\: :ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>`\ ) |const| :ref:`🔗<class_XRFaceTracker_method_get_blend_shape>`

Renvoie le poids de la blend shape de visage demandée.

.. rst-class:: classref-item-separator

----

.. _class_XRFaceTracker_method_set_blend_shape:

.. rst-class:: classref-method

|void| **set_blend_shape**\ (\ blend_shape\: :ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>`, weight\: :ref:`float<class_float>`\ ) :ref:`🔗<class_XRFaceTracker_method_set_blend_shape>`

Définit un poids de blend shape de visage.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
