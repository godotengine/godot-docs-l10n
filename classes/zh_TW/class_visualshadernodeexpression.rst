:github_url: hide

.. _class_VisualShaderNodeExpression:

VisualShaderNodeExpression
==========================

**繼承：** :ref:`VisualShaderNodeGroupBase<class_VisualShaderNodeGroupBase>` **<** :ref:`VisualShaderNodeResizableBase<class_VisualShaderNodeResizableBase>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`VisualShaderNodeGlobalExpression<class_VisualShaderNodeGlobalExpression>`

用Godot著色語言編寫的自訂視覺化著色器圖形運算式。

.. rst-class:: classref-introduction-group

說明
----

自訂 Godot 著色器語言運算式，有自訂數量的輸入和輸出埠。

所提供的程式碼會直接注入到著色器圖中配對的著色器函式中（\ ``vertex``\ 、\ ``fragment`` 或 ``light``\ ），所以不能用於宣告函式、varying、uniform 或全域常數。這種全域定義見 :ref:`VisualShaderNodeGlobalExpression<class_VisualShaderNodeGlobalExpression>`\ 。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------------+-------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>` | :ref:`expression<class_VisualShaderNodeExpression_property_expression>` | ``""`` |
   +-----------------------------+-------------------------------------------------------------------------+--------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_VisualShaderNodeExpression_property_expression:

.. rst-class:: classref-property

:ref:`String<class_String>` **expression** = ``""`` :ref:`🔗<class_VisualShaderNodeExpression_property_expression>`

.. rst-class:: classref-property-setget

- |void| **set_expression**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_expression**\ (\ )

Godot 著色器語言中的運算式，它將被注入到圖形配對的著色器函式（\ ``vertex``\ 、\ ``fragment`` 或 ``light``\ ）的開頭，因此不能用於宣告函式、varying、uniform 或全域常數。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
