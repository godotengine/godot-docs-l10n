:github_url: hide

.. _class_VisualShaderNodeInput:

VisualShaderNodeInput
=====================

**繼承：** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

在視覺化著色器圖中，代表輸入著色器參數。

.. rst-class:: classref-introduction-group

說明
----

提供對著色器可用的輸入變數（內建）的存取。關於每種著色器型別的可用內建變數列表，請參閱著色器參考（查看\ ``教學``\ 部分的連結）。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`著色參考索引 <../tutorials/shaders/shader_reference/index>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------------+--------------------------------------------------------------------+--------------+
   | :ref:`String<class_String>` | :ref:`input_name<class_VisualShaderNodeInput_property_input_name>` | ``"[None]"`` |
   +-----------------------------+--------------------------------------------------------------------+--------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_input_real_name<class_VisualShaderNodeInput_method_get_input_real_name>`\ (\ ) |const| |
   +-----------------------------+--------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_VisualShaderNodeInput_signal_input_type_changed:

.. rst-class:: classref-signal

**input_type_changed**\ (\ ) :ref:`🔗<class_VisualShaderNodeInput_signal_input_type_changed>`

通過 :ref:`input_name<class_VisualShaderNodeInput_property_input_name>` 更改輸入時發出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_VisualShaderNodeInput_property_input_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **input_name** = ``"[None]"`` :ref:`🔗<class_VisualShaderNodeInput_property_input_name>`

.. rst-class:: classref-property-setget

- |void| **set_input_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_input_name**\ (\ )

小寫風格的輸入常數之一，例如："vertex"（\ ``VERTEX``\ ）或 "point_size"（\ ``POINT_SIZE``\ ）。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_VisualShaderNodeInput_method_get_input_real_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_input_real_name**\ (\ ) |const| :ref:`🔗<class_VisualShaderNodeInput_method_get_input_real_name>`

返回目前常數名稱翻譯至 Godot 著色器語言後的名稱。例如，如果 :ref:`input_name<class_VisualShaderNodeInput_property_input_name>` 等於 ``"albedo"``\ ，則返回 ``"ALBEDO"``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
