:github_url: hide

.. _class_Range:

Range
=====

**Eredita:** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`EditorSpinSlider<class_EditorSpinSlider>`, :ref:`ProgressBar<class_ProgressBar>`, :ref:`ScrollBar<class_ScrollBar>`, :ref:`Slider<class_Slider>`, :ref:`SpinBox<class_SpinBox>`, :ref:`TextureProgressBar<class_TextureProgressBar>`

Classe base astratta per i controlli che rappresentano un numero entro un intervallo.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Range è una classe base astratta per i controlli che rappresentano un numero entro un intervallo, utilizzando un passo (:ref:`step<class_Range_property_step>`) e dimensioni di pagina (:ref:`page<class_Range_property_page>`) configurati. Vedi ad esempio :ref:`ScrollBar<class_ScrollBar>` e :ref:`Slider<class_Slider>` per esempi di nodi di livello superiore che usano Range.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +--------------------------------------------------------+----------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                | :ref:`allow_greater<class_Range_property_allow_greater>` | ``false``                                                                    |
   +--------------------------------------------------------+----------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                | :ref:`allow_lesser<class_Range_property_allow_lesser>`   | ``false``                                                                    |
   +--------------------------------------------------------+----------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                | :ref:`exp_edit<class_Range_property_exp_edit>`           | ``false``                                                                    |
   +--------------------------------------------------------+----------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                              | :ref:`max_value<class_Range_property_max_value>`         | ``100.0``                                                                    |
   +--------------------------------------------------------+----------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                              | :ref:`min_value<class_Range_property_min_value>`         | ``0.0``                                                                      |
   +--------------------------------------------------------+----------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                              | :ref:`page<class_Range_property_page>`                   | ``0.0``                                                                      |
   +--------------------------------------------------------+----------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                              | :ref:`ratio<class_Range_property_ratio>`                 |                                                                              |
   +--------------------------------------------------------+----------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                | :ref:`rounded<class_Range_property_rounded>`             | ``false``                                                                    |
   +--------------------------------------------------------+----------------------------------------------------------+------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\] | size_flags_vertical                                      | ``0`` (overrides :ref:`Control<class_Control_property_size_flags_vertical>`) |
   +--------------------------------------------------------+----------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                              | :ref:`step<class_Range_property_step>`                   | ``0.01``                                                                     |
   +--------------------------------------------------------+----------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                              | :ref:`value<class_Range_property_value>`                 | ``0.0``                                                                      |
   +--------------------------------------------------------+----------------------------------------------------------+------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +--------+-------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_value_changed<class_Range_private_method__value_changed>`\ (\ new_value\: :ref:`float<class_float>`\ ) |virtual| |
   +--------+-------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`set_value_no_signal<class_Range_method_set_value_no_signal>`\ (\ value\: :ref:`float<class_float>`\ )             |
   +--------+-------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`share<class_Range_method_share>`\ (\ with\: :ref:`Node<class_Node>`\ )                                            |
   +--------+-------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`unshare<class_Range_method_unshare>`\ (\ )                                                                        |
   +--------+-------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_Range_signal_changed:

.. rst-class:: classref-signal

**changed**\ (\ ) :ref:`🔗<class_Range_signal_changed>`

Emesso quando :ref:`min_value<class_Range_property_min_value>`, :ref:`max_value<class_Range_property_max_value>`, :ref:`page<class_Range_property_page>`, o :ref:`step<class_Range_property_step>` cambia.

.. rst-class:: classref-item-separator

----

.. _class_Range_signal_value_changed:

.. rst-class:: classref-signal

**value_changed**\ (\ value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Range_signal_value_changed>`

Emesso quando cambia :ref:`value<class_Range_property_value>`. Quando usato su uno :ref:`Slider<class_Slider>`, viene chiamato continuamente durante il trascinamento (potenzialmente ogni frame). Se si esegue un'operazione costosa in una funzione connessa a :ref:`value_changed<class_Range_signal_value_changed>`, considera di usare un :ref:`Timer<class_Timer>` *antirimbalzo* per richiamare la funzione meno spesso.

\ **Nota:** A differenza di segnali come :ref:`LineEdit.text_changed<class_LineEdit_signal_text_changed>`, :ref:`value_changed<class_Range_signal_value_changed>` viene emesso anche quando ``value`` viene impostato direttamente tramite codice.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_Range_property_allow_greater:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **allow_greater** = ``false`` :ref:`🔗<class_Range_property_allow_greater>`

.. rst-class:: classref-property-setget

- |void| **set_allow_greater**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_greater_allowed**\ (\ )

Se ``true``, :ref:`value<class_Range_property_value>` può essere maggiore di :ref:`max_value<class_Range_property_max_value>`.

.. rst-class:: classref-item-separator

----

.. _class_Range_property_allow_lesser:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **allow_lesser** = ``false`` :ref:`🔗<class_Range_property_allow_lesser>`

.. rst-class:: classref-property-setget

- |void| **set_allow_lesser**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_lesser_allowed**\ (\ )

Se ``true``, :ref:`value<class_Range_property_value>` può essere minore di :ref:`min_value<class_Range_property_min_value>`.

.. rst-class:: classref-item-separator

----

.. _class_Range_property_exp_edit:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **exp_edit** = ``false`` :ref:`🔗<class_Range_property_exp_edit>`

.. rst-class:: classref-property-setget

- |void| **set_exp_ratio**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_ratio_exp**\ (\ )

