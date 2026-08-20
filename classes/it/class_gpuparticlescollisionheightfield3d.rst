:github_url: hide

.. _class_GPUParticlesCollisionHeightField3D:

GPUParticlesCollisionHeightField3D
==================================

**Eredita:** :ref:`GPUParticlesCollision3D<class_GPUParticlesCollision3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Una forma di collisione di particelle 3D a forma di heightmap in tempo reale che influenza i nodi :ref:`GPUParticles3D<class_GPUParticles3D>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Una forma di collisione di particelle 3D a forma di heightmap in tempo reale che influenza i nodi :ref:`GPUParticles3D<class_GPUParticles3D>`.

Le forme heightmap consentono di rappresentare in modo efficiente le collisioni per oggetti convessi e concavi con un singolo "piano" (come il terreno). Questo è meno flessibile di :ref:`GPUParticlesCollisionSDF3D<class_GPUParticlesCollisionSDF3D>`, ma non richiede una fase di precalcolo.

\ **GPUParticlesCollisionHeightField3D** può anche essere rigenerato in tempo reale quando viene spostato, quando la telecamera si muove o persino in modo continuo. Ciò rende **GPUParticlesCollisionHeightField3D** una buona scelta per effetti meteorologici come pioggia e neve e giochi con geometria altamente dinamica. Tuttavia, questa classe è limitata poiché le heightmap non possono rappresentare sporgenze (ad esempio al chiuso o nelle grotte).

\ **Nota:** :ref:`ParticleProcessMaterial.collision_mode<class_ParticleProcessMaterial_property_collision_mode>` deve essere ``true`` sul materiale di processo di :ref:`GPUParticles3D<class_GPUParticles3D>` affinché la collisione funzioni.

\ **Nota:** La collisione delle particelle influenza solo i :ref:`GPUParticles3D<class_GPUParticles3D>`, non i :ref:`CPUParticles3D<class_CPUParticles3D>`.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`follow_camera_enabled<class_GPUParticlesCollisionHeightField3D_property_follow_camera_enabled>` | ``false``            |
   +-----------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                                                 | :ref:`heightfield_mask<class_GPUParticlesCollisionHeightField3D_property_heightfield_mask>`           | ``1048575``          |
   +-----------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`Resolution<enum_GPUParticlesCollisionHeightField3D_Resolution>` | :ref:`resolution<class_GPUParticlesCollisionHeightField3D_property_resolution>`                       | ``2``                |
   +-----------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`                                         | :ref:`size<class_GPUParticlesCollisionHeightField3D_property_size>`                                   | ``Vector3(2, 2, 2)`` |
   +-----------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`UpdateMode<enum_GPUParticlesCollisionHeightField3D_UpdateMode>` | :ref:`update_mode<class_GPUParticlesCollisionHeightField3D_property_update_mode>`                     | ``0``                |
   +-----------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`get_heightfield_mask_value<class_GPUParticlesCollisionHeightField3D_method_get_heightfield_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_heightfield_mask_value<class_GPUParticlesCollisionHeightField3D_method_set_heightfield_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_GPUParticlesCollisionHeightField3D_Resolution:

.. rst-class:: classref-enumeration

enum **Resolution**: :ref:`🔗<enum_GPUParticlesCollisionHeightField3D_Resolution>`

.. _class_GPUParticlesCollisionHeightField3D_constant_RESOLUTION_256:

.. rst-class:: classref-enumeration-constant

:ref:`Resolution<enum_GPUParticlesCollisionHeightField3D_Resolution>` **RESOLUTION_256** = ``0``

Genera una heightmap di 256×256. Pensata per scene su piccola scala o scene più grandi senza particelle distanti.

.. _class_GPUParticlesCollisionHeightField3D_constant_RESOLUTION_512:

.. rst-class:: classref-enumeration-constant

:ref:`Resolution<enum_GPUParticlesCollisionHeightField3D_Resolution>` **RESOLUTION_512** = ``1``

Genera una heightmap di 512×512. Pensata per scene di media scala o scene più grandi senza particelle distanti.

.. _class_GPUParticlesCollisionHeightField3D_constant_RESOLUTION_1024:

.. rst-class:: classref-enumeration-constant

:ref:`Resolution<enum_GPUParticlesCollisionHeightField3D_Resolution>` **RESOLUTION_1024** = ``2``

Genera una heightmap di 1024×1024. Pensata per scene di grandi dimensioni con particelle distanti.

.. _class_GPUParticlesCollisionHeightField3D_constant_RESOLUTION_2048:

