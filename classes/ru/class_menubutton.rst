:github_url: hide

.. meta::
	:keywords: dropdown

.. _class_MenuButton:

MenuButton
==========

**Наследует:** :ref:`Button<class_Button>` **<** :ref:`BaseButton<class_BaseButton>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Кнопка, при нажатии на которую открывается :ref:`PopupMenu<class_PopupMenu>`.

.. rst-class:: classref-introduction-group

Описание
----------------

Кнопка, которая при нажатии вызывает :ref:`PopupMenu<class_PopupMenu>`. Чтобы создать новые элементы внутри этого :ref:`PopupMenu<class_PopupMenu>`, используйте ``get_popup().add_item("My Item Name")``. Вы также можете создавать их напрямую из инспектора редактора Godot.

См. также :ref:`BaseButton<class_BaseButton>`, который содержит общие свойства и методы, связанные с этим узлом.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------------------------------+---------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`ActionMode<enum_BaseButton_ActionMode>` | action_mode                                                                                 | ``0`` (overrides :ref:`BaseButton<class_BaseButton_property_action_mode>`)    |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                       | flat                                                                                        | ``true`` (overrides :ref:`Button<class_Button_property_flat>`)                |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`FocusMode<enum_Control_FocusMode>`      | focus_mode                                                                                  | ``3`` (overrides :ref:`Control<class_Control_property_focus_mode>`)           |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                         | :ref:`item_count<class_MenuButton_property_item_count>`                                     | ``0``                                                                         |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                         | :ref:`popup/item_{index}/checkable<class_MenuButton_property_popup/item_{index}/checkable>` | ``0``                                                                         |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                       | :ref:`popup/item_{index}/checked<class_MenuButton_property_popup/item_{index}/checked>`     | ``false``                                                                     |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                       | :ref:`popup/item_{index}/disabled<class_MenuButton_property_popup/item_{index}/disabled>`   | ``false``                                                                     |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`             | :ref:`popup/item_{index}/icon<class_MenuButton_property_popup/item_{index}/icon>`           |                                                                               |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                         | :ref:`popup/item_{index}/id<class_MenuButton_property_popup/item_{index}/id>`               | ``0``                                                                         |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                       | :ref:`popup/item_{index}/separator<class_MenuButton_property_popup/item_{index}/separator>` | ``false``                                                                     |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                   | :ref:`popup/item_{index}/text<class_MenuButton_property_popup/item_{index}/text>`           | ``""``                                                                        |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                       | :ref:`switch_on_hover<class_MenuButton_property_switch_on_hover>`                           | ``false``                                                                     |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                       | toggle_mode                                                                                 | ``true`` (overrides :ref:`BaseButton<class_BaseButton_property_toggle_mode>`) |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-----------------------------------+-----------------------------------------------------------------------------------------------------------------------+
   | :ref:`PopupMenu<class_PopupMenu>` | :ref:`get_popup<class_MenuButton_method_get_popup>`\ (\ ) |const|                                                     |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`set_disable_shortcuts<class_MenuButton_method_set_disable_shortcuts>`\ (\ disabled\: :ref:`bool<class_bool>`\ ) |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`show_popup<class_MenuButton_method_show_popup>`\ (\ )                                                           |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
--------------

.. _class_MenuButton_signal_about_to_popup:

.. rst-class:: classref-signal

**about_to_popup**\ (\ ) :ref:`🔗<class_MenuButton_signal_about_to_popup>`

Генерируется, когда :ref:`PopupMenu<class_PopupMenu>` этой MenuButton готовится к отображению.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_MenuButton_property_item_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **item_count** = ``0`` :ref:`🔗<class_MenuButton_property_item_count>`

.. rst-class:: classref-property-setget

- |void| **set_item_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_item_count**\ (\ )

Количество элементов в списке на данный момент.

.. rst-class:: classref-item-separator

----

.. _class_MenuButton_property_popup/item_{index}/checkable:

.. rst-class:: classref-property

:ref:`int<class_int>` **popup/item_{index}/checkable** = ``0`` :ref:`🔗<class_MenuButton_property_popup/item_{index}/checkable>`

The checkable item type of the item at ``index``.

\ **Note:** ``index`` is a value in the ``0 .. item_count - 1`` range.

