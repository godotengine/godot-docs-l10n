:github_url: hide

.. _class_Popup:

Popup
=====

**Eredita:** :ref:`Window<class_Window>` **<** :ref:`Viewport<class_Viewport>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`PopupMenu<class_PopupMenu>`, :ref:`PopupPanel<class_PopupPanel>`

Classe di base per le finestre e i pannelli contestuali con una posizione fissa.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

**Popup** è una classe di base per le finestre e i pannelli contestuali con una posizione fissa. È una modale per impostazione predefinita (vedi :ref:`Window.popup_window<class_Window_property_popup_window>`) e fornisce metodi per implementare un comportamento di popup personalizzato.

\ **Nota:** **Popup** è inizialmente invisibile. Per renderlo visibile, chiama uno dei metodi ``popup_*`` da :ref:`Window<class_Window>` sul nodo, come ad esempio :ref:`Window.popup_centered_clamped()<class_Window_method_popup_centered_clamped>`.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------+-------------------+-----------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | borderless        | ``true`` (overrides :ref:`Window<class_Window_property_borderless>`)        |
   +-------------------------+-------------------+-----------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | maximize_disabled | ``true`` (overrides :ref:`Window<class_Window_property_maximize_disabled>`) |
   +-------------------------+-------------------+-----------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | minimize_disabled | ``true`` (overrides :ref:`Window<class_Window_property_minimize_disabled>`) |
   +-------------------------+-------------------+-----------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | popup_window      | ``true`` (overrides :ref:`Window<class_Window_property_popup_window>`)      |
   +-------------------------+-------------------+-----------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | popup_wm_hint     | ``true`` (overrides :ref:`Window<class_Window_property_popup_wm_hint>`)     |
   +-------------------------+-------------------+-----------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | transient         | ``true`` (overrides :ref:`Window<class_Window_property_transient>`)         |
   +-------------------------+-------------------+-----------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | unresizable       | ``true`` (overrides :ref:`Window<class_Window_property_unresizable>`)       |
   +-------------------------+-------------------+-----------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | visible           | ``false`` (overrides :ref:`Window<class_Window_property_visible>`)          |
   +-------------------------+-------------------+-----------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | wrap_controls     | ``true`` (overrides :ref:`Window<class_Window_property_wrap_controls>`)     |
   +-------------------------+-------------------+-----------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_Popup_signal_popup_hide:

.. rst-class:: classref-signal

**popup_hide**\ (\ ) :ref:`🔗<class_Popup_signal_popup_hide>`

Emesso quando il popup viene nascosto.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
