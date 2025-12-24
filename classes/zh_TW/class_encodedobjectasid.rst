:github_url: hide

.. _class_EncodedObjectAsID:

EncodedObjectAsID
=================

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

保存對 :ref:`Object<class_Object>` 實例 ID 的引用。

.. rst-class:: classref-introduction-group

說明
----

實用程式類，其中包含對 :ref:`Object<class_Object>` 實例的內部識別字的引用，由 :ref:`Object.get_instance_id()<class_Object_method_get_instance_id>` 給出。然後可以使用該 ID 通過 :ref:`@GlobalScope.instance_from_id()<class_@GlobalScope_method_instance_from_id>` 檢索物件實例。

該類由編輯器屬性檢視器和腳本除錯器在內部使用，但也可用於外掛程式中，以使用其 ID 傳遞和顯示物件。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------+--------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`object_id<class_EncodedObjectAsID_property_object_id>` | ``0`` |
   +-----------------------+--------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_EncodedObjectAsID_property_object_id:

.. rst-class:: classref-property

:ref:`int<class_int>` **object_id** = ``0`` :ref:`🔗<class_EncodedObjectAsID_property_object_id>`

.. rst-class:: classref-property-setget

- |void| **set_object_id**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_object_id**\ (\ )

儲存在該 **EncodedObjectAsID** 實例中的 :ref:`Object<class_Object>` 識別字。可以使用 :ref:`@GlobalScope.instance_from_id()<class_@GlobalScope_method_instance_from_id>` 檢索物件實例。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
