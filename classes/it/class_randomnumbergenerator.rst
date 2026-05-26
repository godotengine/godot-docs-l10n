:github_url: hide

.. _class_RandomNumberGenerator:

RandomNumberGenerator
=====================

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Fornisce metodi per generare numeri pseudocasuali.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

RandomNumberGenerator è una classe per generare numeri pseudocasuali. Attualmente utilizza `PCG32 <https://www.pcg-random.org/>`__.

\ **Nota:** L'algoritmo sottostante è un dettaglio di implementazione e non ci si dovrebbe basare su di esso.

Per generare un numero float casuale (entro un dato intervallo) basato su un seed dipendente dal tempo:

::

    var rng = RandomNumberGenerator.new()
    func _ready():
        var my_random_number = rng.randf_range(-10.0, 10.0)

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Generazione di numeri casuali <../tutorials/math/random_number_generation>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------+----------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`seed<class_RandomNumberGenerator_property_seed>`   | ``0`` |
   +-----------------------+----------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`state<class_RandomNumberGenerator_property_state>` | ``0`` |
   +-----------------------+----------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`     | :ref:`rand_weighted<class_RandomNumberGenerator_method_rand_weighted>`\ (\ weights\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ )         |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`randf<class_RandomNumberGenerator_method_randf>`\ (\ )                                                                                        |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`randf_range<class_RandomNumberGenerator_method_randf_range>`\ (\ from\: :ref:`float<class_float>`, to\: :ref:`float<class_float>`\ )          |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`randfn<class_RandomNumberGenerator_method_randfn>`\ (\ mean\: :ref:`float<class_float>` = 0.0, deviation\: :ref:`float<class_float>` = 1.0\ ) |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`     | :ref:`randi<class_RandomNumberGenerator_method_randi>`\ (\ )                                                                                        |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`     | :ref:`randi_range<class_RandomNumberGenerator_method_randi_range>`\ (\ from\: :ref:`int<class_int>`, to\: :ref:`int<class_int>`\ )                  |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`randomize<class_RandomNumberGenerator_method_randomize>`\ (\ )                                                                                |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_RandomNumberGenerator_property_seed:

.. rst-class:: classref-property

:ref:`int<class_int>` **seed** = ``0`` :ref:`🔗<class_RandomNumberGenerator_property_seed>`

.. rst-class:: classref-property-setget

- |void| **set_seed**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_seed**\ (\ )

Initializes the random number generator state based on the given seed value. A given seed will give a reproducible sequence of pseudo-random numbers.

\ **Note:** The RNG does not have an avalanche effect, and can output similar random streams given similar seeds. Consider using a hash function to improve your seed quality if they're sourced externally.

\ **Note:** The default value of this property is pseudo-random, and changes when calling :ref:`randomize()<class_RandomNumberGenerator_method_randomize>`. The ``0`` value documented here is a placeholder, and not the actual default seed.

\ **Note:** Setting this property produces a side effect of changing the internal :ref:`state<class_RandomNumberGenerator_property_state>`, so make sure to initialize the seed *before* modifying the :ref:`state<class_RandomNumberGenerator_property_state>`:

::

    var rng = RandomNumberGenerator.new()
    rng.seed = hash("Godot")
    rng.state = 100 # Restore to some previously saved state.

.. rst-class:: classref-item-separator

----

.. _class_RandomNumberGenerator_property_state:

.. rst-class:: classref-property

:ref:`int<class_int>` **state** = ``0`` :ref:`🔗<class_RandomNumberGenerator_property_state>`

.. rst-class:: classref-property-setget

- |void| **set_state**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_state**\ (\ )

Lo stato attuale del generatore di numeri casuali. Salva e ripristina questa proprietà per ripristinare il generatore a uno stato precedente:

::

    var rng = RandomNumberGenerator.new()
    print(rng.randf())
    var saved_state = rng.state # Memorizza lo stato attuale.
    print(rng.randf()) # Avanza lo stato interno.
    rng.state = saved_state # Ripristina lo stato.
    print(rng.randf()) # Stampa lo stesso valore di prima.

\ **Nota:** Non impostare lo stato su valori arbitrari, poiché il generatore di numeri casuali richiede che lo stato abbia determinate qualità per comportarsi correttamente. Dovrebbe essere impostato solo su valori che provengono dalla proprietà dello stato stessa. Per inizializzare il generatore di numeri casuali con input arbitrari, usa invece :ref:`seed<class_RandomNumberGenerator_property_seed>`.

\ **Nota:** Il valore predefinito di questa proprietà è pseudocasuale e cambia quando si chiama :ref:`randomize()<class_RandomNumberGenerator_method_randomize>`. Il valore ``0`` qui documentato è un segnaposto e non lo stato predefinito effettivo.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_RandomNumberGenerator_method_rand_weighted:

.. rst-class:: classref-method

:ref:`int<class_int>` **rand_weighted**\ (\ weights\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) :ref:`🔗<class_RandomNumberGenerator_method_rand_weighted>`

Returns a random integer between ``0`` and the size of the array that is passed as a parameter. Each value in the array should be a floating-point number that represents the relative likelihood that it will be returned as an index. A higher value means the value is more likely to be returned as an index, while a value of ``0`` means it will never be returned as an index.

For example, if ``[0.5, 1, 1, 2]`` is passed as a parameter, then the method is twice as likely to return ``3`` (the index of the value ``2``) and twice as unlikely to return ``0`` (the index of the value ``0.5``) compared to the indices ``1`` and ``2``.

Prints an error and returns ``-1`` if the array is empty.


.. tabs::

 .. code-tab:: gdscript

    var rng = RandomNumberGenerator.new()

    var my_array = ["one", "two", "three", "four"]
    var weights = PackedFloat32Array([0.5, 1, 1, 2])

    # Prints one of the four elements in `my_array`.
    # It is more likely to print "four", and less likely to print "one".
    print(my_array[rng.rand_weighted(weights)])



.. rst-class:: classref-item-separator

----

.. _class_RandomNumberGenerator_method_randf:

.. rst-class:: classref-method

:ref:`float<class_float>` **randf**\ (\ ) :ref:`🔗<class_RandomNumberGenerator_method_randf>`

Restituisce un numero float pseudocasuale compreso tra ``0.0`` e ``1.0`` (inclusi).

.. rst-class:: classref-item-separator

----

.. _class_RandomNumberGenerator_method_randf_range:

.. rst-class:: classref-method

:ref:`float<class_float>` **randf_range**\ (\ from\: :ref:`float<class_float>`, to\: :ref:`float<class_float>`\ ) :ref:`🔗<class_RandomNumberGenerator_method_randf_range>`

Restituisce un numero float pseudocasuale compreso tra ``from`` e ``to`` (inclusi).

.. rst-class:: classref-item-separator

----

.. _class_RandomNumberGenerator_method_randfn:

.. rst-class:: classref-method

:ref:`float<class_float>` **randfn**\ (\ mean\: :ref:`float<class_float>` = 0.0, deviation\: :ref:`float<class_float>` = 1.0\ ) :ref:`🔗<class_RandomNumberGenerator_method_randfn>`

Restituisce un numero in virgola mobile pseudo-casuale `normalmente distribuito <https://it.wikipedia.org/wiki/Distribuzione_normale>`__ dalla media (``mean``) specificata e una deviazione (``deviation``) standard. Questa è anche nota come distribuzione gaussiana.

