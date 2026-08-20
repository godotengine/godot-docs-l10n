:github_url: hide

.. _class_PinJoint3D:

PinJoint3D
==========

**Eredita:** :ref:`Joint3D<class_Joint3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un giunto fisico che collega due corpi fisici 3D in un unico punto, consentendo loro di ruotare liberamente.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un giunto fisico che collega due corpi fisici 3D in un unico punto, consentendo loro di ruotare liberamente. Ad esempio, un :ref:`RigidBody3D<class_RigidBody3D>` può essere collegato a uno :ref:`StaticBody3D<class_StaticBody3D>` per creare un pendolo o un'altalena.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`params/bias<class_PinJoint3D_property_params/bias>`                   | ``0.3`` |
   +---------------------------+-----------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`params/damping<class_PinJoint3D_property_params/damping>`             | ``1.0`` |
   +---------------------------+-----------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`params/impulse_clamp<class_PinJoint3D_property_params/impulse_clamp>` | ``0.0`` |
   +---------------------------+-----------------------------------------------------------------------------+---------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_param<class_PinJoint3D_method_get_param>`\ (\ param\: :ref:`Param<enum_PinJoint3D_Param>`\ ) |const|                            |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_param<class_PinJoint3D_method_set_param>`\ (\ param\: :ref:`Param<enum_PinJoint3D_Param>`, value\: :ref:`float<class_float>`\ ) |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_PinJoint3D_Param:

.. rst-class:: classref-enumeration

enum **Param**: :ref:`🔗<enum_PinJoint3D_Param>`

.. _class_PinJoint3D_constant_PARAM_BIAS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_PinJoint3D_Param>` **PARAM_BIAS** = ``0``

La forza con cui gli oggetti fissati rimangono in relazione posizionale tra loro. Più è alta, più è forte.

.. _class_PinJoint3D_constant_PARAM_DAMPING:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_PinJoint3D_Param>` **PARAM_DAMPING** = ``1``

La forza con cui gli oggetti fissati rimangono in relazione di velocità tra loro. Più è alta, più è forte.

.. _class_PinJoint3D_constant_PARAM_IMPULSE_CLAMP:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_PinJoint3D_Param>` **PARAM_IMPULSE_CLAMP** = ``2``

Se superiore a 0, questo valore è il valore massimo per un impulso prodotto da questo Joint3D.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_PinJoint3D_property_params/bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **params/bias** = ``0.3`` :ref:`🔗<class_PinJoint3D_property_params/bias>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_PinJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_PinJoint3D_Param>`\ ) |const|

La forza con cui gli oggetti fissati rimangono in relazione posizionale tra loro. Più è alta, più è forte.

.. rst-class:: classref-item-separator

----

.. _class_PinJoint3D_property_params/damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **params/damping** = ``1.0`` :ref:`🔗<class_PinJoint3D_property_params/damping>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_PinJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_PinJoint3D_Param>`\ ) |const|

La forza con cui gli oggetti fissati rimangono in relazione di velocità tra loro. Più è alta, più è forte.

.. rst-class:: classref-item-separator

----

.. _class_PinJoint3D_property_params/impulse_clamp:

.. rst-class:: classref-property

:ref:`float<class_float>` **params/impulse_clamp** = ``0.0`` :ref:`🔗<class_PinJoint3D_property_params/impulse_clamp>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_PinJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_PinJoint3D_Param>`\ ) |const|

Se superiore a 0, questo valore è il valore massimo per un impulso prodotto da questo Joint3D.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_PinJoint3D_method_get_param:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_PinJoint3D_Param>`\ ) |const| :ref:`🔗<class_PinJoint3D_method_get_param>`

Restituisce il valore del parametro specificato.

.. rst-class:: classref-item-separator

----

.. _class_PinJoint3D_method_set_param:

.. rst-class:: classref-method

|void| **set_param**\ (\ param\: :ref:`Param<enum_PinJoint3D_Param>`, value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_PinJoint3D_method_set_param>`

Imposta il valore del parametro specificato.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