.. rst-class:: classref-enumeration-constant

:ref:`Resolution<enum_GPUParticlesCollisionHeightField3D_Resolution>` **RESOLUTION_2048** = ``3``

Genera una heightmap di 2048×2048. Pensata per scene molto grandi con particelle distanti.

.. _class_GPUParticlesCollisionHeightField3D_constant_RESOLUTION_4096:

.. rst-class:: classref-enumeration-constant

:ref:`Resolution<enum_GPUParticlesCollisionHeightField3D_Resolution>` **RESOLUTION_4096** = ``4``

Genera una heightmap di 4096×4096. Pensata per scene enormi con particelle distanti.

.. _class_GPUParticlesCollisionHeightField3D_constant_RESOLUTION_8192:

.. rst-class:: classref-enumeration-constant

:ref:`Resolution<enum_GPUParticlesCollisionHeightField3D_Resolution>` **RESOLUTION_8192** = ``5``

Genera una heightmap di 8192×8192. Pensata per scene gigantesche con particelle distanti.

.. _class_GPUParticlesCollisionHeightField3D_constant_RESOLUTION_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Resolution<enum_GPUParticlesCollisionHeightField3D_Resolution>` **RESOLUTION_MAX** = ``6``

Rappresenta la dimensione dell'enumerazione :ref:`Resolution<enum_GPUParticlesCollisionHeightField3D_Resolution>`.

.. rst-class:: classref-item-separator

----

.. _enum_GPUParticlesCollisionHeightField3D_UpdateMode:

.. rst-class:: classref-enumeration

enum **UpdateMode**: :ref:`🔗<enum_GPUParticlesCollisionHeightField3D_UpdateMode>`

.. _class_GPUParticlesCollisionHeightField3D_constant_UPDATE_MODE_WHEN_MOVED:

.. rst-class:: classref-enumeration-constant

:ref:`UpdateMode<enum_GPUParticlesCollisionHeightField3D_UpdateMode>` **UPDATE_MODE_WHEN_MOVED** = ``0``

Aggiorna la heightmap solo quando il nodo **GPUParticlesCollisionHeightField3D** viene spostato, o quando la telecamera si sposta se :ref:`follow_camera_enabled<class_GPUParticlesCollisionHeightField3D_property_follow_camera_enabled>` è ``true``. È possibile forzare un aggiornamento spostando leggermente il **GPUParticlesCollisionHeightField3D** in qualsiasi direzione o chiamando :ref:`RenderingServer.particles_collision_height_field_update()<class_RenderingServer_method_particles_collision_height_field_update>`.

.. _class_GPUParticlesCollisionHeightField3D_constant_UPDATE_MODE_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`UpdateMode<enum_GPUParticlesCollisionHeightField3D_UpdateMode>` **UPDATE_MODE_ALWAYS** = ``1``

Aggiorna la heightmap a ogni frame. Ciò ha un impatto notevole sulle prestazioni. Questo aggiornamento si dovrebbe utilizzare solo quando la geometria con cui le particelle possono collidere cambia significativamente durante il gioco.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_GPUParticlesCollisionHeightField3D_property_follow_camera_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **follow_camera_enabled** = ``false`` :ref:`🔗<class_GPUParticlesCollisionHeightField3D_property_follow_camera_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_follow_camera_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_follow_camera_enabled**\ (\ )

Se ``true``, **GPUParticlesCollisionHeightField3D** seguirà la telecamera attuale nello spazio globale. **GPUParticlesCollisionHeightField3D** non deve essere un nodo figlio del nodo :ref:`Camera3D<class_Camera3D>` affinché questo funzioni.

Seguire la telecamera ha un costo in termini di prestazioni, poiché costringerà la heightmap ad aggiornarsi ogni volta che la telecamera si muove. Considera di abbassare :ref:`resolution<class_GPUParticlesCollisionHeightField3D_property_resolution>` per migliorare le prestazioni se :ref:`follow_camera_enabled<class_GPUParticlesCollisionHeightField3D_property_follow_camera_enabled>` è ``true``.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesCollisionHeightField3D_property_heightfield_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **heightfield_mask** = ``1048575`` :ref:`🔗<class_GPUParticlesCollisionHeightField3D_property_heightfield_mask>`

.. rst-class:: classref-property-setget

- |void| **set_heightfield_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_heightfield_mask**\ (\ )

