:github_url: hide

.. _class_RDPipelineSpecializationConstant:

RDPipelineSpecializationConstant
================================

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

管線特化常數（由 :ref:`RenderingDevice<class_RenderingDevice>` 使用）。

.. rst-class:: classref-introduction-group

說明
----

*特化常數*\ 可以建立同一著色器的額外版本，但不會導致實際編譯的著色器版本數增加。這樣就能減少著色器的版本數、減少 ``if`` 分支，從而提升效能，但與此同時保持著色器能夠在不同場合靈活運用。

這個物件由 :ref:`RenderingDevice<class_RenderingDevice>` 使用。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>`         | :ref:`constant_id<class_RDPipelineSpecializationConstant_property_constant_id>` | ``0`` |
   +-------------------------------+---------------------------------------------------------------------------------+-------+
   | :ref:`Variant<class_Variant>` | :ref:`value<class_RDPipelineSpecializationConstant_property_value>`             |       |
   +-------------------------------+---------------------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_RDPipelineSpecializationConstant_property_constant_id:

.. rst-class:: classref-property

:ref:`int<class_int>` **constant_id** = ``0`` :ref:`🔗<class_RDPipelineSpecializationConstant_property_constant_id>`

.. rst-class:: classref-property-setget

- |void| **set_constant_id**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_constant_id**\ (\ )

特化常數的識別字。這個值從 ``0`` 開始，給定著色器中每一個不同的特化常數都會將其遞增。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineSpecializationConstant_property_value:

.. rst-class:: classref-property

:ref:`Variant<class_Variant>` **value** :ref:`🔗<class_RDPipelineSpecializationConstant_property_value>`

.. rst-class:: classref-property-setget

- |void| **set_value**\ (\ value\: :ref:`Variant<class_Variant>`\ )
- :ref:`Variant<class_Variant>` **get_value**\ (\ )

特化常數的值。只有 :ref:`bool<class_bool>`\ 、\ :ref:`int<class_int>`\ 、\ :ref:`float<class_float>` 型別是有效的特化常數。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
