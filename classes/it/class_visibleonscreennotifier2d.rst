:github_url: hide

.. _class_VisibleOnScreenNotifier2D:

VisibleOnScreenNotifier2D
=========================

**Eredita:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`VisibleOnScreenEnabler2D<class_VisibleOnScreenEnabler2D>`

Una regione rettangolare dello spazio 2D che rileva se è visibile sullo schermo.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

:ref:`VisibleOnScreenEnabler2D<class_VisibleOnScreenEnabler2D>` rappresenta una regione rettangolare nello spazio 2D. Quando una parte di questa regione diventa visibile sullo schermo o in una viewport, emetterà un segnale :ref:`screen_entered<class_VisibleOnScreenNotifier2D_signal_screen_entered>` e, allo stesso modo, emetterà un segnale :ref:`screen_exited<class_VisibleOnScreenNotifier2D_signal_screen_exited>` quando nessuna parte di essa rimane visibile.

Se vuoi che un nodo sia abilitato automaticamente quando questa regione è visibile sullo schermo, usa :ref:`VisibleOnScreenEnabler2D<class_VisibleOnScreenEnabler2D>`.

\ **Nota:** **VisibleOnScreenNotifier2D** usa il codice di culling del renderer per determinare se è visibile sullo schermo, quindi non funzionerà a meno che :ref:`CanvasItem.visible<class_CanvasItem_property_visible>` non sia impostato su ``true``.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- `Demo 2D "Dodge The Creeps" <https://godotengine.org/asset-library/asset/2712>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------+-----------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`rect<class_VisibleOnScreenNotifier2D_property_rect>`           | ``Rect2(-10, -10, 20, 20)`` |
   +---------------------------+----------------------------------------------------------------------+-----------------------------+
   | :ref:`bool<class_bool>`   | :ref:`show_rect<class_VisibleOnScreenNotifier2D_property_show_rect>` | ``true``                    |
   +---------------------------+----------------------------------------------------------------------+-----------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_on_screen<class_VisibleOnScreenNotifier2D_method_is_on_screen>`\ (\ ) |const| |
   +-------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_VisibleOnScreenNotifier2D_signal_screen_entered:

.. rst-class:: classref-signal

**screen_entered**\ (\ ) :ref:`🔗<class_VisibleOnScreenNotifier2D_signal_screen_entered>`

Emesso quando il VisibleOnScreenNotifier2D entra nello schermo.

.. rst-class:: classref-item-separator

----

.. _class_VisibleOnScreenNotifier2D_signal_screen_exited:

.. rst-class:: classref-signal

**screen_exited**\ (\ ) :ref:`🔗<class_VisibleOnScreenNotifier2D_signal_screen_exited>`

Emesso quando il VisibleOnScreenNotifier2D esce dallo schermo.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_VisibleOnScreenNotifier2D_property_rect:

.. rst-class:: classref-property

:ref:`Rect2<class_Rect2>` **rect** = ``Rect2(-10, -10, 20, 20)`` :ref:`🔗<class_VisibleOnScreenNotifier2D_property_rect>`

.. rst-class:: classref-property-setget

- |void| **set_rect**\ (\ value\: :ref:`Rect2<class_Rect2>`\ )
- :ref:`Rect2<class_Rect2>` **get_rect**\ (\ )

Il rettangolo di delimitazione del VisibleOnScreenNotifier2D.

.. rst-class:: classref-item-separator

----

.. _class_VisibleOnScreenNotifier2D_property_show_rect:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **show_rect** = ``true`` :ref:`🔗<class_VisibleOnScreenNotifier2D_property_show_rect>`

.. rst-class:: classref-property-setget

- |void| **set_show_rect**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_showing_rect**\ (\ )

Se ``true``, mostra l'area rettangolare di :ref:`rect<class_VisibleOnScreenNotifier2D_property_rect>` nell'editor con un riempimento magenta traslucido. A differenza di cambiare la visibilità del VisibleOnScreenNotifier2D, questo non influisce sul rilevamento dello screen culling.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_VisibleOnScreenNotifier2D_method_is_on_screen:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_on_screen**\ (\ ) |const| :ref:`🔗<class_VisibleOnScreenNotifier2D_method_is_on_screen>`

Se ``true``, il rettangolo di delimitazione è sullo schermo.

\ **Nota:** Ci vuole un frame per determinare la visibilità di **VisibleOnScreenNotifier2D** una volta aggiunto all'albero di scene, quindi questo metodo restituirà sempre ``false`` subito dopo essere stato istanziato, prima del passaggio di disegno.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
