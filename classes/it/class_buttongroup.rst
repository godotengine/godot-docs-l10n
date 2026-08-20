:github_url: hide

.. meta::
	:keywords: radio

.. _class_ButtonGroup:

ButtonGroup
===========

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un gruppo di pulsanti che non consente di premere più di un pulsante alla volta.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un gruppo di pulsanti derivati da :ref:`BaseButton<class_BaseButton>`. I pulsanti in un **ButtonGroup** sono trattati come pulsanti di opzione: più di un pulsante non può essere premuto alla volta. Alcuni tipi di pulsanti (come :ref:`CheckBox<class_CheckBox>`) potrebbero avere un aspetto speciale in questo stato.

Ogni membro di un **ButtonGroup** dovrebbe avere :ref:`BaseButton.toggle_mode<class_BaseButton_property_toggle_mode>` impostato su ``true``.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------+---------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`allow_unpress<class_ButtonGroup_property_allow_unpress>` | ``false``                                                                             |
   +-------------------------+----------------------------------------------------------------+---------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | resource_local_to_scene                                        | ``true`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +-------------------------+----------------------------------------------------------------+---------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`BaseButton<class_BaseButton>`\] | :ref:`get_buttons<class_ButtonGroup_method_get_buttons>`\ (\ )               |
   +------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`BaseButton<class_BaseButton>`                              | :ref:`get_pressed_button<class_ButtonGroup_method_get_pressed_button>`\ (\ ) |
   +------------------------------------------------------------------+------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_ButtonGroup_signal_pressed:

.. rst-class:: classref-signal

**pressed**\ (\ button\: :ref:`BaseButton<class_BaseButton>`\ ) :ref:`🔗<class_ButtonGroup_signal_pressed>`

Emesso quando viene premuto uno dei pulsanti del gruppo.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_ButtonGroup_property_allow_unpress:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **allow_unpress** = ``false`` :ref:`🔗<class_ButtonGroup_property_allow_unpress>`

.. rst-class:: classref-property-setget

- |void| **set_allow_unpress**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_allow_unpress**\ (\ )

Se ``true``, è possibile rilasciare tutti i pulsanti in questo **ButtonGroup**.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_ButtonGroup_method_get_buttons:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`BaseButton<class_BaseButton>`\] **get_buttons**\ (\ ) :ref:`🔗<class_ButtonGroup_method_get_buttons>`

Restituisce un :ref:`Array<class_Array>` di :ref:`Button<class_Button>` che hanno questa risorsa come il loro **ButtonGroup** (vedi :ref:`BaseButton.button_group<class_BaseButton_property_button_group>`).

.. rst-class:: classref-item-separator

----

.. _class_ButtonGroup_method_get_pressed_button:

.. rst-class:: classref-method

:ref:`BaseButton<class_BaseButton>` **get_pressed_button**\ (\ ) :ref:`🔗<class_ButtonGroup_method_get_pressed_button>`

Restituisce il pulsante attualmente premuto.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
