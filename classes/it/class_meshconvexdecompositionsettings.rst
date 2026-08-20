:github_url: hide

.. _class_MeshConvexDecompositionSettings:

MeshConvexDecompositionSettings
===============================

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Parametri da utilizzare con un'operazione di scomposizione convessa :ref:`Mesh<class_Mesh>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Parametri da utilizzare con un'operazione di scomposizione convessa :ref:`Mesh<class_Mesh>`.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`bool<class_bool>`                                | :ref:`convex_hull_approximation<class_MeshConvexDecompositionSettings_property_convex_hull_approximation>`               | ``true``   |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`int<class_int>`                                  | :ref:`convex_hull_downsampling<class_MeshConvexDecompositionSettings_property_convex_hull_downsampling>`                 | ``4``      |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>`                              | :ref:`max_concavity<class_MeshConvexDecompositionSettings_property_max_concavity>`                                       | ``1.0``    |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`int<class_int>`                                  | :ref:`max_convex_hulls<class_MeshConvexDecompositionSettings_property_max_convex_hulls>`                                 | ``1``      |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`int<class_int>`                                  | :ref:`max_num_vertices_per_convex_hull<class_MeshConvexDecompositionSettings_property_max_num_vertices_per_convex_hull>` | ``32``     |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>`                              | :ref:`min_volume_per_convex_hull<class_MeshConvexDecompositionSettings_property_min_volume_per_convex_hull>`             | ``0.0001`` |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`Mode<enum_MeshConvexDecompositionSettings_Mode>` | :ref:`mode<class_MeshConvexDecompositionSettings_property_mode>`                                                         | ``0``      |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`bool<class_bool>`                                | :ref:`normalize_mesh<class_MeshConvexDecompositionSettings_property_normalize_mesh>`                                     | ``false``  |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`int<class_int>`                                  | :ref:`plane_downsampling<class_MeshConvexDecompositionSettings_property_plane_downsampling>`                             | ``4``      |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`bool<class_bool>`                                | :ref:`project_hull_vertices<class_MeshConvexDecompositionSettings_property_project_hull_vertices>`                       | ``true``   |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`int<class_int>`                                  | :ref:`resolution<class_MeshConvexDecompositionSettings_property_resolution>`                                             | ``10000``  |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>`                              | :ref:`revolution_axes_clipping_bias<class_MeshConvexDecompositionSettings_property_revolution_axes_clipping_bias>`       | ``0.05``   |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>`                              | :ref:`symmetry_planes_clipping_bias<class_MeshConvexDecompositionSettings_property_symmetry_planes_clipping_bias>`       | ``0.05``   |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_MeshConvexDecompositionSettings_Mode:

.. rst-class:: classref-enumeration

enum **Mode**: :ref:`🔗<enum_MeshConvexDecompositionSettings_Mode>`

.. _class_MeshConvexDecompositionSettings_constant_CONVEX_DECOMPOSITION_MODE_VOXEL:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_MeshConvexDecompositionSettings_Mode>` **CONVEX_DECOMPOSITION_MODE_VOXEL** = ``0``

Costante per la scomposizione convessa approssimativa basata sui voxel.

.. _class_MeshConvexDecompositionSettings_constant_CONVEX_DECOMPOSITION_MODE_TETRAHEDRON:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_MeshConvexDecompositionSettings_Mode>` **CONVEX_DECOMPOSITION_MODE_TETRAHEDRON** = ``1``

Costante per la scomposizione convessa approssimata basata sui tetraedri.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_MeshConvexDecompositionSettings_property_convex_hull_approximation:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **convex_hull_approximation** = ``true`` :ref:`🔗<class_MeshConvexDecompositionSettings_property_convex_hull_approximation>`

.. rst-class:: classref-property-setget

- |void| **set_convex_hull_approximation**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_convex_hull_approximation**\ (\ )

Se ``true``, usa un approssimazione per il calcolo degli inviluppi convessi.

.. rst-class:: classref-item-separator

----

.. _class_MeshConvexDecompositionSettings_property_convex_hull_downsampling:

.. rst-class:: classref-property

:ref:`int<class_int>` **convex_hull_downsampling** = ``4`` :ref:`🔗<class_MeshConvexDecompositionSettings_property_convex_hull_downsampling>`

.. rst-class:: classref-property-setget

- |void| **set_convex_hull_downsampling**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_convex_hull_downsampling**\ (\ )

Controlla la precisione del processo di generazione dell'inviluppo convesso durante la fase di selezione del piano di ritaglio. Varia da ``1`` a ``16``.

.. rst-class:: classref-item-separator

----

.. _class_MeshConvexDecompositionSettings_property_max_concavity:

.. rst-class:: classref-property

:ref:`float<class_float>` **max_concavity** = ``1.0`` :ref:`🔗<class_MeshConvexDecompositionSettings_property_max_concavity>`

.. rst-class:: classref-property-setget

- |void| **set_max_concavity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max_concavity**\ (\ )

Concavità massima. Varia da ``0.0`` a ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_MeshConvexDecompositionSettings_property_max_convex_hulls:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_convex_hulls** = ``1`` :ref:`🔗<class_MeshConvexDecompositionSettings_property_max_convex_hulls>`

