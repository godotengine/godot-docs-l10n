:github_url: hide

.. _class_PackedVector4Array:

PackedVector4Array
==================

Un array compatto di :ref:`Vector4<class_Vector4>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

An array specifically designed to hold :ref:`Vector4<class_Vector4>`. Packs data tightly, so it saves memory for large array sizes.

\ **Differences between packed arrays, typed arrays, and untyped arrays:** Packed arrays are generally faster to iterate on and modify compared to a typed array of the same type (e.g. **PackedVector4Array** versus ``Array[Vector4]``). Also, packed arrays consume less memory. As a downside, packed arrays are less flexible as they don't offer as many convenience methods such as :ref:`Array.map()<class_Array_method_map>`. Typed arrays are in turn faster to iterate on and modify than untyped arrays.

\ **Note:** Packed arrays are always passed by reference. To get a copy of an array that can be modified independently of the original array, use :ref:`duplicate()<class_PackedVector4Array_method_duplicate>`. This is *not* the case for built-in properties and methods. In these cases the returned packed array is a copy, and changing it will *not* affect the original value. To update a built-in property of this type, modify the returned array and then assign it to the property again.

\ **Note:** In a boolean context, a packed array will evaluate to ``false`` if it's empty. Otherwise, a packed array will always evaluate to ``true``.

.. note::

	Ci sono differenze sostanziali quando si usa questa API con C#. Vedi :ref:`doc_c_sharp_differences` per maggiori informazioni.

.. rst-class:: classref-reftable-group

Costruttori
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector4Array<class_PackedVector4Array>` | :ref:`PackedVector4Array<class_PackedVector4Array_constructor_PackedVector4Array>`\ (\ )                                                             |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector4Array<class_PackedVector4Array>` | :ref:`PackedVector4Array<class_PackedVector4Array_constructor_PackedVector4Array>`\ (\ from\: :ref:`PackedVector4Array<class_PackedVector4Array>`\ ) |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector4Array<class_PackedVector4Array>` | :ref:`PackedVector4Array<class_PackedVector4Array_constructor_PackedVector4Array>`\ (\ from\: :ref:`Array<class_Array>`\ )                           |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`append<class_PackedVector4Array_method_append>`\ (\ value\: :ref:`Vector4<class_Vector4>`\ )                                                    |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`append_array<class_PackedVector4Array_method_append_array>`\ (\ array\: :ref:`PackedVector4Array<class_PackedVector4Array>`\ )                  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`bsearch<class_PackedVector4Array_method_bsearch>`\ (\ value\: :ref:`Vector4<class_Vector4>`, before\: :ref:`bool<class_bool>` = true\ ) |const| |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`clear<class_PackedVector4Array_method_clear>`\ (\ )                                                                                             |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`count<class_PackedVector4Array_method_count>`\ (\ value\: :ref:`Vector4<class_Vector4>`\ ) |const|                                              |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector4Array<class_PackedVector4Array>` | :ref:`duplicate<class_PackedVector4Array_method_duplicate>`\ (\ ) |const|                                                                             |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`erase<class_PackedVector4Array_method_erase>`\ (\ value\: :ref:`Vector4<class_Vector4>`\ )                                                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`fill<class_PackedVector4Array_method_fill>`\ (\ value\: :ref:`Vector4<class_Vector4>`\ )                                                        |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`find<class_PackedVector4Array_method_find>`\ (\ value\: :ref:`Vector4<class_Vector4>`, from\: :ref:`int<class_int>` = 0\ ) |const|              |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4<class_Vector4>`                       | :ref:`get<class_PackedVector4Array_method_get>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                          |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`has<class_PackedVector4Array_method_has>`\ (\ value\: :ref:`Vector4<class_Vector4>`\ ) |const|                                                  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`insert<class_PackedVector4Array_method_insert>`\ (\ at_index\: :ref:`int<class_int>`, value\: :ref:`Vector4<class_Vector4>`\ )                  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`is_empty<class_PackedVector4Array_method_is_empty>`\ (\ ) |const|                                                                               |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`push_back<class_PackedVector4Array_method_push_back>`\ (\ value\: :ref:`Vector4<class_Vector4>`\ )                                              |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`remove_at<class_PackedVector4Array_method_remove_at>`\ (\ index\: :ref:`int<class_int>`\ )                                                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`resize<class_PackedVector4Array_method_resize>`\ (\ new_size\: :ref:`int<class_int>`\ )                                                         |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`reverse<class_PackedVector4Array_method_reverse>`\ (\ )                                                                                         |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`rfind<class_PackedVector4Array_method_rfind>`\ (\ value\: :ref:`Vector4<class_Vector4>`, from\: :ref:`int<class_int>` = -1\ ) |const|           |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set<class_PackedVector4Array_method_set>`\ (\ index\: :ref:`int<class_int>`, value\: :ref:`Vector4<class_Vector4>`\ )                           |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`size<class_PackedVector4Array_method_size>`\ (\ ) |const|                                                                                       |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector4Array<class_PackedVector4Array>` | :ref:`slice<class_PackedVector4Array_method_slice>`\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647\ ) |const|            |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`sort<class_PackedVector4Array_method_sort>`\ (\ )                                                                                               |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`       | :ref:`to_byte_array<class_PackedVector4Array_method_to_byte_array>`\ (\ ) |const|                                                                     |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Operatori
------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`operator !=<class_PackedVector4Array_operator_neq_PackedVector4Array>`\ (\ right\: :ref:`PackedVector4Array<class_PackedVector4Array>`\ ) |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector4Array<class_PackedVector4Array>` | :ref:`operator +<class_PackedVector4Array_operator_sum_PackedVector4Array>`\ (\ right\: :ref:`PackedVector4Array<class_PackedVector4Array>`\ )  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`operator ==<class_PackedVector4Array_operator_eq_PackedVector4Array>`\ (\ right\: :ref:`PackedVector4Array<class_PackedVector4Array>`\ )  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4<class_Vector4>`                       | :ref:`operator []<class_PackedVector4Array_operator_idx_int>`\ (\ index\: :ref:`int<class_int>`\ )                                              |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei costruttori
------------------------------------------------------

