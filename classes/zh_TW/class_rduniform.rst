:github_url: hide

.. _class_RDUniform:

RDUniform
=========

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

著色器 Uniform（由 :ref:`RenderingDevice<class_RenderingDevice>` 使用）。

.. rst-class:: classref-introduction-group

說明
----

這個物件由 :ref:`RenderingDevice<class_RenderingDevice>` 使用。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +------------------------------------------------------+------------------------------------------------------------+-------+
   | :ref:`int<class_int>`                                | :ref:`binding<class_RDUniform_property_binding>`           | ``0`` |
   +------------------------------------------------------+------------------------------------------------------------+-------+
   | :ref:`UniformType<enum_RenderingDevice_UniformType>` | :ref:`uniform_type<class_RDUniform_property_uniform_type>` | ``3`` |
   +------------------------------------------------------+------------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +----------------------------------------------------+--------------------------------------------------------------------------------+
   | |void|                                             | :ref:`add_id<class_RDUniform_method_add_id>`\ (\ id\: :ref:`RID<class_RID>`\ ) |
   +----------------------------------------------------+--------------------------------------------------------------------------------+
   | |void|                                             | :ref:`clear_ids<class_RDUniform_method_clear_ids>`\ (\ )                       |
   +----------------------------------------------------+--------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] | :ref:`get_ids<class_RDUniform_method_get_ids>`\ (\ ) |const|                   |
   +----------------------------------------------------+--------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_RDUniform_property_binding:

.. rst-class:: classref-property

:ref:`int<class_int>` **binding** = ``0`` :ref:`🔗<class_RDUniform_property_binding>`

.. rst-class:: classref-property-setget

- |void| **set_binding**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_binding**\ (\ )

Uniform 的綁定。

.. rst-class:: classref-item-separator

----

.. _class_RDUniform_property_uniform_type:

.. rst-class:: classref-property

:ref:`UniformType<enum_RenderingDevice_UniformType>` **uniform_type** = ``3`` :ref:`🔗<class_RDUniform_property_uniform_type>`

.. rst-class:: classref-property-setget

- |void| **set_uniform_type**\ (\ value\: :ref:`UniformType<enum_RenderingDevice_UniformType>`\ )
- :ref:`UniformType<enum_RenderingDevice_UniformType>` **get_uniform_type**\ (\ )

Uniform 的資料型別。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_RDUniform_method_add_id:

.. rst-class:: classref-method

|void| **add_id**\ (\ id\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_RDUniform_method_add_id>`

將給定的 id 綁定到該 uniform（統一變數）上。隨後，當該 uniform 被傳遞給著色器時，就會使用與該 id 相關聯的資料。

.. rst-class:: classref-item-separator

----

.. _class_RDUniform_method_clear_ids:

.. rst-class:: classref-method

|void| **clear_ids**\ (\ ) :ref:`🔗<class_RDUniform_method_clear_ids>`

解除目前綁定到該 uniform（統一變數）上的所有 id。

.. rst-class:: classref-item-separator

----

.. _class_RDUniform_method_get_ids:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **get_ids**\ (\ ) |const| :ref:`🔗<class_RDUniform_method_get_ids>`

回傳目前綁定到該 uniform 的所有 id 的陣列。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
