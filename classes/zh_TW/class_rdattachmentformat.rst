:github_url: hide

.. _class_RDAttachmentFormat:

RDAttachmentFormat
==================

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

附件格式（由 :ref:`RenderingDevice<class_RenderingDevice>` 使用）。

.. rst-class:: classref-introduction-group

說明
----

這個物件由 :ref:`RenderingDevice<class_RenderingDevice>` 使用。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +------------------------------------------------------------+-------------------------------------------------------------------+--------+
   | :ref:`DataFormat<enum_RenderingDevice_DataFormat>`         | :ref:`format<class_RDAttachmentFormat_property_format>`           | ``36`` |
   +------------------------------------------------------------+-------------------------------------------------------------------+--------+
   | :ref:`TextureSamples<enum_RenderingDevice_TextureSamples>` | :ref:`samples<class_RDAttachmentFormat_property_samples>`         | ``0``  |
   +------------------------------------------------------------+-------------------------------------------------------------------+--------+
   | :ref:`int<class_int>`                                      | :ref:`usage_flags<class_RDAttachmentFormat_property_usage_flags>` | ``0``  |
   +------------------------------------------------------------+-------------------------------------------------------------------+--------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_RDAttachmentFormat_property_format:

.. rst-class:: classref-property

:ref:`DataFormat<enum_RenderingDevice_DataFormat>` **format** = ``36`` :ref:`🔗<class_RDAttachmentFormat_property_format>`

.. rst-class:: classref-property-setget

- |void| **set_format**\ (\ value\: :ref:`DataFormat<enum_RenderingDevice_DataFormat>`\ )
- :ref:`DataFormat<enum_RenderingDevice_DataFormat>` **get_format**\ (\ )

該附件的資料格式。

.. rst-class:: classref-item-separator

----

.. _class_RDAttachmentFormat_property_samples:

.. rst-class:: classref-property

:ref:`TextureSamples<enum_RenderingDevice_TextureSamples>` **samples** = ``0`` :ref:`🔗<class_RDAttachmentFormat_property_samples>`

.. rst-class:: classref-property-setget

- |void| **set_samples**\ (\ value\: :ref:`TextureSamples<enum_RenderingDevice_TextureSamples>`\ )
- :ref:`TextureSamples<enum_RenderingDevice_TextureSamples>` **get_samples**\ (\ )

對附件進行取樣時使用的取樣數。

.. rst-class:: classref-item-separator

----

.. _class_RDAttachmentFormat_property_usage_flags:

.. rst-class:: classref-property

:ref:`int<class_int>` **usage_flags** = ``0`` :ref:`🔗<class_RDAttachmentFormat_property_usage_flags>`

.. rst-class:: classref-property-setget

- |void| **set_usage_flags**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_usage_flags**\ (\ )

該附件的用途旗標，用於確定能夠進行的操作。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
