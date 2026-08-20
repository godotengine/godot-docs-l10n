:github_url: hide

.. _class_MeshInstance3D:

MeshInstance3D
==============

**Eredita:** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`SoftBody3D<class_SoftBody3D>`

Nodo che istanzia delle mesh in uno scenario.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

MeshInstance3D è un nodo che prende una risorsa :ref:`Mesh<class_Mesh>` e la aggiunge allo scenario attuale creandone un'istanza. Questa è la classe usata più spesso per il rendering della geometria 3D e si può utilizzare per creare un'istanza di una singola :ref:`Mesh<class_Mesh>` in molti posti. Ciò consente di riutilizzare la geometria, risparmiando così sulle risorse. Quando è necessario istanziare una :ref:`Mesh<class_Mesh>` più di migliaia di volte in prossimità, considerare invece l'utilizzo di una :ref:`MultiMesh<class_MultiMesh>` in una :ref:`MultiMeshInstance3D<class_MultiMeshInstance3D>`.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- `Demo di tester di materiali 3D <https://godotengine.org/asset-library/asset/2742>`__

- `Demo di personaggio cinematico 3D <https://godotengine.org/asset-library/asset/2739>`__

- `Demo di gioco piattaforme 3D <https://godotengine.org/asset-library/asset/2748>`__

- `Demo di sparatutto in terza persona (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------+------------------+
   | :ref:`Mesh<class_Mesh>`         | :ref:`mesh<class_MeshInstance3D_property_mesh>`         |                  |
   +---------------------------------+---------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`skeleton<class_MeshInstance3D_property_skeleton>` | ``NodePath("")`` |
   +---------------------------------+---------------------------------------------------------+------------------+
   | :ref:`Skin<class_Skin>`         | :ref:`skin<class_MeshInstance3D_property_skin>`         |                  |
   +---------------------------------+---------------------------------------------------------+------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ArrayMesh<class_ArrayMesh>`         | :ref:`bake_mesh_from_current_blend_shape_mix<class_MeshInstance3D_method_bake_mesh_from_current_blend_shape_mix>`\ (\ existing\: :ref:`ArrayMesh<class_ArrayMesh>` = null\ )                                   |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ArrayMesh<class_ArrayMesh>`         | :ref:`bake_mesh_from_current_skeleton_pose<class_MeshInstance3D_method_bake_mesh_from_current_skeleton_pose>`\ (\ existing\: :ref:`ArrayMesh<class_ArrayMesh>` = null\ )                                       |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                    | :ref:`create_convex_collision<class_MeshInstance3D_method_create_convex_collision>`\ (\ clean\: :ref:`bool<class_bool>` = true, simplify\: :ref:`bool<class_bool>` = false\ )                                  |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                    | :ref:`create_debug_tangents<class_MeshInstance3D_method_create_debug_tangents>`\ (\ )                                                                                                                          |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                    | :ref:`create_multiple_convex_collisions<class_MeshInstance3D_method_create_multiple_convex_collisions>`\ (\ settings\: :ref:`MeshConvexDecompositionSettings<class_MeshConvexDecompositionSettings>` = null\ ) |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                    | :ref:`create_trimesh_collision<class_MeshInstance3D_method_create_trimesh_collision>`\ (\ )                                                                                                                    |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                     | :ref:`find_blend_shape_by_name<class_MeshInstance3D_method_find_blend_shape_by_name>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                                        |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Material<class_Material>`           | :ref:`get_active_material<class_MeshInstance3D_method_get_active_material>`\ (\ surface\: :ref:`int<class_int>`\ ) |const|                                                                                     |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                     | :ref:`get_blend_shape_count<class_MeshInstance3D_method_get_blend_shape_count>`\ (\ ) |const|                                                                                                                  |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                 | :ref:`get_blend_shape_value<class_MeshInstance3D_method_get_blend_shape_value>`\ (\ blend_shape_idx\: :ref:`int<class_int>`\ ) |const|                                                                         |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SkinReference<class_SkinReference>` | :ref:`get_skin_reference<class_MeshInstance3D_method_get_skin_reference>`\ (\ ) |const|                                                                                                                        |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Material<class_Material>`           | :ref:`get_surface_override_material<class_MeshInstance3D_method_get_surface_override_material>`\ (\ surface\: :ref:`int<class_int>`\ ) |const|                                                                 |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                     | :ref:`get_surface_override_material_count<class_MeshInstance3D_method_get_surface_override_material_count>`\ (\ ) |const|                                                                                      |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                    | :ref:`set_blend_shape_value<class_MeshInstance3D_method_set_blend_shape_value>`\ (\ blend_shape_idx\: :ref:`int<class_int>`, value\: :ref:`float<class_float>`\ )                                              |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                    | :ref:`set_surface_override_material<class_MeshInstance3D_method_set_surface_override_material>`\ (\ surface\: :ref:`int<class_int>`, material\: :ref:`Material<class_Material>`\ )                             |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_MeshInstance3D_property_mesh:

.. rst-class:: classref-property

:ref:`Mesh<class_Mesh>` **mesh** :ref:`🔗<class_MeshInstance3D_property_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_mesh**\ (\ value\: :ref:`Mesh<class_Mesh>`\ )
- :ref:`Mesh<class_Mesh>` **get_mesh**\ (\ )

