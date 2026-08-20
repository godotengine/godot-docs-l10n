:github_url: hide

.. _class_GPUParticlesCollisionSDF3D:

GPUParticlesCollisionSDF3D
==========================

**Eredita:** :ref:`GPUParticlesCollision3D<class_GPUParticlesCollision3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Una forma di collisione di particelle 3D con signed distance field che influenza i nodi :ref:`GPUParticles3D<class_GPUParticles3D>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Una forma di collisione di particelle 3D con signed distance field precalcolato che influenza i nodi :ref:`GPUParticles3D<class_GPUParticles3D>`.

Gli signed distance field (SDF o letteralmente "campi di distanza con segno") consentono di rappresentare in modo efficiente forme di collisione approssimative per oggetti convessi e concavi di qualsiasi forma. Questo è più flessibile di :ref:`GPUParticlesCollisionHeightField3D<class_GPUParticlesCollisionHeightField3D>`, ma richiede una fase di precalcolo.

\ **Precalcolo:** La texture dell'SDF si può precalcolare selezionando il nodo **GPUParticlesCollisionSDF3D** nell'editor, quindi cliccando su **Precalcola SDF** nella parte superiore della viewport 3D. Qualsiasi :ref:`MeshInstance3D<class_MeshInstance3D>` *visibile* all'interno di :ref:`size<class_GPUParticlesCollisionSDF3D_property_size>` sarà presa in considerazione per il precalcolo, a prescindere dalla sua :ref:`GeometryInstance3D.gi_mode<class_GeometryInstance3D_property_gi_mode>`.

\ **Nota:** Il precalcolo di una :ref:`texture<class_GPUParticlesCollisionSDF3D_property_texture>` di **GPUParticlesCollisionSDF3D** è possibile solo all'interno dell'editor, poiché non esiste un metodo di precalcolo esposto per l'uso nei progetti esportati. Tuttavia, è comunque possibile caricare :ref:`Texture3D<class_Texture3D>` precalcolati nella sua proprietà :ref:`texture<class_GPUParticlesCollisionSDF3D_property_texture>` in un progetto esportato.

\ **Nota:** :ref:`ParticleProcessMaterial.collision_mode<class_ParticleProcessMaterial_property_collision_mode>` deve essere :ref:`ParticleProcessMaterial.COLLISION_RIGID<class_ParticleProcessMaterial_constant_COLLISION_RIGID>` o :ref:`ParticleProcessMaterial.COLLISION_HIDE_ON_CONTACT<class_ParticleProcessMaterial_constant_COLLISION_HIDE_ON_CONTACT>` sul materiale di processo di :ref:`GPUParticles3D<class_GPUParticles3D>` affinché la collisione funzioni.

\ **Nota:** La collisione di particelle riguarda solo i :ref:`GPUParticles3D<class_GPUParticles3D>`, non i :ref:`CPUParticles3D<class_CPUParticles3D>`.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------------------------------------------+-------------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                                         | :ref:`bake_mask<class_GPUParticlesCollisionSDF3D_property_bake_mask>`   | ``4294967295``       |
   +---------------------------------------------------------------+-------------------------------------------------------------------------+----------------------+
   | :ref:`Resolution<enum_GPUParticlesCollisionSDF3D_Resolution>` | :ref:`resolution<class_GPUParticlesCollisionSDF3D_property_resolution>` | ``2``                |
   +---------------------------------------------------------------+-------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`                                 | :ref:`size<class_GPUParticlesCollisionSDF3D_property_size>`             | ``Vector3(2, 2, 2)`` |
   +---------------------------------------------------------------+-------------------------------------------------------------------------+----------------------+
   | :ref:`Texture3D<class_Texture3D>`                             | :ref:`texture<class_GPUParticlesCollisionSDF3D_property_texture>`       |                      |
   +---------------------------------------------------------------+-------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                                     | :ref:`thickness<class_GPUParticlesCollisionSDF3D_property_thickness>`   | ``1.0``              |
   +---------------------------------------------------------------+-------------------------------------------------------------------------+----------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`get_bake_mask_value<class_GPUParticlesCollisionSDF3D_method_get_bake_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_bake_mask_value<class_GPUParticlesCollisionSDF3D_method_set_bake_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_GPUParticlesCollisionSDF3D_Resolution:

.. rst-class:: classref-enumeration

enum **Resolution**: :ref:`🔗<enum_GPUParticlesCollisionSDF3D_Resolution>`

.. _class_GPUParticlesCollisionSDF3D_constant_RESOLUTION_16:

.. rst-class:: classref-enumeration-constant

:ref:`Resolution<enum_GPUParticlesCollisionSDF3D_Resolution>` **RESOLUTION_16** = ``0``

Pre-elabora un signed distance field 16×16×16. Questa è l'opzione più veloce, ma anche la meno precisa.

.. _class_GPUParticlesCollisionSDF3D_constant_RESOLUTION_32:

.. rst-class:: classref-enumeration-constant

:ref:`Resolution<enum_GPUParticlesCollisionSDF3D_Resolution>` **RESOLUTION_32** = ``1``

Pre-elabora un signed distance field 32×32×32.

.. _class_GPUParticlesCollisionSDF3D_constant_RESOLUTION_64:

.. rst-class:: classref-enumeration-constant

:ref:`Resolution<enum_GPUParticlesCollisionSDF3D_Resolution>` **RESOLUTION_64** = ``2``

Pre-elabora un signed distance field 64×64×64.

.. _class_GPUParticlesCollisionSDF3D_constant_RESOLUTION_128:

.. rst-class:: classref-enumeration-constant

:ref:`Resolution<enum_GPUParticlesCollisionSDF3D_Resolution>` **RESOLUTION_128** = ``3``

