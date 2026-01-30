:github_url: hide

.. _class_PackedDataContainerRef:

PackedDataContainerRef
======================

**已棄用：** Use :ref:`@GlobalScope.var_to_bytes()<class_@GlobalScope_method_var_to_bytes>` or :ref:`FileAccess.store_var()<class_FileAccess_method_store_var>` instead. To enable data compression, use :ref:`PackedByteArray.compress()<class_PackedByteArray_method_compress>` or :ref:`FileAccess.open_compressed()<class_FileAccess_method_open_compressed>`.

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

:ref:`PackedDataContainer<class_PackedDataContainer>` 使用的內部類，用於打包巢狀的陣列和字典。

.. rst-class:: classref-introduction-group

說明
----

When packing nested containers using :ref:`PackedDataContainer<class_PackedDataContainer>`, they are recursively packed into **PackedDataContainerRef** (only applies to :ref:`Array<class_Array>` and :ref:`Dictionary<class_Dictionary>`). Their data can be retrieved the same way as from :ref:`PackedDataContainer<class_PackedDataContainer>`.

::

    var packed = PackedDataContainer.new()
    packed.pack([1, 2, 3, ["nested1", "nested2"], 4, 5, 6])

    for element in packed:
        if element is PackedDataContainerRef:
            for subelement in element:
                print("::", subelement)
        else:
            print(element)

Prints:

.. code:: text

    1
    2
    3
    ::nested1
    ::nested2
    4
    5
    6

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------+---------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`size<class_PackedDataContainerRef_method_size>`\ (\ ) |const| |
   +-----------------------+---------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_PackedDataContainerRef_method_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **size**\ (\ ) |const| :ref:`🔗<class_PackedDataContainerRef_method_size>`

返回打包後容器的大小（見 :ref:`Array.size()<class_Array_method_size>` 和 :ref:`Dictionary.size()<class_Dictionary_method_size>`\ ）。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
