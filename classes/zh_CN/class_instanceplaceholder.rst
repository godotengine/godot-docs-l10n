:github_url: hide

.. _class_InstancePlaceholder:

InstancePlaceholder
===================

**继承：** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

:ref:`PackedScene<class_PackedScene>` 根 :ref:`Node<class_Node>` 的占位符。

.. rst-class:: classref-introduction-group

描述
----

在编辑器中为实例化的场景打开\ **加载为占位符**\ 选项会导致在运行游戏时将其替换为 **InstancePlaceholder**\ 。这样就可以将场景推迟到调用 :ref:`create_instance()<class_InstancePlaceholder_method_create_instance>` 时再实际加载。这样做有助于对大型场景中的不同部分进行有选择的加载，避免一次性加载所有部分。

\ **注意：**\ **InstancePlaceholder** 与 :ref:`Node<class_Node>` 类似，不具备变换属性。因此任何子节点都会相对于 :ref:`Viewport<class_Viewport>` 的原点开始定位，而不是在编辑器中显示的父节点。用一个具有变换属性的场景来替换占位符，将使子节点再次相对于它们的父节点进行变换。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Node<class_Node>`             | :ref:`create_instance<class_InstancePlaceholder_method_create_instance>`\ (\ replace\: :ref:`bool<class_bool>` = false, custom_scene\: :ref:`PackedScene<class_PackedScene>` = null\ ) |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`         | :ref:`get_instance_path<class_InstancePlaceholder_method_get_instance_path>`\ (\ ) |const|                                                                                             |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`get_stored_values<class_InstancePlaceholder_method_get_stored_values>`\ (\ with_order\: :ref:`bool<class_bool>` = false\ )                                                       |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_InstancePlaceholder_method_create_instance:

.. rst-class:: classref-method

:ref:`Node<class_Node>` **create_instance**\ (\ replace\: :ref:`bool<class_bool>` = false, custom_scene\: :ref:`PackedScene<class_PackedScene>` = null\ ) :ref:`🔗<class_InstancePlaceholder_method_create_instance>`

调用这个方法会实际载入节点。在场景树中放置新创建的节点时，该节点是 **InstancePlaceholder** 的同级节点，位于其\ *上方*\ 。出于方便的考虑，还会返回该 :ref:`Node<class_Node>` 的引用。

\ **注意：**\ :ref:`create_instance()<class_InstancePlaceholder_method_create_instance>` 不是线程安全的。从线程中调用时请使用 :ref:`Object.call_deferred()<class_Object_method_call_deferred>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_InstancePlaceholder_method_get_instance_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_instance_path**\ (\ ) |const| :ref:`🔗<class_InstancePlaceholder_method_get_instance_path>`

获取调用 :ref:`create_instance()<class_InstancePlaceholder_method_create_instance>` 时默认加载的 :ref:`PackedScene<class_PackedScene>` 资源文件的路径。不是线程安全的。如果从线程调用，请使用 :ref:`Object.call_deferred()<class_Object_method_call_deferred>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_InstancePlaceholder_method_get_stored_values:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_stored_values**\ (\ with_order\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_InstancePlaceholder_method_get_stored_values>`

返回在调用 :ref:`create_instance()<class_InstancePlaceholder_method_create_instance>` 时会应用到节点上的属性列表。

如果 ``with_order`` 为 ``true``\ ，会在字典中加入 ``.order`` 字段（注意有个前缀的点）。这个 ``.order`` 字段是属性名称 :ref:`String<class_String>` 的 :ref:`Array<class_Array>`\ ，指定属性的应用顺序（索引为 0 的是第一个）。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
