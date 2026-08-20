:github_url: hide

.. _class_XRFaceModifier3D:

XRFaceModifier3D
================

**Sperimentale:** This class may be changed or removed in future versions.

**Eredita:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un nodo per guidare le mesh di volto standard dai pesi di un :ref:`XRFaceTracker<class_XRFaceTracker>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questo nodo applica i pesi da un :ref:`XRFaceTracker<class_XRFaceTracker>` a una mesh con forme di fusione dei volti supportati.

Sono supportate le forme di fusione `Unified Expressions <https://docs.vrcft.io/docs/tutorial-avatars/tutorial-avatars-extras/unified-blendshapes>`__, così come le forme di fusione ARKit e SRanipal.

Il nodo tenta di identificare le forme di fusione in base alla corrispondenza dei nomi. Le forme di fusione dovrebbero corrispondere ai nomi elencati nel grafico `Unified Expressions Compatibility <https://docs.vrcft.io/docs/tutorial-avatars/tutorial-avatars-extras/compatibility/overview>`__.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Indice della documentazione XR <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------------+-------------------------------------------------------------------+---------------------------+
   | :ref:`StringName<class_StringName>` | :ref:`face_tracker<class_XRFaceModifier3D_property_face_tracker>` | ``&"/user/face_tracker"`` |
   +-------------------------------------+-------------------------------------------------------------------+---------------------------+
   | :ref:`NodePath<class_NodePath>`     | :ref:`target<class_XRFaceModifier3D_property_target>`             | ``NodePath("")``          |
   +-------------------------------------+-------------------------------------------------------------------+---------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_XRFaceModifier3D_property_face_tracker:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **face_tracker** = ``&"/user/face_tracker"`` :ref:`🔗<class_XRFaceModifier3D_property_face_tracker>`

.. rst-class:: classref-property-setget

- |void| **set_face_tracker**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_face_tracker**\ (\ )

Il percorso verso il :ref:`XRFaceTracker<class_XRFaceTracker>`.

.. rst-class:: classref-item-separator

----

.. _class_XRFaceModifier3D_property_target:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **target** = ``NodePath("")`` :ref:`🔗<class_XRFaceModifier3D_property_target>`

.. rst-class:: classref-property-setget

- |void| **set_target**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_target**\ (\ )

Il :ref:`NodePath<class_NodePath>` verso la :ref:`MeshInstance3D<class_MeshInstance3D>` del volto.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
