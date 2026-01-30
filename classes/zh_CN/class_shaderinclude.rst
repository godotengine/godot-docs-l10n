:github_url: hide

.. _class_ShaderInclude:

ShaderInclude
=============

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

着色器代码片段，能够在 :ref:`Shader<class_Shader>` 中使用 ``#include`` 引入。

.. rst-class:: classref-introduction-group

描述
----

着色器头文件，保存时使用 ``.gdshaderinc`` 扩展名。这个类能够用于定义自定义着色器代码片段，在 :ref:`Shader<class_Shader>` 中可以使用预处理器指令 ``#include`` 加上文件路径引入（例如 ``#include "res://shader_lib.gdshaderinc"``\ ）。代码片段本身不必是有效的着色器。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`着色器预处理器 <../tutorials/shaders/shader_reference/shader_preprocessor>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------+------------------------------------------------+--------+
   | :ref:`String<class_String>` | :ref:`code<class_ShaderInclude_property_code>` | ``""`` |
   +-----------------------------+------------------------------------------------+--------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_ShaderInclude_property_code:

.. rst-class:: classref-property

:ref:`String<class_String>` **code** = ``""`` :ref:`🔗<class_ShaderInclude_property_code>`

.. rst-class:: classref-property-setget

- |void| **set_code**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_code**\ (\ )

返回着色器头文件的代码。返回的文本是用户所编写的内容，不是内部使用的完整生成的代码。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
