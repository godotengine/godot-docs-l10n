:github_url: hide

.. _class_ResourceImporterCSVTranslation:

ResourceImporterCSVTranslation
==============================

**繼承：** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Imports comma-separated values as :ref:`Translation<class_Translation>`\ s.

.. rst-class:: classref-introduction-group

說明
----

Comma-separated values are a plain text table storage format. The format's simplicity makes it easy to edit in any text editor or spreadsheet software. This makes it a common choice for game localization.

In the CSV file used for translation, the first column contains string identifiers, and the first row serves as the header. The first column's header can be any value. The remaining headers indicate the locale for that column. Columns whose headers begin with an underscore (``_``) will be ignored.

\ **Example CSV file:**\ 

.. code:: text

    keys,en,es,ja
    GREET,"Hello, friend!","Hola, amigo!",こんにちは
    ASK,How are you?,Cómo está?,元気ですか
    BYE,Goodbye,Adiós,さようなら
    QUOTE,"""Hello"" said the man.","""Hola"" dijo el hombre.",「こんにちは」男は言いました

Although keys in the first column typically use uppercase string identifiers, it is not uncommon to directly use strings appearing in the game as keys. To avoid string ambiguity, you can use a special ``?context`` column to specify the context to use with :ref:`Object.tr()<class_Object_method_tr>`.

.. code:: text

    en,?context,fr,ja,zh
    Letter,Alphabet,Lettre,字母,字母
    Letter,Message,Courrier,手紙,信件

To set the plural form of a string to use with :ref:`Object.tr_n()<class_Object_method_tr_n>`, add a special ``?plural`` column. After setting the plural form of the source string in this column, you can add additional rows to provide translations for more plural forms. The first column and all special columns in these plural form rows must be empty.

Godot includes built-in plural rules for some languages. You can also customize them using a special ``?pluralrule`` row. See `GNU gettext <https://www.gnu.org/software/gettext/manual/html_node/Plural-forms.html>`__ for examples and more info.

.. code:: text

    en,?plural,fr,ru,zh,_Comment
    ?pluralrule,,nplurals=2; plural=(n >= 2);,,,Customize the plural rule for French
    There is %d apple,There are %d apples,Il y a %d pomme,Есть %d яблоко,那里有%d个苹果,
    ,,Il y a %d pommes,Есть %d яблока,,
    ,,,Есть %d яблок,,

.. rst-class:: classref-introduction-group

教學
----

- :doc:`匯入翻譯 <../tutorials/assets_pipeline/importing_translations>`

.. rst-class:: classref-reftable-group

屬性
----

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

屬性說明
--------

.. _class_ResourceImporterCSVTranslation_property_compress:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress** = ``1`` :ref:`🔗<class_ResourceImporterCSVTranslation_property_compress>`

- **Disabled**: Creates a :ref:`Translation<class_Translation>`.

- **Auto**: Creates an :ref:`OptimizedTranslation<class_OptimizedTranslation>` when possible. This makes the resulting file smaller at the cost of a small CPU overhead. Falls back to :ref:`Translation<class_Translation>` for translations with context or plural forms.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterCSVTranslation_property_delimiter:

.. rst-class:: classref-property

:ref:`int<class_int>` **delimiter** = ``0`` :ref:`🔗<class_ResourceImporterCSVTranslation_property_delimiter>`

在CSV 檔案中使用的分隔符號。預設值與常見的CSV 約定相符。製表符分隔值有時稱為TSV 檔案。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterCSVTranslation_property_unescape_keys:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **unescape_keys** = ``false`` :ref:`🔗<class_ResourceImporterCSVTranslation_property_unescape_keys>`

If ``true``, message keys in the CSV file are unescaped using :ref:`String.c_unescape()<class_String_method_c_unescape>` during the import process.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterCSVTranslation_property_unescape_translations:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **unescape_translations** = ``true`` :ref:`🔗<class_ResourceImporterCSVTranslation_property_unescape_translations>`

If ``true``, message translations in the CSV file are unescaped using :ref:`String.c_unescape()<class_String_method_c_unescape>` during the import process.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
