:github_url: hide

.. _class_EditorFileDialog:

EditorFileDialog
================

**Успадковує:** :ref:`FileDialog<class_FileDialog>` **<** :ref:`ConfirmationDialog<class_ConfirmationDialog>` **<** :ref:`AcceptDialog<class_AcceptDialog>` **<** :ref:`Window<class_Window>` **<** :ref:`Viewport<class_Viewport>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Редактор :ref:`FileDialog<class_FileDialog>`.

.. rst-class:: classref-introduction-group

Опис
--------

**EditorFileDialog** — це модифікований :ref:`FileDialog<class_FileDialog>`, призначений для роботи в редакторі. Він автоматично обробляє списки улюблених та нещодавно відкритих каталогів, а також синхронізує деякі властивості з відповідними налаштуваннями редактора.

\ **EditorFileDialog** автоматично покаже вбудоване діалогове вікно на основі налаштування редактора :ref:`EditorSettings.interface/editor/appearance/use_native_file_dialogs<class_EditorSettings_property_interface/editor/appearance/use_native_file_dialogs>` та ігнорує :ref:`FileDialog.use_native_dialog<class_FileDialog_property_use_native_dialog>`.

\ **Примітка:** **EditorFileDialog** за замовчуванням невидимий. Щоб зробити його видимим, викличте один із методів ``popup_*`` з :ref:`Window<class_Window>` на вузлі, наприклад :ref:`Window.popup_centered_clamped()<class_Window_method_popup_centered_clamped>`.

\ **Примітка:** У Linux та macOS програми в пісочниці завжди використовують вбудовані діалогові вікна для доступу до файлової системи хоста.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------+---------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`disable_overwrite_warning<class_EditorFileDialog_property_disable_overwrite_warning>` | ``false`` |
   +-------------------------+---------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +--------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`add_side_menu<class_EditorFileDialog_method_add_side_menu>`\ (\ menu\: :ref:`Control<class_Control>`, title\: :ref:`String<class_String>` = ""\ ) |
   +--------+---------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_EditorFileDialog_property_disable_overwrite_warning:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **disable_overwrite_warning** = ``false`` :ref:`🔗<class_EditorFileDialog_property_disable_overwrite_warning>`

.. rst-class:: classref-property-setget

- |void| **set_disable_overwrite_warning**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_overwrite_warning_disabled**\ (\ )

**Застаріло:** Use :ref:`FileDialog.overwrite_warning_enabled<class_FileDialog_property_overwrite_warning_enabled>` instead.

Якщо ``true``, **EditorFileDialog** не попередить користувача перед перезаписом файлів.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_EditorFileDialog_method_add_side_menu:

.. rst-class:: classref-method

|void| **add_side_menu**\ (\ menu\: :ref:`Control<class_Control>`, title\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_EditorFileDialog_method_add_side_menu>`

**Застаріло:** This feature is no longer supported.

Цей метод збережено для сумісності та нічого не робить. Як альтернативу, ви можете відобразити інше діалогове вікно після відображення діалогового вікна файлу.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
