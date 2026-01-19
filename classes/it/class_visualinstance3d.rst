:github_url: hide

.. _class_VisualInstance3D:

VisualInstance3D
================

**Eredita:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`Decal<class_Decal>`, :ref:`FogVolume<class_FogVolume>`, :ref:`GeometryInstance3D<class_GeometryInstance3D>`, :ref:`GPUParticlesAttractor3D<class_GPUParticlesAttractor3D>`, :ref:`GPUParticlesCollision3D<class_GPUParticlesCollision3D>`, :ref:`Light3D<class_Light3D>`, :ref:`LightmapGI<class_LightmapGI>`, :ref:`OccluderInstance3D<class_OccluderInstance3D>`, :ref:`OpenXRVisibilityMask<class_OpenXRVisibilityMask>`, :ref:`ReflectionProbe<class_ReflectionProbe>`, :ref:`RootMotionView<class_RootMotionView>`, :ref:`VisibleOnScreenNotifier3D<class_VisibleOnScreenNotifier3D>`, :ref:`VoxelGI<class_VoxelGI>`

Il padre di tutti i nodi visivi 3D.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

**VisualInstance3D** serve per connettere una risorsa a una rappresentazione visiva. Tutti i nodi visuali 3D ereditano da **VisualInstance3D**. In generale, non dovresti accedere direttamente alle proprietà di **VisualInstance3D** poiché sono accessibili e gestite dai nodi che ereditano da **VisualInstance3D**. **VisualInstance3D** è la rappresentazione nodo dell'istanza :ref:`RenderingServer<class_RenderingServer>`.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------------------------------------+---------+
   | :ref:`int<class_int>`     | :ref:`layers<class_VisualInstance3D_property_layers>`                                   | ``1``   |
   +---------------------------+-----------------------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`sorting_offset<class_VisualInstance3D_property_sorting_offset>`                   | ``0.0`` |
   +---------------------------+-----------------------------------------------------------------------------------------+---------+
   | :ref:`bool<class_bool>`   | :ref:`sorting_use_aabb_center<class_VisualInstance3D_property_sorting_use_aabb_center>` |         |
   +---------------------------+-----------------------------------------------------------------------------------------+---------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>` | :ref:`_get_aabb<class_VisualInstance3D_private_method__get_aabb>`\ (\ ) |virtual| |const|                                                                    |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>` | :ref:`get_aabb<class_VisualInstance3D_method_get_aabb>`\ (\ ) |const|                                                                                        |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`   | :ref:`get_base<class_VisualInstance3D_method_get_base>`\ (\ ) |const|                                                                                        |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`   | :ref:`get_instance<class_VisualInstance3D_method_get_instance>`\ (\ ) |const|                                                                                |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`get_layer_mask_value<class_VisualInstance3D_method_get_layer_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_base<class_VisualInstance3D_method_set_base>`\ (\ base\: :ref:`RID<class_RID>`\ )                                                                  |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_layer_mask_value<class_VisualInstance3D_method_set_layer_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_VisualInstance3D_property_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **layers** = ``1`` :ref:`🔗<class_VisualInstance3D_property_layers>`

.. rst-class:: classref-property-setget

- |void| **set_layer_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_layer_mask**\ (\ )

Gli strati di rendering su cui è disegnato questo **VisualInstance3D**.

Questo oggetto sarà visibile solo per i :ref:`Camera3D<class_Camera3D>` la cui maschera di cull include uno qualsiasi degli strati di rendering su cui è impostato questo **VisualInstance3D**.

Per i :ref:`Light3D<class_Light3D>`, ciò può essere usato per controllare quali **VisualInstance3D** sono influenzati da una luce specifica. Per i :ref:`GPUParticles3D<class_GPUParticles3D>`, questo può essere usato per controllare quali particelle sono influenzate da un attrattore specifico. Per i :ref:`Decal<class_Decal>`, questo può essere usato per controllare quali **VisualInstance3D** sono influenzati da una decalcomania specifica.

Per regolare più facilmente i :ref:`layers<class_VisualInstance3D_property_layers>` attraverso uno script, usa :ref:`get_layer_mask_value()<class_VisualInstance3D_method_get_layer_mask_value>` e :ref:`set_layer_mask_value()<class_VisualInstance3D_method_set_layer_mask_value>`.

\ **Nota:** :ref:`VoxelGI<class_VoxelGI>`, SDFGI e :ref:`LightmapGI<class_LightmapGI>` terranno sempre in considerazione tutti gli strati per determinare cosa contribuisce all'illuminazione globale. Se questo è un problema, imposta :ref:`GeometryInstance3D.gi_mode<class_GeometryInstance3D_property_gi_mode>` su :ref:`GeometryInstance3D.GI_MODE_DISABLED<class_GeometryInstance3D_constant_GI_MODE_DISABLED>` per le mesh e :ref:`Light3D.light_bake_mode<class_Light3D_property_light_bake_mode>` su :ref:`Light3D.BAKE_DISABLED<class_Light3D_constant_BAKE_DISABLED>` per le luci per escluderle dall'illuminazione globale.