.. _class_PackedVector4Array_constructor_PackedVector4Array:

.. rst-class:: classref-constructor

:ref:`PackedVector4Array<class_PackedVector4Array>` **PackedVector4Array**\ (\ ) :ref:`🔗<class_PackedVector4Array_constructor_PackedVector4Array>`

Costruisce un **PackedVector4Array** vuoto.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`PackedVector4Array<class_PackedVector4Array>` **PackedVector4Array**\ (\ from\: :ref:`PackedVector4Array<class_PackedVector4Array>`\ )

Costruisce un **PackedVector4Array** come copia del **PackedVector4Array** specificato.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`PackedVector4Array<class_PackedVector4Array>` **PackedVector4Array**\ (\ from\: :ref:`Array<class_Array>`\ )

Costruisce un nuovo **PackedVector4Array**. È possibile passare un :ref:`Array<class_Array>` generico che sarà convertito.

\ **Nota:** Quando si inizializza un **PackedVector4Array** con elementi, deve essere inizializzato con un :ref:`Array<class_Array>` di valori :ref:`Vector4<class_Vector4>`:

::

    var array = PackedVector4Array([Vector4(12, 34, 56, 78), Vector4(90, 12, 34, 56)])

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_PackedVector4Array_method_append:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **append**\ (\ value\: :ref:`Vector4<class_Vector4>`\ ) :ref:`🔗<class_PackedVector4Array_method_append>`

Aggiunge un elemento alla fine dell'array (pseudonimo di :ref:`push_back()<class_PackedVector4Array_method_push_back>`).

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_append_array:

.. rst-class:: classref-method

|void| **append_array**\ (\ array\: :ref:`PackedVector4Array<class_PackedVector4Array>`\ ) :ref:`🔗<class_PackedVector4Array_method_append_array>`

Accoda un **PackedVector4Array** alla fine di questo array.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_bsearch:

.. rst-class:: classref-method

