:github_url: hide

.. _class_EditorSyntaxHighlighter:

EditorSyntaxHighlighter
=======================

**继承：** :ref:`SyntaxHighlighter<class_SyntaxHighlighter>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`GDScriptSyntaxHighlighter<class_GDScriptSyntaxHighlighter>`

:ref:`ScriptEditor<class_ScriptEditor>` 所使用的 :ref:`SyntaxHighlighter<class_SyntaxHighlighter>` 的基类。

.. rst-class:: classref-introduction-group

描述
----

扩展了 :ref:`ScriptEditor<class_ScriptEditor>` 的编辑器所使用的所有 :ref:`SyntaxHighlighter<class_SyntaxHighlighter>` 的基类。

请通过调用 :ref:`ScriptEditorBase.add_syntax_highlighter()<class_ScriptEditorBase_method_add_syntax_highlighter>` 为各个脚本添加语法高亮器。要在打开时应用于所有脚本，请调用 :ref:`ScriptEditor.register_syntax_highlighter()<class_ScriptEditor_method_register_syntax_highlighter>`\ 。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`EditorSyntaxHighlighter<class_EditorSyntaxHighlighter>` | :ref:`_create<class_EditorSyntaxHighlighter_private_method__create>`\ (\ ) |virtual| |const|                                   |
   +---------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                   | :ref:`_get_name<class_EditorSyntaxHighlighter_private_method__get_name>`\ (\ ) |virtual| |const|                               |
   +---------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`             | :ref:`_get_supported_languages<class_EditorSyntaxHighlighter_private_method__get_supported_languages>`\ (\ ) |virtual| |const| |
   +---------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_EditorSyntaxHighlighter_private_method__create:

.. rst-class:: classref-method

:ref:`EditorSyntaxHighlighter<class_EditorSyntaxHighlighter>` **_create**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorSyntaxHighlighter_private_method__create>`

虚函数，可以创建一个语法高亮器新实例。

.. rst-class:: classref-item-separator

----

.. _class_EditorSyntaxHighlighter_private_method__get_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_name**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorSyntaxHighlighter_private_method__get_name>`

虚函数，可以在重写后返回语法高亮器的名称。

.. rst-class:: classref-item-separator

----

.. _class_EditorSyntaxHighlighter_private_method__get_supported_languages:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_supported_languages**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorSyntaxHighlighter_private_method__get_supported_languages>`

虚函数，可以在重写后返回所支持的语言名称。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
