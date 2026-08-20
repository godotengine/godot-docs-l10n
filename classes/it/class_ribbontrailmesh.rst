:github_url: hide

.. _class_RibbonTrailMesh:

RibbonTrailMesh
===============

**Eredita:** :ref:`PrimitiveMesh<class_PrimitiveMesh>` **<** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Rappresenta una :ref:`PrimitiveMesh<class_PrimitiveMesh>` a forma di nastro dritto con spessore variabile.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

**RibbonTrailMesh** rappresenta una mesh a forma di nastro raddrizzato con spessore variabile. Il nastro è composto da un certo numero di sezioni piatte o a forma di croce, ciascuna con la stessa :ref:`section_length<class_RibbonTrailMesh_property_section_length>` e numero di :ref:`section_segments<class_RibbonTrailMesh_property_section_segments>`. Una :ref:`curve<class_RibbonTrailMesh_property_curve>` è campionata lungo la lunghezza totale del nastro, il che significa che la curva determina lo spessore del nastro lungo la sua lunghezza.

Questa mesh primitiva è solitamente utilizzata per le scie di particelle.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Scie di particelle 3D <../tutorials/3d/particles/trails>`

- :doc:`Sistemi di particelle (3D) <../tutorials/3d/particles/index>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +------------------------------------------+--------------------------------------------------------------------------+---------+
   | :ref:`Curve<class_Curve>`                | :ref:`curve<class_RibbonTrailMesh_property_curve>`                       |         |
   +------------------------------------------+--------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>`                | :ref:`section_length<class_RibbonTrailMesh_property_section_length>`     | ``0.2`` |
   +------------------------------------------+--------------------------------------------------------------------------+---------+
   | :ref:`int<class_int>`                    | :ref:`section_segments<class_RibbonTrailMesh_property_section_segments>` | ``3``   |
   +------------------------------------------+--------------------------------------------------------------------------+---------+
   | :ref:`int<class_int>`                    | :ref:`sections<class_RibbonTrailMesh_property_sections>`                 | ``5``   |
   +------------------------------------------+--------------------------------------------------------------------------+---------+
   | :ref:`Shape<enum_RibbonTrailMesh_Shape>` | :ref:`shape<class_RibbonTrailMesh_property_shape>`                       | ``1``   |
   +------------------------------------------+--------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>`                | :ref:`size<class_RibbonTrailMesh_property_size>`                         | ``1.0`` |
   +------------------------------------------+--------------------------------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_RibbonTrailMesh_Shape:

.. rst-class:: classref-enumeration

enum **Shape**: :ref:`🔗<enum_RibbonTrailMesh_Shape>`

.. _class_RibbonTrailMesh_constant_SHAPE_FLAT:

.. rst-class:: classref-enumeration-constant

:ref:`Shape<enum_RibbonTrailMesh_Shape>` **SHAPE_FLAT** = ``0``

Conferisce alla mesh una singola faccia piana.

.. _class_RibbonTrailMesh_constant_SHAPE_CROSS:

.. rst-class:: classref-enumeration-constant

:ref:`Shape<enum_RibbonTrailMesh_Shape>` **SHAPE_CROSS** = ``1``

Conferisce alla mesh due facce piatte perpendicolari, creando una forma a croce.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_RibbonTrailMesh_property_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **curve** :ref:`🔗<class_RibbonTrailMesh_property_curve>`

.. rst-class:: classref-property-setget

- |void| **set_curve**\ (\ value\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_curve**\ (\ )

Determina la dimensione del nastro lungo la sua lunghezza. La dimensione di un particolare segmento di sezione si ottiene moltiplicando la dimensione (:ref:`size<class_RibbonTrailMesh_property_size>`) della linea di base per il valore di questa curva alla distanza specificata. Per valori inferiori a ``0``, le facce saranno invertite. Dovrebbe essere una :ref:`Curve<class_Curve>` unitaria.

.. rst-class:: classref-item-separator

----

.. _class_RibbonTrailMesh_property_section_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **section_length** = ``0.2`` :ref:`🔗<class_RibbonTrailMesh_property_section_length>`

.. rst-class:: classref-property-setget

- |void| **set_section_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_section_length**\ (\ )

La lunghezza di una sezione del nastro.

.. rst-class:: classref-item-separator

----

.. _class_RibbonTrailMesh_property_section_segments:

.. rst-class:: classref-property

:ref:`int<class_int>` **section_segments** = ``3`` :ref:`🔗<class_RibbonTrailMesh_property_section_segments>`

.. rst-class:: classref-property-setget

- |void| **set_section_segments**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_section_segments**\ (\ )

Il numero di segmenti in una sezione. La :ref:`curve<class_RibbonTrailMesh_property_curve>` è campionata su ogni segmento per determinarne la dimensione. Valori più alti risultano in un nastro più dettagliato a scapito delle prestazioni.

.. rst-class:: classref-item-separator

----

.. _class_RibbonTrailMesh_property_sections:

.. rst-class:: classref-property

:ref:`int<class_int>` **sections** = ``5`` :ref:`🔗<class_RibbonTrailMesh_property_sections>`

.. rst-class:: classref-property-setget

- |void| **set_sections**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_sections**\ (\ )

Il numero totale di sezioni sul nastro.

.. rst-class:: classref-item-separator

----

.. _class_RibbonTrailMesh_property_shape:

.. rst-class:: classref-property

:ref:`Shape<enum_RibbonTrailMesh_Shape>` **shape** = ``1`` :ref:`🔗<class_RibbonTrailMesh_property_shape>`

.. rst-class:: classref-property-setget

- |void| **set_shape**\ (\ value\: :ref:`Shape<enum_RibbonTrailMesh_Shape>`\ )
- :ref:`Shape<enum_RibbonTrailMesh_Shape>` **get_shape**\ (\ )

Determina la forma del nastro.

.. rst-class:: classref-item-separator

----

.. _class_RibbonTrailMesh_property_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **size** = ``1.0`` :ref:`🔗<class_RibbonTrailMesh_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_size**\ (\ )

La dimensione di base del nastro. La dimensione di un segmento di sezione particolare si ottiene moltiplicando questa dimensione per il valore della :ref:`curve<class_RibbonTrailMesh_property_curve>` alla distanza specificata.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
