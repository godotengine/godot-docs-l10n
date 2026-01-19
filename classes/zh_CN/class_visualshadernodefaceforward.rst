:github_url: hide

.. _class_VisualShaderNodeFaceForward:

VisualShaderNodeFaceForward
===========================

**继承：** :ref:`VisualShaderNodeVectorBase<class_VisualShaderNodeVectorBase>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

返回与可视化着色器图中的参考向量指向相同方向的向量。

.. rst-class:: classref-introduction-group

描述
----

在着色器语言中翻译为 ``faceforward(N, I, Nref)``\ 。该函数有三个向量参数。\ ``N``\ ，定向向量，\ ``I``\ ，入射向量，以及\ ``Nref``\ ，参考矢量。如果 ``I`` 和 ``Nref`` 的点积小于零，返回值为 ``N``\ 。否则，将返回 ``-N``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
