:github_url: hide

.. _class_HashingContext:

HashingContext
==============

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

提供分段計算加密雜湊的功能。

.. rst-class:: classref-introduction-group

說明
----

HashingContext 類別提供了一個介面，用於計算多次迭代的加密雜湊值。常用於計算大型檔案（不必全部載入到記憶體中）、網路串流和一般的資料串流（不必保留緩衝區）的雜湊值。

\ :ref:`HashType<enum_HashingContext_HashType>` 列舉出了支援的雜湊演算法。


.. tabs::

 .. code-tab:: gdscript

    const CHUNK_SIZE = 1024

    func hash_file(path):
        # 檢查檔案是否存在。
        if not FileAccess.file_exists(path):
            return
        # 建立 SHA-256 上下文。
        var ctx = HashingContext.new()
        ctx.start(HashingContext.HASH_SHA256)
        # 開啟檔案進行雜湊處理。
        var file = FileAccess.open(path, FileAccess.READ)
        # 讀取每個區塊後更新上下文。
        while file.get_position() < file.get_length():
            var remaining = file.get_length() - file.get_position()
            ctx.update(file.get_buffer(min(remaining, CHUNK_SIZE)))
        # 取得計算出的雜湊值。
        var res = ctx.finish()
        # 將結果以十六進制的字串和陣列輸出。
        printt(res.hex_encode(), Array(res))

 .. code-tab:: csharp

    public const int ChunkSize = 1024;

    public void HashFile(string path)
    {
        // 檢查檔案是否存在。
        if (!FileAccess.FileExists(path))
        {
            return;
        }
        // 建立 SHA-256 上下文。
        var ctx = new HashingContext();
        ctx.Start(HashingContext.HashType.Sha256);
        // 開啟檔案進行雜湊處理。
        using var file = FileAccess.Open(path, FileAccess.ModeFlags.Read);
        // 讀取每個區塊後更新上下文。
        while (file.GetPosition() < file.GetLength())
        {
            int remaining = (int)(file.GetLength() - file.GetPosition());
            ctx.Update(file.GetBuffer(Mathf.Min(remaining, ChunkSize)));
        }
        // 取得計算出的雜湊值。
        byte[] res = ctx.Finish();
        // 將結果以十六進制的字串和陣列輸出。
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

關閉目前上下文，並回傳計算出的雜湊值。

.. rst-class:: classref-item-separator

----

.. _class_HashingContext_method_start:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **start**\ (\ type\: :ref:`HashType<enum_HashingContext_HashType>`\ ) :ref:`🔗<class_HashingContext_method_start>`

對指定的型別 ``type`` 開始新的雜湊運算（例如 :ref:`HASH_SHA256<class_HashingContext_constant_HASH_SHA256>` 會進行 SHA-256 的運算）。

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
