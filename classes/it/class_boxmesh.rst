:github_url: hide

.. _class_BoxMesh:

BoxMesh
=======

**Eredita:** :ref:`PrimitiveMesh<class_PrimitiveMesh>` **<** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Genera una :ref:`PrimitiveMesh<class_PrimitiveMesh>` di riquadro allineato agli assi.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Genera una :ref:`PrimitiveMesh<class_PrimitiveMesh>` di riquadro allineato agli assi.

Il layout UV del riquadro è organizzato in un layout 3×2 che consente di texturizzare ogni faccia singolarmente. Per applicare la stessa texture su tutte le facce, modifica la proprietà UV del materiale in ``Vector3(3, 2, 1)``. Ciò equivale ad aggiungere ``UV *= vec2(3.0, 2.0)`` in uno shader di vertici.

\ **Nota:** Utilizzando un enorme **BoxMesh** texturizzata (ad esempio, come pavimento), potresti imbatterti in problemi di tremolio dell'UV a seconda dell'angolazione della telecamera. Per rimediare, aumenta :ref:`subdivide_depth<class_BoxMesh_property_subdivide_depth>`, :ref:`subdivide_height<class_BoxMesh_property_subdivide_height>` e :ref:`subdivide_width<class_BoxMesh_property_subdivide_width>` finché non noti più alcun tremolio dell'UV.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------+------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`size<class_BoxMesh_property_size>`                         | ``Vector3(1, 1, 1)`` |
   +-------------------------------+------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`         | :ref:`subdivide_depth<class_BoxMesh_property_subdivide_depth>`   | ``0``                |
   +-------------------------------+------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`         | :ref:`subdivide_height<class_BoxMesh_property_subdivide_height>` | ``0``                |
   +-------------------------------+------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`         | :ref:`subdivide_width<class_BoxMesh_property_subdivide_width>`   | ``0``                |
   +-------------------------------+------------------------------------------------------------------+----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_BoxMesh_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(1, 1, 1)`` :ref:`🔗<class_BoxMesh_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_size**\ (\ )

La larghezza, l'altezza, e la profondità della scatola.

.. rst-class:: classref-item-separator

----

.. _class_BoxMesh_property_subdivide_depth:

.. rst-class:: classref-property

:ref:`int<class_int>` **subdivide_depth** = ``0`` :ref:`🔗<class_BoxMesh_property_subdivide_depth>`

.. rst-class:: classref-property-setget

- |void| **set_subdivide_depth**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_subdivide_depth**\ (\ )

Numero di anelli aggiuntivi sul bordo inseriti lungo l'asse Z.

.. rst-class:: classref-item-separator

----

.. _class_BoxMesh_property_subdivide_height:

.. rst-class:: classref-property

:ref:`int<class_int>` **subdivide_height** = ``0`` :ref:`🔗<class_BoxMesh_property_subdivide_height>`

.. rst-class:: classref-property-setget

- |void| **set_subdivide_height**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_subdivide_height**\ (\ )

Numero di anelli aggiuntivi sul bordo inseriti lungo l'asse Y.

.. rst-class:: classref-item-separator

----

.. _class_BoxMesh_property_subdivide_width:

.. rst-class:: classref-property

:ref:`int<class_int>` **subdivide_width** = ``0`` :ref:`🔗<class_BoxMesh_property_subdivide_width>`

.. rst-class:: classref-property-setget

- |void| **set_subdivide_width**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_subdivide_width**\ (\ )

Numero di anelli aggiuntivi sul bordo inseriti lungo l'asse X.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
