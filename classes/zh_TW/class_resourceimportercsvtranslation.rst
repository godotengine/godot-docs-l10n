:github_url: hide

.. _class_ResourceImporterCSVTranslation:

ResourceImporterCSVTranslation
==============================

**繼承：** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

匯入 CSV 作為 :ref:`Translation<class_Translation>`\ 。

.. rst-class:: classref-introduction-group

說明
----

逗號分隔值是一種純文字表格儲存格式。這種格式簡單易用，可以在任何文字編輯器或電子錶格軟體中進行編輯。這使其成為遊戲在地化的常用選擇。

在用於翻譯的 CSV 檔案中，第一列包含字串標識符，第一行用作標題。第一列的標題可以是任意值。其餘標題表示該列的區域設定。標題以底線（\ ``_``\ ）開頭的列將被忽略。

\ **CSV 檔案範例：**\ 

.. code:: text

    keys,en,es,ja
    GREET,"Hello, friend!","Hola, amigo!",こんにちは
    ASK,How are you?,Cómo está?,元気ですか
    BYE,Goodbye,Adiós,さようなら
    QUOTE,"""Hello"" said the man.","""Hola"" dijo el hombre.",「こんにちは」男は言いました

雖然第一列中的鍵通常使用大寫字串標識符，但直接使用遊戲中出現的字串作為鍵也很常見。為了避免字串歧義，可以使用特殊的 ``?context`` 列來指定與 :ref:`Object.tr()<class_Object_method_tr>` 一起使用的情境。

.. code:: text

    en,?context,fr,ja,zh
    Letter,Alphabet,Lettre,字母,字母
    Letter,Message,Courrier,手紙,信件

要設定用於 :ref:`Object.tr_n()<class_Object_method_tr_n>` 方法的字串的複數形式，請新增一個特殊的 ``?plural`` 列。在該列中設定源字串的複數形式後，可以新增其他行來提供更多複數形式的翻譯。這些複數形式行中的第一列和所有特殊列都必須為空。

Godot 包含一些語言的內建複數規則。還可以使用特殊的 ``?pluralrule`` 行來自訂它們。有關範例和更多資訊，請參閱 `GNU gettext <https://www.gnu.org/software/gettext/manual/html_node/Plural-forms.html>`__\ 。

.. code:: text

    en,?plural,fr,ru,zh,_Comment
    ?pluralrule,,nplurals=2; plural=(n >= 2);,,,Customize the plural rule for French
    There is %d apple,There are %d apples,Il y a %d pomme,Есть %d яблоко,那裡有%d個蘋果,
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

- **Disabled**\ ：建立 :ref:`Translation<class_Translation>`\ 。

- **Auto**\ ：可能時建立 :ref:`OptimizedTranslation<class_OptimizedTranslation>`\ 。這樣做可以減小生成的檔案大小，但會增加少量 CPU 開銷。對於包含情境或複數形式的翻譯，則會回退到 :ref:`Translation<class_Translation>`\ 。

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

如果為 ``true``\ ，則在匯入過程中使用 :ref:`String.c_unescape()<class_String_method_c_unescape>` 對 CSV 檔案中的訊息鍵進行反跳脫。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterCSVTranslation_property_unescape_translations:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **unescape_translations** = ``true`` :ref:`🔗<class_ResourceImporterCSVTranslation_property_unescape_translations>`

如果為 ``true``\ ，則在匯入過程中使用 :ref:`String.c_unescape()<class_String_method_c_unescape>` 對 CSV 檔案中的訊息翻譯進行反跳脫。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
