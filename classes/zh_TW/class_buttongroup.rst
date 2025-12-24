:github_url: hide

.. meta::
	:keywords: radio

.. _class_ButtonGroup:

ButtonGroup
===========

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

不允許同時按下多個按鈕的按鈕的一個群組。

.. rst-class:: classref-introduction-group

說明
----

:ref:`BaseButton<class_BaseButton>` 衍生按鈕的群組。\ **ButtonGroup** 中的按鈕被視為選項按鈕：同一時間最多只能按下一個按鈕。某些型別的按鈕（例如 :ref:`CheckBox<class_CheckBox>`\ ）在該狀態下可能會有特殊的外觀。

\ **ButtonGroup** 的每個成員都應該將 :ref:`BaseButton.toggle_mode<class_BaseButton_property_toggle_mode>` 設定為 ``true``\ 。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------+---------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`allow_unpress<class_ButtonGroup_property_allow_unpress>` | ``false``                                                                             |
   +-------------------------+----------------------------------------------------------------+---------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | resource_local_to_scene                                        | ``true`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +-------------------------+----------------------------------------------------------------+---------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`BaseButton<class_BaseButton>`\] | :ref:`get_buttons<class_ButtonGroup_method_get_buttons>`\ (\ )               |
   +------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`BaseButton<class_BaseButton>`                              | :ref:`get_pressed_button<class_ButtonGroup_method_get_pressed_button>`\ (\ ) |
   +------------------------------------------------------------------+------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_ButtonGroup_signal_pressed:

.. rst-class:: classref-signal

**pressed**\ (\ button\: :ref:`BaseButton<class_BaseButton>`\ ) :ref:`🔗<class_ButtonGroup_signal_pressed>`

當該組中的某個按鈕被按下時發出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_ButtonGroup_property_allow_unpress:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **allow_unpress** = ``false`` :ref:`🔗<class_ButtonGroup_property_allow_unpress>`

.. rst-class:: classref-property-setget

- |void| **set_allow_unpress**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_allow_unpress**\ (\ )

如果為 ``true``\ ，則可以取消按下該 **ButtonGroup** 中的所有按鈕。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_ButtonGroup_method_get_buttons:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`BaseButton<class_BaseButton>`\] **get_buttons**\ (\ ) :ref:`🔗<class_ButtonGroup_method_get_buttons>`

返回元素型別為 :ref:`Button<class_Button>` 的 :ref:`Array<class_Array>`\ ，這些 :ref:`Button<class_Button>` 將其作為 **ButtonGroup**\ （見 :ref:`BaseButton.button_group<class_BaseButton_property_button_group>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_ButtonGroup_method_get_pressed_button:

.. rst-class:: classref-method

:ref:`BaseButton<class_BaseButton>` **get_pressed_button**\ (\ ) :ref:`🔗<class_ButtonGroup_method_get_pressed_button>`

返回目前按下的按鈕。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