Se ``true``, e :ref:`min_value<class_Range_property_min_value>` è maggiore o uguale a ``0``, :ref:`value<class_Range_property_value>` sarà rappresentato in modo esponenziale anziché lineare.

.. rst-class:: classref-item-separator

----

.. _class_Range_property_max_value:

.. rst-class:: classref-property

:ref:`float<class_float>` **max_value** = ``100.0`` :ref:`🔗<class_Range_property_max_value>`

.. rst-class:: classref-property-setget

- |void| **set_max**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max**\ (\ )

Valore massimo. L'intervallo è limitato se :ref:`value<class_Range_property_value>` è maggiore di :ref:`max_value<class_Range_property_max_value>`.

.. rst-class:: classref-item-separator

----

.. _class_Range_property_min_value:

.. rst-class:: classref-property

:ref:`float<class_float>` **min_value** = ``0.0`` :ref:`🔗<class_Range_property_min_value>`

.. rst-class:: classref-property-setget

- |void| **set_min**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_min**\ (\ )

Valore minimo. L'intervallo è limitato se :ref:`value<class_Range_property_value>` è minore di :ref:`min_value<class_Range_property_min_value>`.

.. rst-class:: classref-item-separator

----

.. _class_Range_property_page:

.. rst-class:: classref-property

:ref:`float<class_float>` **page** = ``0.0`` :ref:`🔗<class_Range_property_page>`

.. rst-class:: classref-property-setget

- |void| **set_page**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_page**\ (\ )

Dimensione di pagina. Utilizzato principalmente per :ref:`ScrollBar<class_ScrollBar>`. La lunghezza del grabber di una :ref:`ScrollBar<class_ScrollBar>` è la sua dimensione moltiplicata per :ref:`page<class_Range_property_page>` sulla differenza tra :ref:`min_value<class_Range_property_min_value>` e :ref:`max_value<class_Range_property_max_value>`.

.. rst-class:: classref-item-separator

----

.. _class_Range_property_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **ratio** :ref:`🔗<class_Range_property_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_as_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_as_ratio**\ (\ )

Il valore mappato tra 0 e 1.

.. rst-class:: classref-item-separator

----

.. _class_Range_property_rounded:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **rounded** = ``false`` :ref:`🔗<class_Range_property_rounded>`

.. rst-class:: classref-property-setget

- |void| **set_use_rounded_values**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_rounded_values**\ (\ )

Se ``true``, :ref:`value<class_Range_property_value>` sarà sempre arrotondato all'intero più vicino.

.. rst-class:: classref-item-separator

----

.. _class_Range_property_step:

.. rst-class:: classref-property

:ref:`float<class_float>` **step** = ``0.01`` :ref:`🔗<class_Range_property_step>`

.. rst-class:: classref-property-setget

- |void| **set_step**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_step**\ (\ )

Se maggiore di ``0.0``, :ref:`value<class_Range_property_value>` sarà sempre arrotondato a un multiplo del valore di questa proprietà, superiore a :ref:`min_value<class_Range_property_min_value>`. Ad esempio, se :ref:`min_value<class_Range_property_min_value>` è ``0.1`` e il passo è ``0.2``, allora :ref:`value<class_Range_property_value>` è limitato a ``0.1``, ``0.3``, ``0.5`` e così via. Se :ref:`rounded<class_Range_property_rounded>` è anche ``true``, :ref:`value<class_Range_property_value>` sarà prima arrotondato a un multiplo del valore di questa proprietà, e poi arrotondato all'intero più vicino.

.. rst-class:: classref-item-separator

----

.. _class_Range_property_value:

.. rst-class:: classref-property

:ref:`float<class_float>` **value** = ``0.0`` :ref:`🔗<class_Range_property_value>`

.. rst-class:: classref-property-setget

- |void| **set_value**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_value**\ (\ )

Valore attuale dell'intervallo. La modifica di questa proprietà (anche tramite codice) attiverà il segnale :ref:`value_changed<class_Range_signal_value_changed>`. Usa :ref:`set_value_no_signal()<class_Range_method_set_value_no_signal>` se vuoi evitarlo.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_Range_private_method__value_changed:

.. rst-class:: classref-method

|void| **_value_changed**\ (\ new_value\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_Range_private_method__value_changed>`

Chiamato quando il valore del **Range** viene modificato (seguendo le stesse condizioni di :ref:`value_changed<class_Range_signal_value_changed>`).

.. rst-class:: classref-item-separator

----

.. _class_Range_method_set_value_no_signal:

.. rst-class:: classref-method

|void| **set_value_no_signal**\ (\ value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Range_method_set_value_no_signal>`

Imposta il valore attuale del **Range** su ``value``, senza emettere il segnale :ref:`value_changed<class_Range_signal_value_changed>`.

.. rst-class:: classref-item-separator

----

.. _class_Range_method_share:

.. rst-class:: classref-method

|void| **share**\ (\ with\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_Range_method_share>`

Collega due **Range** insieme a qualsiasi intervallo precedentemente raggruppato con uno di essi. Quando una qualsiasi delle variabili membro dell'intervallo cambia, condividerà il nuovo valore con tutti gli altri intervalli nel suo gruppo.

.. rst-class:: classref-item-separator

----

.. _class_Range_method_unshare:

.. rst-class:: classref-method

|void| **unshare**\ (\ ) :ref:`🔗<class_Range_method_unshare>`

Impedisce al **Range** di condividere le sue variabili membro con qualsiasi altro.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
