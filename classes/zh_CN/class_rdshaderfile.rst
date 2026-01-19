:github_url: hide

.. _class_RDShaderFile:

RDShaderFile
============

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

编译后的 SPIR-V 形式的着色器文件（由 :ref:`RenderingDevice<class_RenderingDevice>` 使用）。请勿与 Godot 自身的 :ref:`Shader<class_Shader>` 混淆。

.. rst-class:: classref-introduction-group

描述
----

编译后的 SPIR-V 形式的着色器文件。

另见 :ref:`RDShaderSource<class_RDShaderSource>`\ 。\ **RDShaderFile** 应该仅用于 :ref:`RenderingDevice<class_RenderingDevice>` API。不应与 Godot 自身的 :ref:`Shader<class_Shader>` 资源混淆，后者是 Godot 诸多节点所使用的资源，用于高阶着色器编程。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------+-----------------------------------------------------------+--------+
   | :ref:`String<class_String>` | :ref:`base_error<class_RDShaderFile_property_base_error>` | ``""`` |
   +-----------------------------+-----------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RDShaderSPIRV<class_RDShaderSPIRV>`                        | :ref:`get_spirv<class_RDShaderFile_method_get_spirv>`\ (\ version\: :ref:`StringName<class_StringName>` = &""\ ) |const|                                                     |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] | :ref:`get_version_list<class_RDShaderFile_method_get_version_list>`\ (\ ) |const|                                                                                            |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_bytecode<class_RDShaderFile_method_set_bytecode>`\ (\ bytecode\: :ref:`RDShaderSPIRV<class_RDShaderSPIRV>`, version\: :ref:`StringName<class_StringName>` = &""\ ) |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_RDShaderFile_property_base_error:

.. rst-class:: classref-property

:ref:`String<class_String>` **base_error** = ``""`` :ref:`🔗<class_RDShaderFile_property_base_error>`

.. rst-class:: classref-property-setget

- |void| **set_base_error**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_base_error**\ (\ )

基础编译错误消息，如果非空，表示与特定着色器阶段无关的错误。如果为空，着色器编译也不一定成功（请检查 :ref:`RDShaderSPIRV<class_RDShaderSPIRV>` 的各种错误消息成员）。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_RDShaderFile_method_get_spirv:

.. rst-class:: classref-method

:ref:`RDShaderSPIRV<class_RDShaderSPIRV>` **get_spirv**\ (\ version\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_RDShaderFile_method_get_spirv>`

返回指定着色器版本 ``version`` 的 SPIR-V 中间表示。

.. rst-class:: classref-item-separator

----

.. _class_RDShaderFile_method_get_version_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] **get_version_list**\ (\ ) |const| :ref:`🔗<class_RDShaderFile_method_get_version_list>`

返回该着色器的编译版本列表。

.. rst-class:: classref-item-separator

----

.. _class_RDShaderFile_method_set_bytecode:

.. rst-class:: classref-method

|void| **set_bytecode**\ (\ bytecode\: :ref:`RDShaderSPIRV<class_RDShaderSPIRV>`, version\: :ref:`StringName<class_StringName>` = &""\ ) :ref:`🔗<class_RDShaderFile_method_set_bytecode>`

设置指定着色器版本 ``version`` 要编译的 SPIR-V 字节码 ``bytecode``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
