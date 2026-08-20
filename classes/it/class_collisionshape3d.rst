:github_url: hide

.. _class_CollisionShape3D:

CollisionShape3D
================

**Eredita:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un nodo che fornisce una :ref:`Shape3D<class_Shape3D>` a un :ref:`CollisionObject3D<class_CollisionObject3D>` genitore.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un nodo che fornisce una :ref:`Shape3D<class_Shape3D>` a un :ref:`CollisionObject3D<class_CollisionObject3D>` genitore e consente di modificarla. Ciò può dare una forma di rilevamento a un':ref:`Area3D<class_Area3D>` o trasformare un :ref:`PhysicsBody3D<class_PhysicsBody3D>` in un oggetto solido.

\ **Attenzione:** Un **CollisionShape3D** ridimensionato in modo non uniforme probabilmente non si comporterà come previsto. Assicurati di mantenere la sua scala uguale su tutti gli assi e regola invece la sua risorsa :ref:`shape<class_CollisionShape3D_property_shape>`.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Introduzione alla fisica <../tutorials/physics/physics_introduction>`

- `Demo di personaggio cinematico 3D <https://godotengine.org/asset-library/asset/2739>`__

- `Demo di gioco piattaforme 3D <https://godotengine.org/asset-library/asset/2748>`__

- `Demo di sparatutto in terza persona (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`     | :ref:`debug_color<class_CollisionShape3D_property_debug_color>` | ``Color(0, 0, 0, 0)`` |
   +-------------------------------+-----------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`       | :ref:`debug_fill<class_CollisionShape3D_property_debug_fill>`   | ``true``              |
   +-------------------------------+-----------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`       | :ref:`disabled<class_CollisionShape3D_property_disabled>`       | ``false``             |
   +-------------------------------+-----------------------------------------------------------------+-----------------------+
   | :ref:`Shape3D<class_Shape3D>` | :ref:`shape<class_CollisionShape3D_property_shape>`             |                       |
   +-------------------------------+-----------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +--------+---------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`make_convex_from_siblings<class_CollisionShape3D_method_make_convex_from_siblings>`\ (\ )                           |
   +--------+---------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`resource_changed<class_CollisionShape3D_method_resource_changed>`\ (\ resource\: :ref:`Resource<class_Resource>`\ ) |
   +--------+---------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_CollisionShape3D_property_debug_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **debug_color** = ``Color(0, 0, 0, 0)`` :ref:`🔗<class_CollisionShape3D_property_debug_color>`

.. rst-class:: classref-property-setget

- |void| **set_debug_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_debug_color**\ (\ )

Il colore di debug della forma di collisione che è visualizzato nell'editor, o nel progetto in esecuzione se **Debug > Forme di collisione visibili**.

\ **Nota:** Il valore predefinito è :ref:`ProjectSettings.debug/shapes/collision/shape_color<class_ProjectSettings_property_debug/shapes/collision/shape_color>`. Il valore ``Color(0, 0, 0, 1)`` documentato qui è un segnaposto e non il colore di debug predefinito effettivo.

.. rst-class:: classref-item-separator

----

.. _class_CollisionShape3D_property_debug_fill:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **debug_fill** = ``true`` :ref:`🔗<class_CollisionShape3D_property_debug_fill>`

.. rst-class:: classref-property-setget

- |void| **set_enable_debug_fill**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enable_debug_fill**\ (\ )

Se ``true``, quando la forma è visualizzata, mostrerà un colore solido di riempimento oltre al suo wireframe.

.. rst-class:: classref-item-separator

----

.. _class_CollisionShape3D_property_disabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **disabled** = ``false`` :ref:`🔗<class_CollisionShape3D_property_disabled>`

.. rst-class:: classref-property-setget

- |void| **set_disabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_disabled**\ (\ )

Una forma di collisione disabilitata non ha alcun effetto nel mondo. Questa proprietà dovrebbe essere modificata con :ref:`Object.set_deferred()<class_Object_method_set_deferred>`.

.. rst-class:: classref-item-separator

----

.. _class_CollisionShape3D_property_shape:

.. rst-class:: classref-property

:ref:`Shape3D<class_Shape3D>` **shape** :ref:`🔗<class_CollisionShape3D_property_shape>`

.. rst-class:: classref-property-setget

- |void| **set_shape**\ (\ value\: :ref:`Shape3D<class_Shape3D>`\ )
- :ref:`Shape3D<class_Shape3D>` **get_shape**\ (\ )

La forma reale appartenente a questa forma di collisione.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_CollisionShape3D_method_make_convex_from_siblings:

.. rst-class:: classref-method

|void| **make_convex_from_siblings**\ (\ ) :ref:`🔗<class_CollisionShape3D_method_make_convex_from_siblings>`

Imposta la forma di collisione aggiungendo tutte le geometrie dei suoi fratelli :ref:`MeshInstance3D<class_MeshInstance3D>` convessi .

.. rst-class:: classref-item-separator

----

.. _class_CollisionShape3D_method_resource_changed:

.. rst-class:: classref-method

|void| **resource_changed**\ (\ resource\: :ref:`Resource<class_Resource>`\ ) :ref:`🔗<class_CollisionShape3D_method_resource_changed>`

**Deprecato:** Use :ref:`Resource.changed<class_Resource_signal_changed>` instead.

Questo metodo non fa nulla.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