:ref:`int<class_int>` **bsearch**\ (\ value\: :ref:`Vector4<class_Vector4>`, before\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_PackedVector4Array_method_bsearch>`

Trova l'indice di un valore esistente (o l'indice di inserimento che mantiene l'ordine di ordinamento, se il valore non è ancora presente nell'array) utilizzando la ricerca binaria. Facoltativamente, è possibile passare uno specificatore ``before``. Se ``false``, l'indice restituito viene dopo tutte le voci esistenti del valore nell'array.

\ **Nota:** Chiamare :ref:`bsearch()<class_PackedVector4Array_method_bsearch>` su un array non ordinato provoca un comportamento imprevisto.

\ **Nota:** I vettori con componenti :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` non si comportano allo stesso modo di altri vettori. Pertanto, i risultati di questo metodo potrebbero non essere accurati se valori NaN sono inclusi.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_PackedVector4Array_method_clear>`

Cancella l'array. Ciò equivale a usare :ref:`resize()<class_PackedVector4Array_method_resize>` con una dimensione di ``0``.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **count**\ (\ value\: :ref:`Vector4<class_Vector4>`\ ) |const| :ref:`🔗<class_PackedVector4Array_method_count>`

Restituisce il numero di volte in cui un elemento è presente nell'array.

\ **Nota:** I vettori con componenti :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` non si comportano allo stesso modo di altri vettori. Pertanto, i risultati di questo metodo potrebbero non essere accurati se valori NaN sono inclusi.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_duplicate:

.. rst-class:: classref-method

:ref:`PackedVector4Array<class_PackedVector4Array>` **duplicate**\ (\ ) |const| :ref:`🔗<class_PackedVector4Array_method_duplicate>`

Crea una copia dell'array, e la restituisce.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_erase:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **erase**\ (\ value\: :ref:`Vector4<class_Vector4>`\ ) :ref:`🔗<class_PackedVector4Array_method_erase>`

Rimuove la prima occorrenza di un valore dall'array e restituisce ``true``. Se il valore non esiste nell'array, nulla accade e viene restituito ``false``. Per rimuovere un elemento in base all'indice, utilizzare invece :ref:`remove_at()<class_PackedVector4Array_method_remove_at>`.

\ **Nota:** I vettori con componenti :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` non si comportano allo stesso modo di altri vettori. Pertanto, i risultati di questo metodo potrebbero non essere accurati se valori NaN sono inclusi.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_fill:

.. rst-class:: classref-method

|void| **fill**\ (\ value\: :ref:`Vector4<class_Vector4>`\ ) :ref:`🔗<class_PackedVector4Array_method_fill>`

Assegna il valore specificato a tutti gli elementi nell'array. Questo può solitamente essere usato insieme a :ref:`resize()<class_PackedVector4Array_method_resize>` per creare un array con una determinata dimensione ed elementi inizializzati.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_find:

.. rst-class:: classref-method

:ref:`int<class_int>` **find**\ (\ value\: :ref:`Vector4<class_Vector4>`, from\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_PackedVector4Array_method_find>`

Cerca un valore nell'array e restituisce il suo indice o ``-1`` se non lo trova. Facoltativamente, può essere passato l'indice iniziale di ricerca.

\ **Nota:** I vettori con componenti :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` non si comportano allo stesso modo di altri vettori. Pertanto, i risultati di questo metodo potrebbero non essere accurati se valori NaN sono inclusi.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_get:

.. rst-class:: classref-method

:ref:`Vector4<class_Vector4>` **get**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PackedVector4Array_method_get>`

Returns the :ref:`Vector4<class_Vector4>` at the given ``index`` in the array. If ``index`` is out-of-bounds or negative, this method fails and returns ``Vector4(0, 0, 0, 0)``.

This method is similar (but not identical) to the ``[]`` operator. Most notably, when this method fails, it doesn't pause project execution if run from the editor.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_has:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has**\ (\ value\: :ref:`Vector4<class_Vector4>`\ ) |const| :ref:`🔗<class_PackedVector4Array_method_has>`

Restituisce ``true`` se l'array contiene ``value``.

\ **Nota:** I vettori con componenti :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` non si comportano allo stesso modo di altri vettori. Pertanto, i risultati di questo metodo potrebbero non essere accurati se valori NaN sono inclusi.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_insert:

.. rst-class:: classref-method

:ref:`int<class_int>` **insert**\ (\ at_index\: :ref:`int<class_int>`, value\: :ref:`Vector4<class_Vector4>`\ ) :ref:`🔗<class_PackedVector4Array_method_insert>`

Inserisce un nuovo elemento in una determinata posizione nell'array. La posizione deve essere valida o alla fine dell'array (``idx == size()``).

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_is_empty:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_empty**\ (\ ) |const| :ref:`🔗<class_PackedVector4Array_method_is_empty>`

Restituisce ``true`` se l'array è vuoto.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_push_back:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **push_back**\ (\ value\: :ref:`Vector4<class_Vector4>`\ ) :ref:`🔗<class_PackedVector4Array_method_push_back>`

Inserisce un :ref:`Vector4<class_Vector4>` alla fine.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_remove_at:

.. rst-class:: classref-method

|void| **remove_at**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedVector4Array_method_remove_at>`

Rimuove un elemento dall'array in base all'indice.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_resize:

.. rst-class:: classref-method

:ref:`int<class_int>` **resize**\ (\ new_size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedVector4Array_method_resize>`

Imposta la dimensione dell'array. Se l'array viene ingrandito, riserva gli elementi alla fine dell'array. Se l'array viene rimpicciolito, tronca l'array alla nuova dimensione. Chiamare :ref:`resize()<class_PackedVector4Array_method_resize>` una sola volta e assegnare i nuovi valori è più veloce che aggiungere nuovi elementi uno alla volta.

Restituisce :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` in caso di successo, oppure una delle seguenti costanti di :ref:`Error<enum_@GlobalScope_Error>` se questo metodo fallisce: :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>` se la dimensione è negativa, oppure :ref:`@GlobalScope.ERR_OUT_OF_MEMORY<class_@GlobalScope_constant_ERR_OUT_OF_MEMORY>` se le allocazioni falliscono. Usare :ref:`size()<class_PackedVector4Array_method_size>` per trovare la dimensione effettiva dell'array dopo il ridimensionamento.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_reverse:

.. rst-class:: classref-method

|void| **reverse**\ (\ ) :ref:`🔗<class_PackedVector4Array_method_reverse>`

Inverte l'ordine degli elementi nell'array.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_rfind:

.. rst-class:: classref-method

:ref:`int<class_int>` **rfind**\ (\ value\: :ref:`Vector4<class_Vector4>`, from\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_PackedVector4Array_method_rfind>`

Cerca nell'array in ordine inverso. Facoltativamente, può essere passato un indice iniziale di ricerca. Se negativo, l'indice iniziale è considerato relativo alla fine dell'array.

\ **Nota:** I vettori con componenti :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` non si comportano allo stesso modo di altri vettori. Pertanto, i risultati di questo metodo potrebbero non essere accurati se valori NaN sono inclusi.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_set:

.. rst-class:: classref-method

|void| **set**\ (\ index\: :ref:`int<class_int>`, value\: :ref:`Vector4<class_Vector4>`\ ) :ref:`🔗<class_PackedVector4Array_method_set>`

Modifica il :ref:`Vector4<class_Vector4>` all'indice specificato.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **size**\ (\ ) |const| :ref:`🔗<class_PackedVector4Array_method_size>`

Restituisce il numero di elementi nell'array.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_slice:

.. rst-class:: classref-method

:ref:`PackedVector4Array<class_PackedVector4Array>` **slice**\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647\ ) |const| :ref:`🔗<class_PackedVector4Array_method_slice>`

Restituisce la sezione del **PackedVector4Array**, da ``begin`` (incluso) a ``end`` (escluso), sotto forma di un nuovo **PackedVector4Array**.

Il valore assoluto di ``begin`` e ``end`` sarà limitato alla dimensione dell'array, quindi il valore predefinito per ``end`` lo suddivide alla dimensione dell'array per impostazione predefinita (ad esempio, ``arr.slice(1)`` è un'abbreviazione per ``arr.slice(1, arr.size())``).

Se ``begin`` o ``end`` sono negativi, saranno relativi alla fine dell'array (ad esempio, ``arr.slice(0, -2)`` è un'abbreviazione per ``arr.slice(0, arr.size() - 2)``).

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_sort:

.. rst-class:: classref-method

|void| **sort**\ (\ ) :ref:`🔗<class_PackedVector4Array_method_sort>`

Ordina gli elementi dell'array in ordine crescente.

\ **Nota:** I vettori con componenti :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` non si comportano allo stesso modo di altri vettori. Pertanto, i risultati di questo metodo potrebbero non essere accurati se valori NaN sono inclusi.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_to_byte_array:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **to_byte_array**\ (\ ) |const| :ref:`🔗<class_PackedVector4Array_method_to_byte_array>`

Restituisce un :ref:`PackedByteArray<class_PackedByteArray>` con ogni vettore codificato come byte.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni degli operatori
------------------------------------------------------

.. _class_PackedVector4Array_operator_neq_PackedVector4Array:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`PackedVector4Array<class_PackedVector4Array>`\ ) :ref:`🔗<class_PackedVector4Array_operator_neq_PackedVector4Array>`

Restituisce ``true`` se i contenuti degli array differiscono.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_operator_sum_PackedVector4Array:

.. rst-class:: classref-operator

:ref:`PackedVector4Array<class_PackedVector4Array>` **operator +**\ (\ right\: :ref:`PackedVector4Array<class_PackedVector4Array>`\ ) :ref:`🔗<class_PackedVector4Array_operator_sum_PackedVector4Array>`

Restituisce un nuovo **PackedVector4Array** con il contenuto di ``right`` accodato alla fine di questo array. Per prestazioni migliori, considera invece di usare :ref:`append_array()<class_PackedVector4Array_method_append_array>`.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_operator_eq_PackedVector4Array:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`PackedVector4Array<class_PackedVector4Array>`\ ) :ref:`🔗<class_PackedVector4Array_operator_eq_PackedVector4Array>`

Restituisce ``true`` se il contenuto di entrambi gli array è lo stesso, ovvero hanno tutti i :ref:`Vector4<class_Vector4>` uguali agli indici corrispondenti.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_operator_idx_int:

.. rst-class:: classref-operator

:ref:`Vector4<class_Vector4>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedVector4Array_operator_idx_int>`

Restituisce il :ref:`Vector4<class_Vector4>` all'indice ``index``. Gli indici negativi possono essere utilizzati per accedere agli elementi partendo dalla fine. Utilizzare un indice fuori dai limiti dell'array genererà un errore.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
