:github_url: hide

.. _class_StyleBox:

StyleBox
========

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`StyleBoxEmpty<class_StyleBoxEmpty>`, :ref:`StyleBoxFlat<class_StyleBoxFlat>`, :ref:`StyleBoxLine<class_StyleBoxLine>`, :ref:`StyleBoxTexture<class_StyleBoxTexture>`

Classe base astratta per definire box stilizzati per gli elementi dell'interfaccia utente.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

**StyleBox** è una classe base astratta per disegnare box stilizzati per elementi UI. È utilizzata per i pannelli, i pulsanti, gli sfondi dei :ref:`LineEdit<class_LineEdit>` e dei :ref:`Tree<class_Tree>`, ecc. e anche per testare una maschera di trasparenza per i segnali del cursore. Se il test della maschera fallisce su uno **StyleBox** assegnato come maschera a un controllo, i clic e i segnali di movimento gli passeranno attraverso per raggiungere il controllo sottostante.

\ **Nota:** Per i nodi di controllo che hanno *Proprietà del tema*, lo **StyleBox** ``focus`` viene visualizzato sopra lo **StyleBox** ``normal``, ``hover`` o ``pressed``. Ciò rende lo **StyleBox** ``focus`` più riutilizzabile su nodi diversi.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`content_margin_bottom<class_StyleBox_property_content_margin_bottom>` | ``-1.0`` |
   +---------------------------+-----------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`content_margin_left<class_StyleBox_property_content_margin_left>`     | ``-1.0`` |
   +---------------------------+-----------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`content_margin_right<class_StyleBox_property_content_margin_right>`   | ``-1.0`` |
   +---------------------------+-----------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`content_margin_top<class_StyleBox_property_content_margin_top>`       | ``-1.0`` |
   +---------------------------+-----------------------------------------------------------------------------+----------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`_draw<class_StyleBox_private_method__draw>`\ (\ to_canvas_item\: :ref:`RID<class_RID>`, rect\: :ref:`Rect2<class_Rect2>`\ ) |virtual| |required| |const| |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`           | :ref:`_get_draw_rect<class_StyleBox_private_method__get_draw_rect>`\ (\ rect\: :ref:`Rect2<class_Rect2>`\ ) |virtual| |const|                                  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`       | :ref:`_get_minimum_size<class_StyleBox_private_method__get_minimum_size>`\ (\ ) |virtual| |const|                                                              |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`_test_mask<class_StyleBox_private_method__test_mask>`\ (\ point\: :ref:`Vector2<class_Vector2>`, rect\: :ref:`Rect2<class_Rect2>`\ ) |virtual| |const|   |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`draw<class_StyleBox_method_draw>`\ (\ canvas_item\: :ref:`RID<class_RID>`, rect\: :ref:`Rect2<class_Rect2>`\ ) |const|                                   |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`get_content_margin<class_StyleBox_method_get_content_margin>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|                                |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`CanvasItem<class_CanvasItem>` | :ref:`get_current_item_drawn<class_StyleBox_method_get_current_item_drawn>`\ (\ ) |const|                                                                      |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`get_margin<class_StyleBox_method_get_margin>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|                                                |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`       | :ref:`get_minimum_size<class_StyleBox_method_get_minimum_size>`\ (\ ) |const|                                                                                  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`       | :ref:`get_offset<class_StyleBox_method_get_offset>`\ (\ ) |const|                                                                                              |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`set_content_margin<class_StyleBox_method_set_content_margin>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, offset\: :ref:`float<class_float>`\ )    |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`set_content_margin_all<class_StyleBox_method_set_content_margin_all>`\ (\ offset\: :ref:`float<class_float>`\ )                                          |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`test_mask<class_StyleBox_method_test_mask>`\ (\ point\: :ref:`Vector2<class_Vector2>`, rect\: :ref:`Rect2<class_Rect2>`\ ) |const|                       |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_StyleBox_property_content_margin_bottom:

.. rst-class:: classref-property

:ref:`float<class_float>` **content_margin_bottom** = ``-1.0`` :ref:`🔗<class_StyleBox_property_content_margin_bottom>`

.. rst-class:: classref-property-setget

- |void| **set_content_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, offset\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_content_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Il margine inferiore per il contenuto di questo style box. Aumentando questo valore si riduce lo spazio disponibile per il contenuto dal basso.

Se questo valore è negativo, è ignorato e al suo posto viene utilizzato un margine specifico per classe figlia. Ad esempio, per :ref:`StyleBoxFlat<class_StyleBoxFlat>`, è utilizzato lo spessore del bordo (se presente).

Spetta al codice che utilizza questo style box di decidere quali siano questi contenuti: ad esempio, un :ref:`Button<class_Button>` rispetta questo margine di contenuto per il contenuto testuale del pulsante.

Si dovrebbe usare :ref:`get_margin()<class_StyleBox_method_get_margin>` per recuperare questo valore come consumatore anziché leggere direttamente queste proprietà. Questo perché rispetta correttamente i valori negativi e l'alternativa menzionata sopra.

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_property_content_margin_left:

.. rst-class:: classref-property

:ref:`float<class_float>` **content_margin_left** = ``-1.0`` :ref:`🔗<class_StyleBox_property_content_margin_left>`

.. rst-class:: classref-property-setget

- |void| **set_content_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, offset\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_content_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Il margine sinistro per il contenuto di questo style box. Aumentando questo valore si riduce lo spazio disponibile per il contenuto da sinistra.

Consulta :ref:`content_margin_bottom<class_StyleBox_property_content_margin_bottom>` per ulteriori considerazioni.

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_property_content_margin_right:

.. rst-class:: classref-property

:ref:`float<class_float>` **content_margin_right** = ``-1.0`` :ref:`🔗<class_StyleBox_property_content_margin_right>`

.. rst-class:: classref-property-setget

- |void| **set_content_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, offset\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_content_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Il margine destro per il contenuto di questo style box. Aumentando questo valore si riduce lo spazio disponibile per il contenuto da destra.

Consulta :ref:`content_margin_bottom<class_StyleBox_property_content_margin_bottom>` per ulteriori considerazioni.

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_property_content_margin_top:

.. rst-class:: classref-property

:ref:`float<class_float>` **content_margin_top** = ``-1.0`` :ref:`🔗<class_StyleBox_property_content_margin_top>`

.. rst-class:: classref-property-setget

- |void| **set_content_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, offset\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_content_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Il margine superiore per il contenuto di questo style box. Aumentando questo valore si riduce lo spazio disponibile per il contenuto dall'alto.

Consulta :ref:`content_margin_bottom<class_StyleBox_property_content_margin_bottom>` per ulteriori considerazioni.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_StyleBox_private_method__draw:

.. rst-class:: classref-method

|void| **_draw**\ (\ to_canvas_item\: :ref:`RID<class_RID>`, rect\: :ref:`Rect2<class_Rect2>`\ ) |virtual| |required| |const| :ref:`🔗<class_StyleBox_private_method__draw>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_private_method__get_draw_rect:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **_get_draw_rect**\ (\ rect\: :ref:`Rect2<class_Rect2>`\ ) |virtual| |const| :ref:`🔗<class_StyleBox_private_method__get_draw_rect>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_private_method__get_minimum_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **_get_minimum_size**\ (\ ) |virtual| |const| :ref:`🔗<class_StyleBox_private_method__get_minimum_size>`

Metodo virtuale da implementare dall'utente. Restituisce le dimensioni minime personalizzate che lo stylebox deve rispettare durante il disegno. Come predefinito, :ref:`get_minimum_size()<class_StyleBox_method_get_minimum_size>` tiene conto solo dei margini del contenuto. È possibile sovrascrivere questo metodo per aggiungere un'altra restrizione sulle dimensioni. Verrà utilizzata una combinazione del comportamento predefinito e del risultato di questo metodo, compensando per entrambi.

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_private_method__test_mask:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_test_mask**\ (\ point\: :ref:`Vector2<class_Vector2>`, rect\: :ref:`Rect2<class_Rect2>`\ ) |virtual| |const| :ref:`🔗<class_StyleBox_private_method__test_mask>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_method_draw:

