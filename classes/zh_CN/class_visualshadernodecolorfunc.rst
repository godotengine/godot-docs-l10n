:github_url: hide

.. Generated automatically by doc/tools/make_rst.py in Godot's source tree.
.. DO NOT EDIT THIS FILE, but the VisualShaderNodeColorFunc.xml source instead.
.. The source is found in doc/classes or modules/<name>/doc_classes.

.. _class_VisualShaderNodeColorFunc:

VisualShaderNodeColorFunc
=========================

**Inherits:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`Reference<class_Reference>` **<** :ref:`Object<class_Object>`

一个\ :ref:`Color<class_Color>`\ 函数，在可视化着色器图中使用。

描述
----

接受一个\ :ref:`Color<class_Color>`\ 到输入端口，并根据 :ref:`function<class_VisualShaderNodeColorFunc_property_function>` 对其进行转换。

属性
----

+----------------------------------------------------------+--------------------------------------------------------------------+-------+
| :ref:`Function<enum_VisualShaderNodeColorFunc_Function>` | :ref:`function<class_VisualShaderNodeColorFunc_property_function>` | ``0`` |
+----------------------------------------------------------+--------------------------------------------------------------------+-------+

枚举
----

.. _enum_VisualShaderNodeColorFunc_Function:

.. _class_VisualShaderNodeColorFunc_constant_FUNC_GRAYSCALE:

.. _class_VisualShaderNodeColorFunc_constant_FUNC_SEPIA:

enum **Function**:

- **FUNC_GRAYSCALE** = **0** --- 使用以下公式将颜色转换为灰度。

::

    vec3 c = input;
    float max1 = max(c.r, c.g);
    float max2 = max(max1, c.b);
    float max3 = max(max1, max2);
    return vec3(max3, max3, max3);

- **FUNC_SEPIA** = **1** --- 使用以下公式应用棕褐色调效果。

::

    vec3 c = input;
    float r = (c.r * 0.393) + (c.g * 0.769) + (c.b * 0.189);
    float g = (c.r * 0.349) + (c.g * 0.686) + (c.b * 0.168);
    float b = (c.r * 0.272) + (c.g * 0.534) + (c.b * 0.131);
    return vec3(r, g, b);

属性说明
--------

.. _class_VisualShaderNodeColorFunc_property_function:

- :ref:`Function<enum_VisualShaderNodeColorFunc_Function>` **function**

+-----------+---------------------+
| *Default* | ``0``               |
+-----------+---------------------+
| *Setter*  | set_function(value) |
+-----------+---------------------+
| *Getter*  | get_function()      |
+-----------+---------------------+

要应用于输入颜色的函数。参阅\ :ref:`Function<enum_VisualShaderNodeColorFunc_Function>`\ 的选项。

.. |virtual| replace:: :abbr:`virtual (This method should typically be overridden by the user to have any effect.)`
.. |const| replace:: :abbr:`const (This method has no side effects. It doesn't modify any of the instance's member variables.)`
.. |vararg| replace:: :abbr:`vararg (This method accepts any number of arguments after the ones described here.)`