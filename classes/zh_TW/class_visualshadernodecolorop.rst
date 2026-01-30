:github_url: hide

.. _class_VisualShaderNodeColorOp:

VisualShaderNodeColorOp
=======================

**繼承：** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

在視覺化著色器圖中使用的 :ref:`Color<class_Color>` 運算子。

.. rst-class:: classref-introduction-group

說明
----

將 :ref:`operator<class_VisualShaderNodeColorOp_property_operator>` 套用於兩個顏色輸入。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +--------------------------------------------------------+------------------------------------------------------------------+-------+
   | :ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` | :ref:`operator<class_VisualShaderNodeColorOp_property_operator>` | ``0`` |
   +--------------------------------------------------------+------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_VisualShaderNodeColorOp_Operator:

.. rst-class:: classref-enumeration

enum **Operator**: :ref:`🔗<enum_VisualShaderNodeColorOp_Operator>`

.. _class_VisualShaderNodeColorOp_constant_OP_SCREEN:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` **OP_SCREEN** = ``0``

用以下公式產生螢幕效果。

::

    result = vec3(1.0) - (vec3(1.0) - a) * (vec3(1.0) - b);

.. _class_VisualShaderNodeColorOp_constant_OP_DIFFERENCE:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` **OP_DIFFERENCE** = ``1``

用以下公式產生差異效果。

::

    result = abs(a - b);

.. _class_VisualShaderNodeColorOp_constant_OP_DARKEN:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` **OP_DARKEN** = ``2``

用以下公式產生變暗效果。

::

    result = min(a, b);

.. _class_VisualShaderNodeColorOp_constant_OP_LIGHTEN:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` **OP_LIGHTEN** = ``3``

用以下公式產生減淡效果。

::

    result = max(a, b);

.. _class_VisualShaderNodeColorOp_constant_OP_OVERLAY:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` **OP_OVERLAY** = ``4``

用以下公式產生疊加效果。

::

    for (int i = 0; i < 3; i++) {
        float base = a[i];
        float blend = b[i];
        if (base < 0.5) {
            result[i] = 2.0 * base * blend;
        } else {
            result[i] = 1.0 - 2.0 * (1.0 - blend) * (1.0 - base);
        }
    }

.. _class_VisualShaderNodeColorOp_constant_OP_DODGE:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` **OP_DODGE** = ``5``

用以下公式產生閃避效果。

::

    result = a / (vec3(1.0) - b);

.. _class_VisualShaderNodeColorOp_constant_OP_BURN:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` **OP_BURN** = ``6``

用以下公式產生燃燒效果。

::

    result = vec3(1.0) - (vec3(1.0) - a) / b;

.. _class_VisualShaderNodeColorOp_constant_OP_SOFT_LIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` **OP_SOFT_LIGHT** = ``7``

用以下公式產生柔光效果。

::

    for (int i = 0; i < 3; i++) {
        float base = a[i];
        float blend = b[i];
        if (base < 0.5) {
            result[i] = base * (blend + 0.5);
        } else {
            result[i] = 1.0 - (1.0 - base) * (1.0 - (blend - 0.5));
        }
    }

.. _class_VisualShaderNodeColorOp_constant_OP_HARD_LIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` **OP_HARD_LIGHT** = ``8``

用以下公式產生硬光效果。

::

    for (int i = 0; i < 3; i++) {
        float base = a[i];
        float blend = b[i];
        if (base < 0.5) {
            result[i] = base * (2.0 * blend);
        } else {
            result[i] = 1.0 - (1.0 - base) * (1.0 - 2.0 * (blend - 0.5));
        }
    }

.. _class_VisualShaderNodeColorOp_constant_OP_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` **OP_MAX** = ``9``

代表 :ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` 列舉的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_VisualShaderNodeColorOp_property_operator:

.. rst-class:: classref-property

:ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` **operator** = ``0`` :ref:`🔗<class_VisualShaderNodeColorOp_property_operator>`

.. rst-class:: classref-property-setget

- |void| **set_operator**\ (\ value\: :ref:`Operator<enum_VisualShaderNodeColorOp_Operator>`\ )
- :ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` **get_operator**\ (\ )

An operator to be applied to the inputs.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
