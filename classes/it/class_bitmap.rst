:github_url: hide

.. _class_BitMap:

BitMap
======

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Matrice booleana.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un array bidimensionale di valori booleani, può essere utilizzato per memorizzare in modo efficiente una matrice binaria (ogni elemento della matrice occupa un solo bit) e interrogare i valori utilizzando le coordinate cartesiane naturali.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Image<class_Image>`                                                        | :ref:`convert_to_image<class_BitMap_method_convert_to_image>`\ (\ ) |const|                                                                                       |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`create<class_BitMap_method_create>`\ (\ size\: :ref:`Vector2i<class_Vector2i>`\ )                                                                           |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`create_from_image_alpha<class_BitMap_method_create_from_image_alpha>`\ (\ image\: :ref:`Image<class_Image>`, threshold\: :ref:`float<class_float>` = 0.1\ ) |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                          | :ref:`get_bit<class_BitMap_method_get_bit>`\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`\ ) |const|                                                   |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                          | :ref:`get_bitv<class_BitMap_method_get_bitv>`\ (\ position\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                           |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>`                                                  | :ref:`get_size<class_BitMap_method_get_size>`\ (\ ) |const|                                                                                                       |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                            | :ref:`get_true_bit_count<class_BitMap_method_get_true_bit_count>`\ (\ ) |const|                                                                                   |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`grow_mask<class_BitMap_method_grow_mask>`\ (\ pixels\: :ref:`int<class_int>`, rect\: :ref:`Rect2i<class_Rect2i>`\ )                                         |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] | :ref:`opaque_to_polygons<class_BitMap_method_opaque_to_polygons>`\ (\ rect\: :ref:`Rect2i<class_Rect2i>`, epsilon\: :ref:`float<class_float>` = 2.0\ ) |const|    |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`resize<class_BitMap_method_resize>`\ (\ new_size\: :ref:`Vector2i<class_Vector2i>`\ )                                                                       |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`set_bit<class_BitMap_method_set_bit>`\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`, bit\: :ref:`bool<class_bool>`\ )                            |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`set_bit_rect<class_BitMap_method_set_bit_rect>`\ (\ rect\: :ref:`Rect2i<class_Rect2i>`, bit\: :ref:`bool<class_bool>`\ )                                    |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`set_bitv<class_BitMap_method_set_bitv>`\ (\ position\: :ref:`Vector2i<class_Vector2i>`, bit\: :ref:`bool<class_bool>`\ )                                    |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_BitMap_method_convert_to_image:

.. rst-class:: classref-method

:ref:`Image<class_Image>` **convert_to_image**\ (\ ) |const| :ref:`🔗<class_BitMap_method_convert_to_image>`

Restituisce un'immagine delle stesse dimensioni della bitmap e con un :ref:`Format<enum_Image_Format>` di tipo :ref:`Image.FORMAT_L8<class_Image_constant_FORMAT_L8>`. I bit ``true`` della bitmap vengono convertiti in pixel bianchi, mentre i bit ``false`` in pixel neri.

.. rst-class:: classref-item-separator

----

.. _class_BitMap_method_create:

.. rst-class:: classref-method

