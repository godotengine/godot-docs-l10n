:github_url: hide

.. _class_VisualShaderNodeParticleAccelerator:

VisualShaderNodeParticleAccelerator
===================================

**Eredita:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un nodo di visual shader che accelera le particelle.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

L'acceleratore di particelle può essere utilizzato nella fase di "processo" dello shader di particelle. Accelererà le particelle. Collegalo alla porta in uscita Velocity.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +------------------------------------------------------------+----------------------------------------------------------------------+-------+
   | :ref:`Mode<enum_VisualShaderNodeParticleAccelerator_Mode>` | :ref:`mode<class_VisualShaderNodeParticleAccelerator_property_mode>` | ``0`` |
   +------------------------------------------------------------+----------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_VisualShaderNodeParticleAccelerator_Mode:

.. rst-class:: classref-enumeration

enum **Mode**: :ref:`🔗<enum_VisualShaderNodeParticleAccelerator_Mode>`

.. _class_VisualShaderNodeParticleAccelerator_constant_MODE_LINEAR:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_VisualShaderNodeParticleAccelerator_Mode>` **MODE_LINEAR** = ``0``

Le particelle saranno accelerate in base alla loro velocità.

.. _class_VisualShaderNodeParticleAccelerator_constant_MODE_RADIAL:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_VisualShaderNodeParticleAccelerator_Mode>` **MODE_RADIAL** = ``1``

Le particelle saranno accelerate verso o lontano dal centro.

.. _class_VisualShaderNodeParticleAccelerator_constant_MODE_TANGENTIAL:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_VisualShaderNodeParticleAccelerator_Mode>` **MODE_TANGENTIAL** = ``2``

Le particelle saranno accelerate tangenzialmente al vettore di raggio dal centro alla loro posizione.

.. _class_VisualShaderNodeParticleAccelerator_constant_MODE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_VisualShaderNodeParticleAccelerator_Mode>` **MODE_MAX** = ``3``

Rappresenta la dimensione dell'enumerazione :ref:`Mode<enum_VisualShaderNodeParticleAccelerator_Mode>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_VisualShaderNodeParticleAccelerator_property_mode:

.. rst-class:: classref-property

:ref:`Mode<enum_VisualShaderNodeParticleAccelerator_Mode>` **mode** = ``0`` :ref:`🔗<class_VisualShaderNodeParticleAccelerator_property_mode>`

.. rst-class:: classref-property-setget

- |void| **set_mode**\ (\ value\: :ref:`Mode<enum_VisualShaderNodeParticleAccelerator_Mode>`\ )
- :ref:`Mode<enum_VisualShaderNodeParticleAccelerator_Mode>` **get_mode**\ (\ )

Definisce in che modo le particelle saranno accelerate.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
