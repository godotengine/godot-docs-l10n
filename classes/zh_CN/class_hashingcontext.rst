:github_url: hide

.. _class_HashingContext:

HashingContext
==============

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

提供分段计算加密哈希的功能。

.. rst-class:: classref-introduction-group

描述
----

HashingContext 类提供了一个接口，用于在多次迭代中计算加密哈希值。常用于计算大文件（不必全部加载到内存中）、网络流和一般数据流（不必持有缓冲区）的哈希值。

\ :ref:`HashType<enum_HashingContext_HashType>` 枚举显示了支持的哈希算法。


.. tabs::

 .. code-tab:: gdscript

    const CHUNK_SIZE = 1024

    func hash_file(path):
        # 检查文件是否存在。
        if not FileAccess.file_exists(path):
            return
        # 启动一个 SHA-256 上下文。
        var ctx = HashingContext.new()
        ctx.start(HashingContext.HASH_SHA256)
        # 打开文件进行哈希处理。
        var file = FileAccess.open(path, FileAccess.READ)
        # 读取每个块后更新上下文。
        while file.get_position() < file.get_length():
            var remaining = file.get_length() - file.get_position()
            ctx.update(file.get_buffer(min(remaining, CHUNK_SIZE)))
        # 获取计算的哈希值。
        var res = ctx.finish()
        # 将结果打印为十六进制字符串和数组。
        printt(res.hex_encode(), Array(res))

 .. code-tab:: csharp

    public const int ChunkSize = 1024;

    public void HashFile(string path)
    {
        // 检查文件是否存在。
        if (!FileAccess.FileExists(path))
        {
            return;
        }
        // 启动一个 SHA-256 上下文。
        var ctx = new HashingContext();
        ctx.Start(HashingContext.HashType.Sha256);
        // 打开文件进行哈希处理。
        using var file = FileAccess.Open(path, FileAccess.ModeFlags.Read);
        // 读取每个块后更新上下文。
        while (file.GetPosition() < file.GetLength())
        {
            int remaining = (int)(file.GetLength() - file.GetPosition());
            ctx.Update(file.GetBuffer(Mathf.Min(remaining, ChunkSize)));
        }
        // 获取计算的哈希值。
        byte[] res = ctx.Finish();
        // 将结果打印为十六进制字符串和数组。
        GD.PrintT(res.HexEncode(), (Variant)res);
    }



.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>` | :ref:`finish<class_HashingContext_method_finish>`\ (\ )                                                        |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`         | :ref:`start<class_HashingContext_method_start>`\ (\ type\: :ref:`HashType<enum_HashingContext_HashType>`\ )    |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`         | :ref:`update<class_HashingContext_method_update>`\ (\ chunk\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_HashingContext_HashType:

.. rst-class:: classref-enumeration

enum **HashType**: :ref:`🔗<enum_HashingContext_HashType>`

.. _class_HashingContext_constant_HASH_MD5:

.. rst-class:: classref-enumeration-constant

:ref:`HashType<enum_HashingContext_HashType>` **HASH_MD5** = ``0``

哈希算法：MD5。

.. _class_HashingContext_constant_HASH_SHA1:

.. rst-class:: classref-enumeration-constant

:ref:`HashType<enum_HashingContext_HashType>` **HASH_SHA1** = ``1``

哈希算法：SHA-1。

.. _class_HashingContext_constant_HASH_SHA256:

.. rst-class:: classref-enumeration-constant

:ref:`HashType<enum_HashingContext_HashType>` **HASH_SHA256** = ``2``

哈希算法：SHA-256。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_HashingContext_method_finish:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **finish**\ (\ ) :ref:`🔗<class_HashingContext_method_finish>`

关闭当前上下文，并返回计算出的哈希值。

.. rst-class:: classref-item-separator

----

.. _class_HashingContext_method_start:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **start**\ (\ type\: :ref:`HashType<enum_HashingContext_HashType>`\ ) :ref:`🔗<class_HashingContext_method_start>`

开始对给定类型 ``type`` 的哈希计算（例如 :ref:`HASH_SHA256<class_HashingContext_constant_HASH_SHA256>` 会开始计算 SHA-256）。

.. rst-class:: classref-item-separator

----

.. _class_HashingContext_method_update:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **update**\ (\ chunk\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_HashingContext_method_update>`

使用给定的数据块 ``chunk`` 更新计算。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
