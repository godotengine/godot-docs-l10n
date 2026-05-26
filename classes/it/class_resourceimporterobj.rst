:github_url: hide

.. _class_ResourceImporterOBJ:

ResourceImporterOBJ
===================

**Eredita:** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Importa un modello 3D OBJ come :ref:`Mesh<class_Mesh>` o scena indipendente.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

A differenza di :ref:`ResourceImporterScene<class_ResourceImporterScene>`, **ResourceImporterOBJ** importerà una singola risorsa :ref:`Mesh<class_Mesh>` per impostazione predefinita anziché importare una :ref:`PackedScene<class_PackedScene>`. Ciò rende più facile usare la risorsa :ref:`Mesh<class_Mesh>` nei nodi che richiedono risorse :ref:`Mesh<class_Mesh>` dirette, come :ref:`GridMap<class_GridMap>`, :ref:`GPUParticles3D<class_GPUParticles3D>` o :ref:`CPUParticles3D<class_CPUParticles3D>`. Si noti che è comunque possibile salvare le risorse mesh dalle scene 3D attraverso la finestra di dialogo **Impostazioni d'importazione avanzate**, a prescindere dal formato di origine.

Vedi anche :ref:`ResourceImporterScene<class_ResourceImporterScene>`, che è utilizzato per i formati 3D più avanzati come glTF.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Importazione di scene 3D <../tutorials/assets_pipeline/importing_3d_scenes/index>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`       | :ref:`force_disable_mesh_compression<class_ResourceImporterOBJ_property_force_disable_mesh_compression>`     | ``false``            |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`       | :ref:`generate_lightmap_uv2<class_ResourceImporterOBJ_property_generate_lightmap_uv2>`                       | ``false``            |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`     | :ref:`generate_lightmap_uv2_texel_size<class_ResourceImporterOBJ_property_generate_lightmap_uv2_texel_size>` | ``0.2``              |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`       | :ref:`generate_lods<class_ResourceImporterOBJ_property_generate_lods>`                                       | ``true``             |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`       | :ref:`generate_shadow_mesh<class_ResourceImporterOBJ_property_generate_shadow_mesh>`                         | ``true``             |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`       | :ref:`generate_tangents<class_ResourceImporterOBJ_property_generate_tangents>`                               | ``true``             |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`offset_mesh<class_ResourceImporterOBJ_property_offset_mesh>`                                           | ``Vector3(0, 0, 0)`` |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`scale_mesh<class_ResourceImporterOBJ_property_scale_mesh>`                                             | ``Vector3(1, 1, 1)`` |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_ResourceImporterOBJ_property_force_disable_mesh_compression:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **force_disable_mesh_compression** = ``false`` :ref:`🔗<class_ResourceImporterOBJ_property_force_disable_mesh_compression>`

Se ``true``, la compressione della mesh non sarà utilizzata. Considera di abilitarla se noti artefatti a blocchi nelle normali o UV della mesh, o se hai mesh più grandi di qualche migliaio di metri in ogni direzione.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOBJ_property_generate_lightmap_uv2:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **generate_lightmap_uv2** = ``false`` :ref:`🔗<class_ResourceImporterOBJ_property_generate_lightmap_uv2>`

Se ``true``, genera l'UV2 durante l'importazione per la preparazione di :ref:`LightmapGI<class_LightmapGI>`.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOBJ_property_generate_lightmap_uv2_texel_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **generate_lightmap_uv2_texel_size** = ``0.2`` :ref:`🔗<class_ResourceImporterOBJ_property_generate_lightmap_uv2_texel_size>`

Controlla le dimensioni di ogni texel sulla lightmap precalcolata. Un valore più piccolo produce lightmap più precise, a costo di dimensioni maggiori e tempi di precalcolo più lunghi.

\ **Nota:** Efficace solo se :ref:`generate_lightmap_uv2<class_ResourceImporterOBJ_property_generate_lightmap_uv2>` è impostato su ``true``.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOBJ_property_generate_lods:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **generate_lods** = ``true`` :ref:`🔗<class_ResourceImporterOBJ_property_generate_lods>`

Se ``true``, genera variazioni di dettaglio inferiori della mesh che saranno visualizzate in lontananza per migliorare le prestazioni di rendering. Non tutte le mesh approfittano dei LOD, soprattutto se non sono mai renderizzate da lontano. Disattivando questa opzione è possibile ridurre le dimensioni del file risultante e velocizzare l'importazione. Consulta `Livello di dettaglio delle mesh (LOD) <../tutorials/3d/mesh_lod.html#doc-mesh-lod>`__ per maggiori informazioni.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOBJ_property_generate_shadow_mesh:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **generate_shadow_mesh** = ``true`` :ref:`🔗<class_ResourceImporterOBJ_property_generate_shadow_mesh>`

Se ``true``, abilita la generazione di mesh per le ombre all'importazione. Ciò ottimizza il rendering delle ombre senza ridurre la qualità saldando i vertici insieme quando possibile. Ciò a sua volta riduce la banda di memoria richiesta per renderizzare le ombre. La generazione dei mesh per le ombre al momento non supporta l'uso di un livello di dettaglio inferiore rispetto alla mesh sorgente (ma il rendering delle ombre utilizzerà i LOD quando appropriato).

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOBJ_property_generate_tangents:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **generate_tangents** = ``true`` :ref:`🔗<class_ResourceImporterOBJ_property_generate_tangents>`

If ``true``, generate vertex tangents using `Mikktspace <http://www.mikktspace.com/>`__ if the source mesh doesn't have tangent data. When possible, it's recommended to let the 3D modeling software generate tangents on export instead of relying on this option. Tangents are required for correct display of normal and height maps, along with any material/shader features that require tangents.

If you don't need material features that require tangents, disabling this can reduce output file size and speed up importing if the source 3D file doesn't contain tangents.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOBJ_property_offset_mesh:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **offset_mesh** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_ResourceImporterOBJ_property_offset_mesh>`

Scosta i dati della mesh del valore specificato. Può essere utilizzato per lavorare con mesh non allineate senza dover modificare il file sorgente.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOBJ_property_scale_mesh:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **scale_mesh** = ``Vector3(1, 1, 1)`` :ref:`🔗<class_ResourceImporterOBJ_property_scale_mesh>`

Scala i dati della mesh in base al valore specificato. Può essere usato per lavorare attorno a mesh non scalate senza dover modificare il file sorgente.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
