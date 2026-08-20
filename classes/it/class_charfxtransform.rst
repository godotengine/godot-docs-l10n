:github_url: hide

.. _class_CharFXTransform:

CharFXTransform
===============

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Controlla il modo in cui un singolo carattere sarà visualizzato in un :ref:`RichTextEffect<class_RichTextEffect>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Impostando varie proprietà su questo oggetto, è possibile controllare il modo in cui i singoli caratteri saranno visualizzati in un :ref:`RichTextEffect<class_RichTextEffect>`.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`BBCode in RichTextLabel <../tutorials/ui/bbcode_in_richtextlabel>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------------------+----------------------------------------------------------------------+-----------------------------------+
   | :ref:`Color<class_Color>`             | :ref:`color<class_CharFXTransform_property_color>`                   | ``Color(0, 0, 0, 1)``             |
   +---------------------------------------+----------------------------------------------------------------------+-----------------------------------+
   | :ref:`float<class_float>`             | :ref:`elapsed_time<class_CharFXTransform_property_elapsed_time>`     | ``0.0``                           |
   +---------------------------------------+----------------------------------------------------------------------+-----------------------------------+
   | :ref:`Dictionary<class_Dictionary>`   | :ref:`env<class_CharFXTransform_property_env>`                       | ``{}``                            |
   +---------------------------------------+----------------------------------------------------------------------+-----------------------------------+
   | :ref:`RID<class_RID>`                 | :ref:`font<class_CharFXTransform_property_font>`                     | ``RID()``                         |
   +---------------------------------------+----------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`                 | :ref:`glyph_count<class_CharFXTransform_property_glyph_count>`       | ``0``                             |
   +---------------------------------------+----------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`                 | :ref:`glyph_flags<class_CharFXTransform_property_glyph_flags>`       | ``0``                             |
   +---------------------------------------+----------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`                 | :ref:`glyph_index<class_CharFXTransform_property_glyph_index>`       | ``0``                             |
   +---------------------------------------+----------------------------------------------------------------------+-----------------------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`offset<class_CharFXTransform_property_offset>`                 | ``Vector2(0, 0)``                 |
   +---------------------------------------+----------------------------------------------------------------------+-----------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`outline<class_CharFXTransform_property_outline>`               | ``false``                         |
   +---------------------------------------+----------------------------------------------------------------------+-----------------------------------+
   | :ref:`Vector2i<class_Vector2i>`       | :ref:`range<class_CharFXTransform_property_range>`                   | ``Vector2i(0, 0)``                |
   +---------------------------------------+----------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`                 | :ref:`relative_index<class_CharFXTransform_property_relative_index>` | ``0``                             |
   +---------------------------------------+----------------------------------------------------------------------+-----------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`transform<class_CharFXTransform_property_transform>`           | ``Transform2D(1, 0, 0, 1, 0, 0)`` |
   +---------------------------------------+----------------------------------------------------------------------+-----------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`visible<class_CharFXTransform_property_visible>`               | ``true``                          |
   +---------------------------------------+----------------------------------------------------------------------+-----------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_CharFXTransform_property_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_CharFXTransform_property_color>`

.. rst-class:: classref-property-setget

- |void| **set_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_color**\ (\ )

Il colore con cui sarà disegnato il carattere.

.. rst-class:: classref-item-separator

----

.. _class_CharFXTransform_property_elapsed_time:

.. rst-class:: classref-property

:ref:`float<class_float>` **elapsed_time** = ``0.0`` :ref:`🔗<class_CharFXTransform_property_elapsed_time>`

.. rst-class:: classref-property-setget

- |void| **set_elapsed_time**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_elapsed_time**\ (\ )

Il tempo trascorso da quando :ref:`RichTextLabel<class_RichTextLabel>` è stato aggiunto all'albero di scene (in secondi). Il tempo si ferma quando :ref:`RichTextLabel<class_RichTextLabel>` è in pausa (vedi :ref:`Node.process_mode<class_Node_property_process_mode>`). Si azzera quando il testo in :ref:`RichTextLabel<class_RichTextLabel>` viene modificato.

\ **Nota:** Il tempo passa comunque mentre :ref:`RichTextLabel<class_RichTextLabel>` è nascosto.

.. rst-class:: classref-item-separator

----

.. _class_CharFXTransform_property_env:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **env** = ``{}`` :ref:`🔗<class_CharFXTransform_property_env>`

.. rst-class:: classref-property-setget

- |void| **set_environment**\ (\ value\: :ref:`Dictionary<class_Dictionary>`\ )
- :ref:`Dictionary<class_Dictionary>` **get_environment**\ (\ )

Contiene gli argomenti passati nel tag BBCode di apertura. Per impostazione predefinita, gli argomenti sono stringhe; se il loro contenuto corrisponde a un tipo come :ref:`bool<class_bool>`, :ref:`int<class_int>` o :ref:`float<class_float>`, saranno convertiti automaticamente. I codici colore nel formato ``#rrggbb`` o ``#rgb`` saranno convertiti in un :ref:`Color<class_Color>` opaco. Gli argomenti stringa non possono contenere spazi, anche se sono racchiusi tra virgolette. Se presenti, le virgolette saranno presenti anche nella stringa finale.

Ad esempio, il tag BBCode di apertura ``[example foo=hello bar=true baz=42 color=#ffffff]`` verrà mappato nel seguente :ref:`Dictionary<class_Dictionary>`:

::

    {"foo": "hello", "bar": true, "baz": 42, "color": Color(1, 1, 1, 1)}

.. rst-class:: classref-item-separator

----

.. _class_CharFXTransform_property_font:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **font** = ``RID()`` :ref:`🔗<class_CharFXTransform_property_font>`

.. rst-class:: classref-property-setget

- |void| **set_font**\ (\ value\: :ref:`RID<class_RID>`\ )
- :ref:`RID<class_RID>` **get_font**\ (\ )

RID per il :ref:`TextServer<class_TextServer>` del font utilizzato per renderizzare il glifo, questo valore può essere utilizzato con i metodi ``TextServer.font_*`` per recuperare le informazioni sul font.

\ **Nota:** Di sola lettura. L'impostazione di questa proprietà non influirà sul disegno.

.. rst-class:: classref-item-separator

----

.. _class_CharFXTransform_property_glyph_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **glyph_count** = ``0`` :ref:`🔗<class_CharFXTransform_property_glyph_count>`

.. rst-class:: classref-property-setget

- |void| **set_glyph_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_glyph_count**\ (\ )

Numero di glifi nel cluster di grafemi. Questo valore è impostato nel primo glifo di un cluster.

\ **Nota:** Di sola lettura. Impostare questa proprietà non influirà sul disegno.

.. rst-class:: classref-item-separator

----

.. _class_CharFXTransform_property_glyph_flags:

.. rst-class:: classref-property

:ref:`int<class_int>` **glyph_flags** = ``0`` :ref:`🔗<class_CharFXTransform_property_glyph_flags>`

.. rst-class:: classref-property-setget

- |void| **set_glyph_flags**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_glyph_flags**\ (\ )

Opzioni per il glifo. Vedi :ref:`GraphemeFlag<enum_TextServer_GraphemeFlag>` per ulteriori informazioni.

\ **Nota:** Di sola lettura. Impostare questa proprietà non influirà sul disegno.

.. rst-class:: classref-item-separator

----

.. _class_CharFXTransform_property_glyph_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **glyph_index** = ``0`` :ref:`🔗<class_CharFXTransform_property_glyph_index>`

.. rst-class:: classref-property-setget

- |void| **set_glyph_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_glyph_index**\ (\ )

Indice di glifo specifico del :ref:`font<class_CharFXTransform_property_font>`. Se si desidera sostituire questo glifo, usa :ref:`TextServer.font_get_glyph_index()<class_TextServer_method_font_get_glyph_index>` con :ref:`font<class_CharFXTransform_property_font>` per ottenere un nuovo indice di glifo per un singolo carattere.

.. rst-class:: classref-item-separator

----

.. _class_CharFXTransform_property_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **offset** = ``Vector2(0, 0)`` :ref:`🔗<class_CharFXTransform_property_offset>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_offset**\ (\ )

