:github_url: hide

.. _class_VisualShaderNodeColorFunc:

VisualShaderNodeColorFunc
=========================

**继承：** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

:ref:`Color<class_Color>` 函数，在可视化着色器图中使用。

.. rst-class:: classref-introduction-group

描述
----

接受一个 :ref:`Color<class_Color>` 到输入端口，并根据 :ref:`function<class_VisualShaderNodeColorFunc_property_function>` 对其进行转换。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +----------------------------------------------------------+--------------------------------------------------------------------+-------+
   | :ref:`Function<enum_VisualShaderNodeColorFunc_Function>` | :ref:`function<class_VisualShaderNodeColorFunc_property_function>` | ``0`` |
   +----------------------------------------------------------+--------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_VisualShaderNodeColorFunc_Function:

.. rst-class:: classref-enumeration

enum **Function**: :ref:`🔗<enum_VisualShaderNodeColorFunc_Function>`

.. _class_VisualShaderNodeColorFunc_constant_FUNC_GRAYSCALE:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeColorFunc_Function>` **FUNC_GRAYSCALE** = ``0``

使用以下公式将颜色转换为灰度。

::

    vec3 c = input;
    float max1 = max(c.r, c.g);
    float max2 = max(max1, c.b);
    float max3 = max(max1, max2);
    return vec3(max3, max3, max3);

.. _class_VisualShaderNodeColorFunc_constant_FUNC_HSV2RGB:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeColorFunc_Function>` **FUNC_HSV2RGB** = ``1``

将 HSV 向量转换为等效的 RGB 向量。

.. _class_VisualShaderNodeColorFunc_constant_FUNC_RGB2HSV:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeColorFunc_Function>` **FUNC_RGB2HSV** = ``2``

将 RGB 向量转换为等效的 HSV 向量。

.. _class_VisualShaderNodeColorFunc_constant_FUNC_SEPIA:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeColorFunc_Function>` **FUNC_SEPIA** = ``3``

使用以下公式应用棕褐色调效果。

::

    vec3 c = input;
    float r = (c.r * 0.393) + (c.g * 0.769) + (c.b * 0.189);
    float g = (c.r * 0.349) + (c.g * 0.686) + (c.b * 0.168);
    float b = (c.r * 0.272) + (c.g * 0.534) + (c.b * 0.131);
    return vec3(r, g, b);

.. _class_VisualShaderNodeColorFunc_constant_FUNC_LINEAR_TO_SRGB:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeColorFunc_Function>` **FUNC_LINEAR_TO_SRGB** = ``4``

使用以下公式，将颜色从线性编码转换为非线性 sRGB 编码：

::

    const vec3 a = vec3(0.055f);
    return mix((vec3(1.0f) + a) * pow(c.rgb, vec3(1.0f / 2.4f)) - a, 12.92f * c.rgb, lessThan(c.rgb, vec3(0.0031308f)));

兼容渲染器使用了一种更简单的公式，该公式在输入负数值时可能会产生未定义的行为：

::

    vec3 c = input;
    return max(vec3(1.055) * pow(c, vec3(0.416666667)) - vec3(0.055), vec3(0.0));

.. _class_VisualShaderNodeColorFunc_constant_FUNC_SRGB_TO_LINEAR:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeColorFunc_Function>` **FUNC_SRGB_TO_LINEAR** = ``5``

使用以下公式，将颜色从非线性 sRGB 编码转换为线性编码：

::

    vec3 c = input;
    return mix(pow((c.rgb + vec3(0.055)) * (1.0 / (1.0 + 0.055)), vec3(2.4)), c.rgb * (1.0 / 12.92), lessThan(c.rgb, vec3(0.04045)));

兼容渲染器使用了一种更简单的公式，该公式在处理负数输入值时表现不佳：

::

    vec3 c = input;
    return c * (c * (c * 0.305306011 + 0.682171111) + 0.012522878);

.. _class_VisualShaderNodeColorFunc_constant_FUNC_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeColorFunc_Function>` **FUNC_MAX** = ``6``

代表 :ref:`Function<enum_VisualShaderNodeColorFunc_Function>` 枚举的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_VisualShaderNodeColorFunc_property_function:

.. rst-class:: classref-property

:ref:`Function<enum_VisualShaderNodeColorFunc_Function>` **function** = ``0`` :ref:`🔗<class_VisualShaderNodeColorFunc_property_function>`

.. rst-class:: classref-property-setget

- |void| **set_function**\ (\ value\: :ref:`Function<enum_VisualShaderNodeColorFunc_Function>`\ )
- :ref:`Function<enum_VisualShaderNodeColorFunc_Function>` **get_function**\ (\ )

要应用于输入颜色的函数。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