.. rst-class:: classref-item-separator

----

.. _class_VisualInstance3D_property_sorting_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **sorting_offset** = ``0.0`` :ref:`🔗<class_VisualInstance3D_property_sorting_offset>`

.. rst-class:: classref-property-setget

- |void| **set_sorting_offset**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_sorting_offset**\ (\ )

La quantità in base alla quale la profondità di questo **VisualInstance3D** verrà regolata durante l'ordinamento per profondità. Utilizza le stesse unità del motore (che in genere sono metri). Aggiustandolo su un valore più alto, il **VisualInstance3D** sarà disegnato in modo affidabile sopra altri **VisualInstance3D** che sono altrimenti posizionati nello stesso punto. Per garantire che sia sempre disegnato sopra altri oggetti attorno a sé (non posizionati nello stesso punto), imposta il valore in modo che sia maggiore della distanza tra questo **VisualInstance3D** e gli altri **VisualInstance3D** vicini.

.. rst-class:: classref-item-separator

----

.. _class_VisualInstance3D_property_sorting_use_aabb_center:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **sorting_use_aabb_center** :ref:`🔗<class_VisualInstance3D_property_sorting_use_aabb_center>`

.. rst-class:: classref-property-setget

- |void| **set_sorting_use_aabb_center**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_sorting_use_aabb_center**\ (\ )

Se ``true``, l'oggetto è ordinato in base al centro dell':ref:`AABB<class_AABB>`. Altrimenti, l'oggetto sarà ordinato in base alla posizione globale.

L'ordinamento basato sul centro dell':ref:`AABB<class_AABB>` è generalmente più accurato per i modelli 3D. L'ordinamento basato sulla posizione consente invece di controllare meglio l'ordine di disegno quando si lavora con :ref:`GPUParticles3D<class_GPUParticles3D>` e :ref:`CPUParticles3D<class_CPUParticles3D>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_VisualInstance3D_private_method__get_aabb:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **_get_aabb**\ (\ ) |virtual| |const| :ref:`🔗<class_VisualInstance3D_private_method__get_aabb>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_VisualInstance3D_method_get_aabb:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **get_aabb**\ (\ ) |const| :ref:`🔗<class_VisualInstance3D_method_get_aabb>`

Restituisce l':ref:`AABB<class_AABB>` (noto anche come riquadro di delimitazione) per questo **VisualInstance3D**.

.. rst-class:: classref-item-separator

----

.. _class_VisualInstance3D_method_get_base:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_base**\ (\ ) |const| :ref:`🔗<class_VisualInstance3D_method_get_base>`

Restituisce il RID della risorsa associata a questo **VisualInstance3D**. Ad esempio, se il nodo è un :ref:`MeshInstance3D<class_MeshInstance3D>`, sarà restituito il RID della :ref:`Mesh<class_Mesh>` associata.

.. rst-class:: classref-item-separator

----

.. _class_VisualInstance3D_method_get_instance:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_instance**\ (\ ) |const| :ref:`🔗<class_VisualInstance3D_method_get_instance>`

Restituisce il RID di questa istanza. Questo RID è lo stesso del RID restituito da :ref:`RenderingServer.instance_create()<class_RenderingServer_method_instance_create>`. Questo RID è necessario se si desidera chiamare le funzioni :ref:`RenderingServer<class_RenderingServer>` direttamente su questo **VisualInstance3D**.

.. rst-class:: classref-item-separator

----

.. _class_VisualInstance3D_method_get_layer_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_layer_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_VisualInstance3D_method_get_layer_mask_value>`

Restituisce se è abilitato o meno lo strato specificato di :ref:`layers<class_VisualInstance3D_property_layers>`, fornito un ``layer_number`` tra 1 e 20.

.. rst-class:: classref-item-separator

----

.. _class_VisualInstance3D_method_set_base:

.. rst-class:: classref-method

|void| **set_base**\ (\ base\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_VisualInstance3D_method_set_base>`

Imposta la risorsa istanziata da questo **VisualInstance3D**, che modifica il modo in cui il motore gestisce il **VisualInstance3D** internamente. Equivale a :ref:`RenderingServer.instance_set_base()<class_RenderingServer_method_instance_set_base>`.

.. rst-class:: classref-item-separator

----

.. _class_VisualInstance3D_method_set_layer_mask_value:

.. rst-class:: classref-method

|void| **set_layer_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_VisualInstance3D_method_set_layer_mask_value>`

In base a ``value``, abilita o disabilita lo strato specificato nei :ref:`layers<class_VisualInstance3D_property_layers>`, fornito un ``layer_number`` compreso tra 1 e 20.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
