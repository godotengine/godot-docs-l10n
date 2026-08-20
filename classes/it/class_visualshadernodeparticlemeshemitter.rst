:github_url: hide

.. _class_VisualShaderNodeParticleMeshEmitter:

VisualShaderNodeParticleMeshEmitter
===================================

**Eredita:** :ref:`VisualShaderNodeParticleEmitter<class_VisualShaderNodeParticleEmitter>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un nodo di visual shader che rende le particelle emesse in una forma definita da un :ref:`Mesh<class_Mesh>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

:ref:`VisualShaderNodeParticleEmitter<class_VisualShaderNodeParticleEmitter>` che rende le particelle emesse in una forma della mesh assegnata. Emetterà dalle superfici della mesh, o tutte o solo quelle specificate.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`Mesh<class_Mesh>` | :ref:`mesh<class_VisualShaderNodeParticleMeshEmitter_property_mesh>`                         |          |
   +-------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`   | :ref:`surface_index<class_VisualShaderNodeParticleMeshEmitter_property_surface_index>`       | ``0``    |
   +-------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>` | :ref:`use_all_surfaces<class_VisualShaderNodeParticleMeshEmitter_property_use_all_surfaces>` | ``true`` |
   +-------------------------+----------------------------------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_VisualShaderNodeParticleMeshEmitter_property_mesh:

.. rst-class:: classref-property

:ref:`Mesh<class_Mesh>` **mesh** :ref:`🔗<class_VisualShaderNodeParticleMeshEmitter_property_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_mesh**\ (\ value\: :ref:`Mesh<class_Mesh>`\ )
- :ref:`Mesh<class_Mesh>` **get_mesh**\ (\ )

La :ref:`Mesh<class_Mesh>` che definisce la forma di emissione.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeParticleMeshEmitter_property_surface_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **surface_index** = ``0`` :ref:`🔗<class_VisualShaderNodeParticleMeshEmitter_property_surface_index>`

.. rst-class:: classref-property-setget

- |void| **set_surface_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_surface_index**\ (\ )

Indice della superficie che emette particelle. :ref:`use_all_surfaces<class_VisualShaderNodeParticleMeshEmitter_property_use_all_surfaces>` deve essere ``false`` perché questo abbia effetto.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeParticleMeshEmitter_property_use_all_surfaces:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_all_surfaces** = ``true`` :ref:`🔗<class_VisualShaderNodeParticleMeshEmitter_property_use_all_surfaces>`

.. rst-class:: classref-property-setget

- |void| **set_use_all_surfaces**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_use_all_surfaces**\ (\ )

Se ``true``, le particelle emettono da tutte le superfici della mesh.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
