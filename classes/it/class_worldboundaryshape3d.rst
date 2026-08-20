:github_url: hide

.. _class_WorldBoundaryShape3D:

WorldBoundaryShape3D
====================

**Eredita:** :ref:`Shape3D<class_Shape3D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una forma di confine del mondo 3D (mezzo spazio) utilizzata per la collisione fisica.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Una forma di confine 3D del mondo, pensata per l'uso in fisica. **WorldBoundaryShape3D** funziona come una linea retta infinita che costringe tutti i corpi fisici a rimanere sopra di essa. La normale del :ref:`plane<class_WorldBoundaryShape3D_property_plane>` determina quale direzione è considerata "sopra" e nell'editor, la linea sopra il piano rappresenta questa direzione. Può essere utilizzata, ad esempio, per pavimenti piatti infiniti.

\ **Nota:** quando il motore fisico è impostato su **Jolt Physics** nelle impostazioni del progetto (:ref:`ProjectSettings.physics/3d/physics_engine<class_ProjectSettings_property_physics/3d/physics_engine>`), **WorldBoundaryShape3D** ha una dimensione finita (centrata sull'origine della forma). Può essere regolata modificando :ref:`ProjectSettings.physics/jolt_physics_3d/limits/world_boundary_shape_size<class_ProjectSettings_property_physics/jolt_physics_3d/limits/world_boundary_shape_size>`.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------+-----------------------+
   | :ref:`Plane<class_Plane>` | :ref:`plane<class_WorldBoundaryShape3D_property_plane>` | ``Plane(0, 1, 0, 0)`` |
   +---------------------------+---------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_WorldBoundaryShape3D_property_plane:

.. rst-class:: classref-property

:ref:`Plane<class_Plane>` **plane** = ``Plane(0, 1, 0, 0)`` :ref:`🔗<class_WorldBoundaryShape3D_property_plane>`

.. rst-class:: classref-property-setget

- |void| **set_plane**\ (\ value\: :ref:`Plane<class_Plane>`\ )
- :ref:`Plane<class_Plane>` **get_plane**\ (\ )

Il :ref:`Plane<class_Plane>` usato dal **WorldBoundaryShape3D** per la collisione.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
