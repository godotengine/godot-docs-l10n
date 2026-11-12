:github_url: hide

.. _class_ResourceImporter:

ResourceImporter
================

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`EditorImportPlugin<class_EditorImportPlugin>`, :ref:`ResourceImporterBitMap<class_ResourceImporterBitMap>`, :ref:`ResourceImporterBMFont<class_ResourceImporterBMFont>`, :ref:`ResourceImporterCSVTranslation<class_ResourceImporterCSVTranslation>`, :ref:`ResourceImporterDynamicFont<class_ResourceImporterDynamicFont>`, :ref:`ResourceImporterImage<class_ResourceImporterImage>`, :ref:`ResourceImporterImageFont<class_ResourceImporterImageFont>`, :ref:`ResourceImporterLayeredTexture<class_ResourceImporterLayeredTexture>`, :ref:`ResourceImporterMP3<class_ResourceImporterMP3>`, :ref:`ResourceImporterOBJ<class_ResourceImporterOBJ>`, :ref:`ResourceImporterOggVorbis<class_ResourceImporterOggVorbis>`, :ref:`ResourceImporterScene<class_ResourceImporterScene>`, :ref:`ResourceImporterShaderFile<class_ResourceImporterShaderFile>`, :ref:`ResourceImporterStreamedTexture<class_ResourceImporterStreamedTexture>`, :ref:`ResourceImporterSVG<class_ResourceImporterSVG>`, :ref:`ResourceImporterTexture<class_ResourceImporterTexture>`, :ref:`ResourceImporterTextureAtlas<class_ResourceImporterTextureAtlas>`, :ref:`ResourceImporterWAV<class_ResourceImporterWAV>`

资源导入器的基类。

.. rst-class:: classref-introduction-group

描述
----

这是 Godot 资源导入器的基类。要使用编辑器插件实现你自己的资源导入器，请参考 :ref:`EditorImportPlugin<class_EditorImportPlugin>`\ 。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`导入插件 <../tutorials/plugins/editor/import_plugins>`

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`_get_build_dependencies<class_ResourceImporter_private_method__get_build_dependencies>`\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const| |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_ResourceImporter_ImportOrder:

.. rst-class:: classref-enumeration

enum **ImportOrder**: :ref:`🔗<enum_ResourceImporter_ImportOrder>`

.. _class_ResourceImporter_constant_IMPORT_ORDER_DEFAULT:

.. rst-class:: classref-enumeration-constant

:ref:`ImportOrder<enum_ResourceImporter_ImportOrder>` **IMPORT_ORDER_DEFAULT** = ``0``

默认导入顺序。

.. _class_ResourceImporter_constant_IMPORT_ORDER_SCENE:

.. rst-class:: classref-enumeration-constant

:ref:`ImportOrder<enum_ResourceImporter_ImportOrder>` **IMPORT_ORDER_SCENE** = ``100``

场景的导入顺序，确保场景被导入在所有其他核心资源（如纹理）\ *之后*\ 。自定义导入器的导入顺序一般应低于\ ``100``\ ，以避免导入依赖自定义资源的场景时出现问题。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_ResourceImporter_private_method__get_build_dependencies:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_build_dependencies**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_ResourceImporter_private_method__get_build_dependencies>`

当引擎编译配置文件编辑器想要检查导入资源所需的构建选项时会调用此方法。例如， :ref:`ResourceImporterDynamicFont<class_ResourceImporterDynamicFont>` 有一个名为 :ref:`ResourceImporterDynamicFont.multichannel_signed_distance_field<class_ResourceImporterDynamicFont_property_multichannel_signed_distance_field>` 的属性，该属性要求引擎在构建时必须启用“msdfgen”模块。如果该资源恰好是自定义的资源，则会像这样处理：

::

    func _get_build_dependencies(path):
        var resource = load(path)
        var dependencies = PackedStringArray()

        if resource.multichannel_signed_distance_field:
            dependencies.push_back("module_msdfgen_enabled")

        return dependencies

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
