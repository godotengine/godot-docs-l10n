:github_url: hide

.. _class_Curve2D:

Curve2D
=======

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Descrive una curva di Bézier nello spazio 2D.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questa classe descrive una curva di Bézier nello spazio 2D. È usata principalmente per dare una forma a un :ref:`Path2D<class_Path2D>`, ma può essere campionata manualmente per altri motivi.

Mantiene una cache di punti precalcolati lungo la curva, per velocizzare ulteriori calcoli.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------+------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`     | :ref:`bake_interval<class_Curve2D_property_bake_interval>`                   | ``5.0``           |
   +-------------------------------+------------------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`         | :ref:`point_count<class_Curve2D_property_point_count>`                       | ``0``             |
   +-------------------------------+------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`point_{index}/in<class_Curve2D_property_point_{index}/in>`             | ``Vector2(0, 0)`` |
   +-------------------------------+------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`point_{index}/out<class_Curve2D_property_point_{index}/out>`           | ``Vector2(0, 0)`` |
   +-------------------------------+------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`point_{index}/position<class_Curve2D_property_point_{index}/position>` | ``Vector2(0, 0)`` |
   +-------------------------------+------------------------------------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`add_point<class_Curve2D_method_add_point>`\ (\ position\: :ref:`Vector2<class_Vector2>`, in\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0), out\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0), index\: :ref:`int<class_int>` = -1\ ) |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`clear_points<class_Curve2D_method_clear_points>`\ (\ )                                                                                                                                                                                  |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                           | :ref:`get_baked_length<class_Curve2D_method_get_baked_length>`\ (\ ) |const|                                                                                                                                                                  |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`get_baked_points<class_Curve2D_method_get_baked_points>`\ (\ ) |const|                                                                                                                                                                  |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                           | :ref:`get_closest_offset<class_Curve2D_method_get_closest_offset>`\ (\ to_point\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                                                                                    |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`get_closest_point<class_Curve2D_method_get_closest_point>`\ (\ to_point\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                                                                                      |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`get_point_in<class_Curve2D_method_get_point_in>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                             |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`get_point_out<class_Curve2D_method_get_point_out>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                           |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`get_point_position<class_Curve2D_method_get_point_position>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                 |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`remove_point<class_Curve2D_method_remove_point>`\ (\ idx\: :ref:`int<class_int>`\ )                                                                                                                                                     |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`sample<class_Curve2D_method_sample>`\ (\ idx\: :ref:`int<class_int>`, t\: :ref:`float<class_float>`\ ) |const|                                                                                                                          |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`sample_baked<class_Curve2D_method_sample_baked>`\ (\ offset\: :ref:`float<class_float>` = 0.0, cubic\: :ref:`bool<class_bool>` = false\ ) |const|                                                                                       |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>`               | :ref:`sample_baked_with_rotation<class_Curve2D_method_sample_baked_with_rotation>`\ (\ offset\: :ref:`float<class_float>` = 0.0, cubic\: :ref:`bool<class_bool>` = false\ ) |const|                                                           |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`samplef<class_Curve2D_method_samplef>`\ (\ fofs\: :ref:`float<class_float>`\ ) |const|                                                                                                                                                  |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_point_in<class_Curve2D_method_set_point_in>`\ (\ idx\: :ref:`int<class_int>`, position\: :ref:`Vector2<class_Vector2>`\ )                                                                                                           |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_point_out<class_Curve2D_method_set_point_out>`\ (\ idx\: :ref:`int<class_int>`, position\: :ref:`Vector2<class_Vector2>`\ )                                                                                                         |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_point_position<class_Curve2D_method_set_point_position>`\ (\ idx\: :ref:`int<class_int>`, position\: :ref:`Vector2<class_Vector2>`\ )                                                                                               |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`tessellate<class_Curve2D_method_tessellate>`\ (\ max_stages\: :ref:`int<class_int>` = 5, tolerance_degrees\: :ref:`float<class_float>` = 4\ ) |const|                                                                                   |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`tessellate_even_length<class_Curve2D_method_tessellate_even_length>`\ (\ max_stages\: :ref:`int<class_int>` = 5, tolerance_length\: :ref:`float<class_float>` = 20.0\ ) |const|                                                         |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_Curve2D_property_bake_interval:

.. rst-class:: classref-property

:ref:`float<class_float>` **bake_interval** = ``5.0`` :ref:`🔗<class_Curve2D_property_bake_interval>`

.. rst-class:: classref-property-setget

- |void| **set_bake_interval**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bake_interval**\ (\ )

La distanza in pixel tra due punti adiacenti memorizzati nella cache. Modificandola si forza il ricalcolo della cache la prossima volta che viene chiamata la funzione :ref:`get_baked_points()<class_Curve2D_method_get_baked_points>` o :ref:`get_baked_length()<class_Curve2D_method_get_baked_length>`. Minore è la distanza, più punti ci sono nella cache e più memoria consumerà, quindi cambiala con cautela.

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_property_point_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **point_count** = ``0`` :ref:`🔗<class_Curve2D_property_point_count>`

.. rst-class:: classref-property-setget

- |void| **set_point_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_point_count**\ (\ )

Il numero di punti che descrivono la curva.

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_property_point_{index}/in:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **point_{index}/in** = ``Vector2(0, 0)`` :ref:`🔗<class_Curve2D_property_point_{index}/in>`

La posizione del punto di controllo che entra nel vertice all'indice ``index``.

\ **Nota:** ``index`` è un valore compreso nell'intervallo ``0 .. point_count - 1``.

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_property_point_{index}/out:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **point_{index}/out** = ``Vector2(0, 0)`` :ref:`🔗<class_Curve2D_property_point_{index}/out>`

La posizione del punto di controllo che esce dal vertice all'indice ``index``.

\ **Nota:** ``index`` è un valore compreso nell'intervallo ``0 .. point_count - 1``.

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_property_point_{index}/position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **point_{index}/position** = ``Vector2(0, 0)`` :ref:`🔗<class_Curve2D_property_point_{index}/position>`

La posizione del vertice all'indice ``index``.

\ **Nota:** ``index`` è un valore compreso nell'intervallo ``0 .. point_count - 1``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_Curve2D_method_add_point:

.. rst-class:: classref-method

|void| **add_point**\ (\ position\: :ref:`Vector2<class_Vector2>`, in\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0), out\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0), index\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_Curve2D_method_add_point>`

Aggiunge un punto con la posizione ``position``, relativa alla posizione della curva, con punti di controllo d'ingresso ``in`` e d'uscita ``out``. Aggiunge il nuovo punto alla fine della lista dei punti.

Se viene specificato ``index``, il nuovo punto viene inserito prima del punto esistente, identificato dall'indice ``index``. Ogni punto esistente a partire da ``index`` viene spostato più in basso nella lista dei punti. L'indice deve essere maggiore o uguale a ``0`` e non deve superare il numero di punti esistenti nella riga. Vedi :ref:`point_count<class_Curve2D_property_point_count>`.

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_clear_points:

.. rst-class:: classref-method

|void| **clear_points**\ (\ ) :ref:`🔗<class_Curve2D_method_clear_points>`

Rimuove tutti i punti dalla curva.

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_get_baked_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_baked_length**\ (\ ) |const| :ref:`🔗<class_Curve2D_method_get_baked_length>`

Restituisce la lunghezza totale della curva, in base ai punti memorizzati nella cache. Con una densità sufficiente (vedi :ref:`bake_interval<class_Curve2D_property_bake_interval>`), dovrebbe essere abbastanza approssimativa.

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_get_baked_points:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **get_baked_points**\ (\ ) |const| :ref:`🔗<class_Curve2D_method_get_baked_points>`

Restituisce la cache dei punti sotto forma di :ref:`PackedVector2Array<class_PackedVector2Array>`.

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_get_closest_offset:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_closest_offset**\ (\ to_point\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Curve2D_method_get_closest_offset>`

Restituisce l'offset più vicino a ``to_point``. Questo offset è pensato per essere utilizzato in :ref:`sample_baked()<class_Curve2D_method_sample_baked>`.

\ ``to_point`` deve essere nello spazio locale di questa curva.

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_get_closest_point:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_closest_point**\ (\ to_point\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Curve2D_method_get_closest_point>`

Restituisce il punto più vicino sui segmenti precalcolati (nello spazio locale della curva) a ``to_point``.

\ ``to_point`` deve essere nello spazio locale di questa curva.

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_get_point_in:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_point_in**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Curve2D_method_get_point_in>`

Restituisce la posizione del punto di controllo che porta al vertice con l'indice ``idx``. La posizione restituita è relativa al vertice con l'indice ``idx``. Se l'indice è fuori dai limiti, la funzione invia un errore alla console e restituisce ``(0, 0)``.

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_get_point_out:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_point_out**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Curve2D_method_get_point_out>`

Restituisce la posizione del punto di controllo che esce dal vertice con l'indice ``idx``. La posizione restituita è relativa al vertice con l'indice ``idx``. Se l'indice è fuori dai limiti, la funzione invia un errore alla console e restituisce ``(0, 0)``.

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_get_point_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_point_position**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Curve2D_method_get_point_position>`

Restituisce la posizione del vertice all'indice ``idx``. Se l'indice è fuori dai limiti, la funzione invia un errore alla console e restituisce ``(0, 0)``.

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_remove_point:

.. rst-class:: classref-method

|void| **remove_point**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Curve2D_method_remove_point>`

Elimina il punto all'indice ``idx`` dalla curva. Invia un errore alla console se ``idx`` è fuori dai limiti.

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_sample:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **sample**\ (\ idx\: :ref:`int<class_int>`, t\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Curve2D_method_sample>`

Restituisce la posizione tra il vertice ``idx`` e il vertice ``idx + 1``, dove ``t`` controlla se il punto è il primo vertice (``t = 0.0``), l'ultimo vertice (``t = 1.0``) o intermedio. I valori di ``t`` al di fuori dell'intervallo (``0,0 >= t <=1``) danno risultati strani, ma prevedibili.

Se ``idx`` è fuori dai limiti, viene troncato al primo o all'ultimo vertice e ``t`` viene ignorato. Se la curva non ha punti, la funzione invia un errore alla console e restituisce ``(0, 0)``.

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_sample_baked:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **sample_baked**\ (\ offset\: :ref:`float<class_float>` = 0.0, cubic\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Curve2D_method_sample_baked>`

Restituisce un punto all'interno della curva alla posizione ``offset``, dove ``offset`` è misurato come distanza in pixel lungo la curva.

Per farlo, trova i due punti memorizzati nella cache tra cui si trova ``offset``, quindi interpola i loro valori. Questa interpolazione è cubica se ``cubic`` è impostato su ``true``, o lineare se impostato su ``false``.

L'interpolazione cubica tende a seguire meglio le curve, ma quella lineare è più veloce (e spesso, precisa abbastanza).

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_sample_baked_with_rotation:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **sample_baked_with_rotation**\ (\ offset\: :ref:`float<class_float>` = 0.0, cubic\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Curve2D_method_sample_baked_with_rotation>`

Simile a :ref:`sample_baked()<class_Curve2D_method_sample_baked>`, ma restituisce un :ref:`Transform2D<class_Transform2D>` che include una rotazione lungo la curva, con :ref:`Transform2D.origin<class_Transform2D_property_origin>` come posizione del punto e il vettore :ref:`Transform2D.x<class_Transform2D_property_x>` che punta nella direzione del percorso in quel punto. Restituisce una trasformazione vuota se la lunghezza della curva è ``0``.

::

    var baked = curve.sample_baked_with_rotation(offset)
    # Il Transform2D restituito può essere impostato direttamente.
    transform = baked
    # È possibile anche leggere l'origine e la rotazione separatamente dal Transform2D restituito.
    position = baked.get_origin()
    rotation = baked.get_rotation()

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_samplef:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **samplef**\ (\ fofs\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Curve2D_method_samplef>`

Restituisce la posizione sul vertice ``fofs``. Chiama :ref:`sample()<class_Curve2D_method_sample>` utilizzando la parte intera di ``fofs`` come indice (``idx``) e la sua parte frazionaria come ``t``.

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_set_point_in:

.. rst-class:: classref-method

|void| **set_point_in**\ (\ idx\: :ref:`int<class_int>`, position\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Curve2D_method_set_point_in>`

Imposta la posizione del punto di controllo che porta verso il vertice all'indice ``idx``. Se l'indice è fuori dai limiti, la funzione invia un errore alla console. La posizione è relativa al vertice.

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_set_point_out:

.. rst-class:: classref-method

|void| **set_point_out**\ (\ idx\: :ref:`int<class_int>`, position\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Curve2D_method_set_point_out>`

Imposta la posizione del punto di controllo che porta fuori dal vertice all'indice ``idx``. Se l'indice è fuori dai limiti, la funzione invia un errore alla console. La posizione è relativa al vertice.

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_set_point_position:

.. rst-class:: classref-method

|void| **set_point_position**\ (\ idx\: :ref:`int<class_int>`, position\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Curve2D_method_set_point_position>`

Imposta la posizione per il vertice all'indice ``idx``. Se l'indice è fuori dai limiti, la funzione invia un errore alla console.

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_tessellate:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **tessellate**\ (\ max_stages\: :ref:`int<class_int>` = 5, tolerance_degrees\: :ref:`float<class_float>` = 4\ ) |const| :ref:`🔗<class_Curve2D_method_tessellate>`

Restituisce una lista di punti lungo la curva, con una densità di punti controllata dalla curvatura. Ovvero, le parti più curve avranno più punti rispetto alle parti più dritte.

Questa approssimazione crea segmenti dritti tra ogni punto, quindi suddivide tali segmenti finché la forma risultante non è abbastanza simile.

\ ``max_stages`` controlla quante suddivisioni può incontrare un segmento della curva prima di essere considerato abbastanza approssimativo. Ogni suddivisione divide il segmento a metà, quindi le 5 fasi predefinite possono significare fino a 32 suddivisioni per segmento della curva. Aumentare con cautela!

\ ``tolerance_degrees`` controlla di quanti gradi il punto medio di un segmento può deviare dalla curva reale, prima che il segmento debba essere suddiviso.

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_tessellate_even_length:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **tessellate_even_length**\ (\ max_stages\: :ref:`int<class_int>` = 5, tolerance_length\: :ref:`float<class_float>` = 20.0\ ) |const| :ref:`🔗<class_Curve2D_method_tessellate_even_length>`

Restituisce una lista di punti lungo la curva, con densità quasi uniforme. ``max_stages`` controlla quante suddivisioni può avere un segmento di curva prima di essere considerato abbastanza approssimativo. Ogni suddivisione divide il segmento a metà, quindi le 5 fasi predefiniti possono significare fino a 32 suddivisioni per segmento della curva. Aumentare con cautela!

\ ``tolerance_length`` controlla la distanza massima tra due punti adiacenti, prima che il segmento debba essere suddiviso.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
