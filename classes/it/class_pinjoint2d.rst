:github_url: hide

.. _class_PinJoint2D:

PinJoint2D
==========

**Eredita:** :ref:`Joint2D<class_Joint2D>` **<** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un giunto fisico che collega due corpi fisici 2D in un unico punto, consentendo loro di ruotare liberamente.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un giunto fisico che collega due corpi fisici 2D in un unico punto, consentendo loro di ruotare liberamente. Ad esempio, un :ref:`RigidBody2D<class_RigidBody2D>` può essere collegato a uno :ref:`StaticBody2D<class_StaticBody2D>` per creare un pendolo o un'altalena.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`angular_limit_enabled<class_PinJoint2D_property_angular_limit_enabled>` | ``false`` |
   +---------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`angular_limit_lower<class_PinJoint2D_property_angular_limit_lower>`     | ``0.0``   |
   +---------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`angular_limit_upper<class_PinJoint2D_property_angular_limit_upper>`     | ``0.0``   |
   +---------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`motor_enabled<class_PinJoint2D_property_motor_enabled>`                 | ``false`` |
   +---------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`motor_target_velocity<class_PinJoint2D_property_motor_target_velocity>` | ``0.0``   |
   +---------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`softness<class_PinJoint2D_property_softness>`                           | ``0.0``   |
   +---------------------------+-------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_PinJoint2D_property_angular_limit_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **angular_limit_enabled** = ``false`` :ref:`🔗<class_PinJoint2D_property_angular_limit_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_angular_limit_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_angular_limit_enabled**\ (\ )

Se ``true``, sono applicate la rotazione massima e minima del perno, definite da :ref:`angular_limit_lower<class_PinJoint2D_property_angular_limit_lower>` e :ref:`angular_limit_upper<class_PinJoint2D_property_angular_limit_upper>`.

.. rst-class:: classref-item-separator

----

.. _class_PinJoint2D_property_angular_limit_lower:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_lower** = ``0.0`` :ref:`🔗<class_PinJoint2D_property_angular_limit_lower>`

.. rst-class:: classref-property-setget

- |void| **set_angular_limit_lower**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_angular_limit_lower**\ (\ )

La rotazione minima. Attiva solo se :ref:`angular_limit_enabled<class_PinJoint2D_property_angular_limit_enabled>` è ``true``.

.. rst-class:: classref-item-separator

----

.. _class_PinJoint2D_property_angular_limit_upper:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_upper** = ``0.0`` :ref:`🔗<class_PinJoint2D_property_angular_limit_upper>`

.. rst-class:: classref-property-setget

- |void| **set_angular_limit_upper**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_angular_limit_upper**\ (\ )

La rotazione massima. Attiva solo se :ref:`angular_limit_enabled<class_PinJoint2D_property_angular_limit_enabled>` è ``true``.

.. rst-class:: classref-item-separator

----

.. _class_PinJoint2D_property_motor_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **motor_enabled** = ``false`` :ref:`🔗<class_PinJoint2D_property_motor_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_motor_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_motor_enabled**\ (\ )

Quando è attivato, un motore fa girare il perno.

.. rst-class:: classref-item-separator

----

.. _class_PinJoint2D_property_motor_target_velocity:

.. rst-class:: classref-property

:ref:`float<class_float>` **motor_target_velocity** = ``0.0`` :ref:`🔗<class_PinJoint2D_property_motor_target_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_motor_target_velocity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_motor_target_velocity**\ (\ )

Velocità di destinazione per il motore. In radianti al secondo.

.. rst-class:: classref-item-separator

----

.. _class_PinJoint2D_property_softness:

.. rst-class:: classref-property

:ref:`float<class_float>` **softness** = ``0.0`` :ref:`🔗<class_PinJoint2D_property_softness>`

.. rst-class:: classref-property-setget

- |void| **set_softness**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_softness**\ (\ )

Più alto è questo valore, maggiore sarà la flessibilità del legame con l'altro corpo fissato.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
