:github_url: hide

.. meta::
	:keywords: batch

.. _class_MultiMeshInstance2D:

MultiMeshInstance2D
===================

**Eredita:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Nodo che istanzia un :ref:`MultiMesh<class_MultiMesh>` in 2D.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

**MultiMeshInstance2D** is a specialized node to instance a :ref:`MultiMesh<class_MultiMesh>` resource in 2D. This can be faster to render compared to displaying many :ref:`Sprite2D<class_Sprite2D>` nodes with large transparent areas, especially if the nodes take up a lot of space on screen at high viewport resolutions. This is because using a mesh designed to fit the sprites' opaque areas will reduce GPU fill rate utilization (at the cost of increased vertex processing utilization).

Usage is the same as :ref:`MultiMeshInstance3D<class_MultiMeshInstance3D>`.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------------+----------------------------------------------------------------+
   | :ref:`MultiMesh<class_MultiMesh>` | :ref:`multimesh<class_MultiMeshInstance2D_property_multimesh>` |
   +-----------------------------------+----------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`texture<class_MultiMeshInstance2D_property_texture>`     |
   +-----------------------------------+----------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_MultiMeshInstance2D_signal_texture_changed:

.. rst-class:: classref-signal

**texture_changed**\ (\ ) :ref:`🔗<class_MultiMeshInstance2D_signal_texture_changed>`

Emesso quando la :ref:`texture<class_MultiMeshInstance2D_property_texture>` è cambiata.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_MultiMeshInstance2D_property_multimesh:

.. rst-class:: classref-property

:ref:`MultiMesh<class_MultiMesh>` **multimesh** :ref:`🔗<class_MultiMeshInstance2D_property_multimesh>`

.. rst-class:: classref-property-setget

- |void| **set_multimesh**\ (\ value\: :ref:`MultiMesh<class_MultiMesh>`\ )
- :ref:`MultiMesh<class_MultiMesh>` **get_multimesh**\ (\ )

Il :ref:`MultiMesh<class_MultiMesh>` che sarà disegnato dal **MultiMeshInstance2D**.

.. rst-class:: classref-item-separator

----

.. _class_MultiMeshInstance2D_property_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture** :ref:`🔗<class_MultiMeshInstance2D_property_texture>`

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
