:github_url: hide

.. _class_RandomNumberGenerator:

RandomNumberGenerator
=====================

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

提供生成偽亂數的方法。

.. rst-class:: classref-introduction-group

說明
----

RandomNumberGenerator 是一個用於生成偽隨機數的類。它目前使用 `PCG32 <https://www.pcg-random.org/>`__\ 。

\ **注意：**\ 底層算法屬於實作細節，不應該對此產生相依性。

要根據時間相關種子生成（給定範圍內的）隨機浮點數：

::

    var rng = RandomNumberGenerator.new()
    func _ready():
        var my_random_number = rng.randf_range(-10.0, 10.0)

.. rst-class:: classref-introduction-group

教學
----

- :doc:`亂數產生 <../tutorials/math/random_number_generation>`

.. rst-class:: classref-reftable-group

屬性
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

屬性說明
--------

.. _class_RandomNumberGenerator_property_seed:

.. rst-class:: classref-property

:ref:`int<class_int>` **seed** = ``0`` :ref:`🔗<class_RandomNumberGenerator_property_seed>`

.. rst-class:: classref-property-setget

- |void| **set_seed**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_seed**\ (\ )

根據給定的種子值來初始化隨機數生成器的狀態。使用相同的種子，將會生成一組完全可復現的偽隨機數序列。

\ **注意：** 該隨機數生成器（RNG）不具備雪崩效應，這意味著如果使用相近的種子值，可能會輸出相似的隨機數序列。如果你的種子是從外部取得的，建議考慮使用雜湊函式來提升種子的品質。

\ **注意：** 該屬性的預設值其實是偽隨機的，並且會在呼叫 :ref:`randomize()<class_RandomNumberGenerator_method_randomize>` 方法時發生改變。這裡文件中標注的預設值 ``0`` 僅僅是一個佔位符，並不是它實際的預設種子。

\ **注意：** 設定該屬性會產生一個副作用，即改變內部的 :ref:`state<class_RandomNumberGenerator_property_state>`\ （狀態）。因此，請務必在修改 :ref:`state<class_RandomNumberGenerator_property_state>` *之前* 先初始化種子：

::

    var rng = RandomNumberGenerator.new()
    rng.seed = hash("Godot")
    rng.state = 100 # 恢復到之前儲存的某個狀態。

.. rst-class:: classref-item-separator

----

.. _class_RandomNumberGenerator_property_state:

.. rst-class:: classref-property

:ref:`int<class_int>` **state** = ``0`` :ref:`🔗<class_RandomNumberGenerator_property_state>`

.. rst-class:: classref-property-setget

- |void| **set_state**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_state**\ (\ )

隨機數生成器的目前狀態。儲存並恢復此屬性，以將生成器恢復到之前的狀態：

::

    var rng = RandomNumberGenerator.new()
    print(rng.randf())
    var saved_state = rng.state # 儲存目前狀態。
    print(rng.randf()) # 讓內部狀態發生步進。
    rng.state = saved_state # 恢復狀態。
    print(rng.randf()) # 輸出和之前一樣的值。

\ **注意：**\ 不要將狀態設定為任意值，因為隨機數生成器要求狀態具有某些特性才能正常執行。它應該只設定為來自狀態屬性本身的值。要使用任意輸入初始化隨機數生成器，請改用 :ref:`seed<class_RandomNumberGenerator_property_seed>`\ 。

\ **注意：**\ 該屬性的預設值是偽隨機的，會在呼叫 :ref:`randomize()<class_RandomNumberGenerator_method_randomize>` 時改變。文件中記錄的 ``0`` 是佔位符，不是實際的預設狀態。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_RandomNumberGenerator_method_rand_weighted:

.. rst-class:: classref-method

:ref:`int<class_int>` **rand_weighted**\ (\ weights\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) :ref:`🔗<class_RandomNumberGenerator_method_rand_weighted>`

回傳一個介於 ``0`` 與作為參數傳入的陣列大小之間的隨機整數。陣列中的每個值應為非負浮點數，表示其對應索引被回傳的相對概率。值越大，該索引被回傳的概率越高；值為 ``0`` 則表示該索引永遠不會被回傳。

例如，若傳入參數為 ``[0.5, 1, 1, 2]``\ ，則在該方法回傳的索引值中，回傳 ``1`` 和 ``2`` 的概率是回傳 ``3``\ （即值 ``2`` 的索引）的一半，是回傳 ``0``\ （即值 ``0.5`` 的索引）的兩倍。

如果陣列為空或包含任何負值，將輸出錯誤並回傳 ``-1``\ 。


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

返回在 ``0.0`` 和 ``1.0`` 之間（含端點）的偽隨機浮點數。

.. rst-class:: classref-item-separator

----

.. _class_RandomNumberGenerator_method_randf_range:

.. rst-class:: classref-method

:ref:`float<class_float>` **randf_range**\ (\ from\: :ref:`float<class_float>`, to\: :ref:`float<class_float>`\ ) :ref:`🔗<class_RandomNumberGenerator_method_randf_range>`

返回在 ``from`` 和 ``to`` 之間（含端點）的偽隨機浮點數。

.. rst-class:: classref-item-separator

----

.. _class_RandomNumberGenerator_method_randfn:

.. rst-class:: classref-method

:ref:`float<class_float>` **randfn**\ (\ mean\: :ref:`float<class_float>` = 0.0, deviation\: :ref:`float<class_float>` = 1.0\ ) :ref:`🔗<class_RandomNumberGenerator_method_randfn>`

回傳一個\ `正態分布 <https://en.wikipedia.org/wiki/Normal_distribution>`__\ 的偽隨機數，該分布使用指定的 ``mean`` 和標準 ``deviation``\ 。這也被稱為高斯分布。

\ **注意：**\ 該方法使用 `Box-Muller 變換 <https://en.wikipedia.org/wiki/Box%E2%80%93Muller_transform>`__\ 算法。

.. rst-class:: classref-item-separator

----

.. _class_RandomNumberGenerator_method_randi:

.. rst-class:: classref-method

:ref:`int<class_int>` **randi**\ (\ ) :ref:`🔗<class_RandomNumberGenerator_method_randi>`

返回在 ``0`` 和 ``4294967295`` 之間（含端點）的偽隨機 32 位不帶正負號的整數。

.. rst-class:: classref-item-separator

----

.. _class_RandomNumberGenerator_method_randi_range:

.. rst-class:: classref-method

:ref:`int<class_int>` **randi_range**\ (\ from\: :ref:`int<class_int>`, to\: :ref:`int<class_int>`\ ) :ref:`🔗<class_RandomNumberGenerator_method_randi_range>`

返回在 ``from`` 和 ``to`` 之間（含端點）的偽隨機 32 位不帶正負號的整數。

.. rst-class:: classref-item-separator

----

.. _class_RandomNumberGenerator_method_randomize:

.. rst-class:: classref-method

|void| **randomize**\ (\ ) :ref:`🔗<class_RandomNumberGenerator_method_randomize>`

為這個 **RandomNumberGenerator** 實例設定基於時間的種子。與 :ref:`@GlobalScope<class_@GlobalScope>` 隨機數生成函式不同，不同的 **RandomNumberGenerator** 實例可以使用不同的種子。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
