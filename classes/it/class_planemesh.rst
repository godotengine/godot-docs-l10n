:github_url: hide

.. _class_PlaneMesh:

PlaneMesh
=========

**Eredita:** :ref:`PrimitiveMesh<class_PrimitiveMesh>` **<** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`QuadMesh<class_QuadMesh>`

Classe che rappresenta una :ref:`PrimitiveMesh<class_PrimitiveMesh>` planare.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Classe che rappresenta una :ref:`PrimitiveMesh<class_PrimitiveMesh>` planare. Questa mesh piatta non ha spessore. Per impostazione predefinita, questa mesh è allineata sugli assi X e Z; questa rotazione predefinita non è adatta per l'uso con materiali con il billboard abilitato. Per tali materiali, cambia :ref:`orientation<class_PlaneMesh_property_orientation>` in :ref:`FACE_Z<class_PlaneMesh_constant_FACE_Z>`.

\ **Nota:** Utilizzando un enorme **PlaneMesh** texturizzata (ad esempio, come pavimento), potresti imbatterti in problemi di tremolii dell'UV a seconda dell'angolazione della telecamera. Per rimediare, aumenta :ref:`subdivide_depth<class_PlaneMesh_property_subdivide_depth>` e :ref:`subdivide_width<class_PlaneMesh_property_subdivide_width>` finché non noti più alcun tremolio dell'UV.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +------------------------------------------------+------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`                  | :ref:`center_offset<class_PlaneMesh_property_center_offset>`     | ``Vector3(0, 0, 0)`` |
   +------------------------------------------------+------------------------------------------------------------------+----------------------+
   | :ref:`Orientation<enum_PlaneMesh_Orientation>` | :ref:`orientation<class_PlaneMesh_property_orientation>`         | ``1``                |
   +------------------------------------------------+------------------------------------------------------------------+----------------------+
   | :ref:`Vector2<class_Vector2>`                  | :ref:`size<class_PlaneMesh_property_size>`                       | ``Vector2(2, 2)``    |
   +------------------------------------------------+------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                          | :ref:`subdivide_depth<class_PlaneMesh_property_subdivide_depth>` | ``0``                |
   +------------------------------------------------+------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                          | :ref:`subdivide_width<class_PlaneMesh_property_subdivide_width>` | ``0``                |
   +------------------------------------------------+------------------------------------------------------------------+----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_PlaneMesh_Orientation:

.. rst-class:: classref-enumeration

enum **Orientation**: :ref:`🔗<enum_PlaneMesh_Orientation>`

.. _class_PlaneMesh_constant_FACE_X:

.. rst-class:: classref-enumeration-constant

:ref:`Orientation<enum_PlaneMesh_Orientation>` **FACE_X** = ``0``

Il **PlaneMesh** sarà rivolto verso l'asse X positivo.

.. _class_PlaneMesh_constant_FACE_Y:

.. rst-class:: classref-enumeration-constant

:ref:`Orientation<enum_PlaneMesh_Orientation>` **FACE_Y** = ``1``

Il **PlaneMesh** sarà rivolto verso l'asse Y positivo. Ciò corrisponde al comportamento di un **PlaneMesh** in Godot 3.x.

.. _class_PlaneMesh_constant_FACE_Z:

.. rst-class:: classref-enumeration-constant

:ref:`Orientation<enum_PlaneMesh_Orientation>` **FACE_Z** = ``2``

Il **PlaneMesh** sarà rivolto verso l'asse Z positivo. Ciò corrisponde al comportamento di un QuadMesh in Godot 3.x.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_PlaneMesh_property_center_offset:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **center_offset** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_PlaneMesh_property_center_offset>`

.. rst-class:: classref-property-setget

- |void| **set_center_offset**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_center_offset**\ (\ )

Offset del piano generato. Utile per le particelle.

.. rst-class:: classref-item-separator

----

.. _class_PlaneMesh_property_orientation:

.. rst-class:: classref-property

:ref:`Orientation<enum_PlaneMesh_Orientation>` **orientation** = ``1`` :ref:`🔗<class_PlaneMesh_property_orientation>`

.. rst-class:: classref-property-setget

- |void| **set_orientation**\ (\ value\: :ref:`Orientation<enum_PlaneMesh_Orientation>`\ )
- :ref:`Orientation<enum_PlaneMesh_Orientation>` **get_orientation**\ (\ )

Direzione verso cui è rivolto il **PlaneMesh**.

.. rst-class:: classref-item-separator

----

.. _class_PlaneMesh_property_size:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **size** = ``Vector2(2, 2)`` :ref:`🔗<class_PlaneMesh_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_size**\ (\ )

Dimensioni del piano generato.

.. rst-class:: classref-item-separator

----

.. _class_PlaneMesh_property_subdivide_depth:

.. rst-class:: classref-property

:ref:`int<class_int>` **subdivide_depth** = ``0`` :ref:`🔗<class_PlaneMesh_property_subdivide_depth>`

.. rst-class:: classref-property-setget

- |void| **set_subdivide_depth**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_subdivide_depth**\ (\ )

Numero di suddivisioni lungo l'asse Z.

.. rst-class:: classref-item-separator

----

.. _class_PlaneMesh_property_subdivide_width:

.. rst-class:: classref-property

:ref:`int<class_int>` **subdivide_width** = ``0`` :ref:`🔗<class_PlaneMesh_property_subdivide_width>`

.. rst-class:: classref-property-setget

- |void| **set_subdivide_width**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_subdivide_width**\ (\ )

Numero di suddivisioni lungo l'asse X.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
