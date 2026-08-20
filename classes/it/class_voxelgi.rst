:github_url: hide

.. _class_VoxelGI:

VoxelGI
=======

**Eredita:** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Sonda di illuminazione globale (GI) in tempo reale.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

I **VoxelGI** servono per fornire alle scene una luce indiretta e riflessi, in tempo reale e in alta qualità. Essi precalcolano l'effetto degli oggetti che emettono luce e l'effetto della geometria statica per simulare il comportamento di luce complessa in tempo reale. I **VoxelGI** devono essere precalcolati prima di avere un effetto visibile. Tuttavia, una volta precalcolati, gli oggetti dinamici riceveranno luce da essi. Inoltre, le luci possono essere completamente dinamiche o precalcolate.

\ **Nota:** **VoxelGI** è supportato solo nel metodo di rendering Forward+, non Mobile o Compatibilità.

\ **Generazione procedurale:** Un **VoxelGI** può essere precalcolato in un progetto esportato, il che lo rende adatto per i livelli generati proceduralmente o creati dall'utente, purché tutta la geometria sia generata in anticipo. Per i giochi in cui la geometria potrebbe essere generata in qualsiasi momento durante il gioco, l'SDFGI è più adatto (vedi :ref:`Environment.sdfgi_enabled<class_Environment_property_sdfgi_enabled>`).

\ **Prestazioni:** **VoxelGI** è relativamente impegnativo per la GPU e non è adatto ad hardware di fascia bassa come le schede grafiche integrate (considera invece :ref:`LightmapGI<class_LightmapGI>`). Per migliorare le prestazioni, regola :ref:`ProjectSettings.rendering/global_illumination/voxel_gi/quality<class_ProjectSettings_property_rendering/global_illumination/voxel_gi/quality>` e abilita :ref:`ProjectSettings.rendering/global_illumination/gi/use_half_resolution<class_ProjectSettings_property_rendering/global_illumination/gi/use_half_resolution>` nelle Impostazioni del progetto. Per fornire alternative per hardware di fascia bassa, considera di aggiungere un'opzione per disabilitare i **VoxelGI** nei menù delle opzioni del tuo progetto. Un nodo **VoxelGI** può essere disabilitato nascondendolo.

\ **Nota:** Le mesh dovrebbero avere pareti abbastanza spesse per evitare perdite di luce (evita pareti unilaterali). Per i livelli interni, racchiudi la geometria del tuo livello in un riquadro abbastanza grande e collega le estremità per chiudere la mesh. Per evitare ulteriori perdite di luce, è inoltre possibile posizionare strategicamente dei nodi :ref:`MeshInstance3D<class_MeshInstance3D>` temporanei con i loro :ref:`GeometryInstance3D.gi_mode<class_GeometryInstance3D_property_gi_mode>` impostati su :ref:`GeometryInstance3D.GI_MODE_STATIC<class_GeometryInstance3D_constant_GI_MODE_STATIC>`. È possibile poi nascondere questi nodi temporanei dopo aver precalcolato il nodo **VoxelGI**.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Utilizzo dell'illuminazione globale con voxel <../tutorials/3d/global_illumination/using_voxel_gi>`

- `Demo di sparatutto in terza persona (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------------------------+--------------------------------------------------------------------+-------------------------+
   | :ref:`CameraAttributes<class_CameraAttributes>` | :ref:`camera_attributes<class_VoxelGI_property_camera_attributes>` |                         |
   +-------------------------------------------------+--------------------------------------------------------------------+-------------------------+
   | :ref:`VoxelGIData<class_VoxelGIData>`           | :ref:`data<class_VoxelGI_property_data>`                           |                         |
   +-------------------------------------------------+--------------------------------------------------------------------+-------------------------+
   | :ref:`Vector3<class_Vector3>`                   | :ref:`size<class_VoxelGI_property_size>`                           | ``Vector3(20, 20, 20)`` |
   +-------------------------------------------------+--------------------------------------------------------------------+-------------------------+
   | :ref:`Subdiv<enum_VoxelGI_Subdiv>`              | :ref:`subdiv<class_VoxelGI_property_subdiv>`                       | ``1``                   |
   +-------------------------------------------------+--------------------------------------------------------------------+-------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`bake<class_VoxelGI_method_bake>`\ (\ from_node\: :ref:`Node<class_Node>` = null, create_visual_debug\: :ref:`bool<class_bool>` = false\ ) |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`debug_bake<class_VoxelGI_method_debug_bake>`\ (\ )                                                                                        |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_VoxelGI_Subdiv:

.. rst-class:: classref-enumeration

enum **Subdiv**: :ref:`🔗<enum_VoxelGI_Subdiv>`

.. _class_VoxelGI_constant_SUBDIV_64:

.. rst-class:: classref-enumeration-constant

:ref:`Subdiv<enum_VoxelGI_Subdiv>` **SUBDIV_64** = ``0``

Utilizza 64 suddivisioni. Questa è l'impostazione di qualità più bassa, ma la più veloce. Utilizzala se è possibile, ma soprattutto utilizzarla su hardware di fascia bassa.

.. _class_VoxelGI_constant_SUBDIV_128:

.. rst-class:: classref-enumeration-constant

:ref:`Subdiv<enum_VoxelGI_Subdiv>` **SUBDIV_128** = ``1``

Utilizza 128 suddivisioni. Questa è l'impostazione di qualità predefinita.

.. _class_VoxelGI_constant_SUBDIV_256:

.. rst-class:: classref-enumeration-constant

:ref:`Subdiv<enum_VoxelGI_Subdiv>` **SUBDIV_256** = ``2``

Utilizza 256 suddivisioni.

.. _class_VoxelGI_constant_SUBDIV_512:

.. rst-class:: classref-enumeration-constant

:ref:`Subdiv<enum_VoxelGI_Subdiv>` **SUBDIV_512** = ``3``

Utilizza 512 suddivisioni. Questo è l'impostazione di qualità più alta, ma la più lenta. La GPU potrebbe rallentare su hardware di fascia bassa.

.. _class_VoxelGI_constant_SUBDIV_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Subdiv<enum_VoxelGI_Subdiv>` **SUBDIV_MAX** = ``4``

