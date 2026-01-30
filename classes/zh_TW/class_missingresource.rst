:github_url: hide

.. _class_MissingResource:

MissingResource
===============

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

編輯器內部類，用於保存未知資源的資料。

.. rst-class:: classref-introduction-group

說明
----

This is an internal editor class intended for keeping data of resources of unknown type (most likely this type was supplied by an extension that is no longer loaded). It can't be manually instantiated or placed in a scene.

\ **Warning:** Ignore missing resources unless you know what you are doing. Existing properties on a missing resource can be freely modified in code, regardless of the type they are intended to be.

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------------+----------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`original_class<class_MissingResource_property_original_class>`             |
   +-----------------------------+----------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`recording_properties<class_MissingResource_property_recording_properties>` |
   +-----------------------------+----------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_MissingResource_property_original_class:

.. rst-class:: classref-property

:ref:`String<class_String>` **original_class** :ref:`🔗<class_MissingResource_property_original_class>`

.. rst-class:: classref-property-setget

- |void| **set_original_class**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_original_class**\ (\ )

The name of the class this resource was supposed to be (see :ref:`Object.get_class()<class_Object_method_get_class>`).

.. rst-class:: classref-item-separator

----

.. _class_MissingResource_property_recording_properties:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **recording_properties** :ref:`🔗<class_MissingResource_property_recording_properties>`

.. rst-class:: classref-property-setget

- |void| **set_recording_properties**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_recording_properties**\ (\ )

If set to ``true``, allows new properties to be added on top of the existing ones with :ref:`Object.set()<class_Object_method_set>`.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