.. rst-class:: classref-property-setget

- |void| **set_max_convex_hulls**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_convex_hulls**\ (\ )

Il numero massimo di inviluppi convessi da produrre dall'operazione di unione.

.. rst-class:: classref-item-separator

----

.. _class_MeshConvexDecompositionSettings_property_max_num_vertices_per_convex_hull:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_num_vertices_per_convex_hull** = ``32`` :ref:`🔗<class_MeshConvexDecompositionSettings_property_max_num_vertices_per_convex_hull>`

.. rst-class:: classref-property-setget

- |void| **set_max_num_vertices_per_convex_hull**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_num_vertices_per_convex_hull**\ (\ )

Controlla il numero massimo di triangoli per ogni inviluppo convesso. Varia da ``4`` a ``1024``.

.. rst-class:: classref-item-separator

----

.. _class_MeshConvexDecompositionSettings_property_min_volume_per_convex_hull:

.. rst-class:: classref-property

:ref:`float<class_float>` **min_volume_per_convex_hull** = ``0.0001`` :ref:`🔗<class_MeshConvexDecompositionSettings_property_min_volume_per_convex_hull>`

.. rst-class:: classref-property-setget

- |void| **set_min_volume_per_convex_hull**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_min_volume_per_convex_hull**\ (\ )

Controlla il campionamento adattivo degli inviluppi convessi generati. Varia da ``0.0`` a ``0.01``.

.. rst-class:: classref-item-separator

----

.. _class_MeshConvexDecompositionSettings_property_mode:

.. rst-class:: classref-property

:ref:`Mode<enum_MeshConvexDecompositionSettings_Mode>` **mode** = ``0`` :ref:`🔗<class_MeshConvexDecompositionSettings_property_mode>`

.. rst-class:: classref-property-setget

- |void| **set_mode**\ (\ value\: :ref:`Mode<enum_MeshConvexDecompositionSettings_Mode>`\ )
- :ref:`Mode<enum_MeshConvexDecompositionSettings_Mode>` **get_mode**\ (\ )

Modalità per la scomposizione convessa approssimata.

.. rst-class:: classref-item-separator

----

.. _class_MeshConvexDecompositionSettings_property_normalize_mesh:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **normalize_mesh** = ``false`` :ref:`🔗<class_MeshConvexDecompositionSettings_property_normalize_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_normalize_mesh**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_normalize_mesh**\ (\ )

Se ``true``, normalizza la mesh prima di applicare la scomposizione convessa.

.. rst-class:: classref-item-separator

----

.. _class_MeshConvexDecompositionSettings_property_plane_downsampling:

.. rst-class:: classref-property

:ref:`int<class_int>` **plane_downsampling** = ``4`` :ref:`🔗<class_MeshConvexDecompositionSettings_property_plane_downsampling>`

.. rst-class:: classref-property-setget

- |void| **set_plane_downsampling**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_plane_downsampling**\ (\ )

Controlla la granularità della ricerca del "miglior" piano di ritaglio. Varia da ``1`` a ``16``.

.. rst-class:: classref-item-separator

----

.. _class_MeshConvexDecompositionSettings_property_project_hull_vertices:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **project_hull_vertices** = ``true`` :ref:`🔗<class_MeshConvexDecompositionSettings_property_project_hull_vertices>`

.. rst-class:: classref-property-setget

- |void| **set_project_hull_vertices**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_project_hull_vertices**\ (\ )

Se ``true``, proietta i vertici risultanti dell'inviluppo convesso sulla mesh sorgente originale per aumentare la precisione in virgola mobile dei risultati.

.. rst-class:: classref-item-separator

----

.. _class_MeshConvexDecompositionSettings_property_resolution:

.. rst-class:: classref-property

:ref:`int<class_int>` **resolution** = ``10000`` :ref:`🔗<class_MeshConvexDecompositionSettings_property_resolution>`

.. rst-class:: classref-property-setget

- |void| **set_resolution**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_resolution**\ (\ )

Numero massimo di voxel generati durante la fase di voxelization.

.. rst-class:: classref-item-separator

----

.. _class_MeshConvexDecompositionSettings_property_revolution_axes_clipping_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **revolution_axes_clipping_bias** = ``0.05`` :ref:`🔗<class_MeshConvexDecompositionSettings_property_revolution_axes_clipping_bias>`

.. rst-class:: classref-property-setget

- |void| **set_revolution_axes_clipping_bias**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_revolution_axes_clipping_bias**\ (\ )

Controlla la tendenza al ritaglio lungo gli assi di rivoluzione. Varia da ``0.0`` a ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_MeshConvexDecompositionSettings_property_symmetry_planes_clipping_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **symmetry_planes_clipping_bias** = ``0.05`` :ref:`🔗<class_MeshConvexDecompositionSettings_property_symmetry_planes_clipping_bias>`

.. rst-class:: classref-property-setget

- |void| **set_symmetry_planes_clipping_bias**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_symmetry_planes_clipping_bias**\ (\ )

Controlla la tendenza al ritaglio lungo gli assi di simmetria. Varia da ``0.0`` a ``1.0``.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