\ **Nota:** Questo metodo utilizza l'algoritmo `trasformazione di Box-Muller <https://it.wikipedia.org/wiki/Trasformazione_di_Box-Muller>`__.

.. rst-class:: classref-item-separator

----

.. _class_RandomNumberGenerator_method_randi:

.. rst-class:: classref-method

:ref:`int<class_int>` **randi**\ (\ ) :ref:`🔗<class_RandomNumberGenerator_method_randi>`

Restituisce un intero pseudocasuale senza segno a 32 bit compreso tra ``0`` e ``4294967295`` (inclusi).

.. rst-class:: classref-item-separator

----

.. _class_RandomNumberGenerator_method_randi_range:

.. rst-class:: classref-method

:ref:`int<class_int>` **randi_range**\ (\ from\: :ref:`int<class_int>`, to\: :ref:`int<class_int>`\ ) :ref:`🔗<class_RandomNumberGenerator_method_randi_range>`

Restituisce un intero pseudocasuale con segno a 32 bit compreso tra ``from`` e ``to`` (inclusi).

.. rst-class:: classref-item-separator

----

.. _class_RandomNumberGenerator_method_randomize:

.. rst-class:: classref-method

|void| **randomize**\ (\ ) :ref:`🔗<class_RandomNumberGenerator_method_randomize>`

Imposta un seed basato sul tempo per questa istanza di **RandomNumberGenerator**. A differenza delle funzioni di generazione di numeri casuali :ref:`@GlobalScope<class_@GlobalScope>`, diverse istanze di **RandomNumberGenerator** possono usare seed diversi.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
