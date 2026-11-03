:github_url: hide

.. _class_Rect2i:

Rect2i
======

使用整數座標的 2D 軸對齊邊界框。

.. rst-class:: classref-introduction-group

說明
----

**Rect2i** 內建 :ref:`Variant<class_Variant>` 型別表示 2D 空間中的軸對齊矩形，使用整數座標。它由其 :ref:`position<class_Rect2i_property_position>` 和 :ref:`size<class_Rect2i_property_size>` 定義，即\ :ref:`Vector2i<class_Vector2i>`\ ，由於它不會旋轉，所以常用於快速重疊測試（參見\ :ref:`intersects()<class_Rect2i_method_intersects>`\ ）。

浮點座標，請參見\ :ref:`Rect2<class_Rect2>`\ 。

\ **注意：** 不支援 :ref:`size<class_Rect2i_property_size>` 的負值。對於負大小，大多數 **Rect2i** 方法都無法正常運作。使用 :ref:`abs()<class_Rect2i_method_abs>` 獲得具有非負大小的等效 **Rect2i**\ 。

\ **注意：** 在布林本文中，如果\ :ref:`position<class_Rect2i_property_position>` 和\ :ref:`size<class_Rect2i_property_size>` 均為零（等於\ :ref:`Vector2i.ZERO<class_Vector2i_constant_ZERO>`\ ），則\ **Rect2i** 的計算結果為\ ``false`` ）。否則，它的計算結果始終為 ``true``\ 。

.. note::

	使用 C# 操作此 API 時有顯著差異，詳見 :ref:`doc_c_sharp_differences`。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`數學文件索引 <../tutorials/math/index>`

