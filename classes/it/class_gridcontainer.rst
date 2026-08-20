:github_url: hide

.. _class_GridContainer:

GridContainer
=============

**Eredita:** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un contenitore che organizza i suoi controlli figlio in una disposizione a griglia.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Il **GridContainer** organizza i suoi controlli figlio in una disposizione a griglia. Il numero di colonne è specificato dalla proprietà :ref:`columns<class_GridContainer_property_columns>`, mentre il numero di righe dipende da quante ne sono necessarie per i controlli figli. Il numero di righe e colonne è mantenuto per ogni dimensione del contenitore.

\ **Nota:** Il **GridContainer** funziona solo con nodi figli che ereditano da :ref:`Control<class_Control>`. Non riorganizzerà i nodi figli che ereditano da :ref:`Node2D<class_Node2D>`.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Utilizzo dei Container <../tutorials/ui/gui_containers>`

- `Demo di test di sistema operativo <https://godotengine.org/asset-library/asset/2789>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------+------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`columns<class_GridContainer_property_columns>` | ``1`` |
   +-----------------------+------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

Proprietà del tema
------------------------------------

.. table::
   :widths: auto

   +-----------------------+----------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`h_separation<class_GridContainer_theme_constant_h_separation>` | ``4`` |
   +-----------------------+----------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`v_separation<class_GridContainer_theme_constant_v_separation>` | ``4`` |
   +-----------------------+----------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_GridContainer_property_columns:

.. rst-class:: classref-property

:ref:`int<class_int>` **columns** = ``1`` :ref:`🔗<class_GridContainer_property_columns>`

.. rst-class:: classref-property-setget

- |void| **set_columns**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_columns**\ (\ )

Numero di colonne nel **GridContainer**. Se modificato, il **GridContainer** riordina i suoi nodi figli di tipo Control per adattarsi alla nuova disposizione.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà del tema
------------------------------------------------------------------------

.. _class_GridContainer_theme_constant_h_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **h_separation** = ``4`` :ref:`🔗<class_GridContainer_theme_constant_h_separation>`

La separazione orizzontale dei nodi figli.

.. rst-class:: classref-item-separator

----

.. _class_GridContainer_theme_constant_v_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **v_separation** = ``4`` :ref:`🔗<class_GridContainer_theme_constant_v_separation>`

La separazione verticale dei nodi figli.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
