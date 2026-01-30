:github_url: hide

.. _class_PackedDataContainer:

PackedDataContainer
===================

**已棄用：** Use :ref:`@GlobalScope.var_to_bytes()<class_@GlobalScope_method_var_to_bytes>` or :ref:`FileAccess.store_var()<class_FileAccess_method_store_var>` instead. To enable data compression, use :ref:`PackedByteArray.compress()<class_PackedByteArray_method_compress>` or :ref:`FileAccess.open_compressed()<class_FileAccess_method_open_compressed>`.

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

將 :ref:`Array<class_Array>` 或 :ref:`Dictionary<class_Dictionary>` 進行高效打包和序列化。

.. rst-class:: classref-introduction-group

說明
----

**PackedDataContainer** can be used to efficiently store data from untyped containers. The data is packed into raw bytes and can be saved to file. Only :ref:`Array<class_Array>` and :ref:`Dictionary<class_Dictionary>` can be stored this way.

You can retrieve the data by iterating on the container, which will work as if iterating on the packed data itself. If the packed container is a :ref:`Dictionary<class_Dictionary>`, the data can be retrieved by key names (:ref:`String<class_String>`/:ref:`StringName<class_StringName>` only).

::

    var data = { "key": "value", "another_key": 123, "lock": Vector2() }
    var packed = PackedDataContainer.new()
    packed.pack(data)
    ResourceSaver.save(packed, "packed_data.res")

::

    var container = load("packed_data.res")
    for key in container:
        prints(key, container[key])

Prints:

.. code:: text

    key value
    lock (0, 0)
    another_key 123

Nested containers will be packed recursively. While iterating, they will be returned as :ref:`PackedDataContainerRef<class_PackedDataContainerRef>`.

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`pack<class_PackedDataContainer_method_pack>`\ (\ value\: :ref:`Variant<class_Variant>`\ ) |
   +---------------------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`size<class_PackedDataContainer_method_size>`\ (\ ) |const|                                |
   +---------------------------------------+-------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_PackedDataContainer_method_pack:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **pack**\ (\ value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_PackedDataContainer_method_pack>`

將給定的容器打包為二進位表示。\ ``value`` 必須為 :ref:`Array<class_Array>` 或 :ref:`Dictionary<class_Dictionary>`\ ，其他型別會導致無效資料錯誤。

\ **注意：**\ 後續再次呼叫該方法會覆蓋已有資料。

.. rst-class:: classref-item-separator

----

.. _class_PackedDataContainer_method_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **size**\ (\ ) |const| :ref:`🔗<class_PackedDataContainer_method_size>`

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
