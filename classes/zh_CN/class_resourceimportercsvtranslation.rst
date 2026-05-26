:github_url: hide

.. _class_ResourceImporterCSVTranslation:

ResourceImporterCSVTranslation
==============================

**继承：** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

导入 CSV 作为 :ref:`Translation<class_Translation>`\ 。

.. rst-class:: classref-introduction-group

描述
----

逗号分隔值是一种纯文本表格存储格式。这种格式简单易用，可以在任何文本编辑器或电子表格软件中进行编辑。这使其成为游戏本地化的常用选择。

在用于翻译的 CSV 文件中，第一列包含字符串标识符，第一行用作标题。第一列的标题可以是任意值。其余标题表示该列的区域设置。标题以下划线（\ ``_``\ ）开头的列将被忽略。

\ **CSV 文件示例：**\ 

.. code:: text

    keys,en,es,ja
    GREET,"Hello, friend!","Hola, amigo!",こんにちは
    ASK,How are you?,Cómo está?,元気ですか
    BYE,Goodbye,Adiós,さようなら
    QUOTE,"""Hello"" said the man.","""Hola"" dijo el hombre.",「こんにちは」男は言いました

虽然第一列中的键通常使用大写字符串标识符，但直接使用游戏中出现的字符串作为键也很常见。为了避免字符串歧义，可以使用特殊的 ``?context`` 列来指定与 :ref:`Object.tr()<class_Object_method_tr>` 一起使用的上下文。

.. code:: text

    en,?context,fr,ja,zh
    Letter,Alphabet,Lettre,字母,字母
    Letter,Message,Courrier,手紙,信件

要设置用于 :ref:`Object.tr_n()<class_Object_method_tr_n>` 方法的字符串的复数形式，请添加一个特殊的 ``?plural`` 列。在该列中设置源字符串的复数形式后，可以添加其他行来提供更多复数形式的翻译。这些复数形式行中的第一列和所有特殊列都必须为空。

Godot 包含一些语言的内置复数规则。还可以使用特殊的 ``?pluralrule`` 行来自定义它们。有关示例和更多信息，请参阅 `GNU gettext <https://www.gnu.org/software/gettext/manual/html_node/Plural-forms.html>`__\ 。

.. code:: text

    en,?plural,fr,ru,zh,_Comment
    ?pluralrule,,nplurals=2; plural=(n >= 2);,,,Customize the plural rule for French
    There is %d apple,There are %d apples,Il y a %d pomme,Есть %d яблоко,那里有%d个苹果,
    ,,Il y a %d pommes,Есть %d яблока,,
    ,,,Есть %d яблок,,

.. rst-class:: classref-introduction-group

教程
----

- :doc:`导入翻译 <../tutorials/assets_pipeline/importing_translations>`

.. rst-class:: classref-reftable-group

属性
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

属性说明
--------

.. _class_ResourceImporterCSVTranslation_property_compress:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress** = ``1`` :ref:`🔗<class_ResourceImporterCSVTranslation_property_compress>`

- **Disabled**\ ：创建 :ref:`Translation<class_Translation>`\ 。

- **Auto**\ ：可能时创建 :ref:`OptimizedTranslation<class_OptimizedTranslation>`\ 。这样做可以减小生成的文件大小，但会增加少量 CPU 开销。对于包含上下文或复数形式的翻译，则会回退到 :ref:`Translation<class_Translation>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterCSVTranslation_property_delimiter:

.. rst-class:: classref-property

:ref:`int<class_int>` **delimiter** = ``0`` :ref:`🔗<class_ResourceImporterCSVTranslation_property_delimiter>`

在 CSV 文件中使用的分隔符。该默认值符合常见的 CSV 约定。制表符分隔值有时被称为 TSV 文件。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterCSVTranslation_property_unescape_keys:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **unescape_keys** = ``false`` :ref:`🔗<class_ResourceImporterCSVTranslation_property_unescape_keys>`

如果为 ``true``\ ，则在导入过程中使用 :ref:`String.c_unescape()<class_String_method_c_unescape>` 对 CSV 文件中的消息键进行反转义。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterCSVTranslation_property_unescape_translations:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **unescape_translations** = ``true`` :ref:`🔗<class_ResourceImporterCSVTranslation_property_unescape_translations>`

如果为 ``true``\ ，则在导入过程中使用 :ref:`String.c_unescape()<class_String_method_c_unescape>` 对 CSV 文件中的消息翻译进行反转义。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