Gli strati visuali da considerare quando si aggiorna la heightmap. Solo i :ref:`MeshInstance3D<class_MeshInstance3D>` i cui :ref:`VisualInstance3D.layers<class_VisualInstance3D_property_layers>` corrispondono a questa :ref:`heightfield_mask<class_GPUParticlesCollisionHeightField3D_property_heightfield_mask>` saranno inclusi nell'aggiornamento della collisione della heightmap. Per impostazione predefinita, sono considerati tutti i 20 strati visibili all'utente per aggiornare la collisione della heightmap.

\ **Nota:** Poiché :ref:`heightfield_mask<class_GPUParticlesCollisionHeightField3D_property_heightfield_mask>` consente di memorizzare 32 strati in totale, ci sono altri 12 strati che sono utilizzati solo internamente dal motore e non sono esposti nell'editor. Impostare :ref:`heightfield_mask<class_GPUParticlesCollisionHeightField3D_property_heightfield_mask>` tramite uno script consente di attivare o disattivare i livelli riservati, il che può essere utile per le estensioni dell'editor.

Per regolare :ref:`heightfield_mask<class_GPUParticlesCollisionHeightField3D_property_heightfield_mask>` più facilmente tramite uno script, usa :ref:`get_heightfield_mask_value()<class_GPUParticlesCollisionHeightField3D_method_get_heightfield_mask_value>` e :ref:`set_heightfield_mask_value()<class_GPUParticlesCollisionHeightField3D_method_set_heightfield_mask_value>`.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesCollisionHeightField3D_property_resolution:

.. rst-class:: classref-property

:ref:`Resolution<enum_GPUParticlesCollisionHeightField3D_Resolution>` **resolution** = ``2`` :ref:`🔗<class_GPUParticlesCollisionHeightField3D_property_resolution>`

.. rst-class:: classref-property-setget

- |void| **set_resolution**\ (\ value\: :ref:`Resolution<enum_GPUParticlesCollisionHeightField3D_Resolution>`\ )
- :ref:`Resolution<enum_GPUParticlesCollisionHeightField3D_Resolution>` **get_resolution**\ (\ )

Le risoluzioni più elevate possono rappresentare piccoli dettagli in modo più accurato in scene di grandi dimensioni, a scapito delle prestazioni. Se :ref:`update_mode<class_GPUParticlesCollisionHeightField3D_property_update_mode>` è :ref:`UPDATE_MODE_ALWAYS<class_GPUParticlesCollisionHeightField3D_constant_UPDATE_MODE_ALWAYS>`, considera di usare la risoluzione più bassa possibile.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesCollisionHeightField3D_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(2, 2, 2)`` :ref:`🔗<class_GPUParticlesCollisionHeightField3D_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_size**\ (\ )

La dimensione della heightmap di collisione in unità 3D. Per migliorare la qualità della heightmap, :ref:`size<class_GPUParticlesCollisionHeightField3D_property_size>` dovrebbe essere impostato il più piccolo possibile, coprendo le parti della scena di cui hai bisogno.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesCollisionHeightField3D_property_update_mode:

.. rst-class:: classref-property

:ref:`UpdateMode<enum_GPUParticlesCollisionHeightField3D_UpdateMode>` **update_mode** = ``0`` :ref:`🔗<class_GPUParticlesCollisionHeightField3D_property_update_mode>`

.. rst-class:: classref-property-setget

- |void| **set_update_mode**\ (\ value\: :ref:`UpdateMode<enum_GPUParticlesCollisionHeightField3D_UpdateMode>`\ )
- :ref:`UpdateMode<enum_GPUParticlesCollisionHeightField3D_UpdateMode>` **get_update_mode**\ (\ )

Il criterio di aggiornamento da usare per la heightmap generata.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_GPUParticlesCollisionHeightField3D_method_get_heightfield_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_heightfield_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GPUParticlesCollisionHeightField3D_method_get_heightfield_mask_value>`

Restituisce ``true`` se lo strato specificato di :ref:`heightfield_mask<class_GPUParticlesCollisionHeightField3D_property_heightfield_mask>` è abilitato, fornito un ``layer_number`` compreso tra ``1`` e ``20``, inclusivo.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesCollisionHeightField3D_method_set_heightfield_mask_value:

.. rst-class:: classref-method

|void| **set_heightfield_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_GPUParticlesCollisionHeightField3D_method_set_heightfield_mask_value>`

In base a ``value``, abilita o disabilita lo strato specificato in :ref:`heightfield_mask<class_GPUParticlesCollisionHeightField3D_property_heightfield_mask>`, fornito un ``layer_number`` compreso tra ``1`` e ``20``.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
