:github_url: hide

.. _class_EditorResourceConversionPlugin:

EditorResourceConversionPlugin
==============================

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用于在编辑器资源选择器的上下文菜单中添加从一种资源格式到另一种资源格式的自定义转换器的插件；例如，将 :ref:`StandardMaterial3D<class_StandardMaterial3D>` 转换为 :ref:`ShaderMaterial<class_ShaderMaterial>`\ 。

.. rst-class:: classref-introduction-group

描述
----

当编辑器检查器中的资源被调出上下文菜单时，\ **EditorResourceConversionPlugin** 被调用。相关的转换插件将作为菜单选项出现，以将给定的资源转换为目标类型。

下面展示了一个将 :ref:`ImageTexture<class_ImageTexture>` 转换为 :ref:`PortableCompressedTexture2D<class_PortableCompressedTexture2D>` 的基本插件示例。


.. tabs::

 .. code-tab:: gdscript

    extends EditorResourceConversionPlugin

    func _handles(resource: Resource):
        return resource is ImageTexture

    func _converts_to():
        return "PortableCompressedTexture2D"

    func _convert(itex: Resource):
        var ptex = PortableCompressedTexture2D.new()
        ptex.create_from_image(itex.get_image(), PortableCompressedTexture2D.COMPRESSION_MODE_LOSSLESS)
        return ptex



要使用 **EditorResourceConversionPlugin**\ ，请先使用 :ref:`EditorPlugin.add_resource_conversion_plugin()<class_EditorPlugin_method_add_resource_conversion_plugin>` 方法注册它。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>` | :ref:`_convert<class_EditorResourceConversionPlugin_private_method__convert>`\ (\ resource\: :ref:`Resource<class_Resource>`\ ) |virtual| |const| |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`     | :ref:`_converts_to<class_EditorResourceConversionPlugin_private_method__converts_to>`\ (\ ) |virtual| |const|                                     |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`_handles<class_EditorResourceConversionPlugin_private_method__handles>`\ (\ resource\: :ref:`Resource<class_Resource>`\ ) |virtual| |const| |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_EditorResourceConversionPlugin_private_method__convert:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **_convert**\ (\ resource\: :ref:`Resource<class_Resource>`\ ) |virtual| |const| :ref:`🔗<class_EditorResourceConversionPlugin_private_method__convert>`

获取输入 :ref:`Resource<class_Resource>` 并将其转换为 :ref:`_converts_to()<class_EditorResourceConversionPlugin_private_method__converts_to>` 中给定的类型。返回的 :ref:`Resource<class_Resource>` 是转换后的结果，输入的 :ref:`Resource<class_Resource>` 保持不变。

.. rst-class:: classref-item-separator

----

.. _class_EditorResourceConversionPlugin_private_method__converts_to:

.. rst-class:: classref-method

:ref:`String<class_String>` **_converts_to**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorResourceConversionPlugin_private_method__converts_to>`

返回该插件将源资源转换为的 :ref:`Resource<class_Resource>` 的目标类型的类名。

.. rst-class:: classref-item-separator

----

.. _class_EditorResourceConversionPlugin_private_method__handles:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_handles**\ (\ resource\: :ref:`Resource<class_Resource>`\ ) |virtual| |const| :ref:`🔗<class_EditorResourceConversionPlugin_private_method__handles>`

调用以确定特定 :ref:`Resource<class_Resource>` 是否可以通过该插件转换为目标资源类型。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
