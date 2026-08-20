:github_url: hide

.. _class_PackedDataContainer:

PackedDataContainer
===================

**Deprecato:** Use :ref:`@GlobalScope.var_to_bytes()<class_@GlobalScope_method_var_to_bytes>` or :ref:`FileAccess.store_var()<class_FileAccess_method_store_var>` instead. To enable data compression, use :ref:`PackedByteArray.compress()<class_PackedByteArray_method_compress>` or :ref:`FileAccess.open_compressed()<class_FileAccess_method_open_compressed>`.

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Comprime e serializza in modo efficiente :ref:`Array<class_Array>` o :ref:`Dictionary<class_Dictionary>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

**PackedDataContainer** può essere utilizzato per memorizzare in modo efficiente i dati da contenitori non tipizzati. I dati sono compressi in byte grezzi e possono essere salvati su file. Solo :ref:`Array<class_Array>` e :ref:`Dictionary<class_Dictionary>` possono essere memorizzati in questo modo.

È possibile recuperare i dati iterando sul contenitore, che funzionerà come se si iterasse sui dati compressi stessi. Se il contenitore compresso è un :ref:`Dictionary<class_Dictionary>`, è possibile recuperare i dati tramite i nomi delle chiavi (solo :ref:`String<class_String>`/:ref:`StringName<class_StringName>`).

::

    var data = { "key": "value", "another_key": 123, "lock": Vector2() }
    var packed = PackedDataContainer.new()
    packed.pack(data)
    ResourceSaver.save(packed, "packed_data.res")

::

    var container = load("packed_data.res")
    for key in container:
        prints(key, container[key])

Stampa:

.. code:: text

    key value
    lock (0, 0)
    another_key 123

I contenitori innestati saranno impacchettati ricorsivamente. Durante un iterazione, saranno restituiti come :ref:`PackedDataContainerRef<class_PackedDataContainerRef>`.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`pack<class_PackedDataContainer_method_pack>`\ (\ value\: :ref:`Variant<class_Variant>`\ ) |
   +---------------------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`size<class_PackedDataContainer_method_size>`\ (\ ) |const|                                |
   +---------------------------------------+-------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_PackedDataContainer_method_pack:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **pack**\ (\ value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_PackedDataContainer_method_pack>`

Comprime il contenitore specificato in una rappresentazione binaria. ``value`` deve essere :ref:`Array<class_Array>` o :ref:`Dictionary<class_Dictionary>`, qualsiasi altro tipo genererà un errore di dati non validi.

\ **Nota:** Ulteriori chiamate a questo metodo sovrascriveranno i dati esistenti.

.. rst-class:: classref-item-separator

----

.. _class_PackedDataContainer_method_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **size**\ (\ ) |const| :ref:`🔗<class_PackedDataContainer_method_size>`

Restituisce la dimensione del contenitore compresso (vedi :ref:`Array.size()<class_Array_method_size>` e :ref:`Dictionary.size()<class_Dictionary_method_size>`).

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
