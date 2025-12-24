:github_url: hide

.. _class_ResourceImporterCSVTranslation:

ResourceImporterCSVTranslation
==============================

**继承：** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

导入 CSV

.. rst-class:: classref-introduction-group

描述
----

逗号分隔值是纯文本表格存储格式。该格式的简单性使其可以轻松地在任何文本编辑器或电子表格软件中进行编辑。这使其成为游戏本地化的常见选择。

\ **示例 CSV 文件：**\ 

.. code:: text

    keys,en,es,ja
    GREET,"Hello, friend!","Hola, amigo!",こんにちは
    ASK,How are you?,Cómo está?,元気ですか
    BYE,Goodbye,Adiós,さようなら
    QUOTE,"""Hello"" said the man.","""Hola"" dijo el hombre.",「こんにちは」男は言いました

.. rst-class:: classref-introduction-group

教程
----

- :doc:`导入翻译 <../tutorials/assets_pipeline/importing_translations>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------+---------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>` | :ref:`compress<class_ResourceImporterCSVTranslation_property_compress>`   | ``true`` |
   +-------------------------+---------------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`   | :ref:`delimiter<class_ResourceImporterCSVTranslation_property_delimiter>` | ``0``    |
   +-------------------------+---------------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_ResourceImporterCSVTranslation_property_compress:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **compress** = ``true`` :ref:`🔗<class_ResourceImporterCSVTranslation_property_compress>`

如果为 ``true``\ ，则会创建 :ref:`OptimizedTranslation<class_OptimizedTranslation>` 而不是 :ref:`Translation<class_Translation>`\ 。这样得到的文件会更小，但代价是 CPU 会消耗得稍多一些。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterCSVTranslation_property_delimiter:

.. rst-class:: classref-property

:ref:`int<class_int>` **delimiter** = ``0`` :ref:`🔗<class_ResourceImporterCSVTranslation_property_delimiter>`

在 CSV 文件中使用的分隔符。该默认值符合常见的 CSV 约定。制表符分隔值有时被称为 TSV 文件。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