Pre-elabora un signed distance field 128×128×128.

.. _class_GPUParticlesCollisionSDF3D_constant_RESOLUTION_256:

.. rst-class:: classref-enumeration-constant

:ref:`Resolution<enum_GPUParticlesCollisionSDF3D_Resolution>` **RESOLUTION_256** = ``4``

Pre-elabora un signed distance field 256×256×256.

.. _class_GPUParticlesCollisionSDF3D_constant_RESOLUTION_512:

.. rst-class:: classref-enumeration-constant

:ref:`Resolution<enum_GPUParticlesCollisionSDF3D_Resolution>` **RESOLUTION_512** = ``5``

Pre-elabora un signed distance field 512×512×512. Questa è l'opzione più lenta, ma anche la più precisa.

.. _class_GPUParticlesCollisionSDF3D_constant_RESOLUTION_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Resolution<enum_GPUParticlesCollisionSDF3D_Resolution>` **RESOLUTION_MAX** = ``6``

Rappresenta la dimensione dell'enumerazione :ref:`Resolution<enum_GPUParticlesCollisionSDF3D_Resolution>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_GPUParticlesCollisionSDF3D_property_bake_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **bake_mask** = ``4294967295`` :ref:`🔗<class_GPUParticlesCollisionSDF3D_property_bake_mask>`

.. rst-class:: classref-property-setget

- |void| **set_bake_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bake_mask**\ (\ )

Gli strati visivi da considerare quando si precalcola l'SDF di collisione delle particelle. Solo i :ref:`MeshInstance3D<class_MeshInstance3D>` i cui :ref:`VisualInstance3D.layers<class_VisualInstance3D_property_layers>` corrispondono a questo :ref:`bake_mask<class_GPUParticlesCollisionSDF3D_property_bake_mask>` saranno inclusi nell'SDF di collisione delle particelle generato. Per impostazione predefinita, tutti gli oggetti sono presi in considerazione per il baking dell'SDF di collisione delle particelle.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesCollisionSDF3D_property_resolution:

.. rst-class:: classref-property

:ref:`Resolution<enum_GPUParticlesCollisionSDF3D_Resolution>` **resolution** = ``2`` :ref:`🔗<class_GPUParticlesCollisionSDF3D_property_resolution>`

.. rst-class:: classref-property-setget

- |void| **set_resolution**\ (\ value\: :ref:`Resolution<enum_GPUParticlesCollisionSDF3D_Resolution>`\ )
- :ref:`Resolution<enum_GPUParticlesCollisionSDF3D_Resolution>` **get_resolution**\ (\ )

La risoluzione di precalcolo da usare per la :ref:`texture<class_GPUParticlesCollisionSDF3D_property_texture>` dell'SDF. La texture deve essere nuovamente precalcolata affinché le modifiche alla proprietà :ref:`resolution<class_GPUParticlesCollisionSDF3D_property_resolution>` siano effettive. Risoluzioni più elevate hanno un costo maggiore sulle prestazioni e richiedono più tempo per l'elaborazione. Le risoluzioni più elevate comportano anche texture precalcolate più grandi, portando a maggiori requisiti di VRAM e spazio di archiviazione. Per migliorare le prestazioni e ridurre i tempi di precalcolo, usa la risoluzione più bassa possibile per l'oggetto di cui stai rappresentando la collisione.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesCollisionSDF3D_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(2, 2, 2)`` :ref:`🔗<class_GPUParticlesCollisionSDF3D_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_size**\ (\ )

Le dimensioni dell'SDF di collisione in unità 3D. Per migliorare la qualità dell'SDF, :ref:`size<class_GPUParticlesCollisionSDF3D_property_size>` dovrebbe essere impostato il più piccolo possibile, coprendo le parti della scena di cui hai bisogno.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesCollisionSDF3D_property_texture:

.. rst-class:: classref-property

:ref:`Texture3D<class_Texture3D>` **texture** :ref:`🔗<class_GPUParticlesCollisionSDF3D_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture3D<class_Texture3D>`\ )
- :ref:`Texture3D<class_Texture3D>` **get_texture**\ (\ )

La texture 3D che rappresenta il signed distance field.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesCollisionSDF3D_property_thickness:

.. rst-class:: classref-property

:ref:`float<class_float>` **thickness** = ``1.0`` :ref:`🔗<class_GPUParticlesCollisionSDF3D_property_thickness>`

.. rst-class:: classref-property-setget

- |void| **set_thickness**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_thickness**\ (\ )

Spessore della forma di collisione. A differenza di altri collisori di particelle, **GPUParticlesCollisionSDF3D** è in realtà cavo all'interno. :ref:`thickness<class_GPUParticlesCollisionSDF3D_property_thickness>` può essere aumentato per impedire alle particelle di passare attraverso la forma di collisione ad alta velocità o quando **GPUParticlesCollisionSDF3D** viene spostato.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_GPUParticlesCollisionSDF3D_method_get_bake_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_bake_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GPUParticlesCollisionSDF3D_method_get_bake_mask_value>`

Restituisce se lo strato specificato di :ref:`bake_mask<class_GPUParticlesCollisionSDF3D_property_bake_mask>` è abilitato o meno, fornito un ``layer_number`` compreso tra 1 e 32.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesCollisionSDF3D_method_set_bake_mask_value:

.. rst-class:: classref-method

|void| **set_bake_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_GPUParticlesCollisionSDF3D_method_set_bake_mask_value>`

In base a ``value``, abilita o disabilita lo strato specificato in :ref:`bake_mask<class_GPUParticlesCollisionSDF3D_property_bake_mask>`, fornito un ``layer_number`` compreso tra 1 e 32.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
