:github_url: hide

.. _class_VisualShaderNodeOuterProduct:

VisualShaderNodeOuterProduct
============================

**继承：** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

计算可视化着色器图中两个向量的外积。

.. rst-class:: classref-introduction-group

描述
----

``OuterProduct`` 将第一个参数 ``c`` 作为列向量（有一列的矩阵），将第二个参数 ``r`` 作为行向量（有一行的矩阵），进行线性代数矩阵乘法 ``c * r``\ 。产生一个矩阵，其行数是 ``c`` 的分量数，其列数是 ``r`` 的分量数。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
