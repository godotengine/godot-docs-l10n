:github_url: hide

.. _class_MeshInstance2D:

MeshInstance2D
==============

**Eredita:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un nodo utilizzato per visualizzare una :ref:`Mesh<class_Mesh>` in 2D.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Node used for displaying a :ref:`Mesh<class_Mesh>` in 2D. This can be faster to render compared to displaying a :ref:`Sprite2D<class_Sprite2D>` node with large transparent areas, especially if the node takes up a lot of space on screen at high viewport resolutions. This is because using a mesh designed to fit the sprite's opaque areas will reduce GPU fill rate utilization (at the cost of increased vertex processing utilization).

When a :ref:`Mesh<class_Mesh>` has to be instantiated more than thousands of times close to each other, consider using a :ref:`MultiMesh<class_MultiMesh>` in a :ref:`MultiMeshInstance2D<class_MultiMeshInstance2D>` instead.

A **MeshInstance2D** can be created from an existing :ref:`Sprite2D<class_Sprite2D>` via a tool in the editor toolbar. Select the :ref:`Sprite2D<class_Sprite2D>` node, then choose **Sprite2D > Convert to MeshInstance2D** at the top of the 2D editor viewport.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Mesh 2D <../tutorials/2d/2d_meshes>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------------+-------------------------------------------------------+
   | :ref:`Mesh<class_Mesh>`           | :ref:`mesh<class_MeshInstance2D_property_mesh>`       |
   +-----------------------------------+-------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`texture<class_MeshInstance2D_property_texture>` |
   +-----------------------------------+-------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_MeshInstance2D_signal_texture_changed:

.. rst-class:: classref-signal

**texture_changed**\ (\ ) :ref:`🔗<class_MeshInstance2D_signal_texture_changed>`

Emesso quando la :ref:`texture<class_MeshInstance2D_property_texture>` è cambiata.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_MeshInstance2D_property_mesh:

.. rst-class:: classref-property

:ref:`Mesh<class_Mesh>` **mesh** :ref:`🔗<class_MeshInstance2D_property_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_mesh**\ (\ value\: :ref:`Mesh<class_Mesh>`\ )
- :ref:`Mesh<class_Mesh>` **get_mesh**\ (\ )

La :ref:`Mesh<class_Mesh>` che sarà disegnata dalla **MeshInstance2D**.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance2D_property_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture** :ref:`🔗<class_MeshInstance2D_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ )

La :ref:`Texture2D<class_Texture2D>` che sarà utilizzata se si utilizza il :ref:`CanvasItemMaterial<class_CanvasItemMaterial>` predefinito. È possibile accedervi come ``TEXTURE`` nello shader di CanvasItem.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
