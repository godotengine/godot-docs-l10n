:github_url: hide

.. meta::
	:keywords: sun

.. _class_DirectionalLight2D:

DirectionalLight2D
==================

**Eredita:** :ref:`Light2D<class_Light2D>` **<** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Luce direzionale 2D a distanza.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Una luce direzionale è un tipo di nodo :ref:`Light2D<class_Light2D>` che modella un numero infinito di raggi paralleli che coprono l'intera scena. È utilizzato per luci con forte intensità che si trovano lontano dalla scena (ad esempio: per modellare la luce solare o la luce lunare).

La luce è emessa nella direzione +Y della base globale del nodo. Per una luce non ruotata, ciò significa che la luce è emessa verso il basso. La posizione del nodo è ignorata; solo la base è utilizzata per determinare la direzione della luce.

\ **Nota:** **DirectionalLight2D** non supporta maschere di culling della luce (ma supporta maschere di culling dell'ombra). Illuminerà sempre i nodi 2D, indipendentemente dalla :ref:`CanvasItem.light_mask<class_CanvasItem_property_light_mask>` del nodo 2D.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Luci e ombre 2D <../tutorials/2d/2d_lights_and_shadows>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------------+-------------+
   | :ref:`float<class_float>` | :ref:`height<class_DirectionalLight2D_property_height>`             | ``0.0``     |
   +---------------------------+---------------------------------------------------------------------+-------------+
   | :ref:`float<class_float>` | :ref:`max_distance<class_DirectionalLight2D_property_max_distance>` | ``10000.0`` |
   +---------------------------+---------------------------------------------------------------------+-------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_DirectionalLight2D_property_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **height** = ``0.0`` :ref:`🔗<class_DirectionalLight2D_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_height**\ (\ )

L'altezza della luce. Utilizzata con il normal mapping 2D. Varia da 0 (parallela al piano) a 1 (perpendicolare al piano).

.. rst-class:: classref-item-separator

----

.. _class_DirectionalLight2D_property_max_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **max_distance** = ``10000.0`` :ref:`🔗<class_DirectionalLight2D_property_max_distance>`

.. rst-class:: classref-property-setget

- |void| **set_max_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max_distance**\ (\ )

La distanza massima dal centro della telecamera a cui gli oggetti possano trovarsi prima che le loro ombre vengano scartate (in pixel). Diminuendo questo valore è possibile impedire agli oggetti situati all'esterno della telecamera di proiettare ombre (migliorando anche le prestazioni). :ref:`Camera2D.zoom<class_Camera2D_property_zoom>` non viene preso in considerazione da :ref:`max_distance<class_DirectionalLight2D_property_max_distance>`, il che significa che a valori di zoom più elevati, le ombre sembreranno dissolversi prima quando si esegue lo zoom su un determinato punto.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
