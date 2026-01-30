:github_url: hide

.. _class_VisualShaderNodeReroute:

VisualShaderNodeReroute
=======================

**繼承：** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A node that allows rerouting a connection within the visual shader graph.

.. rst-class:: classref-introduction-group

說明
----

Automatically adapts its port type to the type of the incoming connection and ensures valid connections.

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`PortType<enum_VisualShaderNode_PortType>` | :ref:`get_port_type<class_VisualShaderNodeReroute_method_get_port_type>`\ (\ ) |const| |
   +-------------------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_VisualShaderNodeReroute_method_get_port_type:

.. rst-class:: classref-method

:ref:`PortType<enum_VisualShaderNode_PortType>` **get_port_type**\ (\ ) |const| :ref:`🔗<class_VisualShaderNodeReroute_method_get_port_type>`

Returns the port type of the reroute node.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
