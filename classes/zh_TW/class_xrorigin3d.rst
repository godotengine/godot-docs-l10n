:github_url: hide

.. _class_XROrigin3D:

XROrigin3D
==========

**繼承：** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

AR/VR 的原點。

.. rst-class:: classref-introduction-group

說明
----

This is a special node within the AR/VR system that maps the physical location of the center of our tracking space to the virtual location within our game world.

Multiple origin points can be added to the scene tree, but only one can used at a time. All the :ref:`XRCamera3D<class_XRCamera3D>`, :ref:`XRController3D<class_XRController3D>`, and :ref:`XRAnchor3D<class_XRAnchor3D>` nodes should be direct children of this node for spatial tracking to work correctly.

It is the position of this node that you update when your character needs to move through your game world while we're not moving in the real world. Movement in the real world is always in relation to this origin point.

For example, if your character is driving a car, the **XROrigin3D** node should be a child node of this car. Or, if you're implementing a teleport system to move your character, you should change the position of this node.

.. rst-class:: classref-introduction-group

教學
----

- :doc:`XR 文件索引 <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`current<class_XROrigin3D_property_current>`         | ``false`` |
   +---------------------------+-----------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`world_scale<class_XROrigin3D_property_world_scale>` | ``1.0``   |
   +---------------------------+-----------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_XROrigin3D_property_current:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **current** = ``false`` :ref:`🔗<class_XROrigin3D_property_current>`

.. rst-class:: classref-property-setget

- |void| **set_current**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_current**\ (\ )

If ``true``, this origin node is currently being used by the :ref:`XRServer<class_XRServer>`. Only one origin point can be used at a time.

.. rst-class:: classref-item-separator

----

.. _class_XROrigin3D_property_world_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **world_scale** = ``1.0`` :ref:`🔗<class_XROrigin3D_property_world_scale>`

.. rst-class:: classref-property-setget

- |void| **set_world_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_world_scale**\ (\ )

The scale of the game world compared to the real world. This is the same as :ref:`XRServer.world_scale<class_XRServer_property_world_scale>`. By default, most AR/VR platforms assume that 1 game unit corresponds to 1 real world meter.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
