:github_url: hide

.. _class_VoxelGIData:

VoxelGIData
===========

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Contiene i dati precalcolati riguardo ai voxel nell'illuminazione globale, per l'uso in un nodo :ref:`VoxelGI<class_VoxelGI>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

**VoxelGIData** contiene l'illuminazione globale precalcolata con voxel, per l'uso in un nodo :ref:`VoxelGI<class_VoxelGI>`. **VoxelGIData** offre anche varie proprietà per regolare l'aspetto finale dell'illuminazione globale. È possibile regolare queste proprietà in fase di esecuzione, senza dover precalcolare nuovamente il nodo :ref:`VoxelGI<class_VoxelGI>`.

\ **Nota:** Per evitare che i file di scena basati su testo (``.tscn``) diventino troppo grandi, quindi lenti da caricare e salvare, salva un **VoxelGIData** sempre in un file di risorsa binaria esterna (``.res``)) invece di incorporarlo nella scena. Ciò può essere fatto cliccando sulla freccia a tendina accanto alla risorsa **VoxelGIData**, scegliendo **Modifica**, cliccando sull'icona del disco floppy nella parte superiore dell'ispettore e infine scegliendo **Salva come...**.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- `Demo di sparatutto in terza persona (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`bias<class_VoxelGIData_property_bias>`                       | ``1.5``   |
   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`dynamic_range<class_VoxelGIData_property_dynamic_range>`     | ``2.0``   |
   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`energy<class_VoxelGIData_property_energy>`                   | ``1.0``   |
   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`interior<class_VoxelGIData_property_interior>`               | ``false`` |
   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`normal_bias<class_VoxelGIData_property_normal_bias>`         | ``0.0``   |
   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`propagation<class_VoxelGIData_property_propagation>`         | ``0.5``   |
   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`use_two_bounces<class_VoxelGIData_property_use_two_bounces>` | ``true``  |
   +---------------------------+--------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`allocate<class_VoxelGIData_method_allocate>`\ (\ to_cell_xform\: :ref:`Transform3D<class_Transform3D>`, aabb\: :ref:`AABB<class_AABB>`, octree_size\: :ref:`Vector3<class_Vector3>`, octree_cells\: :ref:`PackedByteArray<class_PackedByteArray>`, data_cells\: :ref:`PackedByteArray<class_PackedByteArray>`, distance_field\: :ref:`PackedByteArray<class_PackedByteArray>`, level_counts\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ ) |
   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`                         | :ref:`get_bounds<class_VoxelGIData_method_get_bounds>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                                   |
   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`   | :ref:`get_data_cells<class_VoxelGIData_method_get_data_cells>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                           |
   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`get_level_counts<class_VoxelGIData_method_get_level_counts>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                       |
   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`   | :ref:`get_octree_cells<class_VoxelGIData_method_get_octree_cells>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                       |
   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                   | :ref:`get_octree_size<class_VoxelGIData_method_get_octree_size>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                         |
   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`           | :ref:`get_to_cell_xform<class_VoxelGIData_method_get_to_cell_xform>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                     |
   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_VoxelGIData_property_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **bias** = ``1.5`` :ref:`🔗<class_VoxelGIData_property_bias>`

.. rst-class:: classref-property-setget

- |void| **set_bias**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bias**\ (\ )

Il bias di normali da utilizzare per l'illuminazione e i riflessi indiretti. I valori più elevati riducono le autoriflessioni visibili nei materiali non rugosi, al costo di penetrazione della luce più visibile e di un'illuminazione indiretta più piatta. Se si preferisce nascondere l'autoriflessione piuttosto che mantenere qualità dell'illuminazione, imposta :ref:`bias<class_VoxelGIData_property_bias>` a ``0.0`` e :ref:`normal_bias<class_VoxelGIData_property_normal_bias>` a un valore tra ``1.0`` e ``2.0``.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_property_dynamic_range:

.. rst-class:: classref-property

:ref:`float<class_float>` **dynamic_range** = ``2.0`` :ref:`🔗<class_VoxelGIData_property_dynamic_range>`

.. rst-class:: classref-property-setget

- |void| **set_dynamic_range**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_dynamic_range**\ (\ )

La gamma dinamica da utilizzare (``1.0`` rappresenta una bassa gamma dinamica di luminosità della scena). I valori più elevati possono essere utilizzati per fornire un'illuminazione indiretta più luminosa, al costo di banding dei colori più pronunciato in aree scure (sia per l'illuminazione indiretta sia per i riflessi). Per evitare il banding dei colori, si consiglia di utilizzare il valore più basso che non risulta in un ritaglio di luce notabile.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_property_energy:

