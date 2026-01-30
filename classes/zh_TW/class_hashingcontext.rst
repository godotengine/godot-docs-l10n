:github_url: hide

.. _class_HashingContext:

HashingContext
==============

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

提供分段計算加密雜湊的功能。

.. rst-class:: classref-introduction-group

說明
----

The HashingContext class provides an interface for computing cryptographic hashes over multiple iterations. Useful for computing hashes of big files (so you don't have to load them all in memory), network streams, and data streams in general (so you don't have to hold buffers).

The :ref:`HashType<enum_HashingContext_HashType>` enum shows the supported hashing algorithms.


.. tabs::

 .. code-tab:: gdscript

    const CHUNK_SIZE = 1024

    func hash_file(path):
        # Check that file exists.
        if not FileAccess.file_exists(path):
            return
        # Start an SHA-256 context.
        var ctx = HashingContext.new()
        ctx.start(HashingContext.HASH_SHA256)
        # Open the file to hash.
        var file = FileAccess.open(path, FileAccess.READ)
        # Update the context after reading each chunk.
        while file.get_position() < file.get_length():
            var remaining = file.get_length() - file.get_position()
            ctx.update(file.get_buffer(min(remaining, CHUNK_SIZE)))
        # Get the computed hash.
        var res = ctx.finish()
        # Print the result as hex string and array.
        printt(res.hex_encode(), Array(res))

 .. code-tab:: csharp

    public const int ChunkSize = 1024;

    public void HashFile(string path)
    {
        // Check that file exists.
        if (!FileAccess.FileExists(path))
        {
            return;
        }
        // Start an SHA-256 context.
        var ctx = new HashingContext();
        ctx.Start(HashingContext.HashType.Sha256);
        // Open the file to hash.
        using var file = FileAccess.Open(path, FileAccess.ModeFlags.Read);
        // Update the context after reading each chunk.
        while (file.GetPosition() < file.GetLength())
        {
            int remaining = (int)(file.GetLength() - file.GetPosition());
            ctx.Update(file.GetBuffer(Mathf.Min(remaining, ChunkSize)));
        }
        // Get the computed hash.
        byte[] res = ctx.Finish();
        // Print the result as hex string and array.
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

列舉
----

.. _enum_HashingContext_HashType:

.. rst-class:: classref-enumeration

enum **HashType**: :ref:`🔗<enum_HashingContext_HashType>`

.. _class_HashingContext_constant_HASH_MD5:

.. rst-class:: classref-enumeration-constant

:ref:`HashType<enum_HashingContext_HashType>` **HASH_MD5** = ``0``

雜湊演算法：MD5。

.. _class_HashingContext_constant_HASH_SHA1:

.. rst-class:: classref-enumeration-constant

:ref:`HashType<enum_HashingContext_HashType>` **HASH_SHA1** = ``1``

雜湊演算法：SHA-1。

.. _class_HashingContext_constant_HASH_SHA256:

.. rst-class:: classref-enumeration-constant

:ref:`HashType<enum_HashingContext_HashType>` **HASH_SHA256** = ``2``

雜湊演算法：SHA-256。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_HashingContext_method_finish:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **finish**\ (\ ) :ref:`🔗<class_HashingContext_method_finish>`

關閉目前本文，並返回計算出的雜湊值。

.. rst-class:: classref-item-separator

----

.. _class_HashingContext_method_start:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **start**\ (\ type\: :ref:`HashType<enum_HashingContext_HashType>`\ ) :ref:`🔗<class_HashingContext_method_start>`

Starts a new hash computation of the given ``type`` (e.g. :ref:`HASH_SHA256<class_HashingContext_constant_HASH_SHA256>` to start computation of an SHA-256).

.. rst-class:: classref-item-separator

----

.. _class_HashingContext_method_update:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **update**\ (\ chunk\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_HashingContext_method_update>`

使用給定的資料塊 ``chunk`` 更新計算。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
