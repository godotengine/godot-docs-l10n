:github_url: hide

.. _class_RandomNumberGenerator:

RandomNumberGenerator
=====================

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

提供生成伪随机数的方法。

.. rst-class:: classref-introduction-group

描述
----

RandomNumberGenerator 是一个用于生成伪随机数的类。它目前使用 `PCG32 <https://www.pcg-random.org/>`__\ 。

\ **注意：**\ 底层算法属于实现细节，不应该对此产生依赖。

要根据时间相关种子生成（给定范围内的）随机浮点数：

::

    var rng = RandomNumberGenerator.new()
    func _ready():
        var my_random_number = rng.randf_range(-10.0, 10.0)

.. rst-class:: classref-introduction-group

教程
----

- :doc:`随机数生成 <../tutorials/math/random_number_generation>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------+----------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`seed<class_RandomNumberGenerator_property_seed>`   | ``0`` |
   +-----------------------+----------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`state<class_RandomNumberGenerator_property_state>` | ``0`` |
   +-----------------------+----------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`     | :ref:`rand_weighted<class_RandomNumberGenerator_method_rand_weighted>`\ (\ weights\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ )         |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`randf<class_RandomNumberGenerator_method_randf>`\ (\ )                                                                                        |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`randf_range<class_RandomNumberGenerator_method_randf_range>`\ (\ from\: :ref:`float<class_float>`, to\: :ref:`float<class_float>`\ )          |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`randfn<class_RandomNumberGenerator_method_randfn>`\ (\ mean\: :ref:`float<class_float>` = 0.0, deviation\: :ref:`float<class_float>` = 1.0\ ) |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`     | :ref:`randi<class_RandomNumberGenerator_method_randi>`\ (\ )                                                                                        |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`     | :ref:`randi_range<class_RandomNumberGenerator_method_randi_range>`\ (\ from\: :ref:`int<class_int>`, to\: :ref:`int<class_int>`\ )                  |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`randomize<class_RandomNumberGenerator_method_randomize>`\ (\ )                                                                                |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_RandomNumberGenerator_property_seed:

.. rst-class:: classref-property

:ref:`int<class_int>` **seed** = ``0`` :ref:`🔗<class_RandomNumberGenerator_property_seed>`

.. rst-class:: classref-property-setget

- |void| **set_seed**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_seed**\ (\ )

Initializes the random number generator state based on the given seed value. A given seed will give a reproducible sequence of pseudo-random numbers.

\ **Note:** The RNG does not have an avalanche effect, and can output similar random streams given similar seeds. Consider using a hash function to improve your seed quality if they're sourced externally.

\ **Note:** The default value of this property is pseudo-random, and changes when calling :ref:`randomize()<class_RandomNumberGenerator_method_randomize>`. The ``0`` value documented here is a placeholder, and not the actual default seed.

\ **Note:** Setting this property produces a side effect of changing the internal :ref:`state<class_RandomNumberGenerator_property_state>`, so make sure to initialize the seed *before* modifying the :ref:`state<class_RandomNumberGenerator_property_state>`:

::

    var rng = RandomNumberGenerator.new()
    rng.seed = hash("Godot")
    rng.state = 100 # Restore to some previously saved state.

.. rst-class:: classref-item-separator

----

.. _class_RandomNumberGenerator_property_state:

.. rst-class:: classref-property

:ref:`int<class_int>` **state** = ``0`` :ref:`🔗<class_RandomNumberGenerator_property_state>`

.. rst-class:: classref-property-setget

- |void| **set_state**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_state**\ (\ )

随机数生成器的当前状态。保存并恢复此属性，以将生成器恢复到之前的状态：

::

    var rng = RandomNumberGenerator.new()
    print(rng.randf())
    var saved_state = rng.state # 保存当前状态。
    print(rng.randf()) # 让内部状态发生步进。
    rng.state = saved_state # 恢复状态。
    print(rng.randf()) # 输出和之前一样的值。

\ **注意：**\ 不要将状态设置为任意值，因为随机数生成器要求状态具有某些特性才能正常运行。它应该只设置为来自状态属性本身的值。要使用任意输入初始化随机数生成器，请改用 :ref:`seed<class_RandomNumberGenerator_property_seed>`\ 。

