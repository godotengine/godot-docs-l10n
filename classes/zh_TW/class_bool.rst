:github_url: hide

.. _class_bool:

bool
====

內建布林型別。

.. rst-class:: classref-introduction-group

說明
----

**bool** 是內建 :ref:`Variant<class_Variant>` 型別，只能儲存兩個值之一：\ ``true`` 或 ``false``\ 你可以把它想像成一個可以打開或關閉的開關，或者是一個可以是1或0的二進制數字。

布林值可以直接用在\ ``if``\ 和其他條件敘述：


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

所有比較運算子都傳回布林值（\ ``==``\ 、\ ``>``\ 、\ ``<=`` 等） 。因此，沒有必要比較布林值本身。您不需要新增 ``== true`` 或 ``== false``\ 。

布林值可以與邏輯運算子 ``and``\ 、\ ``or``\ 、\ ``not`` 組合來建立複雜的條件：


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



\ **注意：** 在現代程式語言中，邏輯運算子依序求值。如果剩餘條件的結果對最終值沒有影響，則將跳過所有剩餘條件。這個概念被稱為\ `短路評估 <https://en.wikipedia.org/wiki/Short-Circuit_evaluation>`__\ ，可用於避免在某些性能關鍵的情況下評估昂貴的條件。

\ **注意：** 依照慣例，傳回布林值的內建方法和屬性通常定義為是非問題、單一形容詞或類似的（\ :ref:`String.is_empty()<class_String_method_is_empty>`\ 、\ :ref:`Node.can_process()<class_Node_method_can_process>`\ 、 :ref:`Camera2D.enabled<class_Camera2D_property_enabled>`\ 等）。

.. rst-class:: classref-reftable-group

建構子
------

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

運算子
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

建構子說明
----------

.. _class_bool_constructor_bool:

.. rst-class:: classref-constructor

:ref:`bool<class_bool>` **bool**\ (\ ) :ref:`🔗<class_bool_constructor_bool>`

建構設為 ``0`` 的 :ref:`int<class_int>`\ 。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`bool<class_bool>` **bool**\ (\ from\: :ref:`bool<class_bool>`\ )

建構給定 **bool** 的副本。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`bool<class_bool>` **bool**\ (\ from\: :ref:`float<class_float>`\ )

將 :ref:`float<class_float>` 值轉換為布林值。如果傳入 ``0.0``\ ，本方法將返回 ``false``\ ，傳入其他值則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`bool<class_bool>` **bool**\ (\ from\: :ref:`int<class_int>`\ )

將 :ref:`int<class_int>` 值轉換為布林值。如果傳入 ``0``\ ，本方法將返回 ``false``\ ，傳入其他值則返回 ``true``\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

運算子說明
----------

.. _class_bool_operator_neq_bool:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_bool_operator_neq_bool>`

如果兩個布林值不同，即一個是 ``true``\ ，另一個是 ``false``\ ，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_bool_operator_lt_bool:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <**\ (\ right\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_bool_operator_lt_bool>`

如果左運算元為 ``false`` 且右運算元為 ``true``\ ，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_bool_operator_eq_bool:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_bool_operator_eq_bool>`

如果兩個布林值相等，即都為 ``true`` 或都為 ``false``\ ，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_bool_operator_gt_bool:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >**\ (\ right\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_bool_operator_gt_bool>`

如果左運算元為 ``true`` 且右運算元為 ``false``\ ，則返回 ``true``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