La risorsa :ref:`Mesh<class_Mesh>` per l'istanza.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_property_skeleton:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **skeleton** = ``NodePath("")`` :ref:`🔗<class_MeshInstance3D_property_skeleton>`

.. rst-class:: classref-property-setget

- |void| **set_skeleton_path**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_skeleton_path**\ (\ )

:ref:`NodePath<class_NodePath>` allo :ref:`Skeleton3D<class_Skeleton3D>` associato all'istanza.

\ **Nota:** Il valore predefinito di questa proprietà è cambiato in Godot 4.6. Abilita :ref:`ProjectSettings.animation/compatibility/default_parent_skeleton_in_mesh_instance_3d<class_ProjectSettings_property_animation/compatibility/default_parent_skeleton_in_mesh_instance_3d>` se è necessario il comportamento precedente per motivi di compatibilità.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_property_skin:

.. rst-class:: classref-property

:ref:`Skin<class_Skin>` **skin** :ref:`🔗<class_MeshInstance3D_property_skin>`

.. rst-class:: classref-property-setget

- |void| **set_skin**\ (\ value\: :ref:`Skin<class_Skin>`\ )
- :ref:`Skin<class_Skin>` **get_skin**\ (\ )

La :ref:`Skin<class_Skin>` utilizzata da questa istanza.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_MeshInstance3D_method_bake_mesh_from_current_blend_shape_mix:

.. rst-class:: classref-method

:ref:`ArrayMesh<class_ArrayMesh>` **bake_mesh_from_current_blend_shape_mix**\ (\ existing\: :ref:`ArrayMesh<class_ArrayMesh>` = null\ ) :ref:`🔗<class_MeshInstance3D_method_bake_mesh_from_current_blend_shape_mix>`

Esegue uno snapshot dall':ref:`ArrayMesh<class_ArrayMesh>` attuale con tutte le forme di fusione applicate in base ai loro pesi attuali e lo elabora nella mesh ``existing`` fornita. Se non è fornita alcuna mesh ``existing``, viene creato, elaborato e restituito un nuovo :ref:`ArrayMesh<class_ArrayMesh>`. I materiali della superficie della mesh non vengono copiati.

\ **Prestazioni:** I dati della :ref:`Mesh<class_Mesh>` devono essere ricevuti dalla GPU, bloccando il :ref:`RenderingServer<class_RenderingServer>` nel processo.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_bake_mesh_from_current_skeleton_pose:

.. rst-class:: classref-method

:ref:`ArrayMesh<class_ArrayMesh>` **bake_mesh_from_current_skeleton_pose**\ (\ existing\: :ref:`ArrayMesh<class_ArrayMesh>` = null\ ) :ref:`🔗<class_MeshInstance3D_method_bake_mesh_from_current_skeleton_pose>`

Esegue uno snapshot della posa attuale dello scheletro animato della mesh con skin e la elabora nella mesh ``existing``. Se non è fornita alcuna mesh ``existing``, viene creato, elaborato e restituito un nuovo :ref:`ArrayMesh<class_ArrayMesh>`. È necessario uno scheletro con una skin registrata per poter funzionare. Le forme di fusione sono ignorate. I materiali della superficie della mesh non vengono copiati.

