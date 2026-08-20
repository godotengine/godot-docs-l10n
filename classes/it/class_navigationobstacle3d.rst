:github_url: hide

.. _class_NavigationObstacle3D:

NavigationObstacle3D
====================

**Sperimentale:** This class may be changed or removed in future versions.

**Eredita:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Ostacolo 3D utilizzato per influenzare la preparazione della mesh di navigazione o limitare le velocità degli agenti controllati dall'evitamento.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un ostacolo necessita di una mappa di navigazione e di un contorno di :ref:`vertices<class_NavigationObstacle3D_property_vertices>` definiti per funzionare correttamente. I contorni non possono incrociarsi o sovrapporsi e sono limitati a una proiezione piana. Ciò significa che l'asse y dei vertici è ignorato, al suo posto è utilizzata la posizione globale dell'asse y dell'ostacolo per il posizionamento. La forma proiettata è estrusa dall'altezza degli ostacoli lungo l'asse y.

È possibile includere gli ostacoli nel processo di preparazione della mesh di navigazione quando :ref:`affect_navigation_mesh<class_NavigationObstacle3D_property_affect_navigation_mesh>` è abilitato. Non aggiungono geometria percorribile, ma il loro ruolo è quello di scartare altra geometria sorgente all'interno della forma. Questo può essere utilizzato per impedire che la mesh di navigazione appaia in luoghi indesiderati, ad esempio all'interno di geometria "solida" o sopra di essa. Se :ref:`carve_navigation_mesh<class_NavigationObstacle3D_property_carve_navigation_mesh>` è abilitato, la forma preparata non sarà influenzata dagli offset della preparazione della mesh di navigazione, ad esempio il raggio degli agenti.

Con :ref:`avoidance_enabled<class_NavigationObstacle3D_property_avoidance_enabled>` l'ostacolo può limitare le velocità di evitamento degli agenti che usano l'evitamento. Se i vertici dell'ostacolo sono avvolti in senso orario, gli agenti di evitamento saranno spinti dentro dall'ostacolo, altrimenti, gli agenti di evitamento saranno spinti fuori. Gli ostacoli che utilizzano vertici ed evitamento possono deformarsi in una nuova posizione, ma non dovrebbero essere spostati a ogni singolo frame, poiché ogni modifica richiede una ricostruzione della mappa di evitamento.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Utilizzo dei NavigationObstacle <../tutorials/navigation/navigation_using_navigationobstacles>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`affect_navigation_mesh<class_NavigationObstacle3D_property_affect_navigation_mesh>` | ``false``                |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`avoidance_enabled<class_NavigationObstacle3D_property_avoidance_enabled>`           | ``true``                 |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`int<class_int>`                               | :ref:`avoidance_layers<class_NavigationObstacle3D_property_avoidance_layers>`             | ``1``                    |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`carve_navigation_mesh<class_NavigationObstacle3D_property_carve_navigation_mesh>`   | ``false``                |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`float<class_float>`                           | :ref:`height<class_NavigationObstacle3D_property_height>`                                 | ``1.0``                  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`float<class_float>`                           | :ref:`radius<class_NavigationObstacle3D_property_radius>`                                 | ``0.0``                  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`use_3d_avoidance<class_NavigationObstacle3D_property_use_3d_avoidance>`             | ``false``                |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`Vector3<class_Vector3>`                       | :ref:`velocity<class_NavigationObstacle3D_property_velocity>`                             | ``Vector3(0, 0, 0)``     |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`vertices<class_NavigationObstacle3D_property_vertices>`                             | ``PackedVector3Array()`` |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`get_avoidance_layer_value<class_NavigationObstacle3D_method_get_avoidance_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`   | :ref:`get_navigation_map<class_NavigationObstacle3D_method_get_navigation_map>`\ (\ ) |const|                                                                              |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`   | :ref:`get_rid<class_NavigationObstacle3D_method_get_rid>`\ (\ ) |const|                                                                                                    |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_avoidance_layer_value<class_NavigationObstacle3D_method_set_avoidance_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_navigation_map<class_NavigationObstacle3D_method_set_navigation_map>`\ (\ navigation_map\: :ref:`RID<class_RID>`\ )                                              |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_NavigationObstacle3D_property_affect_navigation_mesh:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **affect_navigation_mesh** = ``false`` :ref:`🔗<class_NavigationObstacle3D_property_affect_navigation_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_affect_navigation_mesh**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_affect_navigation_mesh**\ (\ )

Se abilitato e analizzato in un processo di preparazione della mesh di navigazione, l'ostacolo scarterà la geometria sorgente all'interno della sua forma definita da :ref:`vertices<class_NavigationObstacle3D_property_vertices>` e :ref:`height<class_NavigationObstacle3D_property_height>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle3D_property_avoidance_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **avoidance_enabled** = ``true`` :ref:`🔗<class_NavigationObstacle3D_property_avoidance_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_avoidance_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_avoidance_enabled**\ (\ )

Se ``true`` l'ostacolo influenza gli agenti che usano l'evitamento.

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle3D_property_avoidance_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **avoidance_layers** = ``1`` :ref:`🔗<class_NavigationObstacle3D_property_avoidance_layers>`

.. rst-class:: classref-property-setget

- |void| **set_avoidance_layers**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_avoidance_layers**\ (\ )

Un campo di bit che determina gli strati di evitamento per questo ostacolo. Gli agenti con un bit corrispondente sulla loro maschera di evitamento eviteranno questo ostacolo.

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle3D_property_carve_navigation_mesh:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **carve_navigation_mesh** = ``false`` :ref:`🔗<class_NavigationObstacle3D_property_carve_navigation_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_carve_navigation_mesh**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_carve_navigation_mesh**\ (\ )

