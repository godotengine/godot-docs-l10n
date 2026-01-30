:github_url: hide

.. _class_RID:

RID
===

:ref:`Resource<class_Resource>` 的唯一标识符的句柄。

.. rst-class:: classref-introduction-group

描述
----

RID :ref:`Variant<class_Variant>` 类型用于通过其唯一 ID 访问底层资源。RID 是不透明的，无法独立进行对资源的访问。\ :ref:`DisplayServer<class_DisplayServer>`\ 、\ :ref:`RenderingServer<class_RenderingServer>`\ 、\ :ref:`TextServer<class_TextServer>` 等底层服务器类会用到 RID。

底层资源可能对应于高阶 :ref:`Resource<class_Resource>`\ ，例如 :ref:`Texture<class_Texture>` 或 :ref:`Mesh<class_Mesh>`\ 。

\ **注意：**\ 该 ID 仅在当前会话中有意义：通过网络传输后并不对应相同的对象，隔段时间后从文件中加载亦然。

.. note::

	通过 C# 使用该 API 时会有显著不同，详见 :ref:`doc_c_sharp_differences`\ 。

.. rst-class:: classref-reftable-group

构造函数
--------

.. table::
   :widths: auto

   +-----------------------+---------------------------------------------------------------------------+
   | :ref:`RID<class_RID>` | :ref:`RID<class_RID_constructor_RID>`\ (\ )                               |
   +-----------------------+---------------------------------------------------------------------------+
   | :ref:`RID<class_RID>` | :ref:`RID<class_RID_constructor_RID>`\ (\ from\: :ref:`RID<class_RID>`\ ) |
   +-----------------------+---------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------+
   | :ref:`int<class_int>`   | :ref:`get_id<class_RID_method_get_id>`\ (\ ) |const|     |
   +-------------------------+----------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_valid<class_RID_method_is_valid>`\ (\ ) |const| |
   +-------------------------+----------------------------------------------------------+

.. rst-class:: classref-reftable-group

运算符
------

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator !=<class_RID_operator_neq_RID>`\ (\ right\: :ref:`RID<class_RID>`\ )  |
   +-------------------------+--------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator \<<class_RID_operator_lt_RID>`\ (\ right\: :ref:`RID<class_RID>`\ )   |
   +-------------------------+--------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator \<=<class_RID_operator_lte_RID>`\ (\ right\: :ref:`RID<class_RID>`\ ) |
   +-------------------------+--------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator ==<class_RID_operator_eq_RID>`\ (\ right\: :ref:`RID<class_RID>`\ )   |
   +-------------------------+--------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator ><class_RID_operator_gt_RID>`\ (\ right\: :ref:`RID<class_RID>`\ )    |
   +-------------------------+--------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator >=<class_RID_operator_gte_RID>`\ (\ right\: :ref:`RID<class_RID>`\ )  |
   +-------------------------+--------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

构造函数说明
------------

.. _class_RID_constructor_RID:

.. rst-class:: classref-constructor

:ref:`RID<class_RID>` **RID**\ (\ ) :ref:`🔗<class_RID_constructor_RID>`

构造空的 **RID**\ ，内容为无效的 ID ``0``\ 。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`RID<class_RID>` **RID**\ (\ from\: :ref:`RID<class_RID>`\ )

构造给定 **RID** 的副本 **RID**\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_RID_method_get_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_id**\ (\ ) |const| :ref:`🔗<class_RID_method_get_id>`

返回引用的底层资源的 ID。

.. rst-class:: classref-item-separator

----

.. _class_RID_method_is_valid:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_valid**\ (\ ) |const| :ref:`🔗<class_RID_method_is_valid>`

如果该 **RID** 非 ``0``\ ，则返回 ``true``\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

运算符说明
----------

.. _class_RID_operator_neq_RID:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_RID_operator_neq_RID>`

如果 **RID** 不相等，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_RID_operator_lt_RID:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <**\ (\ right\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_RID_operator_lt_RID>`

如果该 **RID** 的 ID 小于右侧 ``right`` 的 ID，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_RID_operator_lte_RID:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <=**\ (\ right\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_RID_operator_lte_RID>`

如果该 **RID** 的 ID 小于等于右侧 ``right`` 的 ID，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_RID_operator_eq_RID:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_RID_operator_eq_RID>`

如果 **RID** 相等，则返回 ``true``\ ，表示它们引用的是同一个底层资源。

.. rst-class:: classref-item-separator

----

.. _class_RID_operator_gt_RID:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >**\ (\ right\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_RID_operator_gt_RID>`

如果该 **RID** 的 ID 大于右侧 ``right`` 的 ID，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_RID_operator_gte_RID:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >=**\ (\ right\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_RID_operator_gte_RID>`

如果该 **RID** 的 ID 大于等于右侧 ``right`` 的 ID，则返回 ``true``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
