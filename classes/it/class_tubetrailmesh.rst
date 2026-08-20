:github_url: hide

.. _class_TubeTrailMesh:

TubeTrailMesh
=============

**Eredita:** :ref:`PrimitiveMesh<class_PrimitiveMesh>` **<** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Rappresenta un :ref:`PrimitiveMesh<class_PrimitiveMesh>` a forma di tubo dritto con spessore variabile.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

**TubeTrailMesh** rappresenta una mesh a forma di tubo dritto con spessore variabile. Il tubo è composto da un certo numero di sezioni cilindriche, ciascuna con la stessa :ref:`section_length<class_TubeTrailMesh_property_section_length>` e numero di :ref:`section_rings<class_TubeTrailMesh_property_section_rings>`. Una :ref:`curve<class_TubeTrailMesh_property_curve>` viene campionata lungo la lunghezza totale del tubo, il che significa che la curva determina il raggio del tubo lungo la sua lunghezza.

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

   +---------------------------+--------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`   | :ref:`cap_bottom<class_TubeTrailMesh_property_cap_bottom>`         | ``true`` |
   +---------------------------+--------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`   | :ref:`cap_top<class_TubeTrailMesh_property_cap_top>`               | ``true`` |
   +---------------------------+--------------------------------------------------------------------+----------+
   | :ref:`Curve<class_Curve>` | :ref:`curve<class_TubeTrailMesh_property_curve>`                   |          |
   +---------------------------+--------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`     | :ref:`radial_steps<class_TubeTrailMesh_property_radial_steps>`     | ``8``    |
   +---------------------------+--------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`radius<class_TubeTrailMesh_property_radius>`                 | ``0.5``  |
   +---------------------------+--------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`section_length<class_TubeTrailMesh_property_section_length>` | ``0.2``  |
   +---------------------------+--------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`     | :ref:`section_rings<class_TubeTrailMesh_property_section_rings>`   | ``3``    |
   +---------------------------+--------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`     | :ref:`sections<class_TubeTrailMesh_property_sections>`             | ``5``    |
   +---------------------------+--------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_TubeTrailMesh_property_cap_bottom:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **cap_bottom** = ``true`` :ref:`🔗<class_TubeTrailMesh_property_cap_bottom>`

.. rst-class:: classref-property-setget

- |void| **set_cap_bottom**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_cap_bottom**\ (\ )

Se ``true``, genera un tappo nella parte inferiore del tubo. Può essere impostato su ``false`` per velocizzare la generazione e il rendering quando il tappo non è mai visto dalla telecamera.

.. rst-class:: classref-item-separator

----

.. _class_TubeTrailMesh_property_cap_top:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **cap_top** = ``true`` :ref:`🔗<class_TubeTrailMesh_property_cap_top>`

.. rst-class:: classref-property-setget

- |void| **set_cap_top**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_cap_top**\ (\ )

Se ``true``, genera un tappo nella parte superiore del tubo. Può essere impostato su ``false`` per velocizzare la generazione e il rendering quando il tappo non è mai visto dalla telecamera.

.. rst-class:: classref-item-separator

----

.. _class_TubeTrailMesh_property_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **curve** :ref:`🔗<class_TubeTrailMesh_property_curve>`

.. rst-class:: classref-property-setget

- |void| **set_curve**\ (\ value\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_curve**\ (\ )

Determina il raggio del tubo lungo la sua lunghezza. Il raggio di un particolare anello di sezione si ottiene moltiplicando la linea di base :ref:`radius<class_TubeTrailMesh_property_radius>` per il valore di questa curva alla distanza specificata. Per valori inferiori a ``0``, le facce saranno invertite. Dovrebbe essere una :ref:`Curve<class_Curve>` unitaria.

.. rst-class:: classref-item-separator

----

.. _class_TubeTrailMesh_property_radial_steps:

.. rst-class:: classref-property

:ref:`int<class_int>` **radial_steps** = ``8`` :ref:`🔗<class_TubeTrailMesh_property_radial_steps>`

.. rst-class:: classref-property-setget

- |void| **set_radial_steps**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_radial_steps**\ (\ )

Il numero di lati del tubo. Ad esempio, un valore di ``5`` significa che il tubo sarà pentagonale. Valori più alti producono un tubo più dettagliato a scapito delle prestazioni.

.. rst-class:: classref-item-separator

----

.. _class_TubeTrailMesh_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``0.5`` :ref:`🔗<class_TubeTrailMesh_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

Il raggio di base del tubo. Il raggio di un particolare anello di sezione si ottiene moltiplicando questo raggio per il valore della :ref:`curve<class_TubeTrailMesh_property_curve>` alla distanza fornita.

.. rst-class:: classref-item-separator

----

.. _class_TubeTrailMesh_property_section_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **section_length** = ``0.2`` :ref:`🔗<class_TubeTrailMesh_property_section_length>`

.. rst-class:: classref-property-setget

- |void| **set_section_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_section_length**\ (\ )

La lunghezza di una sezione del tubo.

.. rst-class:: classref-item-separator

----

.. _class_TubeTrailMesh_property_section_rings:

.. rst-class:: classref-property

:ref:`int<class_int>` **section_rings** = ``3`` :ref:`🔗<class_TubeTrailMesh_property_section_rings>`

.. rst-class:: classref-property-setget

- |void| **set_section_rings**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_section_rings**\ (\ )

Il numero di anelli in una sezione. La :ref:`curve<class_TubeTrailMesh_property_curve>` viene campionata su ogni anello per determinarne il raggio. Valori più alti producono un tubo più dettagliato a scapito delle prestazioni.

.. rst-class:: classref-item-separator

----

.. _class_TubeTrailMesh_property_sections:

.. rst-class:: classref-property

:ref:`int<class_int>` **sections** = ``5`` :ref:`🔗<class_TubeTrailMesh_property_sections>`

.. rst-class:: classref-property-setget

- |void| **set_sections**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_sections**\ (\ )

Il numero totale di sezioni sul tubo.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