.. rst-class:: classref-method

|void| **draw**\ (\ canvas_item\: :ref:`RID<class_RID>`, rect\: :ref:`Rect2<class_Rect2>`\ ) |const| :ref:`🔗<class_StyleBox_method_draw>`

Disegna questo stylebox utilizzando un elemento canvas identificato dal :ref:`RID<class_RID>` specificato.

Il valore :ref:`RID<class_RID>` può essere il risultato di :ref:`CanvasItem.get_canvas_item()<class_CanvasItem_method_get_canvas_item>` chiamato su un nodo esistente derivato da :ref:`CanvasItem<class_CanvasItem>`, oppure direttamente dalla creazione di un elemento canvas nel :ref:`RenderingServer<class_RenderingServer>` con :ref:`RenderingServer.canvas_item_create()<class_RenderingServer_method_canvas_item_create>`.

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_method_get_content_margin:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_content_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const| :ref:`🔗<class_StyleBox_method_get_content_margin>`

Restituisce il margine predefinito del lato specificato con :ref:`Side<enum_@GlobalScope_Side>`.

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_method_get_current_item_drawn:

.. rst-class:: classref-method

:ref:`CanvasItem<class_CanvasItem>` **get_current_item_drawn**\ (\ ) |const| :ref:`🔗<class_StyleBox_method_get_current_item_drawn>`

