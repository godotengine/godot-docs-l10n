:github_url: hide

.. _class_XRFaceTracker:

XRFaceTracker
=============

**Experimental:** This class may be changed or removed in future versions.

**Hereda:** :ref:`XRTracker<class_XRTracker>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un rostro rastreado.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Una instancia de este objeto representa una cara rastreada y sus blend shapes correspondientes. Las blendshapes provienen del estándar `Unified Expressions <https://docs.vrcft.io/docs/tutorial-avatars/tutorial-avatars-extras/unified-blendshapes>`__ y contienen detalles extendidos y elementos visuales para cada blend shape. Además, la página `Comparación de estándares de seguimiento <https://docs.vrcft.io/docs/tutorial-avatars/tutorial-avatars-extras/compatibility/overview>`__ documenta la relación entre Unified Expressions y otros estándares.

A medida que se activan los rastreadores faciales, se registran en el :ref:`XRServer<class_XRServer>`.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Índice de documentación XR <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+----------------------------------------------------------------+--------------------------------------------------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>` | :ref:`blend_shapes<class_XRFaceTracker_property_blend_shapes>` | ``PackedFloat32Array()``                                           |
   +-----------------------------------------------------+----------------------------------------------------------------+--------------------------------------------------------------------+
   | :ref:`TrackerType<enum_XRServer_TrackerType>`       | type                                                           | ``64`` (overrides :ref:`XRTracker<class_XRTracker_property_type>`) |
   +-----------------------------------------------------+----------------------------------------------------------------+--------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

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

Enumeraciones
--------------------------

.. _enum_XRFaceTracker_BlendShapeEntry:

.. rst-class:: classref-enumeration

enum **BlendShapeEntry**: :ref:`🔗<enum_XRFaceTracker_BlendShapeEntry>`

.. _class_XRFaceTracker_constant_FT_EYE_LOOK_OUT_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_LOOK_OUT_RIGHT** = ``0``

El ojo derecho mira hacia afuera.

.. _class_XRFaceTracker_constant_FT_EYE_LOOK_IN_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_LOOK_IN_RIGHT** = ``1``

El ojo derecho mira hacia adentro.

.. _class_XRFaceTracker_constant_FT_EYE_LOOK_UP_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_LOOK_UP_RIGHT** = ``2``

El ojo derecho mira hacia arriba.

.. _class_XRFaceTracker_constant_FT_EYE_LOOK_DOWN_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_LOOK_DOWN_RIGHT** = ``3``

El ojo derecho mira hacia abajo.

.. _class_XRFaceTracker_constant_FT_EYE_LOOK_OUT_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_LOOK_OUT_LEFT** = ``4``

El ojo izquierdo mira hacia afuera.

.. _class_XRFaceTracker_constant_FT_EYE_LOOK_IN_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_LOOK_IN_LEFT** = ``5``

El ojo izquierdo mira hacia adentro.

.. _class_XRFaceTracker_constant_FT_EYE_LOOK_UP_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_LOOK_UP_LEFT** = ``6``

El ojo derecho mira hacia arriba.

.. _class_XRFaceTracker_constant_FT_EYE_LOOK_DOWN_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_LOOK_DOWN_LEFT** = ``7``

El ojo derecho mira hacia abajo.

.. _class_XRFaceTracker_constant_FT_EYE_CLOSED_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_CLOSED_RIGHT** = ``8``

Cierra el párpado derecho.

.. _class_XRFaceTracker_constant_FT_EYE_CLOSED_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_CLOSED_LEFT** = ``9``

Cierra el párpado izquierdo.

.. _class_XRFaceTracker_constant_FT_EYE_SQUINT_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_SQUINT_RIGHT** = ``10``

Aprieta los músculos de la cuenca del ojo derecho.

.. _class_XRFaceTracker_constant_FT_EYE_SQUINT_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_SQUINT_LEFT** = ``11``

Aprieta los músculos de la cuenca del ojo izquierdo.

.. _class_XRFaceTracker_constant_FT_EYE_WIDE_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_WIDE_RIGHT** = ``12``

El párpado derecho se ensancha más allá de lo relajado.

.. _class_XRFaceTracker_constant_FT_EYE_WIDE_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_WIDE_LEFT** = ``13``

El párpado izquierdo se ensancha más allá de lo relajado.

.. _class_XRFaceTracker_constant_FT_EYE_DILATION_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_DILATION_RIGHT** = ``14``

Dilata la pupila del ojo derecho.

.. _class_XRFaceTracker_constant_FT_EYE_DILATION_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_DILATION_LEFT** = ``15``

Dilata la pupila del ojo izquierdo.

.. _class_XRFaceTracker_constant_FT_EYE_CONSTRICT_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_CONSTRICT_RIGHT** = ``16``

Constriñe la pupila del ojo derecho.

.. _class_XRFaceTracker_constant_FT_EYE_CONSTRICT_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_CONSTRICT_LEFT** = ``17``

Constriñe la pupila del ojo izquierdo.

.. _class_XRFaceTracker_constant_FT_BROW_PINCH_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_PINCH_RIGHT** = ``18``

La ceja derecha se contrae hacia adentro.

.. _class_XRFaceTracker_constant_FT_BROW_PINCH_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_PINCH_LEFT** = ``19``

La ceja izquierda se contrae hacia adentro.

.. _class_XRFaceTracker_constant_FT_BROW_LOWERER_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_LOWERER_RIGHT** = ``20``

El exterior de la ceja derecha se inclina hacia abajo.

.. _class_XRFaceTracker_constant_FT_BROW_LOWERER_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_LOWERER_LEFT** = ``21``

El exterior de la ceja izquierda se inclina hacia abajo.

.. _class_XRFaceTracker_constant_FT_BROW_INNER_UP_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_INNER_UP_RIGHT** = ``22``

El interior de la ceja derecha se levanta.

.. _class_XRFaceTracker_constant_FT_BROW_INNER_UP_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_INNER_UP_LEFT** = ``23``

El interior de la ceja izquierda se levanta.

.. _class_XRFaceTracker_constant_FT_BROW_OUTER_UP_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_OUTER_UP_RIGHT** = ``24``

El exterior de la ceja derecha se levanta.

.. _class_XRFaceTracker_constant_FT_BROW_OUTER_UP_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_OUTER_UP_LEFT** = ``25``

El exterior de la ceja izquierda se levanta.

.. _class_XRFaceTracker_constant_FT_NOSE_SNEER_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_NOSE_SNEER_RIGHT** = ``26``

El lado derecho de la cara se arruga.

.. _class_XRFaceTracker_constant_FT_NOSE_SNEER_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_NOSE_SNEER_LEFT** = ``27``

El lado izquierdo de la cara se arruga.

.. _class_XRFaceTracker_constant_FT_NASAL_DILATION_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_NASAL_DILATION_RIGHT** = ``28``

La fosa nasal derecha se dilata.

.. _class_XRFaceTracker_constant_FT_NASAL_DILATION_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_NASAL_DILATION_LEFT** = ``29``

La fosa nasal izquierda se dilata.

.. _class_XRFaceTracker_constant_FT_NASAL_CONSTRICT_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_NASAL_CONSTRICT_RIGHT** = ``30``

La fosa nasal derecha se contrae.

.. _class_XRFaceTracker_constant_FT_NASAL_CONSTRICT_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_NASAL_CONSTRICT_LEFT** = ``31``

La fosa nasal izquierda se contrae.

.. _class_XRFaceTracker_constant_FT_CHEEK_SQUINT_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_CHEEK_SQUINT_RIGHT** = ``32``

Levanta la mejilla del lado derecho.

.. _class_XRFaceTracker_constant_FT_CHEEK_SQUINT_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_CHEEK_SQUINT_LEFT** = ``33``

Levanta la mejilla del lado izquierdo.

.. _class_XRFaceTracker_constant_FT_CHEEK_PUFF_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_CHEEK_PUFF_RIGHT** = ``34``

Infla la mejilla del lado derecho.

.. _class_XRFaceTracker_constant_FT_CHEEK_PUFF_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_CHEEK_PUFF_LEFT** = ``35``

Infla la mejilla del lado izquierdo.

.. _class_XRFaceTracker_constant_FT_CHEEK_SUCK_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_CHEEK_SUCK_RIGHT** = ``36``

Chupa la mejilla del lado derecho.

.. _class_XRFaceTracker_constant_FT_CHEEK_SUCK_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_CHEEK_SUCK_LEFT** = ``37``

Chupa la mejilla del lado izquierdo.

.. _class_XRFaceTracker_constant_FT_JAW_OPEN:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_JAW_OPEN** = ``38``

Abre la mandíbula.

.. _class_XRFaceTracker_constant_FT_MOUTH_CLOSED:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_CLOSED** = ``39``

Cierra la boca.

.. _class_XRFaceTracker_constant_FT_JAW_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_JAW_RIGHT** = ``40``

Empuja la mandíbula hacia la derecha.

.. _class_XRFaceTracker_constant_FT_JAW_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_JAW_LEFT** = ``41``

Empuja la mandíbula hacia la izquierda.

.. _class_XRFaceTracker_constant_FT_JAW_FORWARD:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_JAW_FORWARD** = ``42``

Empuja la mandíbula hacia adelante.

.. _class_XRFaceTracker_constant_FT_JAW_BACKWARD:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_JAW_BACKWARD** = ``43``

Empuja la mandíbula hacia atrás.

.. _class_XRFaceTracker_constant_FT_JAW_CLENCH:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_JAW_CLENCH** = ``44``

Flexiona los músculos de la mandíbula.

.. _class_XRFaceTracker_constant_FT_JAW_MANDIBLE_RAISE:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_JAW_MANDIBLE_RAISE** = ``45``

Eleva la mandíbula.

.. _class_XRFaceTracker_constant_FT_LIP_SUCK_UPPER_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_SUCK_UPPER_RIGHT** = ``46``

La parte superior derecha del labio se mete en la boca.

.. _class_XRFaceTracker_constant_FT_LIP_SUCK_UPPER_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_SUCK_UPPER_LEFT** = ``47``

La parte superior izquierda del labio se mete en la boca.

.. _class_XRFaceTracker_constant_FT_LIP_SUCK_LOWER_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_SUCK_LOWER_RIGHT** = ``48``

La parte inferior derecha del labio se mete en la boca.

.. _class_XRFaceTracker_constant_FT_LIP_SUCK_LOWER_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_SUCK_LOWER_LEFT** = ``49``

La parte inferior izquierda del labio se mete en la boca.

.. _class_XRFaceTracker_constant_FT_LIP_SUCK_CORNER_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_SUCK_CORNER_RIGHT** = ``50``

La comisura derecha del labio se pliega hacia adentro de la boca.

.. _class_XRFaceTracker_constant_FT_LIP_SUCK_CORNER_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_SUCK_CORNER_LEFT** = ``51``

La comisura izquierda del labio se pliega hacia adentro de la boca.

.. _class_XRFaceTracker_constant_FT_LIP_FUNNEL_UPPER_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_FUNNEL_UPPER_RIGHT** = ``52``

La parte superior derecha del labio se frunce en forma de embudo.

.. _class_XRFaceTracker_constant_FT_LIP_FUNNEL_UPPER_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_FUNNEL_UPPER_LEFT** = ``53``

La parte superior izquierda del labio se frunce en forma de embudo.

.. _class_XRFaceTracker_constant_FT_LIP_FUNNEL_LOWER_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_FUNNEL_LOWER_RIGHT** = ``54``

La parte inferior derecha del labio se frunce en forma de embudo.

.. _class_XRFaceTracker_constant_FT_LIP_FUNNEL_LOWER_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_FUNNEL_LOWER_LEFT** = ``55``

La parte inferior izquierda del labio se frunce en forma de embudo.

.. _class_XRFaceTracker_constant_FT_LIP_PUCKER_UPPER_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_PUCKER_UPPER_RIGHT** = ``56``

La parte superior derecha del labio se empuja hacia afuera.

.. _class_XRFaceTracker_constant_FT_LIP_PUCKER_UPPER_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_PUCKER_UPPER_LEFT** = ``57``

La parte superior izquierda del labio se empuja hacia afuera.

.. _class_XRFaceTracker_constant_FT_LIP_PUCKER_LOWER_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_PUCKER_LOWER_RIGHT** = ``58``

La parte inferior derecha del labio se empuja hacia afuera.

.. _class_XRFaceTracker_constant_FT_LIP_PUCKER_LOWER_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_PUCKER_LOWER_LEFT** = ``59``

La parte inferior izquierda del labio se empuja hacia afuera.

.. _class_XRFaceTracker_constant_FT_MOUTH_UPPER_UP_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_UPPER_UP_RIGHT** = ``60``

La parte derecha del labio superior se levanta.

.. _class_XRFaceTracker_constant_FT_MOUTH_UPPER_UP_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_UPPER_UP_LEFT** = ``61``

La parte izquierda del labio superior se levanta.

.. _class_XRFaceTracker_constant_FT_MOUTH_LOWER_DOWN_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_LOWER_DOWN_RIGHT** = ``62``

La parte derecha del labio inferior se levanta.

.. _class_XRFaceTracker_constant_FT_MOUTH_LOWER_DOWN_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_LOWER_DOWN_LEFT** = ``63``

La parte izquierda del labio inferior se levanta.

.. _class_XRFaceTracker_constant_FT_MOUTH_UPPER_DEEPEN_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_UPPER_DEEPEN_RIGHT** = ``64``

La parte superior derecha del labio presiona la mejilla.

.. _class_XRFaceTracker_constant_FT_MOUTH_UPPER_DEEPEN_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_UPPER_DEEPEN_LEFT** = ``65``

La parte superior izquierda del labio presiona la mejilla.

.. _class_XRFaceTracker_constant_FT_MOUTH_UPPER_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_UPPER_RIGHT** = ``66``

Mueve el labio superior hacia la derecha.

.. _class_XRFaceTracker_constant_FT_MOUTH_UPPER_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_UPPER_LEFT** = ``67``

Mueve el labio superior hacia la izquierda.

.. _class_XRFaceTracker_constant_FT_MOUTH_LOWER_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_LOWER_RIGHT** = ``68``

Mueve el labio inferior hacia la derecha.

.. _class_XRFaceTracker_constant_FT_MOUTH_LOWER_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_LOWER_LEFT** = ``69``

Mueve el labio inferior hacia la izquierda.

.. _class_XRFaceTracker_constant_FT_MOUTH_CORNER_PULL_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_CORNER_PULL_RIGHT** = ``70``

La comisura derecha del labio se estira en diagonal hacia arriba y afuera.

.. _class_XRFaceTracker_constant_FT_MOUTH_CORNER_PULL_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_CORNER_PULL_LEFT** = ``71``

La comisura izquierda del labio se estira en diagonal hacia arriba y afuera.

.. _class_XRFaceTracker_constant_FT_MOUTH_CORNER_SLANT_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_CORNER_SLANT_RIGHT** = ``72``

El labio de la esquina derecha se inclina hacia arriba.

.. _class_XRFaceTracker_constant_FT_MOUTH_CORNER_SLANT_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_CORNER_SLANT_LEFT** = ``73``

El labio de la esquina izquierda se inclina hacia arriba.

.. _class_XRFaceTracker_constant_FT_MOUTH_FROWN_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_FROWN_RIGHT** = ``74``

El labio de la esquina derecha se inclina hacia abajo.

.. _class_XRFaceTracker_constant_FT_MOUTH_FROWN_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_FROWN_LEFT** = ``75``

El labio de la esquina izquierda se inclina hacia abajo.

.. _class_XRFaceTracker_constant_FT_MOUTH_STRETCH_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_STRETCH_RIGHT** = ``76``

La comisura de la boca del labio se estira hacia afuera y hacia abajo.

.. _class_XRFaceTracker_constant_FT_MOUTH_STRETCH_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_STRETCH_LEFT** = ``77``

La comisura de la boca del labio se estira hacia afuera y hacia abajo.

.. _class_XRFaceTracker_constant_FT_MOUTH_DIMPLE_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_DIMPLE_RIGHT** = ``78``

La esquina del labio derecho está empujada hacia atrás.

.. _class_XRFaceTracker_constant_FT_MOUTH_DIMPLE_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_DIMPLE_LEFT** = ``79``

La esquina del labio izquierdo está empujada hacia atrás.

.. _class_XRFaceTracker_constant_FT_MOUTH_RAISER_UPPER:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_RAISER_UPPER** = ``80``

Levanta y empuja ligeramente la parte superior de la boca.

.. _class_XRFaceTracker_constant_FT_MOUTH_RAISER_LOWER:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_RAISER_LOWER** = ``81``

Levanta y empuja ligeramente la parte inferior de la boca.

.. _class_XRFaceTracker_constant_FT_MOUTH_PRESS_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_PRESS_RIGHT** = ``82``

Los labios del lado derecho se presionan y aplanan juntos verticalmente.

.. _class_XRFaceTracker_constant_FT_MOUTH_PRESS_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_PRESS_LEFT** = ``83``

Los labios del lado izquierdo se presionan y aplanan juntos verticalmente.

.. _class_XRFaceTracker_constant_FT_MOUTH_TIGHTENER_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_TIGHTENER_RIGHT** = ``84``

Los labios del lado derecho se aprietan horizontalmente.

.. _class_XRFaceTracker_constant_FT_MOUTH_TIGHTENER_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_TIGHTENER_LEFT** = ``85``

Los labios del lado izquierdo se aprietan horizontalmente.

.. _class_XRFaceTracker_constant_FT_TONGUE_OUT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_TONGUE_OUT** = ``86``

La lengua sale visiblemente de la boca.

.. _class_XRFaceTracker_constant_FT_TONGUE_UP:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_TONGUE_UP** = ``87``

La lengua apunta hacia arriba.

.. _class_XRFaceTracker_constant_FT_TONGUE_DOWN:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_TONGUE_DOWN** = ``88``

La lengua apunta hacia abajo.

.. _class_XRFaceTracker_constant_FT_TONGUE_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_TONGUE_RIGHT** = ``89``

La lengua apunta hacia la derecha.

.. _class_XRFaceTracker_constant_FT_TONGUE_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_TONGUE_LEFT** = ``90``

La lengua apunta hacia la izquierda.

.. _class_XRFaceTracker_constant_FT_TONGUE_ROLL:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_TONGUE_ROLL** = ``91``

Los lados de la lengua se acanalan, creando un rollo.

.. _class_XRFaceTracker_constant_FT_TONGUE_BLEND_DOWN:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_TONGUE_BLEND_DOWN** = ``92``

La lengua se arquea hacia arriba y luego hacia abajo dentro de la boca.

.. _class_XRFaceTracker_constant_FT_TONGUE_CURL_UP:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_TONGUE_CURL_UP** = ``93``

La lengua se arquea hacia abajo y luego hacia arriba dentro de la boca.

.. _class_XRFaceTracker_constant_FT_TONGUE_SQUISH:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_TONGUE_SQUISH** = ``94``

La lengua se contrae y se engrosa.

.. _class_XRFaceTracker_constant_FT_TONGUE_FLAT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_TONGUE_FLAT** = ``95``

La lengua se aplana y se adelgaza.

.. _class_XRFaceTracker_constant_FT_TONGUE_TWIST_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_TONGUE_TWIST_RIGHT** = ``96``

La punta de la lengua rota en el sentido horario, y el resto la sigue gradualmente.

.. _class_XRFaceTracker_constant_FT_TONGUE_TWIST_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_TONGUE_TWIST_LEFT** = ``97``

La punta de la lengua rota en sentido antihorario, y el resto la sigue gradualmente.

.. _class_XRFaceTracker_constant_FT_SOFT_PALATE_CLOSE:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_SOFT_PALATE_CLOSE** = ``98``

La garganta interior de la boca se cierra.

.. _class_XRFaceTracker_constant_FT_THROAT_SWALLOW:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_THROAT_SWALLOW** = ``99``

La manzana de Adán traga visiblemente.

.. _class_XRFaceTracker_constant_FT_NECK_FLEX_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_NECK_FLEX_RIGHT** = ``100``

El lado derecho del cuello se flexiona visiblemente.

.. _class_XRFaceTracker_constant_FT_NECK_FLEX_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_NECK_FLEX_LEFT** = ``101``

El lado izquierdo del cuello se flexiona visiblemente.

.. _class_XRFaceTracker_constant_FT_EYE_CLOSED:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_CLOSED** = ``102``

Cierra ambos párpados.

.. _class_XRFaceTracker_constant_FT_EYE_WIDE:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_WIDE** = ``103``

Se ensanchan ambos párpados.

.. _class_XRFaceTracker_constant_FT_EYE_SQUINT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_SQUINT** = ``104``

Se entrecierran ambos párpados.

.. _class_XRFaceTracker_constant_FT_EYE_DILATION:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_DILATION** = ``105``

Se dilatan ambas pupilas.

.. _class_XRFaceTracker_constant_FT_EYE_CONSTRICT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_CONSTRICT** = ``106``

Se contraen ambas pupilas.

.. _class_XRFaceTracker_constant_FT_BROW_DOWN_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_DOWN_RIGHT** = ``107``

Tira de la ceja derecha hacia abajo y hacia adentro.

.. _class_XRFaceTracker_constant_FT_BROW_DOWN_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_DOWN_LEFT** = ``108``

Tira de la ceja izquierda hacia abajo y hacia adentro.

.. _class_XRFaceTracker_constant_FT_BROW_DOWN:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_DOWN** = ``109``

Tira de ambas cejas hacia abajo y hacia adentro.

.. _class_XRFaceTracker_constant_FT_BROW_UP_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_UP_RIGHT** = ``110``

La ceja derecha parece preocupada.

.. _class_XRFaceTracker_constant_FT_BROW_UP_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_UP_LEFT** = ``111``

La ceja izquierda parece preocupada.

.. _class_XRFaceTracker_constant_FT_BROW_UP:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_UP** = ``112``

Ambas cejas parecen preocupadas.

.. _class_XRFaceTracker_constant_FT_NOSE_SNEER:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_NOSE_SNEER** = ``113``

Toda la cara hace una mueca de desprecio.

.. _class_XRFaceTracker_constant_FT_NASAL_DILATION:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_NASAL_DILATION** = ``114``

Ambas fosas nasales se dilatan.

.. _class_XRFaceTracker_constant_FT_NASAL_CONSTRICT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_NASAL_CONSTRICT** = ``115``

Ambas fosas nasales se contraen.

.. _class_XRFaceTracker_constant_FT_CHEEK_PUFF:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_CHEEK_PUFF** = ``116``

Se inflan ambas mejillas.

.. _class_XRFaceTracker_constant_FT_CHEEK_SUCK:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_CHEEK_SUCK** = ``117``

Chupa ambas mejillas.

.. _class_XRFaceTracker_constant_FT_CHEEK_SQUINT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_CHEEK_SQUINT** = ``118``

Levanta ambas mejillas.

.. _class_XRFaceTracker_constant_FT_LIP_SUCK_UPPER:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_SUCK_UPPER** = ``119``

Mete los labios superiores hacia adentro.

.. _class_XRFaceTracker_constant_FT_LIP_SUCK_LOWER:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_SUCK_LOWER** = ``120``

Mete los labios inferiores hacia adentro.

.. _class_XRFaceTracker_constant_FT_LIP_SUCK:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_SUCK** = ``121``

Mete ambos labios hacia dentro.

.. _class_XRFaceTracker_constant_FT_LIP_FUNNEL_UPPER:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_FUNNEL_UPPER** = ``122``

Se fruncen los labios superiores.

.. _class_XRFaceTracker_constant_FT_LIP_FUNNEL_LOWER:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_FUNNEL_LOWER** = ``123``

Se fruncen los labios inferiores.

.. _class_XRFaceTracker_constant_FT_LIP_FUNNEL:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_FUNNEL** = ``124``

Se fruncen ambos labios.

.. _class_XRFaceTracker_constant_FT_LIP_PUCKER_UPPER:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_PUCKER_UPPER** = ``125``

La parte del labio superior se empuja hacia afuera.

.. _class_XRFaceTracker_constant_FT_LIP_PUCKER_LOWER:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_PUCKER_LOWER** = ``126``

La parte del labio inferior se empuja hacia afuera.

.. _class_XRFaceTracker_constant_FT_LIP_PUCKER:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_PUCKER** = ``127``

Los labios se empujan hacia afuera.

.. _class_XRFaceTracker_constant_FT_MOUTH_UPPER_UP:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_UPPER_UP** = ``128``

Levanta los labios superiores.

.. _class_XRFaceTracker_constant_FT_MOUTH_LOWER_DOWN:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_LOWER_DOWN** = ``129``

Baja los labios inferiores.

.. _class_XRFaceTracker_constant_FT_MOUTH_OPEN:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_OPEN** = ``130``

La boca se abre, revelando los dientes.

.. _class_XRFaceTracker_constant_FT_MOUTH_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_RIGHT** = ``131``

Mueve la boca hacia la derecha.

.. _class_XRFaceTracker_constant_FT_MOUTH_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_LEFT** = ``132``

Mueve la boca hacia la izquierda.

.. _class_XRFaceTracker_constant_FT_MOUTH_SMILE_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_SMILE_RIGHT** = ``133``

El lado derecho de la boca sonríe.

.. _class_XRFaceTracker_constant_FT_MOUTH_SMILE_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_SMILE_LEFT** = ``134``

El lado izquierdo de la boca sonríe.

.. _class_XRFaceTracker_constant_FT_MOUTH_SMILE:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_SMILE** = ``135``

La boca expresa una sonrisa.

.. _class_XRFaceTracker_constant_FT_MOUTH_SAD_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_SAD_RIGHT** = ``136``

El lado derecho de la boca expresa tristeza.

.. _class_XRFaceTracker_constant_FT_MOUTH_SAD_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_SAD_LEFT** = ``137``

El lado izquierdo de la boca expresa tristeza.

.. _class_XRFaceTracker_constant_FT_MOUTH_SAD:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_SAD** = ``138``

La boca expresa tristeza.

.. _class_XRFaceTracker_constant_FT_MOUTH_STRETCH:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_STRETCH** = ``139``

Estiramientos de la boca.

.. _class_XRFaceTracker_constant_FT_MOUTH_DIMPLE:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_DIMPLE** = ``140``

Las comisuras de los labios forman hoyuelos.

.. _class_XRFaceTracker_constant_FT_MOUTH_TIGHTENER:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_TIGHTENER** = ``141``

La boca se tensa.

.. _class_XRFaceTracker_constant_FT_MOUTH_PRESS:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_PRESS** = ``142``

La boca se presiona consigo misma.

.. _class_XRFaceTracker_constant_FT_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MAX** = ``143``

Representa el tamaño del enum :ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_XRFaceTracker_property_blend_shapes:

.. rst-class:: classref-property

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **blend_shapes** = ``PackedFloat32Array()`` :ref:`🔗<class_XRFaceTracker_property_blend_shapes>`

.. rst-class:: classref-property-setget

- |void| **set_blend_shapes**\ (\ value\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ )
- :ref:`PackedFloat32Array<class_PackedFloat32Array>` **get_blend_shapes**\ (\ )

El array de pesos de las blendshapes faciales con índices correspondientes a la enumeración :ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>`.



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedFloat32Array<class_PackedFloat32Array>` for more details.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_XRFaceTracker_method_get_blend_shape:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_blend_shape**\ (\ blend_shape\: :ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>`\ ) |const| :ref:`🔗<class_XRFaceTracker_method_get_blend_shape>`

Devuelve el peso de la blendshape de cara solicitada.

.. rst-class:: classref-item-separator

----

.. _class_XRFaceTracker_method_set_blend_shape:

.. rst-class:: classref-method

|void| **set_blend_shape**\ (\ blend_shape\: :ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>`, weight\: :ref:`float<class_float>`\ ) :ref:`🔗<class_XRFaceTracker_method_set_blend_shape>`

Establece un peso de blendshape de cara.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
