:github_url: hide

.. _class_GDScriptSyntaxHighlighter:

GDScriptSyntaxHighlighter
=========================

**繼承：** :ref:`EditorSyntaxHighlighter<class_EditorSyntaxHighlighter>` **<** :ref:`SyntaxHighlighter<class_SyntaxHighlighter>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

可用於 :ref:`TextEdit<class_TextEdit>` 和 :ref:`CodeEdit<class_CodeEdit>` 節點的 GDScript 語法高亮元件。

.. rst-class:: classref-introduction-group

說明
----

**注意：**\ 此類別僅能用於編輯器外掛，因其依賴於編輯器設定。


.. tabs::

 .. code-tab:: gdscript

    var code_preview = TextEdit.new()
    var highlighter = GDScriptSyntaxHighlighter.new()
    code_preview.syntax_highlighter = highlighter

 .. code-tab:: csharp

    var codePreview = new TextEdit();
    var highlighter = new GDScriptSyntaxHighlighter();
    codePreview.SyntaxHighlighter = highlighter;



.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
