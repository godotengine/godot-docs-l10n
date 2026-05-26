:github_url: hide

.. _class_EditorResourcePreviewGenerator:

EditorResourcePreviewGenerator
==============================

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

自定义的预览生成器。

.. rst-class:: classref-introduction-group

描述
----

生成预览的自定义代码。请查看 :ref:`EditorSettings.filesystem/file_dialog/thumbnail_size<class_EditorSettings_property_filesystem/file_dialog/thumbnail_size>` 找出适合做预览的尺寸。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`_can_generate_small_preview<class_EditorResourcePreviewGenerator_private_method__can_generate_small_preview>`\ (\ ) |virtual| |const|                                                                                                             |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`_generate<class_EditorResourcePreviewGenerator_private_method__generate>`\ (\ resource\: :ref:`Resource<class_Resource>`, size\: :ref:`Vector2i<class_Vector2i>`, metadata\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| |required| |const|  |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`_generate_from_path<class_EditorResourcePreviewGenerator_private_method__generate_from_path>`\ (\ path\: :ref:`String<class_String>`, size\: :ref:`Vector2i<class_Vector2i>`, metadata\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| |const| |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`_generate_small_preview_automatically<class_EditorResourcePreviewGenerator_private_method__generate_small_preview_automatically>`\ (\ ) |virtual| |const|                                                                                         |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`_handles<class_EditorResourcePreviewGenerator_private_method__handles>`\ (\ type\: :ref:`String<class_String>`\ ) |virtual| |required| |const|                                                                                                    |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`request_draw_and_wait<class_EditorResourcePreviewGenerator_method_request_draw_and_wait>`\ (\ viewport\: :ref:`RID<class_RID>`\ ) |const|                                                                                                         |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_EditorResourcePreviewGenerator_private_method__can_generate_small_preview:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_can_generate_small_preview**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorResourcePreviewGenerator_private_method__can_generate_small_preview>`

如果该函数返回 ``true``\ ，则该生成器也会为小型预览调用 :ref:`_generate()<class_EditorResourcePreviewGenerator_private_method__generate>` 或 :ref:`_generate_from_path()<class_EditorResourcePreviewGenerator_private_method__generate_from_path>`\ 。

默认情况下，它返回 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePreviewGenerator_private_method__generate:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **_generate**\ (\ resource\: :ref:`Resource<class_Resource>`, size\: :ref:`Vector2i<class_Vector2i>`, metadata\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| |required| |const| :ref:`🔗<class_EditorResourcePreviewGenerator_private_method__generate>`

根据给定的资源生成指定大小的预览。必须始终实现。

失败时允许返回 ``null``\ ，会由其他生成器接手。

必须保持谨慎，因为这个函数始终是从（主线程以外的）线程中调用的。

可以修改 ``metadata`` 字典，从而保存能够在 :ref:`EditorResourceTooltipPlugin._make_tooltip_for_path()<class_EditorResourceTooltipPlugin_private_method__make_tooltip_for_path>` 中使用的文件相关的源数据（例如图片大小、采样长度等）。

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePreviewGenerator_private_method__generate_from_path:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **_generate_from_path**\ (\ path\: :ref:`String<class_String>`, size\: :ref:`Vector2i<class_Vector2i>`, metadata\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| |const| :ref:`🔗<class_EditorResourcePreviewGenerator_private_method__generate_from_path>`

根据路径直接生成指定大小的预览。可选实现，默认代码会在加载后调用 :ref:`_generate()<class_EditorResourcePreviewGenerator_private_method__generate>`\ 。

失败时允许返回 ``null``\ ，会由其他生成器接手。

必须保持谨慎，因为这个函数始终是从（主线程以外的）线程中调用的。

可以修改 ``metadata`` 字典，从而保存能够在 :ref:`EditorResourceTooltipPlugin._make_tooltip_for_path()<class_EditorResourceTooltipPlugin_private_method__make_tooltip_for_path>` 中使用的文件相关的源数据（例如图片大小、采样长度等）。

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePreviewGenerator_private_method__generate_small_preview_automatically:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_generate_small_preview_automatically**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorResourcePreviewGenerator_private_method__generate_small_preview_automatically>`

如果该函数返回 ``true``\ ，则该生成器将自动从通过方法 :ref:`_generate()<class_EditorResourcePreviewGenerator_private_method__generate>` 或 :ref:`_generate_from_path()<class_EditorResourcePreviewGenerator_private_method__generate_from_path>` 生成的普通预览纹理生成小型预览。

默认情况下，它返回 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePreviewGenerator_private_method__handles:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_handles**\ (\ type\: :ref:`String<class_String>`\ ) |virtual| |required| |const| :ref:`🔗<class_EditorResourcePreviewGenerator_private_method__handles>`

如果你的生成器支持类型为 ``type`` 的资源，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePreviewGenerator_method_request_draw_and_wait:

.. rst-class:: classref-method

|void| **request_draw_and_wait**\ (\ viewport\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_EditorResourcePreviewGenerator_method_request_draw_and_wait>`

从 :ref:`_generate()<class_EditorResourcePreviewGenerator_private_method__generate>` 方法内部调用，以请求渲染服务器绘制到 ``viewport``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