\ **注意：**\ 该属性的默认值是伪随机的，会在调用 :ref:`randomize()<class_RandomNumberGenerator_method_randomize>` 时改变。文档中记录的 ``0`` 是占位符，不是实际的默认状态。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_RandomNumberGenerator_method_rand_weighted:

.. rst-class:: classref-method

:ref:`int<class_int>` **rand_weighted**\ (\ weights\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) :ref:`🔗<class_RandomNumberGenerator_method_rand_weighted>`

Returns a random integer between ``0`` and the size of the array that is passed as a parameter. Each value in the array should be a floating-point number that represents the relative likelihood that it will be returned as an index. A higher value means the value is more likely to be returned as an index, while a value of ``0`` means it will never be returned as an index.

For example, if ``[0.5, 1, 1, 2]`` is passed as a parameter, then the method is twice as likely to return ``3`` (the index of the value ``2``) and twice as unlikely to return ``0`` (the index of the value ``0.5``) compared to the indices ``1`` and ``2``.

Prints an error and returns ``-1`` if the array is empty.


.. tabs::

 .. code-tab:: gdscript

    var rng = RandomNumberGenerator.new()

    var my_array = ["one", "two", "three", "four"]
    var weights = PackedFloat32Array([0.5, 1, 1, 2])

    # Prints one of the four elements in `my_array`.
    # It is more likely to print "four", and less likely to print "one".
    print(my_array[rng.rand_weighted(weights)])



.. rst-class:: classref-item-separator

----

.. _class_RandomNumberGenerator_method_randf:

.. rst-class:: classref-method

:ref:`float<class_float>` **randf**\ (\ ) :ref:`🔗<class_RandomNumberGenerator_method_randf>`

返回在 ``0.0`` 和 ``1.0`` 之间（含端点）的伪随机浮点数。

.. rst-class:: classref-item-separator

----

.. _class_RandomNumberGenerator_method_randf_range:

.. rst-class:: classref-method

:ref:`float<class_float>` **randf_range**\ (\ from\: :ref:`float<class_float>`, to\: :ref:`float<class_float>`\ ) :ref:`🔗<class_RandomNumberGenerator_method_randf_range>`

返回在 ``from`` 和 ``to`` 之间（含端点）的伪随机浮点数。

.. rst-class:: classref-item-separator

----

.. _class_RandomNumberGenerator_method_randfn:

.. rst-class:: classref-method

:ref:`float<class_float>` **randfn**\ (\ mean\: :ref:`float<class_float>` = 0.0, deviation\: :ref:`float<class_float>` = 1.0\ ) :ref:`🔗<class_RandomNumberGenerator_method_randfn>`

返回一个\ `正态分布 <https://en.wikipedia.org/wiki/Normal_distribution>`__\ 的伪随机数，该分布使用指定的 ``mean`` 和标准 ``deviation``\ 。这也被称为高斯分布。

\ **注意：**\ 该方法使用 `Box-Muller 变换 <https://en.wikipedia.org/wiki/Box%E2%80%93Muller_transform>`__\ 算法。

.. rst-class:: classref-item-separator

----

.. _class_RandomNumberGenerator_method_randi:

.. rst-class:: classref-method

:ref:`int<class_int>` **randi**\ (\ ) :ref:`🔗<class_RandomNumberGenerator_method_randi>`

返回在 ``0`` 和 ``4294967295`` 之间（含端点）的伪随机 32 位无符号整数。

.. rst-class:: classref-item-separator

----

.. _class_RandomNumberGenerator_method_randi_range:

.. rst-class:: classref-method

:ref:`int<class_int>` **randi_range**\ (\ from\: :ref:`int<class_int>`, to\: :ref:`int<class_int>`\ ) :ref:`🔗<class_RandomNumberGenerator_method_randi_range>`

返回在 ``from`` 和 ``to`` 之间（含端点）的伪随机 32 位无符号整数。

.. rst-class:: classref-item-separator

----

.. _class_RandomNumberGenerator_method_randomize:

.. rst-class:: classref-method

|void| **randomize**\ (\ ) :ref:`🔗<class_RandomNumberGenerator_method_randomize>`

为这个 **RandomNumberGenerator** 实例设置基于时间的种子。与 :ref:`@GlobalScope<class_@GlobalScope>` 随机数生成函数不同，不同的 **RandomNumberGenerator** 实例可以使用不同的种子。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
