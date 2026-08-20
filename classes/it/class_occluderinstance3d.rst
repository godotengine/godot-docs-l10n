:github_url: hide

.. _class_OccluderInstance3D:

OccluderInstance3D
==================

**Eredita:** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Fornisce l'occlusion culling per i nodi 3D, migliorando le prestazioni in aree chiuse.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

L'occlusion culling può migliorare le prestazioni di rendering in aree chiuse/semi-aperte nascondendo la geometria oscurata da altri oggetti.

Il sistema di occlusion culling è essenzialmente statico. Gli **OccluderInstance3D** possono essere spostati o nascosti durante l'esecuzione, ma ciò attiverà un ricalcolo interno che può richiedere diversi frame. Si consiglia di spostare gli **OccluderInstance3D** solo sporadicamente (ad esempio, per scopi di generazione procedurale), piuttosto che farlo a ogni frame.

Il sistema di occlusion culling funziona renderizzando gli occluder sulla CPU in parallelo tramite `Embree <https://www.embree.org/>`__, disegnando il risultato in un buffer a bassa risoluzione e poi utilizzandolo per scartare i nodi 3D individualmente. Nell'editor 3D, è possibile vedere in anteprima il buffer di occlusion culling scegliendo **Prospettiva > Mostra avanzate... > Buffer di occlusion culling** nell'angolo in alto a sinistra della viewport 3D. La qualità del buffer si può regolare nelle Impostazioni del progetto.

\ **Precalcolo:** Selezionare un nodo **OccluderInstance3D**, quindi premere il pulsante **Precalcola occlusori** in alto all'editor 3D. Saranno considerati solo i materiali opachi; i materiali trasparenti (con alpha blend o alpha test) saranno ignorati dall'occlusion culling.

\ **Nota:** L'occlusion culling è efficace solo se :ref:`ProjectSettings.rendering/occlusion_culling/use_occlusion_culling<class_ProjectSettings_property_rendering/occlusion_culling/use_occlusion_culling>` è impostato su ``true``. Abilitare l'occlusion culling ha un impatto sulla CPU. Abilitarlo solo se si prevede effettivamente di utilizzarlo. Le scene ampie e aperte, con pochi o nessun oggetto che blocca la vista, generalmente non usufruiranno molto dall'occlusion culling. Le scene ampie e aperte generalmente usufruiscono di più dai LOD di mesh e dai campi di visibilità (:ref:`GeometryInstance3D.visibility_range_begin<class_GeometryInstance3D_property_visibility_range_begin>` e :ref:`GeometryInstance3D.visibility_range_end<class_GeometryInstance3D_property_visibility_range_end>`) rispetto all'occlusione culling.

