:github_url: hide

.. _class_VisualShaderNodeGlobalExpression:

VisualShaderNodeGlobalExpression
================================

**繼承：** :ref:`VisualShaderNodeExpression<class_VisualShaderNodeExpression>` **<** :ref:`VisualShaderNodeGroupBase<class_VisualShaderNodeGroupBase>` **<** :ref:`VisualShaderNodeResizableBase<class_VisualShaderNodeResizableBase>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用Godot著色器語言編寫的自訂全域視覺化著色器圖形運算式。

.. rst-class:: classref-introduction-group

說明
----

自訂Godot著色器語言運算式，位於生成的著色器之上。你可以在內部放置各種函式定義，以便以後在\ :ref:`VisualShaderNodeExpression<class_VisualShaderNodeExpression>`\ 中呼叫，這些函式被注入到主著色器函數中。你還可以宣告varyings、uniforms 和全域常數。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
