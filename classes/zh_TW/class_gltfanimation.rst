:github_url: hide

.. _class_GLTFAnimation:

GLTFAnimation
=============

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

.. container:: contribute

	There is currently no description for this class. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-introduction-group

教學
----

- :doc:`執行時檔案載入與儲存 <../tutorials/io/runtime_file_loading_and_saving>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------------+------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`loop<class_GLTFAnimation_property_loop>`                   | ``false`` |
   +-----------------------------+------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>` | :ref:`original_name<class_GLTFAnimation_property_original_name>` | ``""``    |
   +-----------------------------+------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`get_additional_data<class_GLTFAnimation_method_get_additional_data>`\ (\ extension_name\: :ref:`StringName<class_StringName>`\ )                                                  |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_additional_data<class_GLTFAnimation_method_set_additional_data>`\ (\ extension_name\: :ref:`StringName<class_StringName>`, additional_data\: :ref:`Variant<class_Variant>`\ ) |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_GLTFAnimation_property_loop:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **loop** = ``false`` :ref:`🔗<class_GLTFAnimation_property_loop>`

.. rst-class:: classref-property-setget

- |void| **set_loop**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_loop**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFAnimation_property_original_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **original_name** = ``""`` :ref:`🔗<class_GLTFAnimation_property_original_name>`

.. rst-class:: classref-property-setget

- |void| **set_original_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_original_name**\ (\ )

動畫的原名。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_GLTFAnimation_method_get_additional_data:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_additional_data**\ (\ extension_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_GLTFAnimation_method_get_additional_data>`

在這個 **GLTFAnimation** 實例中取得額外的任意資料。這可用於將每個節點的狀態資料儲存在 :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` 類中，這很重要，因為它們是無狀態的。

參數應該是 :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` 的名字（不必與 glTF 檔案中的副檔名匹配），且回傳值可以是你設定的任何值。如果沒有設定任何內容，則回傳值為 ``null``\ 。

.. rst-class:: classref-item-separator

----

.. _class_GLTFAnimation_method_set_additional_data:

.. rst-class:: classref-method

|void| **set_additional_data**\ (\ extension_name\: :ref:`StringName<class_StringName>`, additional_data\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_GLTFAnimation_method_set_additional_data>`

在這個 **GLTFAnimation** 實例中設定額外的任意資料。這可用於將每個節點的狀態資料儲存在 :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` 類中，這很重要，因為它們是無狀態的。

第一個參數應該是 :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` 的名字（不必與 glTF 檔案中的副檔名匹配），第二個參數可以是你想要的任何內容。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
