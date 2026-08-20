:github_url: hide

.. _class_World3D:

World3D
=======

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una risorsa che contiene tutti i componenti di un mondo 3D, come uno scenario visivo e uno spazio di fisica.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Classe che ha tutto ciò che riguarda un mondo: Uno spazio di fisica, uno scenario visivo e uno spazio sonoro. I nodi 3D registrano le loro risorse nel mondo 3D attuale.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Proiettare raggi <../tutorials/physics/ray-casting>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------+--------------------------------------------------------------------------+
   | :ref:`CameraAttributes<class_CameraAttributes>`                   | :ref:`camera_attributes<class_World3D_property_camera_attributes>`       |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------+
   | :ref:`PhysicsDirectSpaceState3D<class_PhysicsDirectSpaceState3D>` | :ref:`direct_space_state<class_World3D_property_direct_space_state>`     |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------+
   | :ref:`Environment<class_Environment>`                             | :ref:`environment<class_World3D_property_environment>`                   |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------+
   | :ref:`Environment<class_Environment>`                             | :ref:`fallback_environment<class_World3D_property_fallback_environment>` |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                             | :ref:`navigation_map<class_World3D_property_navigation_map>`             |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                             | :ref:`scenario<class_World3D_property_scenario>`                         |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                             | :ref:`space<class_World3D_property_space>`                               |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_World3D_property_camera_attributes:

.. rst-class:: classref-property

:ref:`CameraAttributes<class_CameraAttributes>` **camera_attributes** :ref:`🔗<class_World3D_property_camera_attributes>`

.. rst-class:: classref-property-setget

- |void| **set_camera_attributes**\ (\ value\: :ref:`CameraAttributes<class_CameraAttributes>`\ )
- :ref:`CameraAttributes<class_CameraAttributes>` **get_camera_attributes**\ (\ )

La risorsa :ref:`CameraAttributes<class_CameraAttributes>` predefinita da utilizzare se non impostata sul :ref:`Camera3D<class_Camera3D>`.

.. rst-class:: classref-item-separator

----

.. _class_World3D_property_direct_space_state:

.. rst-class:: classref-property

:ref:`PhysicsDirectSpaceState3D<class_PhysicsDirectSpaceState3D>` **direct_space_state** :ref:`🔗<class_World3D_property_direct_space_state>`

.. rst-class:: classref-property-setget

- :ref:`PhysicsDirectSpaceState3D<class_PhysicsDirectSpaceState3D>` **get_direct_space_state**\ (\ )

Accesso diretto allo stato dello spazio di fisica 3D del mondo. Utilizzato per richiedere le collisioni attuali ed eventuali. Quando si utilizza la fisica multi-thread, l'accesso è limitato a :ref:`Node._physics_process()<class_Node_private_method__physics_process>` nel thread principale.

.. rst-class:: classref-item-separator

----

.. _class_World3D_property_environment:

.. rst-class:: classref-property

:ref:`Environment<class_Environment>` **environment** :ref:`🔗<class_World3D_property_environment>`

.. rst-class:: classref-property-setget

- |void| **set_environment**\ (\ value\: :ref:`Environment<class_Environment>`\ )
- :ref:`Environment<class_Environment>` **get_environment**\ (\ )

La risorsa :ref:`Environment<class_Environment>` del World3D.

.. rst-class:: classref-item-separator

----

.. _class_World3D_property_fallback_environment:

.. rst-class:: classref-property

:ref:`Environment<class_Environment>` **fallback_environment** :ref:`🔗<class_World3D_property_fallback_environment>`

.. rst-class:: classref-property-setget

- |void| **set_fallback_environment**\ (\ value\: :ref:`Environment<class_Environment>`\ )
- :ref:`Environment<class_Environment>` **get_fallback_environment**\ (\ )

L'ambiente di riserva del World3D sarà utilizzato se :ref:`environment<class_World3D_property_environment>` non è valido o manca.

.. rst-class:: classref-item-separator

----

.. _class_World3D_property_navigation_map:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **navigation_map** :ref:`🔗<class_World3D_property_navigation_map>`

.. rst-class:: classref-property-setget

- :ref:`RID<class_RID>` **get_navigation_map**\ (\ )

Il :ref:`RID<class_RID>` della mappa di navigazione di questo mondo. Usato dal :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. rst-class:: classref-item-separator

----

.. _class_World3D_property_scenario:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **scenario** :ref:`🔗<class_World3D_property_scenario>`

.. rst-class:: classref-property-setget

- :ref:`RID<class_RID>` **get_scenario**\ (\ )

Lo scenario visivo del World3D.

.. rst-class:: classref-item-separator

----

.. _class_World3D_property_space:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **space** :ref:`🔗<class_World3D_property_space>`

.. rst-class:: classref-property-setget

- :ref:`RID<class_RID>` **get_space**\ (\ )

Lo spazio di fisica del World3D.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
