:github_url: hide

.. _class_bool:

bool
====

内置布尔类型。

.. rst-class:: classref-introduction-group

描述
----

布尔类型 **bool** 是内置的 :ref:`Variant<class_Variant>` 类型，只能存储 ``true``\ （真）和 ``false``\ （假）的其中之一。你可以把它理解为开关，要么处于打开状态，要么处于关闭状态。也可以理解为二进制所使用的数字，只有 1 或者 0。

\ ``if`` 等条件语句中可以直接使用布尔值：


.. tabs::

 .. code-tab:: gdscript

    var can_shoot = true
    if can_shoot:
        launch_bullet()

 .. code-tab:: csharp

    bool canShoot = true;
    if (canShoot)
    {
        LaunchBullet();
    }



比较运算符返回的都是布尔值（\ ``==``\ 、\ ``>``\ 、\ ``<=`` 等）。没有必要比较布尔值本身，因此不需要在这些比较后面加上 ``== true`` 或 ``== false``\ 。

布尔值可以和逻辑运算符 ``and``\ 、\ ``or``\ 、\ ``not`` 组合，构成复杂的条件：


.. tabs::

 .. code-tab:: gdscript

    if bullets > 0 and not is_reloading():
        launch_bullet()

    if bullets == 0 or is_reloading():
        play_clack_sound()

 .. code-tab:: csharp

    if (bullets > 0 && !IsReloading())
    {
        LaunchBullet();
    }

    if (bullets == 0 || IsReloading())
    {
        PlayClackSound();
    }



\ **注意：**\ 在现代编程语言中，逻辑运算符是按顺序求值的。如果后续条件不会对最终结果产生影响，那么就会跳过对这些条件的求值。这种行为叫作\ `短路求值 <https://zh.wikipedia.org/wiki/%E7%9F%AD%E8%B7%AF%E6%B1%82%E5%80%BC>`__\ ，在注重性能的场合能够避免对开销较大的条件进行求值。

\ **注意：**\ 根据惯例，返回布尔值的内置方法和属性通常都以判断题、形容词等形式命名（\ :ref:`String.is_empty()<class_String_method_is_empty>`\ 、\ :ref:`Node.can_process()<class_Node_method_can_process>`\ 、\ :ref:`Camera2D.enabled<class_Camera2D_property_enabled>` 等）。

.. rst-class:: classref-reftable-group

构造函数
--------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`bool<class_bool_constructor_bool>`\ (\ )                                   |
   +-------------------------+----------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`bool<class_bool_constructor_bool>`\ (\ from\: :ref:`bool<class_bool>`\ )   |
   +-------------------------+----------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`bool<class_bool_constructor_bool>`\ (\ from\: :ref:`float<class_float>`\ ) |
   +-------------------------+----------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`bool<class_bool_constructor_bool>`\ (\ from\: :ref:`int<class_int>`\ )     |
   +-------------------------+----------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

运算符
------

.. table::
   :widths: auto

   +-------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator !=<class_bool_operator_neq_bool>`\ (\ right\: :ref:`bool<class_bool>`\ ) |
   +-------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator \<<class_bool_operator_lt_bool>`\ (\ right\: :ref:`bool<class_bool>`\ )  |
   +-------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator ==<class_bool_operator_eq_bool>`\ (\ right\: :ref:`bool<class_bool>`\ )  |
   +-------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator ><class_bool_operator_gt_bool>`\ (\ right\: :ref:`bool<class_bool>`\ )   |
   +-------------------------+-----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

构造函数说明
------------

.. _class_bool_constructor_bool:

.. rst-class:: classref-constructor

:ref:`bool<class_bool>` **bool**\ (\ ) :ref:`🔗<class_bool_constructor_bool>`

构造设置为 ``false`` 的 **bool**\ 。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`bool<class_bool>` **bool**\ (\ from\: :ref:`bool<class_bool>`\ )

构造给定 **bool** 的副本。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`bool<class_bool>` **bool**\ (\ from\: :ref:`float<class_float>`\ )

将 :ref:`float<class_float>` 值转换为布尔值。如果 ``from`` 等于 ``0.0``\ （包括 ``-0.0``\ ）则返回 ``false``\ ，其他值则返回 ``true``\ （包括 :ref:`@GDScript.INF<class_@GDScript_constant_INF>` 和 :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>`\ ）。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`bool<class_bool>` **bool**\ (\ from\: :ref:`int<class_int>`\ )

将 :ref:`int<class_int>` 值转换为布尔值。如果 ``from`` 等于 ``0`` 则返回 ``false``\ ，其他值则返回 ``true``\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

运算符说明
----------

.. _class_bool_operator_neq_bool:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_bool_operator_neq_bool>`

如果两个布尔值不同则返回 ``true``\ ，即一个是 ``true``\ 、一个是 ``false`` 的情况。这个运算可以视为逻辑异或（XOR）。

.. rst-class:: classref-item-separator

----

.. _class_bool_operator_lt_bool:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <**\ (\ right\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_bool_operator_lt_bool>`

如果左操作数为 ``false`` 且右操作数为 ``true``\ ，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_bool_operator_eq_bool:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_bool_operator_eq_bool>`

如果两个布尔值相同则返回 ``true``\ ，即都是 ``true`` 或都是 ``false`` 的情况。这个运算可以视为逻辑相等（EQ）或者同或（XNOR）。

.. rst-class:: classref-item-separator

----

.. _class_bool_operator_gt_bool:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >**\ (\ right\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_bool_operator_gt_bool>`

如果左操作数为 ``true`` 且右操作数为 ``false``\ ，则返回 ``true``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
