:github_url: hide

.. _class_Separator:

Separator
=========

**Eredita:** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`HSeparator<class_HSeparator>`, :ref:`VSeparator<class_VSeparator>`

Classe base astratta per i separatori.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Classe base astratta per separatori, utilizzata per separare altri controlli. I **Separator** sono puramente visivi e normalmente disegnati come :ref:`StyleBoxLine<class_StyleBoxLine>`.

.. rst-class:: classref-reftable-group

Proprietà del tema
------------------------------------

.. table::
   :widths: auto

   +---------------------------------+--------------------------------------------------------------+-------+
   | :ref:`int<class_int>`           | :ref:`separation<class_Separator_theme_constant_separation>` | ``0`` |
   +---------------------------------+--------------------------------------------------------------+-------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`separator<class_Separator_theme_style_separator>`      |       |
   +---------------------------------+--------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà del tema
------------------------------------------------------------------------

.. _class_Separator_theme_constant_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **separation** = ``0`` :ref:`🔗<class_Separator_theme_constant_separation>`

La dimensione dell'area coperta dal separatore. Funziona effettivamente come una larghezza o altezza minima.

.. rst-class:: classref-item-separator

----

.. _class_Separator_theme_style_separator:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **separator** :ref:`🔗<class_Separator_theme_style_separator>`

Lo stile per la linea di separazione. Funziona meglio con :ref:`StyleBoxLine<class_StyleBoxLine>` (ricordati di abilitare :ref:`StyleBoxLine.vertical<class_StyleBoxLine_property_vertical>` per :ref:`VSeparator<class_VSeparator>`).

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
