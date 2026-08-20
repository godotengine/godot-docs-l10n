:github_url: hide

.. _class_PackedInt64Array:

PackedInt64Array
================

Un array compatto di interi a 64 bit.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un array progettato specificamente per contenere valori interi a 64 bit. Impacchetta i dati in modo compatto, in modo da risparmiare memoria per array di grandi dimensioni.

\ **Nota:** Questo tipo memorizza interi a 64 bit con segno, il che significa che può assumere valori nell'intervallo ``[-2^63, 2^63 - 1]``, ovvero ``[-9223372036854775808, 9223372036854775807]``. I valori oltre i limiti saranno avvolti. Se è necessario soltanto impacchettare interi a 32 bit, vedi :ref:`PackedInt32Array<class_PackedInt32Array>` per un'alternativa più efficiente per la memoria.

\ **Differenze tra gli array impacchettati, gli array tipizzati e gli array non tipizzati:** Gli array impacchettati sono generalmente più veloci da iterare e modificare rispetto a un array tipizzato dello stesso tipo (ad esempio **PackedInt64Array** in confronto a ``Array[int]``). Inoltre, gli array impacchettati consumano meno memoria. Come svantaggio, i array impacchettati sono meno flessibili in quanto non offrono molti metodi di convenienza come :ref:`Array.map()<class_Array_method_map>`. Gli array tipizzati sono anche loro più veloci da iterare e modificare in confronto ad array non tipizzati.

\ **Nota:** Gli array impacchettati sono sempre passati per riferimento. Per ottenere una copia di un array che si può modificare indipendentemente dall'array originale, usa :ref:`duplicate()<class_PackedInt64Array_method_duplicate>`. Questo *non* è il caso per le proprietà e per i metodi integrati. In tali casi l'array impacchettato restituito è una copia, e modificarlo *non* influenzerà il valore originale. Per aggiornare una proprietà integrata di questo tipo è necessario modificare l'array restituito e poi riassegnarlo alla proprietà.

\ **Nota:** In un contesto booleano, un array impacchettato sarà valutato come ``false`` se è vuoto. Altrimenti, un array impacchettato sarà sempre valutato come ``true``.

.. note::

	Ci sono differenze sostanziali quando si usa questa API con C#. Vedi :ref:`doc_c_sharp_differences` per maggiori informazioni.

.. rst-class:: classref-reftable-group

Costruttori
----------------------

