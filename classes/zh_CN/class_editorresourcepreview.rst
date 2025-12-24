:github_url: hide

.. _class_EditorResourcePreview:

EditorResourcePreview
=====================

**继承：** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

用于生成资源或文件的预览的节点。

.. rst-class:: classref-introduction-group

描述
----

该节点用于生成文件资源的预览。

\ **注意：**\ 不应该直接实例化这个类。请使用 :ref:`EditorInterface.get_resource_previewer()<class_EditorInterface_method_get_resource_previewer>` 访问单例。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`add_preview_generator<class_EditorResourcePreview_method_add_preview_generator>`\ (\ generator\: :ref:`EditorResourcePreviewGenerator<class_EditorResourcePreviewGenerator>`\ )                                                                                                           |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`check_for_invalidation<class_EditorResourcePreview_method_check_for_invalidation>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                                                                              |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`queue_edited_resource_preview<class_EditorResourcePreview_method_queue_edited_resource_preview>`\ (\ resource\: :ref:`Resource<class_Resource>`, receiver\: :ref:`Object<class_Object>`, receiver_func\: :ref:`StringName<class_StringName>`, userdata\: :ref:`Variant<class_Variant>`\ ) |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`queue_resource_preview<class_EditorResourcePreview_method_queue_resource_preview>`\ (\ path\: :ref:`String<class_String>`, receiver\: :ref:`Object<class_Object>`, receiver_func\: :ref:`StringName<class_StringName>`, userdata\: :ref:`Variant<class_Variant>`\ )                       |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`remove_preview_generator<class_EditorResourcePreview_method_remove_preview_generator>`\ (\ generator\: :ref:`EditorResourcePreviewGenerator<class_EditorResourcePreviewGenerator>`\ )                                                                                                     |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

信号
----

.. _class_EditorResourcePreview_signal_preview_invalidated:

.. rst-class:: classref-signal

**preview_invalidated**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorResourcePreview_signal_preview_invalidated>`

预览无效（更改）时发出。\ ``path`` 对应预览的路径。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_EditorResourcePreview_method_add_preview_generator:

.. rst-class:: classref-method

|void| **add_preview_generator**\ (\ generator\: :ref:`EditorResourcePreviewGenerator<class_EditorResourcePreviewGenerator>`\ ) :ref:`🔗<class_EditorResourcePreview_method_add_preview_generator>`

创建一个自定义的预览生成器。

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePreview_method_check_for_invalidation:

.. rst-class:: classref-method

|void| **check_for_invalidation**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorResourcePreview_method_check_for_invalidation>`

检查资源是否发生变化，如果发生变化，则无效，并发出相应的信号。

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePreview_method_queue_edited_resource_preview:

.. rst-class:: classref-method

|void| **queue_edited_resource_preview**\ (\ resource\: :ref:`Resource<class_Resource>`, receiver\: :ref:`Object<class_Object>`, receiver_func\: :ref:`StringName<class_StringName>`, userdata\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_EditorResourcePreview_method_queue_edited_resource_preview>`

将正在编辑的 ``resource`` 加入预览队列。预览就绪后将调用 ``receiver`` 的 ``receiver_func``\ 。\ ``receiver_func`` 必须接受以下四个参数：\ :ref:`String<class_String>` path、\ :ref:`Texture2D<class_Texture2D>` preview、\ :ref:`Texture2D<class_Texture2D>` thumbnail_preview、\ :ref:`Variant<class_Variant>` userdata。\ ``userdata`` 可以是任何内容，会在调用 ``receiver_func`` 时返回。

\ **注意：**\ 无法创建预览时仍会调用 ``receiver_func``\ ，但预览将为 ``null``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePreview_method_queue_resource_preview:

.. rst-class:: classref-method

|void| **queue_resource_preview**\ (\ path\: :ref:`String<class_String>`, receiver\: :ref:`Object<class_Object>`, receiver_func\: :ref:`StringName<class_StringName>`, userdata\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_EditorResourcePreview_method_queue_resource_preview>`

将位于 ``path`` 的资源文件加入预览队列。预览就绪后将调用 ``receiver`` 的 ``receiver_func``\ 。\ ``receiver_func`` 必须接受以下四个参数：\ :ref:`String<class_String>` path、\ :ref:`Texture2D<class_Texture2D>` preview、\ :ref:`Texture2D<class_Texture2D>` thumbnail_preview、\ :ref:`Variant<class_Variant>` userdata。\ ``userdata`` 可以是任何内容，会在调用 ``receiver_func`` 时返回。

\ **注意：**\ 无法创建预览时仍会调用 ``receiver_func``\ ，但预览将为 ``null``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePreview_method_remove_preview_generator:

.. rst-class:: classref-method

|void| **remove_preview_generator**\ (\ generator\: :ref:`EditorResourcePreviewGenerator<class_EditorResourcePreviewGenerator>`\ ) :ref:`🔗<class_EditorResourcePreview_method_remove_preview_generator>`

移除自定义预览生成器。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