\ **Prestazioni:** I dati della :ref:`Mesh<class_Mesh>` devono essere ricevuti dalla GPU, bloccando il :ref:`RenderingServer<class_RenderingServer>` nel processo.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_create_convex_collision:

.. rst-class:: classref-method

|void| **create_convex_collision**\ (\ clean\: :ref:`bool<class_bool>` = true, simplify\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_MeshInstance3D_method_create_convex_collision>`

Questa funzione di supporto crea un nodo :ref:`StaticBody3D<class_StaticBody3D>` figlio con una forma di collisione :ref:`ConvexPolygonShape3D<class_ConvexPolygonShape3D>` calcolata dalla geometria della mesh. È utilizzato principalmente per i test.

Se ``clean`` è ``true`` (predefinito), i vertici duplicati e interni sono rimossi automaticamente. Puoi impostarlo su ``false`` per rendere il processo più veloce se non necessario.

Se ``simplify`` è ``true``, la geometria può essere ulteriormente semplificata per ridurre il numero di vertici. Disabilitato per impostazione predefinita.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_create_debug_tangents:

.. rst-class:: classref-method

|void| **create_debug_tangents**\ (\ ) :ref:`🔗<class_MeshInstance3D_method_create_debug_tangents>`

Questa funzione di supporto crea un nodo **MeshInstance3D** figlio con gizmo su ogni vertice calcolati dalla geometria della mesh. È usato principalmente per i test.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_create_multiple_convex_collisions:

.. rst-class:: classref-method

|void| **create_multiple_convex_collisions**\ (\ settings\: :ref:`MeshConvexDecompositionSettings<class_MeshConvexDecompositionSettings>` = null\ ) :ref:`🔗<class_MeshInstance3D_method_create_multiple_convex_collisions>`

Questa funzione di supporto crea un nodo :ref:`StaticBody3D<class_StaticBody3D>` figlio con più forme di collisione :ref:`ConvexPolygonShape3D<class_ConvexPolygonShape3D>` calcolate dalla geometria della mesh tramite scomposizione convessa. L'operazione di scomposizione convessa può essere controllata con parametri ``settings`` opzionali.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_create_trimesh_collision:

.. rst-class:: classref-method

|void| **create_trimesh_collision**\ (\ ) :ref:`🔗<class_MeshInstance3D_method_create_trimesh_collision>`

Questa funzione di supporto crea un nodo :ref:`StaticBody3D<class_StaticBody3D>` figlio con una forma di collisione :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>` calcolata dalla geometria della mesh. È utilizzato principalmente per i test.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_find_blend_shape_by_name:

.. rst-class:: classref-method

:ref:`int<class_int>` **find_blend_shape_by_name**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_MeshInstance3D_method_find_blend_shape_by_name>`

Restituisce l'indice della forma di fusione con il nome ``name``. Restituisce ``-1`` se non esiste alcuna forma di fusione con questo nome, incluso quando :ref:`mesh<class_MeshInstance3D_property_mesh>` è ``null``.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_get_active_material:

.. rst-class:: classref-method

:ref:`Material<class_Material>` **get_active_material**\ (\ surface\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshInstance3D_method_get_active_material>`

Restituisce il :ref:`Material<class_Material>` che sarà utilizzato dalla :ref:`Mesh<class_Mesh>` durante il disegno. Questo può restituire :ref:`GeometryInstance3D.material_override<class_GeometryInstance3D_property_material_override>`, il :ref:`Material<class_Material>` di sostituzione della superficie definito in questo **MeshInstance3D** o il :ref:`Material<class_Material>` di superficie definito nella :ref:`mesh<class_MeshInstance3D_property_mesh>`. Ad esempio, se :ref:`GeometryInstance3D.material_override<class_GeometryInstance3D_property_material_override>` è utilizzato, tutte le superfici restituiranno il materiale sostitutivo.

Restituisce ``null`` se nessun materiale è attivo, incluso quando :ref:`mesh<class_MeshInstance3D_property_mesh>` è ``null``.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_get_blend_shape_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_blend_shape_count**\ (\ ) |const| :ref:`🔗<class_MeshInstance3D_method_get_blend_shape_count>`

Restituisce il numero di forme di fusione disponibili. Produce un errore se :ref:`mesh<class_MeshInstance3D_property_mesh>` è ``null``.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_get_blend_shape_value:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_blend_shape_value**\ (\ blend_shape_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshInstance3D_method_get_blend_shape_value>`

Restituisce il valore della forma di fusione all'indice ``blend_shape_idx``. Restituisce ``0.0`` e produce un errore se :ref:`mesh<class_MeshInstance3D_property_mesh>` è ``null`` o non ha una forma di fusione a quell'indice.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_get_skin_reference:

.. rst-class:: classref-method

:ref:`SkinReference<class_SkinReference>` **get_skin_reference**\ (\ ) |const| :ref:`🔗<class_MeshInstance3D_method_get_skin_reference>`

Restituisce lo :ref:`SkinReference<class_SkinReference>` interno contenente il :ref:`RID<class_RID>` dello scheletro associato a questo RID. Vedi anche :ref:`Resource.get_rid()<class_Resource_method_get_rid>`, :ref:`SkinReference.get_skeleton()<class_SkinReference_method_get_skeleton>` e :ref:`RenderingServer.instance_attach_skeleton()<class_RenderingServer_method_instance_attach_skeleton>`.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_get_surface_override_material:

.. rst-class:: classref-method

:ref:`Material<class_Material>` **get_surface_override_material**\ (\ surface\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshInstance3D_method_get_surface_override_material>`

Restituisce il :ref:`Material<class_Material>` di sostituzione per la superfice ``surface`` specificata della risorsa :ref:`Mesh<class_Mesh>`. Vedi anche :ref:`get_surface_override_material_count()<class_MeshInstance3D_method_get_surface_override_material_count>`.

\ **Nota:** Questo restituisce il :ref:`Material<class_Material>` associato alle proprietà di Sostituzione del materiale di superficie nel **MeshInstance3D**, non il materiale all'interno della risorsa :ref:`Mesh<class_Mesh>`. Per ottenere il materiale all'interno della risorsa :ref:`Mesh<class_Mesh>`, utilizza invece :ref:`Mesh.surface_get_material()<class_Mesh_method_surface_get_material>`.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_get_surface_override_material_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_surface_override_material_count**\ (\ ) |const| :ref:`🔗<class_MeshInstance3D_method_get_surface_override_material_count>`

Restituisce il numero di materiali sostitutivi di superfice. Questo è equivalente a :ref:`Mesh.get_surface_count()<class_Mesh_method_get_surface_count>`. Vedi anche :ref:`get_surface_override_material()<class_MeshInstance3D_method_get_surface_override_material>`.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_set_blend_shape_value:

.. rst-class:: classref-method

|void| **set_blend_shape_value**\ (\ blend_shape_idx\: :ref:`int<class_int>`, value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_MeshInstance3D_method_set_blend_shape_value>`

Imposta il valore della forma di fusione all'indice ``blend_shape_idx`` su ``value``. Genera un errore se :ref:`mesh<class_MeshInstance3D_property_mesh>` è ``null`` o non ha una forma di fusione in quell'indice.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_set_surface_override_material:

.. rst-class:: classref-method

|void| **set_surface_override_material**\ (\ surface\: :ref:`int<class_int>`, material\: :ref:`Material<class_Material>`\ ) :ref:`🔗<class_MeshInstance3D_method_set_surface_override_material>`

Imposta la sostituzione del ``material`` per la superfice ``surface`` della risorsa :ref:`Mesh<class_Mesh>`. Questo materiale è associato a questa **MeshInstance3D** anziché alla :ref:`mesh<class_MeshInstance3D_property_mesh>`.

\ **Nota:** Questo assegna il :ref:`Material<class_Material>` associato alle proprietà Sostituzioni del materiale di superficie nella **MeshInstance3D**, non il materiale all'interno della risorsa :ref:`Mesh<class_Mesh>`. Per impostare il materiale all'interno della risorsa :ref:`Mesh<class_Mesh>`, usa invece :ref:`Mesh.surface_get_material()<class_Mesh_method_surface_get_material>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
