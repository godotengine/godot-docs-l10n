:github_url: hide

.. _class_PhysicsServer3DRenderingServerHandler:

PhysicsServer3DRenderingServerHandler
=====================================

**Eredita:** :ref:`Object<class_Object>`

Una classe utilizzata per fornire a :ref:`PhysicsServer3DExtension._soft_body_update_rendering_server()<class_PhysicsServer3DExtension_private_method__soft_body_update_rendering_server>` un gestore per renderizzare i corpi deformabile.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +--------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_set_aabb<class_PhysicsServer3DRenderingServerHandler_private_method__set_aabb>`\ (\ aabb\: :ref:`AABB<class_AABB>`\ ) |virtual| |required|                                                |
   +--------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_set_normal<class_PhysicsServer3DRenderingServerHandler_private_method__set_normal>`\ (\ vertex_id\: :ref:`int<class_int>`, normal\: :ref:`Vector3<class_Vector3>`\ ) |virtual| |required| |
   +--------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_set_vertex<class_PhysicsServer3DRenderingServerHandler_private_method__set_vertex>`\ (\ vertex_id\: :ref:`int<class_int>`, vertex\: :ref:`Vector3<class_Vector3>`\ ) |virtual| |required| |
   +--------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`set_aabb<class_PhysicsServer3DRenderingServerHandler_method_set_aabb>`\ (\ aabb\: :ref:`AABB<class_AABB>`\ )                                                                               |
   +--------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`set_normal<class_PhysicsServer3DRenderingServerHandler_method_set_normal>`\ (\ vertex_id\: :ref:`int<class_int>`, normal\: :ref:`Vector3<class_Vector3>`\ )                                |
   +--------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`set_vertex<class_PhysicsServer3DRenderingServerHandler_method_set_vertex>`\ (\ vertex_id\: :ref:`int<class_int>`, vertex\: :ref:`Vector3<class_Vector3>`\ )                                |
   +--------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_PhysicsServer3DRenderingServerHandler_private_method__set_aabb:

.. rst-class:: classref-method

|void| **_set_aabb**\ (\ aabb\: :ref:`AABB<class_AABB>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsServer3DRenderingServerHandler_private_method__set_aabb>`

Chiamato dal :ref:`PhysicsServer3D<class_PhysicsServer3D>` per impostare il riquadro di delimitazione per il :ref:`SoftBody3D<class_SoftBody3D>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsServer3DRenderingServerHandler_private_method__set_normal:

.. rst-class:: classref-method

|void| **_set_normal**\ (\ vertex_id\: :ref:`int<class_int>`, normal\: :ref:`Vector3<class_Vector3>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsServer3DRenderingServerHandler_private_method__set_normal>`

Chiamato da :ref:`PhysicsServer3D<class_PhysicsServer3D>` per impostare la normale per il vertice del :ref:`SoftBody3D<class_SoftBody3D>` all'indice specificato da ``vertex_id``.

\ **Nota:** il parametro ``normal`` era di tipo ``const void*`` prima di Godot 4.2.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsServer3DRenderingServerHandler_private_method__set_vertex:

.. rst-class:: classref-method

|void| **_set_vertex**\ (\ vertex_id\: :ref:`int<class_int>`, vertex\: :ref:`Vector3<class_Vector3>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsServer3DRenderingServerHandler_private_method__set_vertex>`

Chiamato da :ref:`PhysicsServer3D<class_PhysicsServer3D>` per impostare la posizione per il vertice del :ref:`SoftBody3D<class_SoftBody3D>` all'indice specificato da ``vertex_id``.

\ **Nota:** il parametro ``vertex`` era di tipo ``const void*`` prima di Godot 4.2.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsServer3DRenderingServerHandler_method_set_aabb:

.. rst-class:: classref-method

|void| **set_aabb**\ (\ aabb\: :ref:`AABB<class_AABB>`\ ) :ref:`🔗<class_PhysicsServer3DRenderingServerHandler_method_set_aabb>`

Imposta il riquadro di delimitazione per il :ref:`SoftBody3D<class_SoftBody3D>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsServer3DRenderingServerHandler_method_set_normal:

.. rst-class:: classref-method

|void| **set_normal**\ (\ vertex_id\: :ref:`int<class_int>`, normal\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_PhysicsServer3DRenderingServerHandler_method_set_normal>`

Imposta la normale per il vertice del :ref:`SoftBody3D<class_SoftBody3D>` all'indice specificato da ``vertex_id``.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsServer3DRenderingServerHandler_method_set_vertex:

.. rst-class:: classref-method

|void| **set_vertex**\ (\ vertex_id\: :ref:`int<class_int>`, vertex\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_PhysicsServer3DRenderingServerHandler_method_set_vertex>`

Imposta la posizione per il vertice del :ref:`SoftBody3D<class_SoftBody3D>` all'indice specificato da ``vertex_id``.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