Rappresenta la dimensione dell'enumerazione :ref:`Subdiv<enum_VoxelGI_Subdiv>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_VoxelGI_property_camera_attributes:

.. rst-class:: classref-property

:ref:`CameraAttributes<class_CameraAttributes>` **camera_attributes** :ref:`🔗<class_VoxelGI_property_camera_attributes>`

.. rst-class:: classref-property-setget

- |void| **set_camera_attributes**\ (\ value\: :ref:`CameraAttributes<class_CameraAttributes>`\ )
- :ref:`CameraAttributes<class_CameraAttributes>` **get_camera_attributes**\ (\ )

La risorsa :ref:`CameraAttributes<class_CameraAttributes>` che specifica i livelli di esposizione per il precalcolo. Le proprietà per l'esposizione automatica e le altre proprietà non riguardanti l'esposizione saranno ignorate. Le impostazioni di esposizione dovrebbero essere usate per ridurre la gamma dinamica presente durante il precalcolo. Se l'esposizione è troppo alta, il **VoxelGI** avrà artefatti di fasciatura o potrebbe avere artefatti di sovraesposizione.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGI_property_data:

.. rst-class:: classref-property

:ref:`VoxelGIData<class_VoxelGIData>` **data** :ref:`🔗<class_VoxelGI_property_data>`

.. rst-class:: classref-property-setget

- |void| **set_probe_data**\ (\ value\: :ref:`VoxelGIData<class_VoxelGIData>`\ )
- :ref:`VoxelGIData<class_VoxelGIData>` **get_probe_data**\ (\ )

La risorsa :ref:`VoxelGIData<class_VoxelGIData>` che contiene i dati per questo **VoxelGI**.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGI_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(20, 20, 20)`` :ref:`🔗<class_VoxelGI_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_size**\ (\ )

Le dimensioni della zona coperta dal **VoxelGI**. Deve essere ``1.0`` o più su ogni asse.

\ **Nota:** Se si aumentano le dimensioni senza anche aumentare le suddivisioni con :ref:`subdiv<class_VoxelGI_property_subdiv>`, la dimensione di ogni cella aumenterà e risulterà in illuminazione meno dettagliata.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGI_property_subdiv:

.. rst-class:: classref-property

:ref:`Subdiv<enum_VoxelGI_Subdiv>` **subdiv** = ``1`` :ref:`🔗<class_VoxelGI_property_subdiv>`

.. rst-class:: classref-property-setget

- |void| **set_subdiv**\ (\ value\: :ref:`Subdiv<enum_VoxelGI_Subdiv>`\ )
- :ref:`Subdiv<enum_VoxelGI_Subdiv>` **get_subdiv**\ (\ )

Numero di volte per suddividere la griglia su cui opera il **VoxelGI**. Un numero elevato risulterà in dettagli più precisi e quindi una maggiore qualità visiva, mentre i numeri più bassi risulteranno in prestazioni migliori.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_VoxelGI_method_bake:

.. rst-class:: classref-method

|void| **bake**\ (\ from_node\: :ref:`Node<class_Node>` = null, create_visual_debug\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_VoxelGI_method_bake>`

Precalcola l'effetto da tutti i :ref:`GeometryInstance3D<class_GeometryInstance3D>` segnati con :ref:`GeometryInstance3D.GI_MODE_STATIC<class_GeometryInstance3D_constant_GI_MODE_STATIC>` e i :ref:`Light3D<class_Light3D>` segnati con :ref:`Light3D.BAKE_STATIC<class_Light3D_constant_BAKE_STATIC>` o :ref:`Light3D.BAKE_DYNAMIC<class_Light3D_constant_BAKE_DYNAMIC>`. Se ``create_visual_debug`` è ``true``, dopo aver precalcolato la luce, questo metodo genererà un :ref:`MultiMesh<class_MultiMesh>` contenete un cubo che rappresenta ogni cella solida, con ogni cubo colorato con il colore albedo della cella. Ciò può essere utilizzato per visualizzare i dati del **VoxelGI** e fare il debug sugli eventuali problemi che potrebbero verificarsi.

\ **Nota:** :ref:`bake()<class_VoxelGI_method_bake>` funziona dall'editor e nei progetti esportati. Questo lo rende adatto ai livelli generati proceduralmente o creati dall'utente. Per precalcolare un nodo **VoxelGI** generalmente ci vogliono dai 5 ai 20 secondi nella maggior parte delle scene. Ridurre :ref:`subdiv<class_VoxelGI_property_subdiv>` può velocizzare la preparazione.

\ **Nota:** I nodi :ref:`GeometryInstance3D<class_GeometryInstance3D>` e :ref:`Light3D<class_Light3D>` devono essere completamente pronti prima che :ref:`bake()<class_VoxelGI_method_bake>` viene chiamato. Se questi nodi sono creati proceduralmente e mancano alcune mesh o luci dal **VoxelGI** precalcolato, usa ``call_deferred("bake")`` invece di chiamare :ref:`bake()<class_VoxelGI_method_bake>` direttamente.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGI_method_debug_bake:

.. rst-class:: classref-method

|void| **debug_bake**\ (\ ) :ref:`🔗<class_VoxelGI_method_debug_bake>`

Chiama :ref:`bake()<class_VoxelGI_method_bake>` con ``create_visual_debug`` abilitato.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
