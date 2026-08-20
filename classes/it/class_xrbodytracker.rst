:github_url: hide

.. _class_XRBodyTracker:

XRBodyTracker
=============

**Sperimentale:** This class may be changed or removed in future versions.

**Eredita:** :ref:`XRPositionalTracker<class_XRPositionalTracker>` **<** :ref:`XRTracker<class_XRTracker>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un corpo tracciato in XR.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un sistema di tracciamento del corpo creerà un'istanza di questo oggetto e la aggiungerà al :ref:`XRServer<class_XRServer>`. Questo sistema di tracciamento otterrà quindi i dati dello scheletro, li convertirà nello scheletro umanoide di Godot e memorizzerà questi dati sull'oggetto **XRBodyTracker**.

Utilizza :ref:`XRBodyModifier3D<class_XRBodyModifier3D>` per animare una mesh del corpo attraverso i dati di tracciamento del corpo.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Indice della documentazione XR <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +--------------------------------------------------------------+--------------------------------------------------------------------------+--------------------------------------------------------------------+
   | |bitfield|\[:ref:`BodyFlags<enum_XRBodyTracker_BodyFlags>`\] | :ref:`body_flags<class_XRBodyTracker_property_body_flags>`               | ``0``                                                              |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+--------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`has_tracking_data<class_XRBodyTracker_property_has_tracking_data>` | ``false``                                                          |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+--------------------------------------------------------------------+
   | :ref:`TrackerType<enum_XRServer_TrackerType>`                | type                                                                     | ``32`` (overrides :ref:`XRTracker<class_XRTracker_property_type>`) |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+--------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`JointFlags<enum_XRBodyTracker_JointFlags>`\] | :ref:`get_joint_flags<class_XRBodyTracker_method_get_joint_flags>`\ (\ joint\: :ref:`Joint<enum_XRBodyTracker_Joint>`\ ) |const|                                                                 |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                          | :ref:`get_joint_transform<class_XRBodyTracker_method_get_joint_transform>`\ (\ joint\: :ref:`Joint<enum_XRBodyTracker_Joint>`\ ) |const|                                                         |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                         | :ref:`set_joint_flags<class_XRBodyTracker_method_set_joint_flags>`\ (\ joint\: :ref:`Joint<enum_XRBodyTracker_Joint>`, flags\: |bitfield|\[:ref:`JointFlags<enum_XRBodyTracker_JointFlags>`\]\ ) |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                         | :ref:`set_joint_transform<class_XRBodyTracker_method_set_joint_transform>`\ (\ joint\: :ref:`Joint<enum_XRBodyTracker_Joint>`, transform\: :ref:`Transform3D<class_Transform3D>`\ )              |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_XRBodyTracker_BodyFlags:

.. rst-class:: classref-enumeration

flags **BodyFlags**: :ref:`🔗<enum_XRBodyTracker_BodyFlags>`

.. _class_XRBodyTracker_constant_BODY_FLAG_UPPER_BODY_SUPPORTED:

.. rst-class:: classref-enumeration-constant

:ref:`BodyFlags<enum_XRBodyTracker_BodyFlags>` **BODY_FLAG_UPPER_BODY_SUPPORTED** = ``1``

Il tracciamento della parte superiore del corpo è supportato.

.. _class_XRBodyTracker_constant_BODY_FLAG_LOWER_BODY_SUPPORTED:

.. rst-class:: classref-enumeration-constant

:ref:`BodyFlags<enum_XRBodyTracker_BodyFlags>` **BODY_FLAG_LOWER_BODY_SUPPORTED** = ``2``

Il tracciamento della parte inferiore del corpo è supportato.

.. _class_XRBodyTracker_constant_BODY_FLAG_HANDS_SUPPORTED:

.. rst-class:: classref-enumeration-constant

:ref:`BodyFlags<enum_XRBodyTracker_BodyFlags>` **BODY_FLAG_HANDS_SUPPORTED** = ``4``

Il tracciamento delle mani è supportato.

.. rst-class:: classref-item-separator

----

.. _enum_XRBodyTracker_Joint:

.. rst-class:: classref-enumeration

enum **Joint**: :ref:`🔗<enum_XRBodyTracker_Joint>`

.. _class_XRBodyTracker_constant_JOINT_ROOT:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_ROOT** = ``0``

Articolazione radice.

.. _class_XRBodyTracker_constant_JOINT_HIPS:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_HIPS** = ``1``

Articolazione dell'anca.

.. _class_XRBodyTracker_constant_JOINT_SPINE:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_SPINE** = ``2``

Articolazione della colonna vertebrale.

.. _class_XRBodyTracker_constant_JOINT_CHEST:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_CHEST** = ``3``

Articolazione del torace.

.. _class_XRBodyTracker_constant_JOINT_UPPER_CHEST:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_UPPER_CHEST** = ``4``

Articolazione della parte superiore del torace.

.. _class_XRBodyTracker_constant_JOINT_NECK:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_NECK** = ``5``

Articolazione del collo.

.. _class_XRBodyTracker_constant_JOINT_HEAD:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_HEAD** = ``6``

Articolazione della testa.

.. _class_XRBodyTracker_constant_JOINT_HEAD_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_HEAD_TIP** = ``7``

Articolazione della punta della testa.

.. _class_XRBodyTracker_constant_JOINT_LEFT_SHOULDER:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_SHOULDER** = ``8``

Articolazione della spalla sinistra.

.. _class_XRBodyTracker_constant_JOINT_LEFT_UPPER_ARM:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_UPPER_ARM** = ``9``

Articolazione del braccio superiore sinistro.

.. _class_XRBodyTracker_constant_JOINT_LEFT_LOWER_ARM:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_LOWER_ARM** = ``10``

Articolazione dell'avambraccio sinistro.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_SHOULDER:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_SHOULDER** = ``11``

Articolazione della spalla destra.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_UPPER_ARM:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_UPPER_ARM** = ``12``

Articolazione del braccio superiore destro.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_LOWER_ARM:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_LOWER_ARM** = ``13``

Articolazione dell'avambraccio destro.

.. _class_XRBodyTracker_constant_JOINT_LEFT_UPPER_LEG:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_UPPER_LEG** = ``14``

Articolazione della coscia sinistra.

.. _class_XRBodyTracker_constant_JOINT_LEFT_LOWER_LEG:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_LOWER_LEG** = ``15``

Articolazione della parte inferiore della gamba sinistra.

.. _class_XRBodyTracker_constant_JOINT_LEFT_FOOT:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_FOOT** = ``16``

Articolazione del piede sinistro.

.. _class_XRBodyTracker_constant_JOINT_LEFT_TOES:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_TOES** = ``17``

Articolazione delle dita del piede sinistro.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_UPPER_LEG:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_UPPER_LEG** = ``18``

Articolazione della coscia destra.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_LOWER_LEG:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_LOWER_LEG** = ``19``

Articolazione della parte inferiore della gamba destra.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_FOOT:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_FOOT** = ``20``

Articolazione del piede destro.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_TOES:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_TOES** = ``21``

Articolazione delle dita del piede destro.

.. _class_XRBodyTracker_constant_JOINT_LEFT_HAND:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_HAND** = ``22``

Articolazione della mano sinistra.

.. _class_XRBodyTracker_constant_JOINT_LEFT_PALM:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_PALM** = ``23``

Articolazione del palmo sinistro.

.. _class_XRBodyTracker_constant_JOINT_LEFT_WRIST:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_WRIST** = ``24``

Articolazione del polso sinistro.

.. _class_XRBodyTracker_constant_JOINT_LEFT_THUMB_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_THUMB_METACARPAL** = ``25``

Articolazione metacarpale del pollice sinistro.

.. _class_XRBodyTracker_constant_JOINT_LEFT_THUMB_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_THUMB_PHALANX_PROXIMAL** = ``26``

Articolazione prossimale della falange del pollice sinistro.

.. _class_XRBodyTracker_constant_JOINT_LEFT_THUMB_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_THUMB_PHALANX_DISTAL** = ``27``

Articolazione distale della falange del pollice sinistro.

.. _class_XRBodyTracker_constant_JOINT_LEFT_THUMB_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_THUMB_TIP** = ``28``

Articolazione della punta del pollice sinistro.

.. _class_XRBodyTracker_constant_JOINT_LEFT_INDEX_FINGER_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_INDEX_FINGER_METACARPAL** = ``29``

Articolazione metacarpale dell'indice sinistro.

.. _class_XRBodyTracker_constant_JOINT_LEFT_INDEX_FINGER_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_INDEX_FINGER_PHALANX_PROXIMAL** = ``30``

Articolazione prossimale della falange dell'indice sinistro.

.. _class_XRBodyTracker_constant_JOINT_LEFT_INDEX_FINGER_PHALANX_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_INDEX_FINGER_PHALANX_INTERMEDIATE** = ``31``

Articolazione intermedia della falange dell'indice sinistro.

.. _class_XRBodyTracker_constant_JOINT_LEFT_INDEX_FINGER_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_INDEX_FINGER_PHALANX_DISTAL** = ``32``

Articolazione distale della falange dell'indice sinistro.

.. _class_XRBodyTracker_constant_JOINT_LEFT_INDEX_FINGER_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_INDEX_FINGER_TIP** = ``33``

Articolazione della punta dell'indice sinistro.

.. _class_XRBodyTracker_constant_JOINT_LEFT_MIDDLE_FINGER_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_MIDDLE_FINGER_METACARPAL** = ``34``

Articolazione metacarpale del dito medio sinistro.

.. _class_XRBodyTracker_constant_JOINT_LEFT_MIDDLE_FINGER_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_MIDDLE_FINGER_PHALANX_PROXIMAL** = ``35``

Articolazione prossimale della falange del dito medio sinistro.

.. _class_XRBodyTracker_constant_JOINT_LEFT_MIDDLE_FINGER_PHALANX_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_MIDDLE_FINGER_PHALANX_INTERMEDIATE** = ``36``

Articolazione intermedia della falange del dito medio sinistro.

.. _class_XRBodyTracker_constant_JOINT_LEFT_MIDDLE_FINGER_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_MIDDLE_FINGER_PHALANX_DISTAL** = ``37``

Articolazione distale della falange del dito medio sinistro.

.. _class_XRBodyTracker_constant_JOINT_LEFT_MIDDLE_FINGER_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_MIDDLE_FINGER_TIP** = ``38``

Articolazione della punta del dito medio sinistro.

.. _class_XRBodyTracker_constant_JOINT_LEFT_RING_FINGER_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_RING_FINGER_METACARPAL** = ``39``

Articolazione metacarpale dell'anulare sinistro.

.. _class_XRBodyTracker_constant_JOINT_LEFT_RING_FINGER_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_RING_FINGER_PHALANX_PROXIMAL** = ``40``

Articolazione prossimale della falange dell'anulare sinistro.

.. _class_XRBodyTracker_constant_JOINT_LEFT_RING_FINGER_PHALANX_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_RING_FINGER_PHALANX_INTERMEDIATE** = ``41``

Articolazione intermedia della falange dell'anulare sinistro.

.. _class_XRBodyTracker_constant_JOINT_LEFT_RING_FINGER_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_RING_FINGER_PHALANX_DISTAL** = ``42``

Articolazione distale della falange dell'anulare sinistro.

.. _class_XRBodyTracker_constant_JOINT_LEFT_RING_FINGER_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_RING_FINGER_TIP** = ``43``

Articolazione della punta dell'anulare sinistro.

.. _class_XRBodyTracker_constant_JOINT_LEFT_PINKY_FINGER_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_PINKY_FINGER_METACARPAL** = ``44``

Articolazione metacarpale del mignolo sinistro.

.. _class_XRBodyTracker_constant_JOINT_LEFT_PINKY_FINGER_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_PINKY_FINGER_PHALANX_PROXIMAL** = ``45``

Articolazione prossimale della falange del mignolo sinistro.

.. _class_XRBodyTracker_constant_JOINT_LEFT_PINKY_FINGER_PHALANX_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_PINKY_FINGER_PHALANX_INTERMEDIATE** = ``46``

Articolazione intermedia della falange del mignolo sinistro.

.. _class_XRBodyTracker_constant_JOINT_LEFT_PINKY_FINGER_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_PINKY_FINGER_PHALANX_DISTAL** = ``47``

Articolazione distale della falange del mignolo sinistro.

.. _class_XRBodyTracker_constant_JOINT_LEFT_PINKY_FINGER_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_PINKY_FINGER_TIP** = ``48``

Articolazione della punta del mignolo sinistro.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_HAND:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_HAND** = ``49``

Articolazione della mano destra.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_PALM:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_PALM** = ``50``

Articolazione del palmo destro.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_WRIST:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_WRIST** = ``51``

Articolazione del polso destro.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_THUMB_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_THUMB_METACARPAL** = ``52``

Articolazione metacarpale del pollice destro.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_THUMB_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_THUMB_PHALANX_PROXIMAL** = ``53``

Articolazione prossimale della falange del pollice destro.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_THUMB_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_THUMB_PHALANX_DISTAL** = ``54``

Articolazione distale della falange del pollice destro.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_THUMB_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_THUMB_TIP** = ``55``

Articolazione della punta del pollice destro.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_INDEX_FINGER_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_INDEX_FINGER_METACARPAL** = ``56``

Articolazione metacarpale dell'indice destro.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_INDEX_FINGER_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_INDEX_FINGER_PHALANX_PROXIMAL** = ``57``

Articolazione prossimale della falange dell'indice destro.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_INDEX_FINGER_PHALANX_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_INDEX_FINGER_PHALANX_INTERMEDIATE** = ``58``

Articolazione intermedia della falange dell'indice destro.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_INDEX_FINGER_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_INDEX_FINGER_PHALANX_DISTAL** = ``59``

Articolazione distale della falange dell'indice destro.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_INDEX_FINGER_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_INDEX_FINGER_TIP** = ``60``

Articolazione della punta dell'indice destro.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_MIDDLE_FINGER_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_MIDDLE_FINGER_METACARPAL** = ``61``

Articolazione metacarpale del dito medio destro.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_MIDDLE_FINGER_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_MIDDLE_FINGER_PHALANX_PROXIMAL** = ``62``

Articolazione prossimale della falange del dito medio destro.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_MIDDLE_FINGER_PHALANX_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_MIDDLE_FINGER_PHALANX_INTERMEDIATE** = ``63``

Articolazione intermedia della falange del dito medio sinistro.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_MIDDLE_FINGER_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_MIDDLE_FINGER_PHALANX_DISTAL** = ``64``

Articolazione distale della falange del dito medio destro.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_MIDDLE_FINGER_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_MIDDLE_FINGER_TIP** = ``65``

Articolazione della punta del dito medio sinistro.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_RING_FINGER_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_RING_FINGER_METACARPAL** = ``66``

Articolazione metacarpale dell'anulare destro.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_RING_FINGER_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_RING_FINGER_PHALANX_PROXIMAL** = ``67``

Articolazione prossimale della falange dell'anulare destro.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_RING_FINGER_PHALANX_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_RING_FINGER_PHALANX_INTERMEDIATE** = ``68``

Articolazione intermedia della falange dell'anulare destro.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_RING_FINGER_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_RING_FINGER_PHALANX_DISTAL** = ``69``

Articolazione distale della falange dell'anulare destro.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_RING_FINGER_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_RING_FINGER_TIP** = ``70``

Articolazione della punta dell'anulare destro.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_PINKY_FINGER_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_PINKY_FINGER_METACARPAL** = ``71``

Articolazione metacarpale del mignolo destro.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_PINKY_FINGER_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_PINKY_FINGER_PHALANX_PROXIMAL** = ``72``

Articolazione prossimale della falange del mignolo destro.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_PINKY_FINGER_PHALANX_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_PINKY_FINGER_PHALANX_INTERMEDIATE** = ``73``

Articolazione intermedia della falange del mignolo destro.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_PINKY_FINGER_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_PINKY_FINGER_PHALANX_DISTAL** = ``74``

Articolazione distale della falange del mignolo destro.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_PINKY_FINGER_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_PINKY_FINGER_TIP** = ``75``

Articolazione della punta del mignolo destro.

.. _class_XRBodyTracker_constant_JOINT_LOWER_CHEST:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LOWER_CHEST** = ``76``

Articolazione del torace inferiore.

.. _class_XRBodyTracker_constant_JOINT_LEFT_SCAPULA:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_SCAPULA** = ``77``

Articolazione della scapola sinistra.

.. _class_XRBodyTracker_constant_JOINT_LEFT_WRIST_TWIST:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_WRIST_TWIST** = ``78``

Articolazione di torsione del polso sinistro.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_SCAPULA:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_SCAPULA** = ``79``

Articolazione della scapola destra.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_WRIST_TWIST:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_WRIST_TWIST** = ``80``

Articolazione di torsione del polso destro.

.. _class_XRBodyTracker_constant_JOINT_LEFT_FOOT_TWIST:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_FOOT_TWIST** = ``81``

Articolazione di torsione del piede sinistro.

.. _class_XRBodyTracker_constant_JOINT_LEFT_HEEL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_HEEL** = ``82``

Articolazione del tallone sinistro.

.. _class_XRBodyTracker_constant_JOINT_LEFT_MIDDLE_FOOT:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_MIDDLE_FOOT** = ``83``

Articolazione della parte media del piede sinistro.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_FOOT_TWIST:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_FOOT_TWIST** = ``84``

Articolazione di torsione del piede destro.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_HEEL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_HEEL** = ``85``

Articolazione del tallone destro.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_MIDDLE_FOOT:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_MIDDLE_FOOT** = ``86``

Articolazione della parte media del piede destro.

.. _class_XRBodyTracker_constant_JOINT_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_MAX** = ``87``

Rappresenta la dimensione dell'enumerazione :ref:`Joint<enum_XRBodyTracker_Joint>`.

.. rst-class:: classref-item-separator

----

.. _enum_XRBodyTracker_JointFlags:

.. rst-class:: classref-enumeration

flags **JointFlags**: :ref:`🔗<enum_XRBodyTracker_JointFlags>`

.. _class_XRBodyTracker_constant_JOINT_FLAG_ORIENTATION_VALID:

.. rst-class:: classref-enumeration-constant

:ref:`JointFlags<enum_XRBodyTracker_JointFlags>` **JOINT_FLAG_ORIENTATION_VALID** = ``1``

I dati sull'orientamento dell'articolazione sono validi.

.. _class_XRBodyTracker_constant_JOINT_FLAG_ORIENTATION_TRACKED:

.. rst-class:: classref-enumeration-constant

:ref:`JointFlags<enum_XRBodyTracker_JointFlags>` **JOINT_FLAG_ORIENTATION_TRACKED** = ``2``

L'orientamento dell'articolazione è attivamente tracciato. Potrebbe non essere impostato se il tracciamento è stato temporaneamente perso.

.. _class_XRBodyTracker_constant_JOINT_FLAG_POSITION_VALID:

.. rst-class:: classref-enumeration-constant

:ref:`JointFlags<enum_XRBodyTracker_JointFlags>` **JOINT_FLAG_POSITION_VALID** = ``4``

I dati sulla posizione dell'articolazione sono validi.

.. _class_XRBodyTracker_constant_JOINT_FLAG_POSITION_TRACKED:

.. rst-class:: classref-enumeration-constant

:ref:`JointFlags<enum_XRBodyTracker_JointFlags>` **JOINT_FLAG_POSITION_TRACKED** = ``8``

La posizione dell'articolazione è tracciata attivamente. Potrebbe non essere impostato se il tracciamento è stato perso temporaneamente.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_XRBodyTracker_property_body_flags:

.. rst-class:: classref-property

|bitfield|\[:ref:`BodyFlags<enum_XRBodyTracker_BodyFlags>`\] **body_flags** = ``0`` :ref:`🔗<class_XRBodyTracker_property_body_flags>`

.. rst-class:: classref-property-setget

- |void| **set_body_flags**\ (\ value\: |bitfield|\[:ref:`BodyFlags<enum_XRBodyTracker_BodyFlags>`\]\ )
- |bitfield|\[:ref:`BodyFlags<enum_XRBodyTracker_BodyFlags>`\] **get_body_flags**\ (\ )

Il tipo di dati di tracciamento del corpo acquisiti.

.. rst-class:: classref-item-separator

----

.. _class_XRBodyTracker_property_has_tracking_data:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **has_tracking_data** = ``false`` :ref:`🔗<class_XRBodyTracker_property_has_tracking_data>`

.. rst-class:: classref-property-setget

- |void| **set_has_tracking_data**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_has_tracking_data**\ (\ )

Se ``true``, i dati di tracciamento del corpo sono validi.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_XRBodyTracker_method_get_joint_flags:

.. rst-class:: classref-method

|bitfield|\[:ref:`JointFlags<enum_XRBodyTracker_JointFlags>`\] **get_joint_flags**\ (\ joint\: :ref:`Joint<enum_XRBodyTracker_Joint>`\ ) |const| :ref:`🔗<class_XRBodyTracker_method_get_joint_flags>`

Restituisce i flag sulla validità dei dati di tracciamento per l'articolazione del corpo fornita.

.. rst-class:: classref-item-separator

----

.. _class_XRBodyTracker_method_get_joint_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_joint_transform**\ (\ joint\: :ref:`Joint<enum_XRBodyTracker_Joint>`\ ) |const| :ref:`🔗<class_XRBodyTracker_method_get_joint_transform>`

Restituisce la trasformazione per l'articolazione del corpo fornita.

.. rst-class:: classref-item-separator

----

.. _class_XRBodyTracker_method_set_joint_flags:

.. rst-class:: classref-method

|void| **set_joint_flags**\ (\ joint\: :ref:`Joint<enum_XRBodyTracker_Joint>`, flags\: |bitfield|\[:ref:`JointFlags<enum_XRBodyTracker_JointFlags>`\]\ ) :ref:`🔗<class_XRBodyTracker_method_set_joint_flags>`

Imposta i flag sulla validità dei dati di tracciamento per l'articolazione del corpo fornita.

.. rst-class:: classref-item-separator

----

.. _class_XRBodyTracker_method_set_joint_transform:

.. rst-class:: classref-method

|void| **set_joint_transform**\ (\ joint\: :ref:`Joint<enum_XRBodyTracker_Joint>`, transform\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_XRBodyTracker_method_set_joint_transform>`

Imposta la trasformazione per l'articolazione del corpo fornita.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
