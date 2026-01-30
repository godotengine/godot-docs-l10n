:github_url: hide

.. _class_PackedDataContainerRef:

PackedDataContainerRef
======================

**已弃用：** Use :ref:`@GlobalScope.var_to_bytes()<class_@GlobalScope_method_var_to_bytes>` or :ref:`FileAccess.store_var()<class_FileAccess_method_store_var>` instead. To enable data compression, use :ref:`PackedByteArray.compress()<class_PackedByteArray_method_compress>` or :ref:`FileAccess.open_compressed()<class_FileAccess_method_open_compressed>`.

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

:ref:`PackedDataContainer<class_PackedDataContainer>` 使用的内部类，用于打包嵌套的数组和字典。

.. rst-class:: classref-introduction-group

描述
----

使用 :ref:`PackedDataContainer<class_PackedDataContainer>` 打包嵌套容器时，会将其递归打包进 **PackedDataContainerRef**\ （仅适用于 :ref:`Array<class_Array>` 和 :ref:`Dictionary<class_Dictionary>`\ ）。获取数据的方法和 :ref:`PackedDataContainer<class_PackedDataContainer>` 相同。

::

    var packed = PackedDataContainer.new()
    packed.pack([1, 2, 3, ["nested1", "nested2"], 4, 5, 6])

    for element in packed:
        if element is PackedDataContainerRef:
            for subelement in element:
                print("::", subelement)
        else:
            print(element)

输出：

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

方法说明
--------

.. _class_PackedDataContainerRef_method_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **size**\ (\ ) |const| :ref:`🔗<class_PackedDataContainerRef_method_size>`

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
