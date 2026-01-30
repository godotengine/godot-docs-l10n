:github_url: hide

.. meta::
	:keywords: sound

.. _class_AudioListener2D:

AudioListener2D
===============

**继承：** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

覆盖听到声音的位置。

.. rst-class:: classref-introduction-group

描述
----

一旦被添加到场景树并使用 :ref:`make_current()<class_AudioListener2D_method_make_current>` 启用，此节点将覆盖听到声音的位置。只有一个 **AudioListener2D** 可以是当前的。使用 :ref:`make_current()<class_AudioListener2D_method_make_current>` 将禁用之前的 **AudioListener2D**\ 。

如果当前 :ref:`Viewport<class_Viewport>` 中没有活动的 **AudioListener2D**\ ，则屏幕中心将用作音频的聆听点。\ **AudioListener2D** 需要在 :ref:`SceneTree<class_SceneTree>` 内才能起作用。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------+
   | |void|                  | :ref:`clear_current<class_AudioListener2D_method_clear_current>`\ (\ )   |
   +-------------------------+--------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_current<class_AudioListener2D_method_is_current>`\ (\ ) |const| |
   +-------------------------+--------------------------------------------------------------------------+
   | |void|                  | :ref:`make_current<class_AudioListener2D_method_make_current>`\ (\ )     |
   +-------------------------+--------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_AudioListener2D_method_clear_current:

.. rst-class:: classref-method

|void| **clear_current**\ (\ ) :ref:`🔗<class_AudioListener2D_method_clear_current>`

禁用 **AudioListener2D**\ 。如果未设置为当前，则此方法无效。

.. rst-class:: classref-item-separator

----

.. _class_AudioListener2D_method_is_current:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_current**\ (\ ) |const| :ref:`🔗<class_AudioListener2D_method_is_current>`

如果该 **AudioListener2D** 当前处于激活状态，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AudioListener2D_method_make_current:

.. rst-class:: classref-method

|void| **make_current**\ (\ ) :ref:`🔗<class_AudioListener2D_method_make_current>`

激活该 **AudioListener2D**\ ，将其设置为声音的聆听点。如果已经有另一个激活的 **AudioListener2D**\ ，它将被禁用。

如果 **AudioListener2D** 未添加到 :ref:`SceneTree<class_SceneTree>`\ ，则该方法无效。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
