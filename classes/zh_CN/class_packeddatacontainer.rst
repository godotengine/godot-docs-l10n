:github_url: hide

.. _class_PackedDataContainer:

PackedDataContainer
===================

**已弃用：** Use :ref:`@GlobalScope.var_to_bytes()<class_@GlobalScope_method_var_to_bytes>` or :ref:`FileAccess.store_var()<class_FileAccess_method_store_var>` instead. To enable data compression, use :ref:`PackedByteArray.compress()<class_PackedByteArray_method_compress>` or :ref:`FileAccess.open_compressed()<class_FileAccess_method_open_compressed>`.

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

将 :ref:`Array<class_Array>` 或 :ref:`Dictionary<class_Dictionary>` 进行高效打包和序列化。

.. rst-class:: classref-introduction-group

描述
----

**PackedDataContainer** 可以高效地保存未指定类型的容器中的数据。数据会以原始字节的形式打包，能够保存到文件中。只有 :ref:`Array<class_Array>` 和 :ref:`Dictionary<class_Dictionary>` 能够这样存储。

你可以通过遍历容器来获取数据，效果和遍历被打包的数据一样。如果打包容器为 :ref:`Dictionary<class_Dictionary>`\ ，则获取的是键名（仅 :ref:`String<class_String>`/:ref:`StringName<class_StringName>`\ ）。

::

    var data = { "key": "value", "another_key": 123, "lock": Vector2() }
    var packed = PackedDataContainer.new()
    packed.pack(data)
    ResourceSaver.save(packed, "packed_data.res")

::

    var container = load("packed_data.res")
    for key in container:
        prints(key, container[key])

输出：

.. code:: text

    key value
    lock (0, 0)
    another_key 123

内嵌容器会递归打包。遍历时返回的是 :ref:`PackedDataContainerRef<class_PackedDataContainerRef>`\ 。

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

方法说明
--------

.. _class_PackedDataContainer_method_pack:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **pack**\ (\ value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_PackedDataContainer_method_pack>`

将给定的容器打包为二进制表示。\ ``value`` 必须为 :ref:`Array<class_Array>` 或 :ref:`Dictionary<class_Dictionary>`\ ，其他类型会导致无效数据错误。

\ **注意：**\ 后续再次调用该方法会覆盖已有数据。

.. rst-class:: classref-item-separator

----

.. _class_PackedDataContainer_method_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **size**\ (\ ) |const| :ref:`🔗<class_PackedDataContainer_method_size>`

返回打包后容器的大小（见 :ref:`Array.size()<class_Array_method_size>` 和 :ref:`Dictionary.size()<class_Dictionary_method_size>`\ ）。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
