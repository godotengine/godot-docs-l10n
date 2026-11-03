:github_url: hide

.. _class_OpenXRBindingModifier:

OpenXRBindingModifier
=====================

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`OpenXRActionBindingModifier<class_OpenXRActionBindingModifier>`, :ref:`OpenXRIPBindingModifier<class_OpenXRIPBindingModifier>`

綁定修改器基底類別。

.. rst-class:: classref-introduction-group

說明
----

綁定修改器基底類別。子類別會實作各種修改器，改變 OpenXR 執行時對輸入的處理方式。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                   | :ref:`_get_description<class_OpenXRBindingModifier_private_method__get_description>`\ (\ ) |virtual| |required| |const| |
   +-----------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>` | :ref:`_get_ip_modification<class_OpenXRBindingModifier_private_method__get_ip_modification>`\ (\ ) |virtual| |required| |
   +-----------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_OpenXRBindingModifier_private_method__get_description:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_description**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_OpenXRBindingModifier_private_method__get_description>`

回傳該類的描述，會顯示在綁定修改器編輯器的標題欄。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRBindingModifier_private_method__get_ip_modification:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **_get_ip_modification**\ (\ ) |virtual| |required| :ref:`🔗<class_OpenXRBindingModifier_private_method__get_ip_modification>`

回傳在提交該修改器所涉及的互動綁定時發送給 OpenXR 的資料。

\ **注意：**\ 這必須是與 ``XrBindingModificationBaseHeaderKHR`` 結構相容的資料。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
