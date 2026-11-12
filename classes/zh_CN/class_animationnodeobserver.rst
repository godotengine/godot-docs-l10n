:github_url: hide

.. _class_AnimationNodeObserver:

AnimationNodeObserver
=====================

**实验性：** This class may be changed or removed in future versions.

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`AnimationNodeObserverBlendSpace<class_AnimationNodeObserverBlendSpace>`, :ref:`AnimationNodeObserverOneShot<class_AnimationNodeObserverOneShot>`, :ref:`AnimationNodeObserverTransition<class_AnimationNodeObserverTransition>`

Base class for observer types which relay :ref:`AnimationNode<class_AnimationNode>` events for a particular :ref:`AnimationTree<class_AnimationTree>` node.

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------+-------------------------+---------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | resource_local_to_scene | ``true`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +-------------------------+-------------------------+---------------------------------------------------------------------------------------+

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