- :doc:`向量數學 <../tutorials/math/vector_math>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------------+-------------------------------------------------+--------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`end<class_Rect2i_property_end>`           | ``Vector2i(0, 0)`` |
   +---------------------------------+-------------------------------------------------+--------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`position<class_Rect2i_property_position>` | ``Vector2i(0, 0)`` |
   +---------------------------------+-------------------------------------------------+--------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`size<class_Rect2i_property_size>`         | ``Vector2i(0, 0)`` |
   +---------------------------------+-------------------------------------------------+--------------------+

.. rst-class:: classref-reftable-group

建構子
------

.. table::
   :widths: auto

   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>` | :ref:`Rect2i<class_Rect2i_constructor_Rect2i>`\ (\ )                                                                                                                      |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>` | :ref:`Rect2i<class_Rect2i_constructor_Rect2i>`\ (\ from\: :ref:`Rect2i<class_Rect2i>`\ )                                                                                  |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>` | :ref:`Rect2i<class_Rect2i_constructor_Rect2i>`\ (\ from\: :ref:`Rect2<class_Rect2>`\ )                                                                                    |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>` | :ref:`Rect2i<class_Rect2i_constructor_Rect2i>`\ (\ position\: :ref:`Vector2i<class_Vector2i>`, size\: :ref:`Vector2i<class_Vector2i>`\ )                                  |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>` | :ref:`Rect2i<class_Rect2i_constructor_Rect2i>`\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`, width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`\ ) |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>`     | :ref:`abs<class_Rect2i_method_abs>`\ (\ ) |const|                                                                                                                                                   |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`encloses<class_Rect2i_method_encloses>`\ (\ b\: :ref:`Rect2i<class_Rect2i>`\ ) |const|                                                                                                        |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>`     | :ref:`expand<class_Rect2i_method_expand>`\ (\ to\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                                       |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`get_area<class_Rect2i_method_get_area>`\ (\ ) |const|                                                                                                                                         |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`get_center<class_Rect2i_method_get_center>`\ (\ ) |const|                                                                                                                                     |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>`     | :ref:`grow<class_Rect2i_method_grow>`\ (\ amount\: :ref:`int<class_int>`\ ) |const|                                                                                                                 |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>`     | :ref:`grow_individual<class_Rect2i_method_grow_individual>`\ (\ left\: :ref:`int<class_int>`, top\: :ref:`int<class_int>`, right\: :ref:`int<class_int>`, bottom\: :ref:`int<class_int>`\ ) |const| |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>`     | :ref:`grow_side<class_Rect2i_method_grow_side>`\ (\ side\: :ref:`int<class_int>`, amount\: :ref:`int<class_int>`\ ) |const|                                                                         |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`has_area<class_Rect2i_method_has_area>`\ (\ ) |const|                                                                                                                                         |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`has_point<class_Rect2i_method_has_point>`\ (\ point\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                              |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>`     | :ref:`intersection<class_Rect2i_method_intersection>`\ (\ b\: :ref:`Rect2i<class_Rect2i>`\ ) |const|                                                                                                |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`intersects<class_Rect2i_method_intersects>`\ (\ b\: :ref:`Rect2i<class_Rect2i>`\ ) |const|                                                                                                    |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>`     | :ref:`merge<class_Rect2i_method_merge>`\ (\ b\: :ref:`Rect2i<class_Rect2i>`\ ) |const|                                                                                                              |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

運算子
------

.. table::
   :widths: auto

   +-------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator !=<class_Rect2i_operator_neq_Rect2i>`\ (\ right\: :ref:`Rect2i<class_Rect2i>`\ ) |
   +-------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator ==<class_Rect2i_operator_eq_Rect2i>`\ (\ right\: :ref:`Rect2i<class_Rect2i>`\ )  |
   +-------------------------+-------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_Rect2i_property_end:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **end** = ``Vector2i(0, 0)`` :ref:`🔗<class_Rect2i_property_end>`

終點。通常為矩形的右下角，等價於 ``position + size``\ 。設定該點會影響 :ref:`size<class_Rect2i_property_size>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_property_position:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **position** = ``Vector2i(0, 0)`` :ref:`🔗<class_Rect2i_property_position>`

相機的位置是固定的，所以左上角總是在原點。

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_property_size:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **size** = ``Vector2i(0, 0)`` :ref:`🔗<class_Rect2i_property_size>`

矩形的寬度和高度，從 :ref:`position<class_Rect2i_property_position>` 開始。設定此值也會影響 :ref:`end<class_Rect2i_property_end>` 點。

\ **注意：**\ 建議將寬度和高度設為非負值，因為Godot中的大多數方法都假設\ :ref:`position<class_Rect2i_property_position>`\ 是左上角，\ :ref:`end<class_Rect2i_property_end>`\ 是底部-右上角。若要獲得非負大小的等效矩形，請使用\ :ref:`abs()<class_Rect2i_method_abs>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

建構子說明
----------

.. _class_Rect2i_constructor_Rect2i:

.. rst-class:: classref-constructor

:ref:`Rect2i<class_Rect2i>` **Rect2i**\ (\ ) :ref:`🔗<class_Rect2i_constructor_Rect2i>`

構造 **Rect2i**\ ，將 :ref:`position<class_Rect2i_property_position>` 和 :ref:`size<class_Rect2i_property_size>` 設定為 :ref:`Vector2i.ZERO<class_Vector2i_constant_ZERO>`\ 。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Rect2i<class_Rect2i>` **Rect2i**\ (\ from\: :ref:`Rect2i<class_Rect2i>`\ )

建構給定 **Rect2i** 的副本。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Rect2i<class_Rect2i>` **Rect2i**\ (\ from\: :ref:`Rect2<class_Rect2>`\ )

從 :ref:`Rect2<class_Rect2>` 建構新的 **Rect2i**\ 。浮點數座標將被截斷。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Rect2i<class_Rect2i>` **Rect2i**\ (\ position\: :ref:`Vector2i<class_Vector2i>`, size\: :ref:`Vector2i<class_Vector2i>`\ )

使用指定的 ``position`` 和 ``size`` 構造 **Rect2i**\ 。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Rect2i<class_Rect2i>` **Rect2i**\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`, width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`\ )

透過將 :ref:`position<class_Rect2i_property_position>` 設定為 (``x``, ``y``) 並將其 :ref:`size<class_Rect2i_property_size>` 設為 (``width``, ``height``) 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Rect2i_method_abs:

.. rst-class:: classref-method

:ref:`Rect2i<class_Rect2i>` **abs**\ (\ ) |const| :ref:`🔗<class_Rect2i_method_abs>`

傳回與此矩形等效的\ **Rect2i**\ ，其寬度和高度修改為非負值，其\ :ref:`position<class_Rect2i_property_position>`\ 為矩形的左上角。


.. tabs::

 .. code-tab:: gdscript

    var rect = Rect2i(25, 25, -100, -50)
    var absolute = rect.abs() # absolute is Rect2i(-75, -25, 100, 50)

 .. code-tab:: csharp

    var rect = new Rect2I(25, 25, -100, -50);
    var absolute = rect.Abs(); // absolute is Rect2I(-75, -25, 100, 50)



\ **注意：**\ 當\ :ref:`size<class_Rect2i_property_size>`\ 為負數時，建議使用此方法，因為Godot中的大多數其他方法都假設\ :ref:`position<class_Rect2i_property_position>`\ 是左上角，\ :ref:`end<class_Rect2i_property_end>`\ 是右下角。

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_encloses:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **encloses**\ (\ b\: :ref:`Rect2i<class_Rect2i>`\ ) |const| :ref:`🔗<class_Rect2i_method_encloses>`

如果該 **Rect2i** 完全包含另一個，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_expand:

.. rst-class:: classref-method

:ref:`Rect2i<class_Rect2i>` **expand**\ (\ to\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_Rect2i_method_expand>`

回傳該矩形的副本，如有必要，該矩形被擴充為將邊緣與給定的 ``to`` 點對齊。


.. tabs::

 .. code-tab:: gdscript

    var rect = Rect2i(0, 0, 5, 2)

    rect = rect.expand(Vector2i(10, 0)) # rect 為 Rect2i(0, 0, 10, 2)
    rect = rect.expand(Vector2i(-5, 5)) # rect 為 Rect2i(-5, 0, 15, 5)

 .. code-tab:: csharp

    var rect = new Rect2I(0, 0, 5, 2);

    rect = rect.Expand(new Vector2I(10, 0)); // rect 為 Rect2I(0, 0, 10, 2)
    rect = rect.Expand(new Vector2I(-5, 5)); // rect 為 Rect2I(-5, 0, 15, 5)



.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_get_area:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_area**\ (\ ) |const| :ref:`🔗<class_Rect2i_method_get_area>`

返回該 :ref:`Rect2<class_Rect2>` 的面積。另請參閱 :ref:`has_area()<class_Rect2i_method_has_area>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_get_center:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_center**\ (\ ) |const| :ref:`🔗<class_Rect2i_method_get_center>`

回傳該矩形的中心點。這與 ``position + (size / 2)`` 相同。

\ **注意：**\ 如果 :ref:`size<class_Rect2i_property_size>` 為奇數，則結果將向 :ref:`position<class_Rect2i_property_position>` 捨入。

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_grow:

.. rst-class:: classref-method

:ref:`Rect2i<class_Rect2i>` **grow**\ (\ amount\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Rect2i_method_grow>`

傳回給定的\ ``amount`` 在所有邊上擴充的此矩形的副本。負的\ ``amount`` 會縮小矩形。另請參閱\ :ref:`grow_individual()<class_Rect2i_method_grow_individual>` 和\ :ref:`grow_side()<class_Rect2i_method_grow_side>`\ 。


.. tabs::

 .. code-tab:: gdscript

    var a = Rect2i(4, 4, 8, 8).grow(4) # a is Rect2i(0, 0, 16, 16)
    var b = Rect2i(0, 0, 8, 4).grow(2) # b is Rect2i(-2, -2, 12, 8)

 .. code-tab:: csharp

    var a = new Rect2I(4, 4, 8, 8).Grow(4); // a is Rect2I(0, 0, 16, 16)
    var b = new Rect2I(0, 0, 8, 4).Grow(2); // b is Rect2I(-2, -2, 12, 8)



.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_grow_individual:

.. rst-class:: classref-method

:ref:`Rect2i<class_Rect2i>` **grow_individual**\ (\ left\: :ref:`int<class_int>`, top\: :ref:`int<class_int>`, right\: :ref:`int<class_int>`, bottom\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Rect2i_method_grow_individual>`

傳回此矩形的副本，其 ``left``\ 、\ ``top``\ 、\ ``right`` 和 ``bottom`` 邊擴充了給定的量。負值會縮小另請參閱\ :ref:`grow()<class_Rect2i_method_grow>` 和\ :ref:`grow_side()<class_Rect2i_method_grow_side>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_grow_side:

.. rst-class:: classref-method

:ref:`Rect2i<class_Rect2i>` **grow_side**\ (\ side\: :ref:`int<class_int>`, amount\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Rect2i_method_grow_side>`

傳回此矩形的副本，其 ``side`` 按給定的 ``amount`` 擴充（請參閱 :ref:`Side<enum_@GlobalScope_Side>` 常數）。負數 ``amount`` 會縮小矩形，相反。另請參見 :ref:`grow()<class_Rect2i_method_grow>` 和 :ref:`grow_individual()<class_Rect2i_method_grow_individual>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_has_area:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_area**\ (\ ) |const| :ref:`🔗<class_Rect2i_method_has_area>`

如果該矩形具有正的寬度和高度，則回傳 ``true``\ 。另見 :ref:`get_area()<class_Rect2i_method_get_area>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_has_point:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_point**\ (\ point\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_Rect2i_method_has_point>`

若矩形包含指定的 ``point``\ ，則回傳 ``true``\ 。依照慣例，右邊界與下邊界上的點\ **不**\ 包含在內。

\ **注意：**\ 若 **Rect2i** 的 :ref:`size<class_Rect2i_property_size>` 為\ *負值*\ ，此方法的結果不可靠。請先使用 :ref:`abs()<class_Rect2i_method_abs>` 取得有效的矩形。

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_intersection:

.. rst-class:: classref-method

:ref:`Rect2i<class_Rect2i>` **intersection**\ (\ b\: :ref:`Rect2i<class_Rect2i>`\ ) |const| :ref:`🔗<class_Rect2i_method_intersection>`

傳回此矩形與 ``b`` 之間的交集。如果矩形不相交，則傳回空的 **Rect2i**\ 。


.. tabs::

 .. code-tab:: gdscript

    var a = Rect2i(0, 0, 5, 10)
    var b = Rect2i(2, 0, 8, 4)

    var c = a.intersection(b) # c is Rect2i(2, 0, 3, 4)

 .. code-tab:: csharp

    var a = new Rect2I(0, 0, 5, 10);
    var b = new Rect2I(2, 0, 8, 4);

    var c = rect1.Intersection(rect2); // c is Rect2I(2, 0, 3, 4)



\ **注意：**\ 如果您只需要知道兩個矩形是否重疊，請改用\ :ref:`intersects()<class_Rect2i_method_intersects>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_intersects:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **intersects**\ (\ b\: :ref:`Rect2i<class_Rect2i>`\ ) |const| :ref:`🔗<class_Rect2i_method_intersects>`

如果該 **Rect2i** 與 ``b`` 重疊（即至少包含一個共同的點），則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_merge:

.. rst-class:: classref-method

:ref:`Rect2i<class_Rect2i>` **merge**\ (\ b\: :ref:`Rect2i<class_Rect2i>`\ ) |const| :ref:`🔗<class_Rect2i_method_merge>`

傳回包圍此矩形和邊緣周圍的\ ``b`` 的 **Rect2i** 。另請參閱 :ref:`encloses()<class_Rect2i_method_encloses>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

運算子說明
----------

.. _class_Rect2i_operator_neq_Rect2i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Rect2i<class_Rect2i>`\ ) :ref:`🔗<class_Rect2i_operator_neq_Rect2i>`

如果兩個矩形的 :ref:`position<class_Rect2i_property_position>` 或 :ref:`size<class_Rect2i_property_size>` 不相等，則回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_operator_eq_Rect2i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Rect2i<class_Rect2i>`\ ) :ref:`🔗<class_Rect2i_operator_eq_Rect2i>`

如果該矩形的 :ref:`position<class_Rect2i_property_position>` 和 :ref:`size<class_Rect2i_property_size>` 分別相等，則回傳 ``true``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
