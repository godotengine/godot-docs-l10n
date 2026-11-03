:github_url: hide

.. _class_RDShaderFile:

RDShaderFile
============

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

編譯後的 SPIR-V 形式的著色器檔（由 :ref:`RenderingDevice<class_RenderingDevice>` 使用）。請勿與 Godot 自身的 :ref:`Shader<class_Shader>` 混淆。

.. rst-class:: classref-introduction-group

說明
----

編譯後的 SPIR-V 形式的著色器檔。

另見 :ref:`RDShaderSource<class_RDShaderSource>`\ 。\ **RDShaderFile** 應該僅用於 :ref:`RenderingDevice<class_RenderingDevice>` API。不應與 Godot 自身的 :ref:`Shader<class_Shader>` 資源混淆，後者是 Godot 諸多節點所使用的資源，用於高階著色器程式設計。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------------+-----------------------------------------------------------+--------+
   | :ref:`String<class_String>` | :ref:`base_error<class_RDShaderFile_property_base_error>` | ``""`` |
   +-----------------------------+-----------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RDShaderSPIRV<class_RDShaderSPIRV>`                        | :ref:`get_spirv<class_RDShaderFile_method_get_spirv>`\ (\ version\: :ref:`StringName<class_StringName>` = &""\ ) |const|                                                     |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] | :ref:`get_version_list<class_RDShaderFile_method_get_version_list>`\ (\ ) |const|                                                                                            |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_bytecode<class_RDShaderFile_method_set_bytecode>`\ (\ bytecode\: :ref:`RDShaderSPIRV<class_RDShaderSPIRV>`, version\: :ref:`StringName<class_StringName>` = &""\ ) |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_RDShaderFile_property_base_error:

.. rst-class:: classref-property

:ref:`String<class_String>` **base_error** = ``""`` :ref:`🔗<class_RDShaderFile_property_base_error>`

.. rst-class:: classref-property-setget

- |void| **set_base_error**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_base_error**\ (\ )

基礎編譯錯誤訊息，如果非空，表示與特定著色器階段無關的錯誤。如果為空，著色器編譯也不一定成功（請檢查 :ref:`RDShaderSPIRV<class_RDShaderSPIRV>` 的各種錯誤訊息成員）。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_RDShaderFile_method_get_spirv:

.. rst-class:: classref-method

:ref:`RDShaderSPIRV<class_RDShaderSPIRV>` **get_spirv**\ (\ version\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_RDShaderFile_method_get_spirv>`

返回指定著色器版本 ``version`` 的 SPIR-V 中間表示。

.. rst-class:: classref-item-separator

----

.. _class_RDShaderFile_method_get_version_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] **get_version_list**\ (\ ) |const| :ref:`🔗<class_RDShaderFile_method_get_version_list>`

返回該著色器的編譯版本列表。

.. rst-class:: classref-item-separator

----

.. _class_RDShaderFile_method_set_bytecode:

.. rst-class:: classref-method

|void| **set_bytecode**\ (\ bytecode\: :ref:`RDShaderSPIRV<class_RDShaderSPIRV>`, version\: :ref:`StringName<class_StringName>` = &""\ ) :ref:`🔗<class_RDShaderFile_method_set_bytecode>`

設定指定著色器版本 ``version`` 要編譯的 SPIR-V 位元組碼 ``bytecode``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