\ **Nota:** A causa di limiti di memoria, l'occlusion culling non è supportato normalmente nei modelli di esportazione web. È possibile abilitarlo compilando modelli personalizzati di esportazione web con ``module_raycast_enabled=yes``.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Occlusion culling <../tutorials/3d/occlusion_culling>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------------+-----------------------------------------------------------------------------------------------------+----------------+
   | :ref:`int<class_int>`               | :ref:`bake_mask<class_OccluderInstance3D_property_bake_mask>`                                       | ``4294967295`` |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------+----------------+
   | :ref:`float<class_float>`           | :ref:`bake_simplification_distance<class_OccluderInstance3D_property_bake_simplification_distance>` | ``0.1``        |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------+----------------+
   | :ref:`Occluder3D<class_Occluder3D>` | :ref:`occluder<class_OccluderInstance3D_property_occluder>`                                         |                |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------+----------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`get_bake_mask_value<class_OccluderInstance3D_method_get_bake_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_bake_mask_value<class_OccluderInstance3D_method_set_bake_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_OccluderInstance3D_property_bake_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **bake_mask** = ``4294967295`` :ref:`🔗<class_OccluderInstance3D_property_bake_mask>`

.. rst-class:: classref-property-setget

- |void| **set_bake_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bake_mask**\ (\ )

Gli strati visivi da considerare durante la preparazione per gli occlusori. Solo i :ref:`MeshInstance3D<class_MeshInstance3D>` i cui :ref:`VisualInstance3D.layers<class_VisualInstance3D_property_layers>` corrispondono a questa :ref:`bake_mask<class_OccluderInstance3D_property_bake_mask>` saranno inclusi nella mesh occlusore generata. Per impostazione predefinita, tutti gli oggetti con materiali *opachi* sono considerati per la preparazione degli occlusori.

Per migliorare le prestazioni ed evitare artefatti, si consiglia di escludere gli oggetti dinamici o piccoli dal processo di preparazione spostandoli su uno strato visivo separato ed escludendo tale strato nella :ref:`bake_mask<class_OccluderInstance3D_property_bake_mask>`.

.. rst-class:: classref-item-separator

----

.. _class_OccluderInstance3D_property_bake_simplification_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **bake_simplification_distance** = ``0.1`` :ref:`🔗<class_OccluderInstance3D_property_bake_simplification_distance>`

.. rst-class:: classref-property-setget

- |void| **set_bake_simplification_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bake_simplification_distance**\ (\ )

La distanza di semplificazione da utilizzare per semplificare il poligono occlusore generato (in unità 3D). Valori più elevati generano una mesh occlusore meno dettagliata, il che migliora le prestazioni ma riduce la precisione del culling.

La geometria dell'occlusore viene renderizzata dalla CPU, quindi è importante mantenerla il più semplice possibile. Poiché il buffer viene renderizzato a bassa risoluzione, le mesh occlusore meno dettagliate generalmente funzionano comunque bene. Il valore predefinito è piuttosto aggressivo, quindi potrebbe essere necessario diminuirlo in caso di falsi negativi (oggetti occlusi anche se visibili dalla telecamera). Un valore di ``0.01`` agirà in modo conservativo e manterrà la geometria *percettivamente* inalterata nel buffer dell'occlusion culling. A seconda della scena, un valore di ``0.01`` potrebbe comunque semplificare notevolmente la mesh rispetto a disattivare completamente la semplificazione.

Impostando questo valore su ``0.0`` la semplificazione viene completamente disabilitata, ma i vertici nella stessa posizione verranno comunque uniti. La mesh verrà inoltre reindicizzata per ridurre sia il numero di vertici sia di indici.

\ **Nota:** Questo metodo utilizza la libreria `meshoptimizer <https://meshoptimizer.org/>`__, in modo simile alla generazione del LOD.

.. rst-class:: classref-item-separator

----

.. _class_OccluderInstance3D_property_occluder:

.. rst-class:: classref-property

:ref:`Occluder3D<class_Occluder3D>` **occluder** :ref:`🔗<class_OccluderInstance3D_property_occluder>`

.. rst-class:: classref-property-setget

- |void| **set_occluder**\ (\ value\: :ref:`Occluder3D<class_Occluder3D>`\ )
- :ref:`Occluder3D<class_Occluder3D>` **get_occluder**\ (\ )

La risorsa occlusore per questo **OccluderInstance3D**. È possibile generare una risorsa occlusore selezionando un nodo **OccluderInstance3D** e quindi premendo il pulsante **Precalcola occlusori** nella parte superiore dell'editor.

È anche possibile disegnare il proprio poligono occlusore 2D aggiungendo una nuova risorsa :ref:`PolygonOccluder3D<class_PolygonOccluder3D>` alla proprietà :ref:`occluder<class_OccluderInstance3D_property_occluder>` nell'Ispettore.

In alternativa, è possibile selezionare un occlusore primitivo da usare: :ref:`QuadOccluder3D<class_QuadOccluder3D>`, :ref:`BoxOccluder3D<class_BoxOccluder3D>` o :ref:`SphereOccluder3D<class_SphereOccluder3D>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_OccluderInstance3D_method_get_bake_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_bake_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OccluderInstance3D_method_get_bake_mask_value>`

Restituisce se lo strato specificato di :ref:`bake_mask<class_OccluderInstance3D_property_bake_mask>` è abilitato o meno, fornito un ``layer_number`` compreso tra 1 e 32.

.. rst-class:: classref-item-separator

----

.. _class_OccluderInstance3D_method_set_bake_mask_value:

.. rst-class:: classref-method

|void| **set_bake_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_OccluderInstance3D_method_set_bake_mask_value>`

In base a ``value``, abilita o disabilita lo strato specificato in :ref:`bake_mask<class_OccluderInstance3D_property_bake_mask>`, fornito un ``layer_number`` compreso tra 1 e 32.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
