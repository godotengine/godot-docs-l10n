:github_url: hide

.. _class_ResourceFormatSaver:

ResourceFormatSaver
===================

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

将特定资源类型保存到文件。

.. rst-class:: classref-introduction-group

描述
----

当你从编辑器执行此操作或使用 :ref:`ResourceSaver<class_ResourceSaver>` 单例时，引擎可以节省资源。这要归功于多个 **ResourceFormatSaver**\ ，每个都处理自己的格式并由引擎自动调用。

默认情况下，Godot 将资源保存为 ``.tres``\ （基于文本）、\ ``.res``\ （二进制）或其他内置格式，但你可以选择通过扩展这个类来创建自己的格式。请务必遵守记录的返回类型和值。你应该给它一个全局类名 ``class_name`` 以便它被注册。与内置的 ResourceFormatSaver 一样，它会在保存其识别类型的资源时自动调用。你也可以实现一个 :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`\ 。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`_get_recognized_extensions<class_ResourceFormatSaver_private_method__get_recognized_extensions>`\ (\ resource\: :ref:`Resource<class_Resource>`\ ) |virtual| |const|                  |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`_recognize<class_ResourceFormatSaver_private_method__recognize>`\ (\ resource\: :ref:`Resource<class_Resource>`\ ) |virtual| |const|                                                  |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`_recognize_path<class_ResourceFormatSaver_private_method__recognize_path>`\ (\ resource\: :ref:`Resource<class_Resource>`, path\: :ref:`String<class_String>`\ ) |virtual| |const|    |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`_save<class_ResourceFormatSaver_private_method__save>`\ (\ resource\: :ref:`Resource<class_Resource>`, path\: :ref:`String<class_String>`, flags\: :ref:`int<class_int>`\ ) |virtual| |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`_set_uid<class_ResourceFormatSaver_private_method__set_uid>`\ (\ path\: :ref:`String<class_String>`, uid\: :ref:`int<class_int>`\ ) |virtual|                                         |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_ResourceFormatSaver_private_method__get_recognized_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_recognized_extensions**\ (\ resource\: :ref:`Resource<class_Resource>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatSaver_private_method__get_recognized_extensions>`

返回可用于保存资源对象的扩展名列表，前提是该资源对象已被识别（见 :ref:`_recognize()<class_ResourceFormatSaver_private_method__recognize>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatSaver_private_method__recognize:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_recognize**\ (\ resource\: :ref:`Resource<class_Resource>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatSaver_private_method__recognize>`

返回此保存程序能否保存给定的资源对象。

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatSaver_private_method__recognize_path:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_recognize_path**\ (\ resource\: :ref:`Resource<class_Resource>`, path\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatSaver_private_method__recognize_path>`

如果该saver可以处理给定的保存路径，则返回\ ``true``\ ，否则返回\ ``false``\ 。

如果未实现该方法，则默认行为是检查路径的扩展名是否在\ :ref:`_get_recognized_extensions()<class_ResourceFormatSaver_private_method__get_recognized_extensions>`\ 提供的范围内。

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatSaver_private_method__save:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_save**\ (\ resource\: :ref:`Resource<class_Resource>`, path\: :ref:`String<class_String>`, flags\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_ResourceFormatSaver_private_method__save>`

将给定的资源对象保存到目标\ ``path``\ 中的文件中。 ``flags``\ 是一个位掩码，由\ :ref:`SaverFlags<enum_ResourceSaver_SaverFlags>`\ 常量组成。

成功时返回\ :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ ，失败时返回\ :ref:`Error<enum_@GlobalScope_Error>`\ 常量。

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatSaver_private_method__set_uid:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_set_uid**\ (\ path\: :ref:`String<class_String>`, uid\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_ResourceFormatSaver_private_method__set_uid>`

为给定 ``path`` 处的资源设置新的 UID。成功时返回 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ ，失败时返回 :ref:`Error<enum_@GlobalScope_Error>` 常量。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
