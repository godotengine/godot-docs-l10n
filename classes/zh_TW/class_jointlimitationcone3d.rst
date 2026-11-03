:github_url: hide

.. _class_JointLimitationCone3D:

JointLimitationCone3D
=====================

**繼承：** :ref:`JointLimitation3D<class_JointLimitation3D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

與 :ref:`ChainIK3D<class_ChainIK3D>` 互動的錐形限制。

.. rst-class:: classref-introduction-group

說明
----

與 :ref:`ChainIK3D<class_ChainIK3D>` 互動的錐形限制。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`angle<class_JointLimitationCone3D_property_angle>` | ``1.5707964`` |
   +---------------------------+----------------------------------------------------------+---------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_JointLimitationCone3D_property_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **angle** = ``1.5707964`` :ref:`🔗<class_JointLimitationCone3D_property_angle>`

.. rst-class:: classref-property-setget

- |void| **set_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_angle**\ (\ )

圓錐體形成的孔的半徑範圍。

\ ``0`` 度時形成一個沒有孔的球體，\ ``180`` 度時形成一個半球體，\ ``360`` 度時則為空（無限制）。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