.. rst-class:: classref-item-separator

----

.. _class_MenuButton_property_popup/item_{index}/checked:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **popup/item_{index}/checked** = ``false`` :ref:`🔗<class_MenuButton_property_popup/item_{index}/checked>`

If ``true``, the item at ``index`` is checked.

\ **Note:** ``index`` is a value in the ``0 .. item_count - 1`` range.

.. rst-class:: classref-item-separator

----

.. _class_MenuButton_property_popup/item_{index}/disabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **popup/item_{index}/disabled** = ``false`` :ref:`🔗<class_MenuButton_property_popup/item_{index}/disabled>`

If ``true``, the item at ``index`` is disabled.

\ **Note:** ``index`` is a value in the ``0 .. item_count - 1`` range.

.. rst-class:: classref-item-separator

----

.. _class_MenuButton_property_popup/item_{index}/icon:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **popup/item_{index}/icon** :ref:`🔗<class_MenuButton_property_popup/item_{index}/icon>`

The icon of the item at ``index``.

\ **Note:** ``index`` is a value in the ``0 .. item_count - 1`` range.

.. rst-class:: classref-item-separator

----

.. _class_MenuButton_property_popup/item_{index}/id:

.. rst-class:: classref-property

:ref:`int<class_int>` **popup/item_{index}/id** = ``0`` :ref:`🔗<class_MenuButton_property_popup/item_{index}/id>`

The ID of the item at ``index``.

\ **Note:** ``index`` is a value in the ``0 .. item_count - 1`` range.

.. rst-class:: classref-item-separator

----

.. _class_MenuButton_property_popup/item_{index}/separator:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **popup/item_{index}/separator** = ``false`` :ref:`🔗<class_MenuButton_property_popup/item_{index}/separator>`

If ``true``, the item at ``index`` is a separator.

\ **Note:** ``index`` is a value in the ``0 .. item_count - 1`` range.

.. rst-class:: classref-item-separator

----

.. _class_MenuButton_property_popup/item_{index}/text:

.. rst-class:: classref-property

:ref:`String<class_String>` **popup/item_{index}/text** = ``""`` :ref:`🔗<class_MenuButton_property_popup/item_{index}/text>`

The text of the item at ``index``.

\ **Note:** ``index`` is a value in the ``0 .. item_count - 1`` range.

.. rst-class:: classref-item-separator

----

.. _class_MenuButton_property_switch_on_hover:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **switch_on_hover** = ``false`` :ref:`🔗<class_MenuButton_property_switch_on_hover>`

.. rst-class:: classref-property-setget

- |void| **set_switch_on_hover**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_switch_on_hover**\ (\ )

Если ``true``, то при наведении курсора на другой элемент **MenuButton** в том же родительском элементе, у которого также включен :ref:`switch_on_hover<class_MenuButton_property_switch_on_hover>`, текущий элемент **MenuButton** будет закрыт, а другой открыт.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_MenuButton_method_get_popup:

.. rst-class:: classref-method

:ref:`PopupMenu<class_PopupMenu>` **get_popup**\ (\ ) |const| :ref:`🔗<class_MenuButton_method_get_popup>`

Возвращает :ref:`PopupMenu<class_PopupMenu>`, содержащийся в этой кнопке.

\ **Предупреждение:** Это обязательный внутренний узел, его удаление и освобождение может привести к сбою. Если вы хотите скрыть его или любой из его дочерних элементов, используйте их свойство :ref:`Window.visible<class_Window_property_visible>`.

.. rst-class:: classref-item-separator

----

.. _class_MenuButton_method_set_disable_shortcuts:

.. rst-class:: classref-method

|void| **set_disable_shortcuts**\ (\ disabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_MenuButton_method_set_disable_shortcuts>`

Если ``true``, сочетания клавиш отключены и не могут использоваться для активации кнопки.

.. rst-class:: classref-item-separator

----

.. _class_MenuButton_method_show_popup:

.. rst-class:: classref-method

|void| **show_popup**\ (\ ) :ref:`🔗<class_MenuButton_method_show_popup>`

Настраивает положение и размер всплывающего окна для **MenuButton**, затем показывает :ref:`PopupMenu<class_PopupMenu>`. Предпочтительнее использовать этот метод, чем ``get_popup().popup()``.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
