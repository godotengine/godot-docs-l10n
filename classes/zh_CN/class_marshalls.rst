:github_url: hide

.. _class_Marshalls:

Marshalls
=========

**继承：** :ref:`Object<class_Object>`

数据转换（marshalling）和编码辅助工具。

.. rst-class:: classref-introduction-group

描述
----

提供进行数据转换和编码的实用函数。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>` | :ref:`base64_to_raw<class_Marshalls_method_base64_to_raw>`\ (\ base64_str\: :ref:`String<class_String>`\ )                                                          |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                   | :ref:`base64_to_utf8<class_Marshalls_method_base64_to_utf8>`\ (\ base64_str\: :ref:`String<class_String>`\ )                                                        |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                 | :ref:`base64_to_variant<class_Marshalls_method_base64_to_variant>`\ (\ base64_str\: :ref:`String<class_String>`, allow_objects\: :ref:`bool<class_bool>` = false\ ) |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                   | :ref:`raw_to_base64<class_Marshalls_method_raw_to_base64>`\ (\ array\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                                             |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                   | :ref:`utf8_to_base64<class_Marshalls_method_utf8_to_base64>`\ (\ utf8_str\: :ref:`String<class_String>`\ )                                                          |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                   | :ref:`variant_to_base64<class_Marshalls_method_variant_to_base64>`\ (\ variant\: :ref:`Variant<class_Variant>`, full_objects\: :ref:`bool<class_bool>` = false\ )   |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_Marshalls_method_base64_to_raw:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **base64_to_raw**\ (\ base64_str\: :ref:`String<class_String>`\ ) :ref:`🔗<class_Marshalls_method_base64_to_raw>`

返回与 Base64 编码字符串 ``base64_str`` 相对应的解码 :ref:`PackedByteArray<class_PackedByteArray>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Marshalls_method_base64_to_utf8:

.. rst-class:: classref-method

:ref:`String<class_String>` **base64_to_utf8**\ (\ base64_str\: :ref:`String<class_String>`\ ) :ref:`🔗<class_Marshalls_method_base64_to_utf8>`

返回与 Base64 编码字符串 ``base64_str`` 相对应的解码字符串。

.. rst-class:: classref-item-separator

----

.. _class_Marshalls_method_base64_to_variant:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **base64_to_variant**\ (\ base64_str\: :ref:`String<class_String>`, allow_objects\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Marshalls_method_base64_to_variant>`

返回与 Base64 编码字符串 ``base64_str`` 相对应的解码 :ref:`Variant<class_Variant>`\ 。如果 ``allow_objects`` 为 ``true``\ ，则允许对对象进行解码。

内部实现时，使用的解码机制与 :ref:`@GlobalScope.bytes_to_var()<class_@GlobalScope_method_bytes_to_var>` 方法相同。

\ **警告：**\ 反序列化的对象可能包含会被执行的代码。如果序列化的对象来自不受信任的来源，请不要使用这个选项，以避免潜在的安全威胁，如远程代码执行。

.. rst-class:: classref-item-separator

----

.. _class_Marshalls_method_raw_to_base64:

.. rst-class:: classref-method

:ref:`String<class_String>` **raw_to_base64**\ (\ array\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_Marshalls_method_raw_to_base64>`

返回给定 :ref:`PackedByteArray<class_PackedByteArray>` 的 Base64 编码的字符串。

.. rst-class:: classref-item-separator

----

.. _class_Marshalls_method_utf8_to_base64:

.. rst-class:: classref-method

:ref:`String<class_String>` **utf8_to_base64**\ (\ utf8_str\: :ref:`String<class_String>`\ ) :ref:`🔗<class_Marshalls_method_utf8_to_base64>`

返回 UTF-8 字符串 ``utf8_str`` 的 Base64 编码的字符串。

.. rst-class:: classref-item-separator

----

.. _class_Marshalls_method_variant_to_base64:

.. rst-class:: classref-method

:ref:`String<class_String>` **variant_to_base64**\ (\ variant\: :ref:`Variant<class_Variant>`, full_objects\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Marshalls_method_variant_to_base64>`

返回经过 Base64 编码的 :ref:`Variant<class_Variant>` ``variant`` 的字符串。如果 ``full_objects`` 为 ``true``\ ，则允许将对象进行编码（有可能包括代码）。

内部实现时，使用的编码机制与 :ref:`@GlobalScope.var_to_bytes()<class_@GlobalScope_method_var_to_bytes>` 方法相同。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
