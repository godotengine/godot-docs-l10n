:github_url: hide

.. _class_EditorResourceTooltipPlugin:

EditorResourceTooltipPlugin
===========================

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

为处理的资源类型制作高阶工具提示的插件。

.. rst-class:: classref-introduction-group

描述
----

:ref:`FileSystemDock<class_FileSystemDock>` 使用的资源工具提示插件，能够为指定资源生成自定义工具提示。例如，\ :ref:`Texture2D<class_Texture2D>` 的工具提示会显示较大的预览和该纹理的尺寸。

插件必须先使用 :ref:`FileSystemDock.add_resource_tooltip_plugin()<class_FileSystemDock_method_add_resource_tooltip_plugin>` 注册。用户悬停在文件系统面板中该插件能够处理的资源上时，就会调用 :ref:`_make_tooltip_for_path()<class_EditorResourceTooltipPlugin_private_method__make_tooltip_for_path>` 来创建工具提示。工作原理类似于 :ref:`Control._make_custom_tooltip()<class_Control_private_method__make_custom_tooltip>`\ 。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`_handles<class_EditorResourceTooltipPlugin_private_method__handles>`\ (\ type\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                                                                   |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Control<class_Control>` | :ref:`_make_tooltip_for_path<class_EditorResourceTooltipPlugin_private_method__make_tooltip_for_path>`\ (\ path\: :ref:`String<class_String>`, metadata\: :ref:`Dictionary<class_Dictionary>`, base\: :ref:`Control<class_Control>`\ ) |virtual| |const| |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`request_thumbnail<class_EditorResourceTooltipPlugin_method_request_thumbnail>`\ (\ path\: :ref:`String<class_String>`, control\: :ref:`TextureRect<class_TextureRect>`\ ) |const|                                                                  |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_EditorResourceTooltipPlugin_private_method__handles:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_handles**\ (\ type\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_EditorResourceTooltipPlugin_private_method__handles>`

如果插件要处理给定的 :ref:`Resource<class_Resource>` 类型 ``type``\ ，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorResourceTooltipPlugin_private_method__make_tooltip_for_path:

.. rst-class:: classref-method

:ref:`Control<class_Control>` **_make_tooltip_for_path**\ (\ path\: :ref:`String<class_String>`, metadata\: :ref:`Dictionary<class_Dictionary>`, base\: :ref:`Control<class_Control>`\ ) |virtual| |const| :ref:`🔗<class_EditorResourceTooltipPlugin_private_method__make_tooltip_for_path>`

创建并返回工具提示，会在用户悬停在文件系统面板上路径为 ``path`` 的资源上时显示。

元数据字典 ``metadata`` 由预览生成器提供（见 :ref:`EditorResourcePreviewGenerator._generate()<class_EditorResourcePreviewGenerator_private_method__generate>`\ ）。

\ ``base`` 是基础的默认工具提示，是一个包含文件名、类型、大小标签的 :ref:`VBoxContainer<class_VBoxContainer>`\ 。如果其他插件也能够处理相同的文件类型，那么 ``base`` 就是上一个插件的输出。为了达到最佳效果，请确保基础工具提示是返回的 :ref:`Control<class_Control>` 的一部分。

\ **注意：**\ 不建议使用 :ref:`ResourceLoader.load()<class_ResourceLoader_method_load>`\ ，尤其是模型、纹理等开销较大的资源，否则会在创建工具提示时让编辑器失去响应。如果想要在工具提示中显示预览，可以使用 :ref:`request_thumbnail()<class_EditorResourceTooltipPlugin_method_request_thumbnail>`\ 。

\ **注意：**\ 如果你决定要丢弃 ``base``\ ，请确保调用了 :ref:`Node.queue_free()<class_Node_method_queue_free>`\ ，否则不会自动释放。

::

    func _make_tooltip_for_path(path, metadata, base):
        var t_rect = TextureRect.new()
        request_thumbnail(path, t_rect)
        base.add_child(t_rect) # TextureRect 会出现在工具提示的底部。
        return base

.. rst-class:: classref-item-separator

----

.. _class_EditorResourceTooltipPlugin_method_request_thumbnail:

.. rst-class:: classref-method

|void| **request_thumbnail**\ (\ path\: :ref:`String<class_String>`, control\: :ref:`TextureRect<class_TextureRect>`\ ) |const| :ref:`🔗<class_EditorResourceTooltipPlugin_method_request_thumbnail>`

为给定的 :ref:`TextureRect<class_TextureRect>` 请求缩略图。缩略图使用 :ref:`EditorResourcePreview<class_EditorResourcePreview>` 异步创建，会在可用时自动设置。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
