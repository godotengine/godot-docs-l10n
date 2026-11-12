:github_url: hide

.. _class_PhysicsCastMotionResult2D:

PhysicsCastMotionResult2D
=========================

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Stores the result of a shape motion cast query.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

This class contains the safe and unsafe fractions computed by :ref:`PhysicsDirectSpaceState2D.cast_motion_into()<class_PhysicsDirectSpaceState2D_method_cast_motion_into>`.

\ **Note:** For optimal performance results, it is recommended to create this object in advance, store it, and reuse it for every subsequent query.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`safe_fraction<class_PhysicsCastMotionResult2D_property_safe_fraction>`     | ``1.0`` |
   +---------------------------+----------------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`unsafe_fraction<class_PhysicsCastMotionResult2D_property_unsafe_fraction>` | ``1.0`` |
   +---------------------------+----------------------------------------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_PhysicsCastMotionResult2D_property_safe_fraction:

.. rst-class:: classref-property

:ref:`float<class_float>` **safe_fraction** = ``1.0`` :ref:`🔗<class_PhysicsCastMotionResult2D_property_safe_fraction>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_safe_fraction**\ (\ )

The maximum fraction of the motion that can be made without a collision.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsCastMotionResult2D_property_unsafe_fraction:

.. rst-class:: classref-property

:ref:`float<class_float>` **unsafe_fraction** = ``1.0`` :ref:`🔗<class_PhysicsCastMotionResult2D_property_unsafe_fraction>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_unsafe_fraction**\ (\ )

The minimum fraction of the distance that must be moved for a collision.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
