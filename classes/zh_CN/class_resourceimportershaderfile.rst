:github_url: hide

.. _class_ResourceImporterShaderFile:

ResourceImporterShaderFile
==========================

**继承：** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

将原生 GLSL 着色器（不是 Godot 着色器）导入为 :ref:`RDShaderFile<class_RDShaderFile>`\ 。

.. rst-class:: classref-introduction-group

描述
----

这会将原生 GLSL 着色器导入为 :ref:`RDShaderFile<class_RDShaderFile>` 资源，以与低级 :ref:`RenderingDevice<class_RenderingDevice>` 操作一起使用。该导入器\ *不*\ 处理 ``.gdshader`` 文件。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
