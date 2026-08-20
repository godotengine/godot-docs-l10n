:github_url: hide

.. _class_World2D:

World2D
=======

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una risorsa che contiene tutti i componenti di un mondo 2D, come un canvas e uno spazio di fisica.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Classe che ha tutto ciò che riguarda un mondo 2D: Uno spazio di fisica, un canvasa e uno spazio sonoro. I nodi 2D registrano le loro risorse nel mondo 2D attuale.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Proiettare raggi <../tutorials/physics/ray-casting>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------+----------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                             | :ref:`canvas<class_World2D_property_canvas>`                         |
   +-------------------------------------------------------------------+----------------------------------------------------------------------+
   | :ref:`PhysicsDirectSpaceState2D<class_PhysicsDirectSpaceState2D>` | :ref:`direct_space_state<class_World2D_property_direct_space_state>` |
   +-------------------------------------------------------------------+----------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                             | :ref:`navigation_map<class_World2D_property_navigation_map>`         |
   +-------------------------------------------------------------------+----------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                             | :ref:`space<class_World2D_property_space>`                           |
   +-------------------------------------------------------------------+----------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_World2D_property_canvas:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **canvas** :ref:`🔗<class_World2D_property_canvas>`

.. rst-class:: classref-property-setget

- :ref:`RID<class_RID>` **get_canvas**\ (\ )

Il :ref:`RID<class_RID>` della risorsa di canvas di questo mondo. Usato dal :ref:`RenderingServer<class_RenderingServer>` per disegno 2D.

.. rst-class:: classref-item-separator

----

.. _class_World2D_property_direct_space_state:

.. rst-class:: classref-property

:ref:`PhysicsDirectSpaceState2D<class_PhysicsDirectSpaceState2D>` **direct_space_state** :ref:`🔗<class_World2D_property_direct_space_state>`

.. rst-class:: classref-property-setget

- :ref:`PhysicsDirectSpaceState2D<class_PhysicsDirectSpaceState2D>` **get_direct_space_state**\ (\ )

Accesso diretto allo stato dello spazio di fisica 2D del mondo. Utilizzato per richiedere le collisioni attuali ed eventuali. Quando si utilizza la fisica multi-thread, l'accesso è limitato a :ref:`Node._physics_process()<class_Node_private_method__physics_process>` nel thread principale.

.. rst-class:: classref-item-separator

----

.. _class_World2D_property_navigation_map:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **navigation_map** :ref:`🔗<class_World2D_property_navigation_map>`

.. rst-class:: classref-property-setget

- :ref:`RID<class_RID>` **get_navigation_map**\ (\ )

Il :ref:`RID<class_RID>` della mappa di navigazione di questo mondo. Usato dal :ref:`NavigationServer2D<class_NavigationServer2D>`.

.. rst-class:: classref-item-separator

----

.. _class_World2D_property_space:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **space** :ref:`🔗<class_World2D_property_space>`

.. rst-class:: classref-property-setget

- :ref:`RID<class_RID>` **get_space**\ (\ )

Il :ref:`RID<class_RID>` dello spazio di fisica di questo mondo. Usato da :ref:`PhysicsServer2D<class_PhysicsServer2D>` per la fisica 2D, trattandolo sia come uno spazio sia come un'area.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