Lo scostamento della posizione con cui sarà disegnato il carattere (in pixel).

.. rst-class:: classref-item-separator

----

.. _class_CharFXTransform_property_outline:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **outline** = ``false`` :ref:`🔗<class_CharFXTransform_property_outline>`

.. rst-class:: classref-property-setget

- |void| **set_outline**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_outline**\ (\ )

Se ``true``, la trasformazione FX viene chiamata per disegnare il contorno.

\ **Nota:** Di sola lettura. Impostare questa proprietà non influirà sul disegno.

.. rst-class:: classref-item-separator

----

.. _class_CharFXTransform_property_range:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **range** = ``Vector2i(0, 0)`` :ref:`🔗<class_CharFXTransform_property_range>`

.. rst-class:: classref-property-setget

- |void| **set_range**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_range**\ (\ )

Intervallo assoluto di caratteri nella stringa, corrispondente al glifo.

\ **Nota:** Di sola lettura. Impostare questa proprietà non influirà sul disegno.

.. rst-class:: classref-item-separator

----

.. _class_CharFXTransform_property_relative_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **relative_index** = ``0`` :ref:`🔗<class_CharFXTransform_property_relative_index>`

.. rst-class:: classref-property-setget

- |void| **set_relative_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_relative_index**\ (\ )

Lo scostamento del carattere del glifo, relativo al blocco :ref:`RichTextEffect<class_RichTextEffect>` personalizzato attuale.

\ **Nota:** Di sola lettura. Impostare questa proprietà non influirà sul disegno.

.. rst-class:: classref-item-separator

----

.. _class_CharFXTransform_property_transform:

.. rst-class:: classref-property

:ref:`Transform2D<class_Transform2D>` **transform** = ``Transform2D(1, 0, 0, 1, 0, 0)`` :ref:`🔗<class_CharFXTransform_property_transform>`

.. rst-class:: classref-property-setget

- |void| **set_transform**\ (\ value\: :ref:`Transform2D<class_Transform2D>`\ )
- :ref:`Transform2D<class_Transform2D>` **get_transform**\ (\ )

La trasformazione attuale del glifo attuale. Può essere sovrascritta (ad esempio, derivando la posizione e la rotazione da una curva). È possibile inoltre modificare il valore esistente per applicare le trasformazioni sopra altri effetti.

.. rst-class:: classref-item-separator

----

.. _class_CharFXTransform_property_visible:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **visible** = ``true`` :ref:`🔗<class_CharFXTransform_property_visible>`

.. rst-class:: classref-property-setget

- |void| **set_visibility**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_visible**\ (\ )

Se ``true``, il carattere sarà disegnato. Se ``false``, il carattere sarà nascosto. I caratteri attorno ai caratteri nascosti si riorganizzeranno per occupare lo spazio dei caratteri nascosti. Se ciò non è desiderato, imposta il loro :ref:`color<class_CharFXTransform_property_color>` su ``Color(1, 1, 1, 0)``.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
