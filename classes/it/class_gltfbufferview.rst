:github_url: hide

.. _class_GLTFBufferView:

GLTFBufferView
==============

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Rappresenta una buffer view glTF.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

GLTFBufferView è una struttura dati che rappresenta glTF una ``bufferView`` che si troverebbe nell'array ``"bufferViews"``. Un buffer è un blob di dati binari. Una buffer view è una porzione di un buffer che possono servire per identificare ed estrarre dati dal buffer.

La maggior parte degli usi personalizzati dei buffer necessita solo di usare :ref:`buffer<class_GLTFBufferView_property_buffer>`, :ref:`byte_length<class_GLTFBufferView_property_byte_length>` e :ref:`byte_offset<class_GLTFBufferView_property_byte_offset>`. Le proprietà :ref:`byte_stride<class_GLTFBufferView_property_byte_stride>` e :ref:`indices<class_GLTFBufferView_property_indices>` sono per casi d'uso più avanzati come dati mesh interlacciati codificati per la GPU.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- `Buffer, BufferView e Accessor nella specificazione glTF di Khronos <https://github.com/KhronosGroup/glTF-Tutorials/blob/master/gltfTutorial/gltfTutorial_005_BuffersBufferViewsAccessors.md>`__

- :doc:`Caricamento e salvataggio di file a tempo di esecuzione <../tutorials/io/runtime_file_loading_and_saving>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------+---------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`   | :ref:`buffer<class_GLTFBufferView_property_buffer>`                       | ``-1``    |
   +-------------------------+---------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`   | :ref:`byte_length<class_GLTFBufferView_property_byte_length>`             | ``0``     |
   +-------------------------+---------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`   | :ref:`byte_offset<class_GLTFBufferView_property_byte_offset>`             | ``0``     |
   +-------------------------+---------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`   | :ref:`byte_stride<class_GLTFBufferView_property_byte_stride>`             | ``-1``    |
   +-------------------------+---------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`indices<class_GLTFBufferView_property_indices>`                     | ``false`` |
   +-------------------------+---------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`vertex_attributes<class_GLTFBufferView_property_vertex_attributes>` | ``false`` |
   +-------------------------+---------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GLTFBufferView<class_GLTFBufferView>`   | :ref:`from_dictionary<class_GLTFBufferView_method_from_dictionary>`\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |static|     |
   +-----------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>` | :ref:`load_buffer_view_data<class_GLTFBufferView_method_load_buffer_view_data>`\ (\ state\: :ref:`GLTFState<class_GLTFState>`\ ) |const| |
   +-----------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`           | :ref:`to_dictionary<class_GLTFBufferView_method_to_dictionary>`\ (\ ) |const|                                                            |
   +-----------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_GLTFBufferView_property_buffer:

.. rst-class:: classref-property

:ref:`int<class_int>` **buffer** = ``-1`` :ref:`🔗<class_GLTFBufferView_property_buffer>`

.. rst-class:: classref-property-setget

- |void| **set_buffer**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_buffer**\ (\ )

L'indice del buffer a cui fa riferimento questa buffer view. Se ``-1``, questa buffer view non fa riferimento ad alcun buffer.

.. rst-class:: classref-item-separator

----

.. _class_GLTFBufferView_property_byte_length:

.. rst-class:: classref-property

:ref:`int<class_int>` **byte_length** = ``0`` :ref:`🔗<class_GLTFBufferView_property_byte_length>`

.. rst-class:: classref-property-setget

- |void| **set_byte_length**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_byte_length**\ (\ )

La lunghezza, in byte, di questa buffer view. Se ``0``, questa buffer view è vuota.

.. rst-class:: classref-item-separator

----

.. _class_GLTFBufferView_property_byte_offset:

.. rst-class:: classref-property

:ref:`int<class_int>` **byte_offset** = ``0`` :ref:`🔗<class_GLTFBufferView_property_byte_offset>`

.. rst-class:: classref-property-setget

- |void| **set_byte_offset**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_byte_offset**\ (\ )

L'offset, in byte, dall'inizio del buffer all'inizio di questa buffer view.

.. rst-class:: classref-item-separator

----

.. _class_GLTFBufferView_property_byte_stride:

.. rst-class:: classref-property

:ref:`int<class_int>` **byte_stride** = ``-1`` :ref:`🔗<class_GLTFBufferView_property_byte_stride>`

.. rst-class:: classref-property-setget

- |void| **set_byte_stride**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_byte_stride**\ (\ )

Il passo (stride), in byte, tra i dati interlacciati. Se ``-1``, questa buffer view non è interlacciata.

.. rst-class:: classref-item-separator

----

.. _class_GLTFBufferView_property_indices:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **indices** = ``false`` :ref:`🔗<class_GLTFBufferView_property_indices>`

.. rst-class:: classref-property-setget

- |void| **set_indices**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_indices**\ (\ )

``true`` se il tipo del buffer GPU OpenGL del GLTFBufferView è un ``ELEMENT_ARRAY_BUFFER`` utilizzato per gli indici dei vertici (costante intera ``34963``). ``false`` se il tipo di buffer è un qualunque altro valore. Consulta `Buffer, BufferView e Accessor <https://github.com/KhronosGroup/glTF-Tutorials/blob/master/gltfTutorial/gltfTutorial_005_BuffersBufferViewsAccessors.md>`__ per i valori possibili. Questa proprietà viene impostata all'importazione e utilizzata all'esportazione.

.. rst-class:: classref-item-separator

----

.. _class_GLTFBufferView_property_vertex_attributes:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **vertex_attributes** = ``false`` :ref:`🔗<class_GLTFBufferView_property_vertex_attributes>`

.. rst-class:: classref-property-setget

- |void| **set_vertex_attributes**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_vertex_attributes**\ (\ )

``true`` se il tipo di buffer GPU OpenGL del GLTFBufferView è un ``ARRAY_BUFFER`` utilizzato per gli indici dei vertici (costante intera ``34962``). ``false`` se il tipo di buffer è un qualunque altro valore. Consulta `Buffer, BufferView e Accessor <https://github.com/KhronosGroup/glTF-Tutorials/blob/master/gltfTutorial/gltfTutorial_005_BuffersBufferViewsAccessors.md>`__ per i valori possibili. Questa proprietà viene impostata all'importazione e utilizzata all'esportazione.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_GLTFBufferView_method_from_dictionary:

.. rst-class:: classref-method

:ref:`GLTFBufferView<class_GLTFBufferView>` **from_dictionary**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |static| :ref:`🔗<class_GLTFBufferView_method_from_dictionary>`

Crea una nuova istanza di GLTFBufferView interpretando il :ref:`Dictionary<class_Dictionary>` specificato.

.. rst-class:: classref-item-separator

----

.. _class_GLTFBufferView_method_load_buffer_view_data:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **load_buffer_view_data**\ (\ state\: :ref:`GLTFState<class_GLTFState>`\ ) |const| :ref:`🔗<class_GLTFBufferView_method_load_buffer_view_data>`

Carica i dati della buffer view dal buffer a cui fa riferimento questa buffer view nel :ref:`GLTFState<class_GLTFState>` fornito. I dati interlacciati con un byte stride non sono ancora supportati da questo metodo. I dati sono restituiti come :ref:`PackedByteArray<class_PackedByteArray>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFBufferView_method_to_dictionary:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **to_dictionary**\ (\ ) |const| :ref:`🔗<class_GLTFBufferView_method_to_dictionary>`

Serializza questa istanza di GLTFBufferView in un :ref:`Dictionary<class_Dictionary>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
