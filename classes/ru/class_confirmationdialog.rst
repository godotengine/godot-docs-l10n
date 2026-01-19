:github_url: hide

.. _class_ConfirmationDialog:

ConfirmationDialog
==================

**Наследует:** :ref:`AcceptDialog<class_AcceptDialog>` **<** :ref:`Window<class_Window>` **<** :ref:`Viewport<class_Viewport>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`EditorCommandPalette<class_EditorCommandPalette>`, :ref:`FileDialog<class_FileDialog>`, :ref:`ScriptCreateDialog<class_ScriptCreateDialog>`

Диалог, используемый для подтверждения действий.

.. rst-class:: classref-introduction-group

Описание
----------------

Диалоговое окно, используемое для подтверждения действий. Это окно похоже на :ref:`AcceptDialog<class_AcceptDialog>`, но нажатие кнопки «Отмена» может привести к другому результату, чем нажатие кнопки «ОК». Порядок кнопок зависит от операционной системы.

Для выполнения действия «Отмена» можно использовать:


.. tabs::

 .. code-tab:: gdscript

    get_cancel_button().pressed.connect(_on_canceled)

 .. code-tab:: csharp

    GetCancelButton().Pressed += OnCanceled;



\ **Примечание:** :ref:`AcceptDialog<class_AcceptDialog>` по умолчанию невидим. Чтобы сделать его видимым, вызовите один из методов ``popup_*`` из :ref:`Window<class_Window>` узла, например, :ref:`Window.popup_centered_clamped()<class_Window_method_popup_centered_clamped>`.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------------------------------+---------------------------------------------------------------------------------+
   | :ref:`String<class_String>`     | :ref:`cancel_button_text<class_ConfirmationDialog_property_cancel_button_text>` | ``"Cancel"``                                                                    |
   +---------------------------------+---------------------------------------------------------------------------------+---------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | min_size                                                                        | ``Vector2i(200, 70)`` (overrides :ref:`Window<class_Window_property_min_size>`) |
   +---------------------------------+---------------------------------------------------------------------------------+---------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | size                                                                            | ``Vector2i(200, 100)`` (overrides :ref:`Window<class_Window_property_size>`)    |
   +---------------------------------+---------------------------------------------------------------------------------+---------------------------------------------------------------------------------+
   | :ref:`String<class_String>`     | title                                                                           | ``"Please Confirm..."`` (overrides :ref:`Window<class_Window_property_title>`)  |
   +---------------------------------+---------------------------------------------------------------------------------+---------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-----------------------------+-----------------------------------------------------------------------------------+
   | :ref:`Button<class_Button>` | :ref:`get_cancel_button<class_ConfirmationDialog_method_get_cancel_button>`\ (\ ) |
   +-----------------------------+-----------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_ConfirmationDialog_property_cancel_button_text:

.. rst-class:: classref-property

:ref:`String<class_String>` **cancel_button_text** = ``"Cancel"`` :ref:`🔗<class_ConfirmationDialog_property_cancel_button_text>`

.. rst-class:: classref-property-setget

- |void| **set_cancel_button_text**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_cancel_button_text**\ (\ )

Текст, отображаемый кнопкой отмены (см. :ref:`get_cancel_button()<class_ConfirmationDialog_method_get_cancel_button>`).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_ConfirmationDialog_method_get_cancel_button:

.. rst-class:: classref-method

:ref:`Button<class_Button>` **get_cancel_button**\ (\ ) :ref:`🔗<class_ConfirmationDialog_method_get_cancel_button>`

Возвращает кнопку отмены.

\ **Предупреждение:** Это обязательный внутренний узел, его удаление и освобождение может привести к сбою. Если вы хотите скрыть его или любой из его дочерних элементов, используйте их свойство :ref:`CanvasItem.visible<class_CanvasItem_property_visible>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
