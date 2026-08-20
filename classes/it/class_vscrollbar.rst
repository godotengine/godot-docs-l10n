:github_url: hide

.. _class_VScrollBar:

VScrollBar
==========

**Eredita:** :ref:`ScrollBar<class_ScrollBar>` **<** :ref:`Range<class_Range>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Una barra di scorrimento verticale che va dall'alto (minino) al basso (massimo).

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Una barra di scorrimento verticale, tipicamente utilizzata per navigare attraverso il contenuto che si estende oltre l'altezza visibile di un controllo. È un controllo basato su :ref:`Range<class_Range>` e va dall'alto (minimo) all basso (massimo). Si noti che questa direzione è l'opposto di quella per :ref:`VSlider<class_VSlider>`.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +--------------------------------------------------------+-----------------------+--------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\] | size_flags_horizontal | ``0`` (overrides :ref:`Control<class_Control_property_size_flags_horizontal>`) |
   +--------------------------------------------------------+-----------------------+--------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\] | size_flags_vertical   | ``1`` (overrides :ref:`Control<class_Control_property_size_flags_vertical>`)   |
   +--------------------------------------------------------+-----------------------+--------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Proprietà del tema
------------------------------------

.. table::
   :widths: auto

   +-----------------------+---------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`padding_left<class_VScrollBar_theme_constant_padding_left>`   | ``0`` |
   +-----------------------+---------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`padding_right<class_VScrollBar_theme_constant_padding_right>` | ``0`` |
   +-----------------------+---------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà del tema
------------------------------------------------------------------------

.. _class_VScrollBar_theme_constant_padding_left:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **padding_left** = ``0`` :ref:`🔗<class_VScrollBar_theme_constant_padding_left>`

Spaziatura tra la parte sinistra dell'elemento :ref:`ScrollBar.scroll<class_ScrollBar_theme_style_scroll>` e il :ref:`ScrollBar.grabber<class_ScrollBar_theme_style_grabber>`.

\ **Nota:** Per applicare una spaziatura verticale, modifica invece i margini di contenuto superiore/inferiore di :ref:`ScrollBar.scroll<class_ScrollBar_theme_style_scroll>`.

.. rst-class:: classref-item-separator

----

.. _class_VScrollBar_theme_constant_padding_right:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **padding_right** = ``0`` :ref:`🔗<class_VScrollBar_theme_constant_padding_right>`

Spaziatura tra la parte destra dell'elemento :ref:`ScrollBar.scroll<class_ScrollBar_theme_style_scroll>` e il :ref:`ScrollBar.grabber<class_ScrollBar_theme_style_grabber>`.

\ **Nota:** Per applicare una spaziatura verticale, modifica invece i margini di contenuto superiore/inferiore di :ref:`ScrollBar.scroll<class_ScrollBar_theme_style_scroll>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
