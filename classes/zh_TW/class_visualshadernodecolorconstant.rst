:github_url: hide

.. _class_VisualShaderNodeColorConstant:

VisualShaderNodeColorConstant
=============================

**繼承：** :ref:`VisualShaderNodeConstant<class_VisualShaderNodeConstant>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

:ref:`Color<class_Color>` 常數，在視覺化著色器圖中使用。

.. rst-class:: classref-introduction-group

說明
----

有兩個輸出埠，表示 :ref:`Color<class_Color>` 的 RGB 和 Alpha 通道。

在著色器語言中被轉換成 ``vec3 rgb`` 和 ``float alpha``\ 。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------+------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>` | :ref:`constant<class_VisualShaderNodeColorConstant_property_constant>` | ``Color(1, 1, 1, 1)`` |
   +---------------------------+------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_VisualShaderNodeColorConstant_property_constant:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **constant** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_VisualShaderNodeColorConstant_property_constant>`

.. rst-class:: classref-property-setget

- |void| **set_constant**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_constant**\ (\ )

:ref:`Color<class_Color>` 常數，表示這個節點的狀態。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
