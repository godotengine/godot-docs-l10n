:github_url: hide

.. _class_AnimationLibrary:

AnimationLibrary
================

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

:ref:`Animation<class_Animation>` 资源的容器。

.. rst-class:: classref-introduction-group

描述
----

动画库存储一组可通过 :ref:`StringName<class_StringName>` 键访问的动画，可用于 :ref:`AnimationPlayer<class_AnimationPlayer>` 节点。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`动画教程索引 <../tutorials/animation/index>`

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`add_animation<class_AnimationLibrary_method_add_animation>`\ (\ name\: :ref:`StringName<class_StringName>`, animation\: :ref:`Animation<class_Animation>`\ )       |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Animation<class_Animation>`                                | :ref:`get_animation<class_AnimationLibrary_method_get_animation>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                              |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] | :ref:`get_animation_list<class_AnimationLibrary_method_get_animation_list>`\ (\ ) |const|                                                                                |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`get_animation_list_size<class_AnimationLibrary_method_get_animation_list_size>`\ (\ ) |const|                                                                      |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`has_animation<class_AnimationLibrary_method_has_animation>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                              |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`remove_animation<class_AnimationLibrary_method_remove_animation>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`rename_animation<class_AnimationLibrary_method_rename_animation>`\ (\ name\: :ref:`StringName<class_StringName>`, newname\: :ref:`StringName<class_StringName>`\ ) |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

信号
----

.. _class_AnimationLibrary_signal_animation_added:

.. rst-class:: classref-signal

**animation_added**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationLibrary_signal_animation_added>`

在键 ``name`` 下添加 :ref:`Animation<class_Animation>` 时发出。

.. rst-class:: classref-item-separator

----

.. _class_AnimationLibrary_signal_animation_changed:

.. rst-class:: classref-signal

**animation_changed**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationLibrary_signal_animation_changed>`

当其中一个动画发生变化时发出，例如轨道被添加、移动，或路径被更改。\ ``name`` 是被改变的动画的键。

另见 :ref:`Resource.changed<class_Resource_signal_changed>`\ ，本信号充当该信号的中继。

.. rst-class:: classref-item-separator

----

.. _class_AnimationLibrary_signal_animation_removed:

.. rst-class:: classref-signal

**animation_removed**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationLibrary_signal_animation_removed>`

当使用键 ``name`` 存储的 :ref:`Animation<class_Animation>` 被移除时发出。

.. rst-class:: classref-item-separator

----

.. _class_AnimationLibrary_signal_animation_renamed:

.. rst-class:: classref-signal

**animation_renamed**\ (\ name\: :ref:`StringName<class_StringName>`, to_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationLibrary_signal_animation_renamed>`

当 :ref:`Animation<class_Animation>` 的键从 ``name`` 更改为 ``to_name`` 时发出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_AnimationLibrary_method_add_animation:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **add_animation**\ (\ name\: :ref:`StringName<class_StringName>`, animation\: :ref:`Animation<class_Animation>`\ ) :ref:`🔗<class_AnimationLibrary_method_add_animation>`

将 ``animation`` 添加到库中，可通过键 ``name`` 访问。

.. rst-class:: classref-item-separator

----

.. _class_AnimationLibrary_method_get_animation:

.. rst-class:: classref-method

:ref:`Animation<class_Animation>` **get_animation**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationLibrary_method_get_animation>`

返回带有键 ``name`` 的 :ref:`Animation<class_Animation>`\ 。如果动画不存在，则返回 ``null`` 并记录错误。

.. rst-class:: classref-item-separator

----

.. _class_AnimationLibrary_method_get_animation_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] **get_animation_list**\ (\ ) |const| :ref:`🔗<class_AnimationLibrary_method_get_animation_list>`

返回库中存储的所有 :ref:`Animation<class_Animation>` 键。

.. rst-class:: classref-item-separator

----

.. _class_AnimationLibrary_method_get_animation_list_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_animation_list_size**\ (\ ) |const| :ref:`🔗<class_AnimationLibrary_method_get_animation_list_size>`

返回库中存储的 :ref:`Animation<class_Animation>` 键的数量。

.. rst-class:: classref-item-separator

----

.. _class_AnimationLibrary_method_has_animation:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_animation**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationLibrary_method_has_animation>`

如果该库存储了以 ``name`` 作为键的 :ref:`Animation<class_Animation>`\ ，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AnimationLibrary_method_remove_animation:

.. rst-class:: classref-method

|void| **remove_animation**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationLibrary_method_remove_animation>`

使用键 ``name`` 移除 :ref:`Animation<class_Animation>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AnimationLibrary_method_rename_animation:

.. rst-class:: classref-method

|void| **rename_animation**\ (\ name\: :ref:`StringName<class_StringName>`, newname\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationLibrary_method_rename_animation>`

将与键 ``name`` 关联的 :ref:`Animation<class_Animation>` 的键更改为 ``newname``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
