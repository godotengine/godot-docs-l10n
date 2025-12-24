:github_url: hide

.. _class_FBXState:

FBXState
========

**实验性：** This class may be changed or removed in future versions.

**继承：** :ref:`GLTFState<class_GLTFState>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

.. rst-class:: classref-introduction-group

描述
----

FBXState 处理从 FBX 文件导入的状态数据。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------+-----------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`allow_geometry_helper_nodes<class_FBXState_property_allow_geometry_helper_nodes>` | ``false`` |
   +-------------------------+-----------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_FBXState_property_allow_geometry_helper_nodes:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **allow_geometry_helper_nodes** = ``false`` :ref:`🔗<class_FBXState_property_allow_geometry_helper_nodes>`

.. rst-class:: classref-property-setget

- |void| **set_allow_geometry_helper_nodes**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_allow_geometry_helper_nodes**\ (\ )

如果为 ``true``\ ，则导入过程使用被称为几何辅助节点的辅助节点。这些节点有助于在导入过程中保留原始 3D 模型的枢轴和变换。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
