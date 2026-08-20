:github_url: hide

.. _class_VisualShaderNodeParticleMultiplyByAxisAngle:

VisualShaderNodeParticleMultiplyByAxisAngle
===========================================

**Eredita:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un nodo di visual shader di aiuto per moltiplicare la posizione e la rotazione delle particelle.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questo nodo aiuta a moltiplicare un vettore di posizione in ingresso mediante una rotazione utilizzando un asse specifico. Destinato a funzionare con gli emettitori.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>` | :ref:`degrees_mode<class_VisualShaderNodeParticleMultiplyByAxisAngle_property_degrees_mode>` | ``true`` |
   +-------------------------+----------------------------------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_VisualShaderNodeParticleMultiplyByAxisAngle_property_degrees_mode:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **degrees_mode** = ``true`` :ref:`🔗<class_VisualShaderNodeParticleMultiplyByAxisAngle_property_degrees_mode>`

.. rst-class:: classref-property-setget

- |void| **set_degrees_mode**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_degrees_mode**\ (\ )

Se ``true``, l'angolo sarà interpretato in gradi invece di radianti.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
