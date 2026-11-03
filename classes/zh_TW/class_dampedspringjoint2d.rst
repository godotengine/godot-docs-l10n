:github_url: hide

.. _class_DampedSpringJoint2D:

DampedSpringJoint2D
===================

**繼承：** :ref:`Joint2D<class_Joint2D>` **<** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

通過類似彈簧的力連接兩個 2D 物理物體的物理關節。

.. rst-class:: classref-introduction-group

說明
----

通過類似彈簧的力連接兩個 2D 物理物體的物理關節。這表現得像一個總是想拉伸到給定長度的彈簧。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`damping<class_DampedSpringJoint2D_property_damping>`         | ``1.0``  |
   +---------------------------+--------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`length<class_DampedSpringJoint2D_property_length>`           | ``50.0`` |
   +---------------------------+--------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`rest_length<class_DampedSpringJoint2D_property_rest_length>` | ``0.0``  |
   +---------------------------+--------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`stiffness<class_DampedSpringJoint2D_property_stiffness>`     | ``20.0`` |
   +---------------------------+--------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_DampedSpringJoint2D_property_damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **damping** = ``1.0`` :ref:`🔗<class_DampedSpringJoint2D_property_damping>`

.. rst-class:: classref-property-setget

- |void| **set_damping**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_damping**\ (\ )

彈簧關節的阻尼比。值在 ``0`` 和 ``1`` 之間。當兩個實體移動到不同的方向時，系統會嘗試將它們再次對準彈簧軸。高的 :ref:`damping<class_DampedSpringJoint2D_property_damping>` 值迫使連接的實體更快地對齊。

.. rst-class:: classref-item-separator

----

.. _class_DampedSpringJoint2D_property_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **length** = ``50.0`` :ref:`🔗<class_DampedSpringJoint2D_property_length>`

.. rst-class:: classref-property-setget

- |void| **set_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_length**\ (\ )

彈簧關節的最大長度。兩個連接體不能超過這個值。

.. rst-class:: classref-item-separator

----

.. _class_DampedSpringJoint2D_property_rest_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **rest_length** = ``0.0`` :ref:`🔗<class_DampedSpringJoint2D_property_rest_length>`

.. rst-class:: classref-property-setget

- |void| **set_rest_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_rest_length**\ (\ )

當連接到彈簧關節的機構移動時，它們會拉伸或擠壓它。關節總是嘗試向這個長度調整。

.. rst-class:: classref-item-separator

----

.. _class_DampedSpringJoint2D_property_stiffness:

.. rst-class:: classref-property

:ref:`float<class_float>` **stiffness** = ``20.0`` :ref:`🔗<class_DampedSpringJoint2D_property_stiffness>`

.. rst-class:: classref-property-setget

- |void| **set_stiffness**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_stiffness**\ (\ )

該值越大，連接在關節上的機構變形越小。關節對各機構施加一個相反的力，即剛度乘以與其靜止長度的大小差的乘積。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