.. rst-class:: classref-property

:ref:`float<class_float>` **energy** = ``1.0`` :ref:`🔗<class_VoxelGIData_property_energy>`

.. rst-class:: classref-property-setget

- |void| **set_energy**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_energy**\ (\ )

L'energia dell'illuminazione indiretta e delle riflessioni prodotte dal nodo :ref:`VoxelGI<class_VoxelGI>`. I valori più elevati risultano in un'illuminazione indiretta più luminosa. Se l'illuminazione indiretta sembra troppo piatta, prova a diminuire :ref:`propagation<class_VoxelGIData_property_propagation>` e allo stesso tempo aumentare :ref:`energy<class_VoxelGIData_property_energy>`. Vedi anche :ref:`use_two_bounces<class_VoxelGIData_property_use_two_bounces>` che influenza la luminosità effettiva dell'illuminazione indiretta.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_property_interior:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **interior** = ``false`` :ref:`🔗<class_VoxelGIData_property_interior>`

.. rst-class:: classref-property-setget

- |void| **set_interior**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_interior**\ (\ )

Se ``true``, l'illuminazione dell':ref:`Environment<class_Environment>` è ignorata dal nodo :ref:`VoxelGI<class_VoxelGI>`. Se ``false``, l'illuminazione dell':ref:`Environment<class_Environment>` è presa in considerazione dal nodo :ref:`VoxelGI<class_VoxelGI>`. L'illuminazione di un :ref:`Environment<class_Environment>` si aggiorna in tempo reale, il che significa che può essere cambiata senza dover precalcolare nuovamente il nodo :ref:`VoxelGI<class_VoxelGI>`.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_property_normal_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **normal_bias** = ``0.0`` :ref:`🔗<class_VoxelGIData_property_normal_bias>`

.. rst-class:: classref-property-setget

- |void| **set_normal_bias**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_normal_bias**\ (\ )

Il bias di normali da utilizzare per l'illuminazione e i riflessi indiretti. I valori più elevati riducono le autoriflessioni visibili nei materiali non rugosi, al costo di penetrazione della luce più visibile e di un'illuminazione indiretta più piatta. Vedi anche :ref:`bias<class_VoxelGIData_property_bias>`. Se si preferisce nascondere l'autoriflessione piuttosto che mantenere qualità dell'illuminazione, imposta :ref:`bias<class_VoxelGIData_property_bias>` a ``0.0`` e :ref:`normal_bias<class_VoxelGIData_property_normal_bias>` a un valore tra ``1.0`` e ``2.0``.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_property_propagation:

.. rst-class:: classref-property

:ref:`float<class_float>` **propagation** = ``0.5`` :ref:`🔗<class_VoxelGIData_property_propagation>`

.. rst-class:: classref-property-setget

- |void| **set_propagation**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_propagation**\ (\ )

Il moltiplicatore da usare quando la luce rimbalza su una superficie. I valori più elevati risultano in un'illuminazione indiretta più luminosa. Se l'illuminazione indiretta sembra troppo piatta, prova a diminuire :ref:`propagation<class_VoxelGIData_property_propagation>` e allo stesso tempo aumentare :ref:`energy<class_VoxelGIData_property_energy>`. Vedi anche :ref:`use_two_bounces<class_VoxelGIData_property_use_two_bounces>` che influenza la luminosità effettiva dell'illuminazione indiretta.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_property_use_two_bounces:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_two_bounces** = ``true`` :ref:`🔗<class_VoxelGIData_property_use_two_bounces>`