.. table::
   :widths: auto

   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt64Array<class_PackedInt64Array>` | :ref:`PackedInt64Array<class_PackedInt64Array_constructor_PackedInt64Array>`\ (\ )                                                         |
   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt64Array<class_PackedInt64Array>` | :ref:`PackedInt64Array<class_PackedInt64Array_constructor_PackedInt64Array>`\ (\ from\: :ref:`PackedInt64Array<class_PackedInt64Array>`\ ) |
   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt64Array<class_PackedInt64Array>` | :ref:`PackedInt64Array<class_PackedInt64Array_constructor_PackedInt64Array>`\ (\ from\: :ref:`Array<class_Array>`\ )                       |
   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`append<class_PackedInt64Array_method_append>`\ (\ value\: :ref:`int<class_int>`\ )                                                    |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`append_array<class_PackedInt64Array_method_append_array>`\ (\ array\: :ref:`PackedInt64Array<class_PackedInt64Array>`\ )              |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`bsearch<class_PackedInt64Array_method_bsearch>`\ (\ value\: :ref:`int<class_int>`, before\: :ref:`bool<class_bool>` = true\ ) |const| |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`clear<class_PackedInt64Array_method_clear>`\ (\ )                                                                                     |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`count<class_PackedInt64Array_method_count>`\ (\ value\: :ref:`int<class_int>`\ ) |const|                                              |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt64Array<class_PackedInt64Array>` | :ref:`duplicate<class_PackedInt64Array_method_duplicate>`\ (\ ) |const|                                                                     |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`erase<class_PackedInt64Array_method_erase>`\ (\ value\: :ref:`int<class_int>`\ )                                                      |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`fill<class_PackedInt64Array_method_fill>`\ (\ value\: :ref:`int<class_int>`\ )                                                        |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`find<class_PackedInt64Array_method_find>`\ (\ value\: :ref:`int<class_int>`, from\: :ref:`int<class_int>` = 0\ ) |const|              |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`get<class_PackedInt64Array_method_get>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                  |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`has<class_PackedInt64Array_method_has>`\ (\ value\: :ref:`int<class_int>`\ ) |const|                                                  |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`insert<class_PackedInt64Array_method_insert>`\ (\ at_index\: :ref:`int<class_int>`, value\: :ref:`int<class_int>`\ )                  |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`is_empty<class_PackedInt64Array_method_is_empty>`\ (\ ) |const|                                                                       |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`push_back<class_PackedInt64Array_method_push_back>`\ (\ value\: :ref:`int<class_int>`\ )                                              |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`remove_at<class_PackedInt64Array_method_remove_at>`\ (\ index\: :ref:`int<class_int>`\ )                                              |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`resize<class_PackedInt64Array_method_resize>`\ (\ new_size\: :ref:`int<class_int>`\ )                                                 |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`reverse<class_PackedInt64Array_method_reverse>`\ (\ )                                                                                 |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`rfind<class_PackedInt64Array_method_rfind>`\ (\ value\: :ref:`int<class_int>`, from\: :ref:`int<class_int>` = -1\ ) |const|           |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`set<class_PackedInt64Array_method_set>`\ (\ index\: :ref:`int<class_int>`, value\: :ref:`int<class_int>`\ )                           |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`size<class_PackedInt64Array_method_size>`\ (\ ) |const|                                                                               |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt64Array<class_PackedInt64Array>` | :ref:`slice<class_PackedInt64Array_method_slice>`\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647\ ) |const|    |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`sort<class_PackedInt64Array_method_sort>`\ (\ )                                                                                       |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`   | :ref:`to_byte_array<class_PackedInt64Array_method_to_byte_array>`\ (\ ) |const|                                                             |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Operatori
------------------

.. table::
   :widths: auto

   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`operator !=<class_PackedInt64Array_operator_neq_PackedInt64Array>`\ (\ right\: :ref:`PackedInt64Array<class_PackedInt64Array>`\ ) |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt64Array<class_PackedInt64Array>` | :ref:`operator +<class_PackedInt64Array_operator_sum_PackedInt64Array>`\ (\ right\: :ref:`PackedInt64Array<class_PackedInt64Array>`\ )  |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`operator ==<class_PackedInt64Array_operator_eq_PackedInt64Array>`\ (\ right\: :ref:`PackedInt64Array<class_PackedInt64Array>`\ )  |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`operator []<class_PackedInt64Array_operator_idx_int>`\ (\ index\: :ref:`int<class_int>`\ )                                        |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei costruttori
------------------------------------------------------

.. _class_PackedInt64Array_constructor_PackedInt64Array:

.. rst-class:: classref-constructor

:ref:`PackedInt64Array<class_PackedInt64Array>` **PackedInt64Array**\ (\ ) :ref:`🔗<class_PackedInt64Array_constructor_PackedInt64Array>`

Costruisce un **PackedInt64Array** vuoto.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`PackedInt64Array<class_PackedInt64Array>` **PackedInt64Array**\ (\ from\: :ref:`PackedInt64Array<class_PackedInt64Array>`\ )

Costruisce un **PackedInt64Array** come copia del **PackedInt64Array** specificato.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`PackedInt64Array<class_PackedInt64Array>` **PackedInt64Array**\ (\ from\: :ref:`Array<class_Array>`\ )

Costruisce un nuovo **PackedInt64Array**. È possibile passare un :ref:`Array<class_Array>` generico che sarà convertito.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_PackedInt64Array_method_append:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **append**\ (\ value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedInt64Array_method_append>`

Aggiunge un elemento alla fine dell'array (pseudonimo di :ref:`push_back()<class_PackedInt64Array_method_push_back>`).

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_append_array:

.. rst-class:: classref-method

|void| **append_array**\ (\ array\: :ref:`PackedInt64Array<class_PackedInt64Array>`\ ) :ref:`🔗<class_PackedInt64Array_method_append_array>`

Accoda un **PackedInt64Array** alla fine di questo array.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_bsearch:

.. rst-class:: classref-method

:ref:`int<class_int>` **bsearch**\ (\ value\: :ref:`int<class_int>`, before\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_PackedInt64Array_method_bsearch>`

Trova l'indice di un valore esistente (o l'indice di inserimento che mantiene l'ordine di ordinamento, se il valore non è ancora presente nell'array) utilizzando la ricerca binaria. Facoltativamente, è possibile passare uno specificatore ``before``. Se ``false``, l'indice restituito viene dopo tutte le voci esistenti del valore nell'array.

