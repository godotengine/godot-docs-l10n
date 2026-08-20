:github_url: hide

.. _class_ResourceImporterCSVTranslation:

ResourceImporterCSVTranslation
==============================

**Eredita:** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Importa valori separati da virgole sotto forma di :ref:`Translation<class_Translation>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

I valori separati da virgole sono un formato per memorizzare tabelle in testo semplice. La semplicità del formato lo rende facile da modificare in qualsiasi editor di testo o di fogli di calcolo. Ciò lo rende una scelta comune per la localizzazione dei videogiochi.

Nel file CSV utilizzato per la traduzione, la prima colonna contiene identificatori di stringa e la prima riga funge da intestazione. L'intestazione della prima colonna può contenere qualsiasi valore. Le intestazioni rimanenti indicano la lingua per quella colonna. Le colonne le cui intestazioni iniziano con un trattino basso (``_``) saranno ignorate.

\ **File CSV di esempio:**\ 

.. code:: text

    keys,en,es,ja
    GREET,"Hello, friend!","Hola, amigo!",こんにちは
    ASK,How are you?,Cómo está?,元気ですか
    BYE,Goodbye,Adiós,さようなら
    QUOTE,"""Hello"" said the man.","""Hola"" dijo el hombre.",「こんにちは」男は言いました

Sebbene le chiavi nella prima colonna in genere utilizzino identificatori di stringhe in maiuscolo, non è raro utilizzare direttamente le stringhe che appaiono nel gioco come chiavi. Per evitare ambiguità tra le stringhe, è possibile usare una colonna speciale ``?context`` per specificare il contesto da utilizzare con :ref:`Object.tr()<class_Object_method_tr>`.

.. code:: text

    en,?context,fr,ja,zh
    Letter,Alphabet,Lettre,字母,字母
    Letter,Message,Courrier,手紙,信件

Per impostare la forma plurale di una stringa da usare con :ref:`Object.tr_n()<class_Object_method_tr_n>`, aggiungei una colonna speciale ``?plural``. Dopo aver impostato la forma plurale della stringa sorgente in questa colonna, è possibile aggiungere ulteriori righe per fornire traduzioni per altre forme plurali. La prima colonna e tutte le colonne speciali in queste righe contenenti le forme plurali devono essere vuote.

Godot include regole predefinite per il plurale per alcune lingue. È anche possibile personalizzarle tramite una riga speciale ``?pluralrule``. Consulta `GNU gettext <https://www.gnu.org/software/gettext/manual/html_node/Plural-forms.html>`__ per esempi e ulteriori informazioni.

.. code:: text

    en,?plural,fr,ru,zh,_Comment
    ?pluralrule,,nplurals=2; plural=(n >= 2);,,,Customize the plural rule for French
    There is %d apple,There are %d apples,Il y a %d pomme,Есть %d яблоко,那里有%d个苹果,
    ,,Il y a %d pommes,Есть %d яблока,,
    ,,,Есть %d яблок,,

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Importazione delle traduzioni <../tutorials/assets_pipeline/importing_translations>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------+---------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`   | :ref:`compress<class_ResourceImporterCSVTranslation_property_compress>`                           | ``1``     |
   +-------------------------+---------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`   | :ref:`delimiter<class_ResourceImporterCSVTranslation_property_delimiter>`                         | ``0``     |
   +-------------------------+---------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`unescape_keys<class_ResourceImporterCSVTranslation_property_unescape_keys>`                 | ``false`` |
   +-------------------------+---------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`unescape_translations<class_ResourceImporterCSVTranslation_property_unescape_translations>` | ``true``  |
   +-------------------------+---------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_ResourceImporterCSVTranslation_property_compress:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress** = ``1`` :ref:`🔗<class_ResourceImporterCSVTranslation_property_compress>`

- **Disabled**: Crea un :ref:`Translation<class_Translation>`.

- **Auto**: Crea un :ref:`OptimizedTranslation<class_OptimizedTranslation>` se possibile. Ciò rende il file risultante più piccolo a costo di un piccolo sovraccarico della CPU. Utilizza :ref:`Translation<class_Translation>` per le traduzioni con contesto o forme plurali.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterCSVTranslation_property_delimiter:

.. rst-class:: classref-property

:ref:`int<class_int>` **delimiter** = ``0`` :ref:`🔗<class_ResourceImporterCSVTranslation_property_delimiter>`

Il delimitatore da usare nel file CSV. Il valore predefinito corrisponde alla comune convenzione di CSV. I valori separati da tabulazione sono talvolta chiamati file TSV.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterCSVTranslation_property_unescape_keys:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **unescape_keys** = ``false`` :ref:`🔗<class_ResourceImporterCSVTranslation_property_unescape_keys>`

Se ``true``, le chiavi dei messaggi nel file CSV vengono decodificate tramite :ref:`String.c_unescape()<class_String_method_c_unescape>` durante il processo di importazione.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterCSVTranslation_property_unescape_translations:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **unescape_translations** = ``true`` :ref:`🔗<class_ResourceImporterCSVTranslation_property_unescape_translations>`

Se ``true``, le traduzioni dei messaggi nel file CSV vengono decodificate tramite :ref:`String.c_unescape()<class_String_method_c_unescape>` durante il processo di importazione.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