.. rst-class:: classref-property-setget

- |void| **set_use_two_bounces**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_two_bounces**\ (\ )

Se ``true``, esegue due rimbalzi di illuminazione indiretta invece di uno. Questo rende l'aspetto dell'illuminazione indiretta più naturale e più luminosa a un piccolo costo di prestazioni. Il secondo rimbalzo è anche visibile nelle riflessioni. Se la scena appare troppo luminosa dopo aver abilitato :ref:`use_two_bounces<class_VoxelGIData_property_use_two_bounces>`, regola :ref:`propagation<class_VoxelGIData_property_propagation>` e :ref:`energy<class_VoxelGIData_property_energy>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_VoxelGIData_method_allocate:

.. rst-class:: classref-method

|void| **allocate**\ (\ to_cell_xform\: :ref:`Transform3D<class_Transform3D>`, aabb\: :ref:`AABB<class_AABB>`, octree_size\: :ref:`Vector3<class_Vector3>`, octree_cells\: :ref:`PackedByteArray<class_PackedByteArray>`, data_cells\: :ref:`PackedByteArray<class_PackedByteArray>`, distance_field\: :ref:`PackedByteArray<class_PackedByteArray>`, level_counts\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ ) :ref:`🔗<class_VoxelGIData_method_allocate>`

Inizializza questo **VoxelGIData** con i dati specificati. ``octree_cells`` deve essere un multiplo di 32. ``octree_cells`` deve essere il doppio della dimensione di ``data_cells``. I dati allocati si possono recuperare in seguito attraverso i vari metodi getter.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_method_get_bounds:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **get_bounds**\ (\ ) |const| :ref:`🔗<class_VoxelGIData_method_get_bounds>`

Restituisce i limiti dei dati precalcolati dei voxel come un :ref:`AABB<class_AABB>`, che dovrebbe corrispondere a :ref:`VoxelGI.size<class_VoxelGI_property_size>` dopo essere stato precalcolato (il quale contiene solo le dimensioni come un :ref:`Vector3<class_Vector3>`).

\ **Nota:** Se le dimensioni sono state modificate senza precalcolare i dati del VoxelGI, i valori di :ref:`get_bounds()<class_VoxelGIData_method_get_bounds>` e di :ref:`VoxelGI.size<class_VoxelGI_property_size>` non corrisponderanno.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_method_get_data_cells:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **get_data_cells**\ (\ ) |const| :ref:`🔗<class_VoxelGIData_method_get_data_cells>`

Restituisce i dati precalcolati delle celle per questo **VoxelGIData**.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_method_get_level_counts:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_level_counts**\ (\ ) |const| :ref:`🔗<class_VoxelGIData_method_get_level_counts>`

Returns the baked level counts for this **VoxelGIData**.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_method_get_octree_cells:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **get_octree_cells**\ (\ ) |const| :ref:`🔗<class_VoxelGIData_method_get_octree_cells>`

Restituisce i dati delle celle dell'octree precalcolato per questo **VoxelGIData**.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_method_get_octree_size:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_octree_size**\ (\ ) |const| :ref:`🔗<class_VoxelGIData_method_get_octree_size>`

Restituisce la dimensione dell'octree precalcolato per questo **VoxelGIData**. Che corrisponde al numero di suddivisioni per asse. È possibile visualizzare questo valore nell'editor passando il mouse sul pulsante **Precalcola VoxelGI** in cima la viewport dell'editor 3D quando è selezionato un nodo :ref:`VoxelGI<class_VoxelGI>`, nel campo **Suddivisioni** nel tooltip.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_method_get_to_cell_xform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_to_cell_xform**\ (\ ) |const| :ref:`🔗<class_VoxelGIData_method_get_to_cell_xform>`

Restituisce la trasformazione delle celle precalcolate per questo **VoxelGIData**.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
