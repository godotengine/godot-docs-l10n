:github_url: hide

.. _class_CSGTorus3D:

CSGTorus3D
==========

**Eredita:** :ref:`CSGPrimitive3D<class_CSGPrimitive3D>` **<** :ref:`CSGShape3D<class_CSGShape3D>` **<** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Una forma di toro CSG.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questo nodo consente di creare un toro da utilizzare con il sistema CSG.

\ **Nota:** I nodi CSG sono progettati per la prototipazione di livelli. La creazione di nodi CSG ha un costo notevole sulla CPU rispetto alla creazione di un :ref:`MeshInstance3D<class_MeshInstance3D>` con un :ref:`PrimitiveMesh<class_PrimitiveMesh>`. Anche spostare un nodo CSG all'interno di un altro nodo CSG ha un costo notevole sulla CPU, quindi dovrebbe essere evitato durante il gioco.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Prototipazione dei livelli con CSG <../tutorials/3d/csg_tools>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------------+-------------------------------------------------------------+----------+
   | :ref:`float<class_float>`       | :ref:`inner_radius<class_CSGTorus3D_property_inner_radius>` | ``0.5``  |
   +---------------------------------+-------------------------------------------------------------+----------+
   | :ref:`Material<class_Material>` | :ref:`material<class_CSGTorus3D_property_material>`         |          |
   +---------------------------------+-------------------------------------------------------------+----------+
   | :ref:`float<class_float>`       | :ref:`outer_radius<class_CSGTorus3D_property_outer_radius>` | ``1.0``  |
   +---------------------------------+-------------------------------------------------------------+----------+
   | :ref:`int<class_int>`           | :ref:`ring_sides<class_CSGTorus3D_property_ring_sides>`     | ``6``    |
   +---------------------------------+-------------------------------------------------------------+----------+
   | :ref:`int<class_int>`           | :ref:`sides<class_CSGTorus3D_property_sides>`               | ``8``    |
   +---------------------------------+-------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`         | :ref:`smooth_faces<class_CSGTorus3D_property_smooth_faces>` | ``true`` |
   +---------------------------------+-------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_CSGTorus3D_property_inner_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **inner_radius** = ``0.5`` :ref:`🔗<class_CSGTorus3D_property_inner_radius>`

.. rst-class:: classref-property-setget

- |void| **set_inner_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_inner_radius**\ (\ )

Il raggio interno del toro.

.. rst-class:: classref-item-separator

----

.. _class_CSGTorus3D_property_material:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **material** :ref:`🔗<class_CSGTorus3D_property_material>`

.. rst-class:: classref-property-setget

- |void| **set_material**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_material**\ (\ )

Il materiale utilizzato per renderizzare il toro.

.. rst-class:: classref-item-separator

----

.. _class_CSGTorus3D_property_outer_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **outer_radius** = ``1.0`` :ref:`🔗<class_CSGTorus3D_property_outer_radius>`

.. rst-class:: classref-property-setget

- |void| **set_outer_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_outer_radius**\ (\ )

Il raggio esterno del toro.

.. rst-class:: classref-item-separator

----

.. _class_CSGTorus3D_property_ring_sides:

.. rst-class:: classref-property

:ref:`int<class_int>` **ring_sides** = ``6`` :ref:`🔗<class_CSGTorus3D_property_ring_sides>`

.. rst-class:: classref-property-setget

- |void| **set_ring_sides**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_ring_sides**\ (\ )

Il numero di spigoli di cui è costituito ciascun anello del toro.

.. rst-class:: classref-item-separator

----

.. _class_CSGTorus3D_property_sides:

.. rst-class:: classref-property

:ref:`int<class_int>` **sides** = ``8`` :ref:`🔗<class_CSGTorus3D_property_sides>`

.. rst-class:: classref-property-setget

- |void| **set_sides**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_sides**\ (\ )

Il numero di sezioni di cui è costituito il toro.

.. rst-class:: classref-item-separator

----

.. _class_CSGTorus3D_property_smooth_faces:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **smooth_faces** = ``true`` :ref:`🔗<class_CSGTorus3D_property_smooth_faces>`

.. rst-class:: classref-property-setget

- |void| **set_smooth_faces**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_smooth_faces**\ (\ )

Se ``true`` le normali del toro sono impostate per dare un effetto liscio che fa sembrare il toro arrotondato. Se ``false`` il toro avrà un aspetto piatto.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
