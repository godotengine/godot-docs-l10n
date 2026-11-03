:github_url: hide

.. _class_VisualShaderNodeUVFunc:

VisualShaderNodeUVFunc
======================

**繼承：** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

包含一些用於修改紋理座標（\ ``uv``\ ）的函式，在視覺化著色器圖中使用。

.. rst-class:: classref-introduction-group

說明
----

UV 函式與 :ref:`Vector2<class_Vector2>` 函式類似，但這個節點的輸入埠預設使用著色器的 UV 值。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------------------------------+-----------------------------------------------------------------+-------+
   | :ref:`Function<enum_VisualShaderNodeUVFunc_Function>` | :ref:`function<class_VisualShaderNodeUVFunc_property_function>` | ``0`` |
   +-------------------------------------------------------+-----------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_VisualShaderNodeUVFunc_Function:

.. rst-class:: classref-enumeration

enum **Function**: :ref:`🔗<enum_VisualShaderNodeUVFunc_Function>`

.. _class_VisualShaderNodeUVFunc_constant_FUNC_PANNING:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeUVFunc_Function>` **FUNC_PANNING** = ``0``

使用 ``scale`` 和 ``offset`` 值對 ``uv`` 進行平移，使用的公式如下：\ ``uv = uv + offset * scale``\ 。\ ``uv`` 連接埠預設連接至內建的 ``UV``\ 。

.. _class_VisualShaderNodeUVFunc_constant_FUNC_SCALING:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeUVFunc_Function>` **FUNC_SCALING** = ``1``

使用 ``scale`` 和 ``pivot`` 值對 ``uv`` 進行縮放，使用的公式如下：\ ``uv = (uv - pivot) * scale + pivot``\ 。\ ``uv`` 埠預設連接至內建的 ``UV``\ 。

.. _class_VisualShaderNodeUVFunc_constant_FUNC_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeUVFunc_Function>` **FUNC_MAX** = ``2``

代表 :ref:`Function<enum_VisualShaderNodeUVFunc_Function>` 列舉的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_VisualShaderNodeUVFunc_property_function:

.. rst-class:: classref-property

:ref:`Function<enum_VisualShaderNodeUVFunc_Function>` **function** = ``0`` :ref:`🔗<class_VisualShaderNodeUVFunc_property_function>`

.. rst-class:: classref-property-setget

- |void| **set_function**\ (\ value\: :ref:`Function<enum_VisualShaderNodeUVFunc_Function>`\ )
- :ref:`Function<enum_VisualShaderNodeUVFunc_Function>` **get_function**\ (\ )

要對紋理座標應用的函式。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