\ **Nota:** Chiamare :ref:`bsearch()<class_PackedInt64Array_method_bsearch>` su un array non ordinato provoca un comportamento imprevisto.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_PackedInt64Array_method_clear>`

Cancella l'array. Ciò equivale a usare :ref:`resize()<class_PackedInt64Array_method_resize>` con una dimensione di ``0``.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **count**\ (\ value\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PackedInt64Array_method_count>`

Restituisce il numero di volte che un elemento è presente nell'array.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_duplicate:

.. rst-class:: classref-method

:ref:`PackedInt64Array<class_PackedInt64Array>` **duplicate**\ (\ ) |const| :ref:`🔗<class_PackedInt64Array_method_duplicate>`

Crea una copia dell'array, e la restituisce.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_erase:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **erase**\ (\ value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedInt64Array_method_erase>`

Rimuove la prima occorrenza di un valore dall'array e restituisce ``true``. Se il valore non esiste nell'array, nulla accade e viene restituito ``false``. Per rimuovere un elemento in base all'indice, usa invece :ref:`remove_at()<class_PackedInt64Array_method_remove_at>`.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_fill:

.. rst-class:: classref-method

|void| **fill**\ (\ value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedInt64Array_method_fill>`

Assegna il valore specificato a tutti gli elementi nell'array. Questo può solitamente essere usato insieme a :ref:`resize()<class_PackedInt64Array_method_resize>` per creare un array con una determinata dimensione ed elementi inizializzati.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_find:

.. rst-class:: classref-method

:ref:`int<class_int>` **find**\ (\ value\: :ref:`int<class_int>`, from\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_PackedInt64Array_method_find>`

Cerca un valore nell'array e restituisce il suo indice o ``-1`` se non trovato. Facoltativamente, può essere passato l'indice di ricerca iniziale.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_get:

.. rst-class:: classref-method

:ref:`int<class_int>` **get**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PackedInt64Array_method_get>`

Restituisce l'intero a 64 bit all'indice ``index`` nell'array. Se ``index`` è fuori limite o negativo, questo metodo fallisce e restituisce ``0``.

Questo metodo è simile (ma non identico) all'operatore ``[]``. In particolare, quando questo metodo fallisce, non mette in pausa l'esecuzione del progetto se eseguito dall'editor.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_has:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has**\ (\ value\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PackedInt64Array_method_has>`

Restituisce ``true`` se l'array contiene ``value``.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_insert:

.. rst-class:: classref-method

:ref:`int<class_int>` **insert**\ (\ at_index\: :ref:`int<class_int>`, value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedInt64Array_method_insert>`

Inserisce un nuovo intero in una posizione specificata nell'array. La posizione deve essere valida o alla fine dell'array (``idx == size()``).

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_is_empty:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_empty**\ (\ ) |const| :ref:`🔗<class_PackedInt64Array_method_is_empty>`

Restituisce ``true`` se l'array è vuoto.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_push_back:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **push_back**\ (\ value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedInt64Array_method_push_back>`

Accoda un valore all'array.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_remove_at:

.. rst-class:: classref-method

|void| **remove_at**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedInt64Array_method_remove_at>`

Rimuove un elemento dall'array in base all'indice.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_resize:

.. rst-class:: classref-method

:ref:`int<class_int>` **resize**\ (\ new_size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedInt64Array_method_resize>`

Imposta la dimensione dell'array. Se l'array viene ingrandito, riserva gli elementi alla fine dell'array. Se l'array viene rimpicciolito, tronca l'array alla nuova dimensione. Chiamare :ref:`resize()<class_PackedInt64Array_method_resize>` una sola volta e assegnare i nuovi valori è più veloce che aggiungere nuovi elementi uno alla volta.

Restituisce :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` in caso di successo, oppure una delle seguenti costanti di :ref:`Error<enum_@GlobalScope_Error>` se questo metodo fallisce: :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>` se la dimensione è negativa, oppure :ref:`@GlobalScope.ERR_OUT_OF_MEMORY<class_@GlobalScope_constant_ERR_OUT_OF_MEMORY>` se le allocazioni falliscono. Usare :ref:`size()<class_PackedInt64Array_method_size>` per trovare la dimensione effettiva dell'array dopo il ridimensionamento.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_reverse:

.. rst-class:: classref-method

|void| **reverse**\ (\ ) :ref:`🔗<class_PackedInt64Array_method_reverse>`

Inverte l'ordine degli elementi nell'array.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_rfind:

.. rst-class:: classref-method

:ref:`int<class_int>` **rfind**\ (\ value\: :ref:`int<class_int>`, from\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_PackedInt64Array_method_rfind>`

Cerca nell'array in ordine inverso. Facoltativamente, può essere passato un indice di ricerca iniziale. Se negativo, l'indice di inizio è considerato relativo alla fine dell'array.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_set:

.. rst-class:: classref-method

|void| **set**\ (\ index\: :ref:`int<class_int>`, value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedInt64Array_method_set>`

Modifica l'intero all'indice specificato.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **size**\ (\ ) |const| :ref:`🔗<class_PackedInt64Array_method_size>`

Restituisce il numero di elementi nell'array.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_slice:

.. rst-class:: classref-method

:ref:`PackedInt64Array<class_PackedInt64Array>` **slice**\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647\ ) |const| :ref:`🔗<class_PackedInt64Array_method_slice>`

Restituisce la sezione del **PackedInt64Array**, da ``begin`` (incluso) a ``end`` (escluso), sotto forma di un nuovo **PackedInt64Array**.

Il valore assoluto di ``begin`` e ``end`` sarà limitato alla dimensione dell'array, quindi il valore predefinito per ``end`` lo suddivide alla dimensione dell'array per impostazione predefinita (ad esempio, ``arr.slice(1)`` è un'abbreviazione per ``arr.slice(1, arr.size())``).

Se ``begin`` o ``end`` sono negativi, saranno relativi alla fine dell'array (ad esempio, ``arr.slice(0, -2)`` è un'abbreviazione per ``arr.slice(0, arr.size() - 2)``).

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_sort:

.. rst-class:: classref-method

|void| **sort**\ (\ ) :ref:`🔗<class_PackedInt64Array_method_sort>`

Ordina gli elementi dell'array in ordine crescente.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_to_byte_array:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **to_byte_array**\ (\ ) |const| :ref:`🔗<class_PackedInt64Array_method_to_byte_array>`

Restituisce una copia dei dati convertiti in un :ref:`PackedByteArray<class_PackedByteArray>`, dove ogni elemento è stato codificato come 8 byte.

La dimensione del nuovo array sarà ``int64_array.size() * 8``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni degli operatori
------------------------------------------------------

.. _class_PackedInt64Array_operator_neq_PackedInt64Array:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`PackedInt64Array<class_PackedInt64Array>`\ ) :ref:`🔗<class_PackedInt64Array_operator_neq_PackedInt64Array>`

Restituisce ``true`` se i contenuti degli array differiscono.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_operator_sum_PackedInt64Array:

.. rst-class:: classref-operator

:ref:`PackedInt64Array<class_PackedInt64Array>` **operator +**\ (\ right\: :ref:`PackedInt64Array<class_PackedInt64Array>`\ ) :ref:`🔗<class_PackedInt64Array_operator_sum_PackedInt64Array>`

Restituisce un nuovo **PackedInt64Array** con il contenuto di ``right`` accodato alla fine di questo array. Per prestazioni migliori, considera invece di usare :ref:`append_array()<class_PackedInt64Array_method_append_array>`.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_operator_eq_PackedInt64Array:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`PackedInt64Array<class_PackedInt64Array>`\ ) :ref:`🔗<class_PackedInt64Array_operator_eq_PackedInt64Array>`

Restituisce ``true`` se il contenuto di entrambi gli array è lo stesso, ovvero hanno tutti gli interi uguali agli indici corrispondenti.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_operator_idx_int:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedInt64Array_operator_idx_int>`

Restituisce l':ref:`int<class_int>` all'indice ``index``. Gli indici negativi possono essere utilizzati per accedere agli elementi partendo dalla fine. Utilizzare un indice fuori dai limiti dell'array genererà un errore.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
