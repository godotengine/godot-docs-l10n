:github_url: hide

.. _class_EditorFileDialog:

EditorFileDialog
================

**Наследует:** :ref:`FileDialog<class_FileDialog>` **<** :ref:`ConfirmationDialog<class_ConfirmationDialog>` **<** :ref:`AcceptDialog<class_AcceptDialog>` **<** :ref:`Window<class_Window>` **<** :ref:`Viewport<class_Viewport>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Модифицированная версия :ref:`FileDialog<class_FileDialog>`, используемая редактором.

.. rst-class:: classref-introduction-group

Описание
----------------

**EditorFileDialog** — это :ref:`FileDialog<class_FileDialog>`, адаптированный для работы в редакторе. Он автоматически обрабатывает списки избранных и недавно использованных файлов, а также синхронизирует некоторые свойства с соответствующими настройками редактора.

\ **EditorFileDialog** автоматически отобразит собственный диалог на основе настройки редактора :ref:`EditorSettings.interface/editor/use_native_file_dialogs<class_EditorSettings_property_interface/editor/use_native_file_dialogs>` и проигнорирует :ref:`FileDialog.use_native_dialog<class_FileDialog_property_use_native_dialog>`.

\ **Примечание:** **EditorFileDialog** по умолчанию невидим. Чтобы сделать его видимым, вызовите один из методов ``popup_*`` из :ref:`Window<class_Window>` узла, например, :ref:`Window.popup_centered_clamped()<class_Window_method_popup_centered_clamped>`.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------+---------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`disable_overwrite_warning<class_EditorFileDialog_property_disable_overwrite_warning>` | ``false`` |
   +-------------------------+---------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +--------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`add_side_menu<class_EditorFileDialog_method_add_side_menu>`\ (\ menu\: :ref:`Control<class_Control>`, title\: :ref:`String<class_String>` = ""\ ) |
   +--------+---------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_EditorFileDialog_property_disable_overwrite_warning:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **disable_overwrite_warning** = ``false`` :ref:`🔗<class_EditorFileDialog_property_disable_overwrite_warning>`

.. rst-class:: classref-property-setget

- |void| **set_disable_overwrite_warning**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_overwrite_warning_disabled**\ (\ )

**Устарело:** Use :ref:`FileDialog.overwrite_warning_enabled<class_FileDialog_property_overwrite_warning_enabled>` instead.

Если ``true``, **EditorFileDialog** не будет предупреждать пользователя перед перезаписью файлов.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_EditorFileDialog_method_add_side_menu:

.. rst-class:: classref-method

|void| **add_side_menu**\ (\ menu\: :ref:`Control<class_Control>`, title\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_EditorFileDialog_method_add_side_menu>`

**Устарело:** This feature is no longer supported.

Этот метод сохранен для обеспечения совместимости и ничего не делает. В качестве альтернативы вы можете отобразить другое диалоговое окно после показа диалогового окна выбора файла.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