|void| **create**\ (\ size\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_BitMap_method_create>`

Crea una bitmap con la dimensione specificata, riempita con il valore ``false``.

.. rst-class:: classref-item-separator

----

.. _class_BitMap_method_create_from_image_alpha:

.. rst-class:: classref-method

|void| **create_from_image_alpha**\ (\ image\: :ref:`Image<class_Image>`, threshold\: :ref:`float<class_float>` = 0.1\ ) :ref:`🔗<class_BitMap_method_create_from_image_alpha>`

Crea una bitmap che corrisponde alle dimensioni dell'immagine specificate, ogni elemento della bitmap è impostato su ``false`` se il valore alfa dell'immagine in quella posizione è inferiore o uguale a ``threshold``, e ``true`` altrimenti.

.. rst-class:: classref-item-separator

----

.. _class_BitMap_method_get_bit:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_bit**\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BitMap_method_get_bit>`

Restituisce il valore della bitmap alla posizione specificata.

.. rst-class:: classref-item-separator

----

.. _class_BitMap_method_get_bitv:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_bitv**\ (\ position\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_BitMap_method_get_bitv>`

Restituisce il valore della bitmap alla posizione specificata.

.. rst-class:: classref-item-separator

----

.. _class_BitMap_method_get_size:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_size**\ (\ ) |const| :ref:`🔗<class_BitMap_method_get_size>`

Restituisce le dimensioni della bitmap.

.. rst-class:: classref-item-separator

----

.. _class_BitMap_method_get_true_bit_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_true_bit_count**\ (\ ) |const| :ref:`🔗<class_BitMap_method_get_true_bit_count>`

Restituisce il numero degli elementi di bitmap che sono impostati su ``true``.

.. rst-class:: classref-item-separator

----

.. _class_BitMap_method_grow_mask:

.. rst-class:: classref-method

|void| **grow_mask**\ (\ pixels\: :ref:`int<class_int>`, rect\: :ref:`Rect2i<class_Rect2i>`\ ) :ref:`🔗<class_BitMap_method_grow_mask>`

Applica una dilatazione o un'erosione morfologica alla bitmap. Se ``pixels`` è positivo, la dilatazione viene applicata alla bitmap. Se ``pixels`` è negativo, l'erosione viene applicata alla bitmap. ``rect`` definisce l'area in cui viene applicata l'operazione morfologica. I pixel situati all'esterno di ``rect`` non sono influenzati da :ref:`grow_mask()<class_BitMap_method_grow_mask>`.

.. rst-class:: classref-item-separator

----

.. _class_BitMap_method_opaque_to_polygons:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] **opaque_to_polygons**\ (\ rect\: :ref:`Rect2i<class_Rect2i>`, epsilon\: :ref:`float<class_float>` = 2.0\ ) |const| :ref:`🔗<class_BitMap_method_opaque_to_polygons>`

Crea un :ref:`Array<class_Array>` di poligoni che coprono una porzione rettangolare della bitmap. Utilizza un algoritmo "marching squares", seguito dalla riduzione di Ramer-Douglas-Peucker (RDP) del numero di vertici. Ogni poligono è descritto come un :ref:`PackedVector2Array<class_PackedVector2Array>` dei suoi vertici.

Per ottenere poligoni che coprono l'intera bitmap, passa:

::

    Rect2(Vector2(), get_size())

\ ``epsilon`` viene passato a RDP per controllare la precisione con cui i poligoni coprono la bitmap: un ``epsilon`` inferiore corrisponde a più punti nei poligoni.

.. rst-class:: classref-item-separator

----

.. _class_BitMap_method_resize:

.. rst-class:: classref-method

|void| **resize**\ (\ new_size\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_BitMap_method_resize>`

Ridimensiona l'immagine a ``new_size``.

.. rst-class:: classref-item-separator

----

.. _class_BitMap_method_set_bit:

.. rst-class:: classref-method

|void| **set_bit**\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`, bit\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_BitMap_method_set_bit>`

Imposta l'elemento della bitmap alla posizione specificata, sul valore specificato.

.. rst-class:: classref-item-separator

----

.. _class_BitMap_method_set_bit_rect:

.. rst-class:: classref-method

|void| **set_bit_rect**\ (\ rect\: :ref:`Rect2i<class_Rect2i>`, bit\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_BitMap_method_set_bit_rect>`

Imposta un valore specificato per una porzione rettangolare della bitmap.

.. rst-class:: classref-item-separator

----

.. _class_BitMap_method_set_bitv:

.. rst-class:: classref-method

|void| **set_bitv**\ (\ position\: :ref:`Vector2i<class_Vector2i>`, bit\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_BitMap_method_set_bitv>`

Imposta l'elemento della bitmap alla posizione specificata, sul valore specificato.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