Se abilitato, i vertici dell'ostacolo saranno intagliati nella mesh di navigazione preparata con la forma non influenzata da offset aggiuntivi (ad esempio il raggio degli agenti).

Sarà comunque influenzata da un'ulteriore post-elaborazione del processo di preparazione, come la semplificazione di spigoli e poligoni.

Richiede che :ref:`affect_navigation_mesh<class_NavigationObstacle3D_property_affect_navigation_mesh>` sia abilitato.

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle3D_property_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **height** = ``1.0`` :ref:`🔗<class_NavigationObstacle3D_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_height**\ (\ )

Imposta l'altezza dell'ostacolo utilizzata nell'evitamento 2D. Gli agenti che usano l'evitamento 2D ignorano gli ostacoli che si trovano sotto o sopra ad esso.

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle3D_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``0.0`` :ref:`🔗<class_NavigationObstacle3D_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

Imposta il raggio di evitamento per l'ostacolo.

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle3D_property_use_3d_avoidance:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_3d_avoidance** = ``false`` :ref:`🔗<class_NavigationObstacle3D_property_use_3d_avoidance>`

.. rst-class:: classref-property-setget

- |void| **set_use_3d_avoidance**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_3d_avoidance**\ (\ )

Se ``true`` l'ostacolo influenza gli agenti che usano l'evitamento 3D con il :ref:`radius<class_NavigationObstacle3D_property_radius>` dell'ostacolo.

Se ``false`` l'ostacolo influenza gli agenti che usano l'evitamento con sia :ref:`vertices<class_NavigationObstacle3D_property_vertices>` dell'ostacolo sia :ref:`radius<class_NavigationObstacle3D_property_radius>` dell'ostacolo.

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle3D_property_velocity:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **velocity** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_NavigationObstacle3D_property_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_velocity**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_velocity**\ (\ )

Imposta la velocità desiderata per l'ostacolo in modo che altri agenti possano prevedere meglio l'ostacolo se viene spostato con una velocità regolare (ogni frame) invece di essere deformato in una nuova posizione. Influisce solo sull'evitamento entro il :ref:`radius<class_NavigationObstacle3D_property_radius>` degli ostacoli. Non fa nulla per i vertici statici degli ostacoli.

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle3D_property_vertices:

.. rst-class:: classref-property

:ref:`PackedVector3Array<class_PackedVector3Array>` **vertices** = ``PackedVector3Array()`` :ref:`🔗<class_NavigationObstacle3D_property_vertices>`

.. rst-class:: classref-property-setget

- |void| **set_vertices**\ (\ value\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ )
- :ref:`PackedVector3Array<class_PackedVector3Array>` **get_vertices**\ (\ )

I vertici del contorno dell'ostacolo. Se i vertici sono avvolti in senso orario gli agenti saranno spinti dentro dall'ostacolo, altrimenti saranno spinti fuori. I contorni non possono essere incrociati o sovrapposti. Se i vertici che utilizzano l'ostacolo vengono deformati in una nuova posizione, gli agenti non possono prevedere questo movimento e potrebbero rimanere intrappolati all'interno dell'ostacolo.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector3Array<class_PackedVector3Array>` for more details.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_NavigationObstacle3D_method_get_avoidance_layer_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_avoidance_layer_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NavigationObstacle3D_method_get_avoidance_layer_value>`

Restituisce se lo strato specificato di :ref:`avoidance_layers<class_NavigationObstacle3D_property_avoidance_layers>` è abilitato, fornito un ``layer_number`` tra 1 e 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle3D_method_get_navigation_map:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_navigation_map**\ (\ ) |const| :ref:`🔗<class_NavigationObstacle3D_method_get_navigation_map>`

Restituisce il :ref:`RID<class_RID>` della mappa di navigazione per questo nodo NavigationObstacle. Questa funzione restituisce sempre la mappa impostata sul nodo NavigationObstacle e non la mappa dell'ostacolo astratto sul NavigationServer. Se la mappa dell'ostacolo viene modificata direttamente con l'API NavigationServer, il nodo NavigationObstacle non sarà a conoscenza della modifica della mappa. Utilizza :ref:`set_navigation_map()<class_NavigationObstacle3D_method_set_navigation_map>` per modificare la mappa di navigazione per NavigationObstacle e aggiornare anche l'ostacolo sul NavigationServer.

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle3D_method_get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_rid**\ (\ ) |const| :ref:`🔗<class_NavigationObstacle3D_method_get_rid>`

Restituisce il :ref:`RID<class_RID>` di questo ostacolo sul :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle3D_method_set_avoidance_layer_value:

.. rst-class:: classref-method

|void| **set_avoidance_layer_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_NavigationObstacle3D_method_set_avoidance_layer_value>`

In base a ``value``, attiva o disattiva lo strato specificato in :ref:`avoidance_layers<class_NavigationObstacle3D_property_avoidance_layers>`, fornito un ``layer_number`` tra 1 e 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle3D_method_set_navigation_map:

.. rst-class:: classref-method

|void| **set_navigation_map**\ (\ navigation_map\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_NavigationObstacle3D_method_set_navigation_map>`

Imposta il :ref:`RID<class_RID>` della mappa di navigazione questo nodo NavigationObstacle dovrebbe usare e aggiorna anche l'obstacolo ``obstacle`` sul NavigationServer.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