Restituisce l'elemento :ref:`CanvasItem<class_CanvasItem>` che gestisce il suo callback :ref:`CanvasItem.NOTIFICATION_DRAW<class_CanvasItem_constant_NOTIFICATION_DRAW>` o :ref:`CanvasItem._draw()<class_CanvasItem_private_method__draw>` in questo momento.

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_method_get_margin:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const| :ref:`🔗<class_StyleBox_method_get_margin>`

Restituisce l'offset del margine del contenuto per il lato (:ref:`Side<enum_@GlobalScope_Side>`) specificato.

I valori positivi riducono le dimensioni verso l'interno, a differenza dei valori del margine di :ref:`Control<class_Control>`.

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_method_get_minimum_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_minimum_size**\ (\ ) |const| :ref:`🔗<class_StyleBox_method_get_minimum_size>`

Restituisce le dimensioni minime alle quali può essere ridotto questo stylebox.

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_method_get_offset:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_offset**\ (\ ) |const| :ref:`🔗<class_StyleBox_method_get_offset>`

Restituisce l'"offset" di uno stylebox. Questa funzione di supporto restituisce un valore equivalente a ``Vector2(style.get_margin(MARGIN_LEFT), style.get_margin(MARGIN_TOP))``.

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_method_set_content_margin:

.. rst-class:: classref-method

|void| **set_content_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, offset\: :ref:`float<class_float>`\ ) :ref:`🔗<class_StyleBox_method_set_content_margin>`

Imposta il valore predefinito del lato specificato con :ref:`Side<enum_@GlobalScope_Side>` a ``offset`` in pixel.

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_method_set_content_margin_all:

.. rst-class:: classref-method

|void| **set_content_margin_all**\ (\ offset\: :ref:`float<class_float>`\ ) :ref:`🔗<class_StyleBox_method_set_content_margin_all>`

Imposta il margine predefinito su ``offset`` pixel per tutti i lati.

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_method_test_mask:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **test_mask**\ (\ point\: :ref:`Vector2<class_Vector2>`, rect\: :ref:`Rect2<class_Rect2>`\ ) |const| :ref:`🔗<class_StyleBox_method_test_mask>`

Testa una posizione in un rettangolo, restituisce se supera il test della maschera.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
