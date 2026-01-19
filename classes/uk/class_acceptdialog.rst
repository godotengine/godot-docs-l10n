:github_url: hide

.. _class_AcceptDialog:

AcceptDialog
============

**Успадковує:** :ref:`Window<class_Window>` **<** :ref:`Viewport<class_Viewport>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`ConfirmationDialog<class_ConfirmationDialog>`

Базове діалогове вікно, яке використовується для сповіщень користувача.

.. rst-class:: classref-introduction-group

Опис
--------

За замовчуванням **AcceptDialog** використовується для того, щоб дозволити його лише прийняття або закриття з тим самим результатом. Однак сигнали :ref:`confirmed<class_AcceptDialog_signal_confirmed>` та :ref:`canceled<class_AcceptDialog_signal_canceled>` дозволяють зробити ці дві дії різними, а метод :ref:`add_button()<class_AcceptDialog_method_add_button>` дозволяє додавати власні кнопки та дії.

\ **Примітка:** **AcceptDialog** за замовчуванням невидимий. Щоб зробити його видимим, викличте один із методів ``popup_*`` з :ref:`Window<class_Window>` на вузлі, наприклад, :ref:`Window.popup_centered_clamped()<class_Window_method_popup_centered_clamped>`.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------------+-----------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`dialog_autowrap<class_AcceptDialog_property_dialog_autowrap>`               | ``false``                                                                    |
   +-----------------------------+-----------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`dialog_close_on_escape<class_AcceptDialog_property_dialog_close_on_escape>` | ``true``                                                                     |
   +-----------------------------+-----------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`dialog_hide_on_ok<class_AcceptDialog_property_dialog_hide_on_ok>`           | ``true``                                                                     |
   +-----------------------------+-----------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`dialog_text<class_AcceptDialog_property_dialog_text>`                       | ``""``                                                                       |
   +-----------------------------+-----------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | exclusive                                                                         | ``true`` (overrides :ref:`Window<class_Window_property_exclusive>`)          |
   +-----------------------------+-----------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | keep_title_visible                                                                | ``true`` (overrides :ref:`Window<class_Window_property_keep_title_visible>`) |
   +-----------------------------+-----------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | maximize_disabled                                                                 | ``true`` (overrides :ref:`Window<class_Window_property_maximize_disabled>`)  |
   +-----------------------------+-----------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | minimize_disabled                                                                 | ``true`` (overrides :ref:`Window<class_Window_property_minimize_disabled>`)  |
   +-----------------------------+-----------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`ok_button_text<class_AcceptDialog_property_ok_button_text>`                 | ``""``                                                                       |
   +-----------------------------+-----------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | title                                                                             | ``"Alert!"`` (overrides :ref:`Window<class_Window_property_title>`)          |
   +-----------------------------+-----------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | transient                                                                         | ``true`` (overrides :ref:`Window<class_Window_property_transient>`)          |
   +-----------------------------+-----------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | visible                                                                           | ``false`` (overrides :ref:`Window<class_Window_property_visible>`)           |
   +-----------------------------+-----------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | wrap_controls                                                                     | ``true`` (overrides :ref:`Window<class_Window_property_wrap_controls>`)      |
   +-----------------------------+-----------------------------------------------------------------------------------+------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Button<class_Button>` | :ref:`add_button<class_AcceptDialog_method_add_button>`\ (\ text\: :ref:`String<class_String>`, right\: :ref:`bool<class_bool>` = false, action\: :ref:`String<class_String>` = ""\ ) |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Button<class_Button>` | :ref:`add_cancel_button<class_AcceptDialog_method_add_cancel_button>`\ (\ name\: :ref:`String<class_String>`\ )                                                                       |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Label<class_Label>`   | :ref:`get_label<class_AcceptDialog_method_get_label>`\ (\ )                                                                                                                           |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Button<class_Button>` | :ref:`get_ok_button<class_AcceptDialog_method_get_ok_button>`\ (\ )                                                                                                                   |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`register_text_enter<class_AcceptDialog_method_register_text_enter>`\ (\ line_edit\: :ref:`LineEdit<class_LineEdit>`\ )                                                          |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`remove_button<class_AcceptDialog_method_remove_button>`\ (\ button\: :ref:`Button<class_Button>`\ )                                                                             |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Властивості теми
--------------------------------

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------------------------------+--------+
   | :ref:`int<class_int>`           | :ref:`buttons_min_height<class_AcceptDialog_theme_constant_buttons_min_height>` | ``0``  |
   +---------------------------------+---------------------------------------------------------------------------------+--------+
   | :ref:`int<class_int>`           | :ref:`buttons_min_width<class_AcceptDialog_theme_constant_buttons_min_width>`   | ``0``  |
   +---------------------------------+---------------------------------------------------------------------------------+--------+
   | :ref:`int<class_int>`           | :ref:`buttons_separation<class_AcceptDialog_theme_constant_buttons_separation>` | ``10`` |
   +---------------------------------+---------------------------------------------------------------------------------+--------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`panel<class_AcceptDialog_theme_style_panel>`                              |        |
   +---------------------------------+---------------------------------------------------------------------------------+--------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигнали
--------------

.. _class_AcceptDialog_signal_canceled:

.. rst-class:: classref-signal

**canceled**\ (\ ) :ref:`🔗<class_AcceptDialog_signal_canceled>`

Випромінюється, коли діалогове вікно закрите або натиснуто кнопку, створену за допомогою :ref:`add_cancel_button()<class_AcceptDialog_method_add_cancel_button>`.

.. rst-class:: classref-item-separator

----

.. _class_AcceptDialog_signal_confirmed:

.. rst-class:: classref-signal

**confirmed**\ (\ ) :ref:`🔗<class_AcceptDialog_signal_confirmed>`

Випромінюється, коли діалогове вікно приймається, тобто натискається кнопка ОК.

.. rst-class:: classref-item-separator

----

.. _class_AcceptDialog_signal_custom_action:

.. rst-class:: classref-signal

**custom_action**\ (\ action\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AcceptDialog_signal_custom_action>`

Викликається при натисканні власної кнопки з дією. Див. :ref:`add_button()<class_AcceptDialog_method_add_button>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_AcceptDialog_property_dialog_autowrap:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **dialog_autowrap** = ``false`` :ref:`🔗<class_AcceptDialog_property_dialog_autowrap>`

.. rst-class:: classref-property-setget

- |void| **set_autowrap**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **has_autowrap**\ (\ )

Встановлює автоматичне перенесення тексту в діалоговому вікні.

.. rst-class:: classref-item-separator

----

.. _class_AcceptDialog_property_dialog_close_on_escape:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **dialog_close_on_escape** = ``true`` :ref:`🔗<class_AcceptDialog_property_dialog_close_on_escape>`

.. rst-class:: classref-property-setget

- |void| **set_close_on_escape**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_close_on_escape**\ (\ )

Якщо значення ``true``, діалогове вікно буде приховано після натискання дії ``ui_close_dialog`` (за замовчуванням ця дія пов’язана з :kbd:`Escape` або :kbd:`Cmd + W` на macOS).

.. rst-class:: classref-item-separator

----

.. _class_AcceptDialog_property_dialog_hide_on_ok:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **dialog_hide_on_ok** = ``true`` :ref:`🔗<class_AcceptDialog_property_dialog_hide_on_ok>`

.. rst-class:: classref-property-setget

- |void| **set_hide_on_ok**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_hide_on_ok**\ (\ )

Якщо ``true``, діалогове вікно буде приховане після натискання кнопки OK. Ви можете встановити значення ``false``, якщо хочете, наприклад, робити перевірку вводу при отриманні сигналу :ref:`confirmed<class_AcceptDialog_signal_confirmed>`, і обробляти приховування діалогового вікна у вашій власній логіці.

\ **Примітка:** Деякі вузли, похідні від цього класу, можуть мати інше значення за замовчуванням, і, можливо, власну вбудовану логіку, що перевизначає це налаштування. Наприклад, :ref:`FileDialog<class_FileDialog>` за замовчуванням має значення ``false``, і має власний код перевірки введених даних, який викликається при натисканні кнопки OK, і зрештою приховує діалогове вікно, якщо введено правильні дані. Таким чином, ця властивість не може бути використана у :ref:`FileDialog<class_FileDialog>` для вимкнення приховування діалогового вікна після натискання кнопки OK.

.. rst-class:: classref-item-separator

----

.. _class_AcceptDialog_property_dialog_text:

.. rst-class:: classref-property

:ref:`String<class_String>` **dialog_text** = ``""`` :ref:`🔗<class_AcceptDialog_property_dialog_text>`

.. rst-class:: classref-property-setget

- |void| **set_text**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_text**\ (\ )

Текст, який відображається в діалоговому вікні.

.. rst-class:: classref-item-separator

----

.. _class_AcceptDialog_property_ok_button_text:

.. rst-class:: classref-property

:ref:`String<class_String>` **ok_button_text** = ``""`` :ref:`🔗<class_AcceptDialog_property_ok_button_text>`

.. rst-class:: classref-property-setget

- |void| **set_ok_button_text**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_ok_button_text**\ (\ )

Текст, що відображається кнопкою OK (див. :ref:`get_ok_button()<class_AcceptDialog_method_get_ok_button>`). Якщо порожній, буде використано текст за замовчуванням.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_AcceptDialog_method_add_button:

.. rst-class:: classref-method

:ref:`Button<class_Button>` **add_button**\ (\ text\: :ref:`String<class_String>`, right\: :ref:`bool<class_bool>` = false, action\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_AcceptDialog_method_add_button>`

Додає кнопку з міткою ``text`` та користувацьким ``action`` до діалогового вікна та повертає створену кнопку.

Якщо ``action`` не порожнє, натискання кнопки викличе сигнал :ref:`custom_action<class_AcceptDialog_signal_custom_action>` із заданим рядком дії.

Якщо ``true``, ``right`` розмістить кнопку праворуч від будь-яких кнопок-батьків.

Ви можете використовувати метод :ref:`remove_button()<class_AcceptDialog_method_remove_button>`, щоб видалити кнопку, створену за допомогою цього методу, з діалогового вікна.

.. rst-class:: classref-item-separator

----

.. _class_AcceptDialog_method_add_cancel_button:

.. rst-class:: classref-method

:ref:`Button<class_Button>` **add_cancel_button**\ (\ name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_AcceptDialog_method_add_cancel_button>`

Додає до діалогу кнопку з міткою ``name`` і дією скасування та повертає створену кнопку.

Ви можете використовувати метод :ref:`remove_button()<class_AcceptDialog_method_remove_button>` для видалення кнопки, створеної за допомогою цього методу, з діалогу.

.. rst-class:: classref-item-separator

----

.. _class_AcceptDialog_method_get_label:

.. rst-class:: classref-method

:ref:`Label<class_Label>` **get_label**\ (\ ) :ref:`🔗<class_AcceptDialog_method_get_label>`

Повертає мітку, яка використовується для вбудованого тексту.

\ **Попередження:** Це обов'язковий внутрішній вузол, видалення або звільнення якого може призвести до аварійного завершення роботи програми. Якщо ви хочете приховати його або будь-який з його дочірніх елементів, використовуйте їх властивість :ref:`CanvasItem.visible<class_CanvasItem_property_visible>`.

.. rst-class:: classref-item-separator

----

.. _class_AcceptDialog_method_get_ok_button:

.. rst-class:: classref-method

:ref:`Button<class_Button>` **get_ok_button**\ (\ ) :ref:`🔗<class_AcceptDialog_method_get_ok_button>`

Повертає екземпляр :ref:`Button<class_Button>` OK.

\ **Попередження:** Це обов'язковий внутрішній вузол, вилучення або звільнення якого може призвести до аварійного завершення роботи програми. Якщо ви хочете приховати його або будь-який з його дочірніх елементів, скористайтеся їхньою властивістю :ref:`CanvasItem.visible<class_CanvasItem_property_visible>`.

.. rst-class:: classref-item-separator

----

.. _class_AcceptDialog_method_register_text_enter:

.. rst-class:: classref-method

|void| **register_text_enter**\ (\ line_edit\: :ref:`LineEdit<class_LineEdit>`\ ) :ref:`🔗<class_AcceptDialog_method_register_text_enter>`

Реєструє :ref:`LineEdit<class_LineEdit>` у діалоговому вікні. Після натискання клавіші вводу діалог буде прийнято.

.. rst-class:: classref-item-separator

----

.. _class_AcceptDialog_method_remove_button:

.. rst-class:: classref-method

|void| **remove_button**\ (\ button\: :ref:`Button<class_Button>`\ ) :ref:`🔗<class_AcceptDialog_method_remove_button>`

Вилучає ``button`` з діалогового вікна. НЕ звільняє ``button``. ``button`` має бути :ref:`Button<class_Button>`, доданою за допомогою методів :ref:`add_button()<class_AcceptDialog_method_add_button>`, або :ref:`add_cancel_button()<class_AcceptDialog_method_add_cancel_button>`. Після вилучення натискання ``button`` більше не буде випромінювати сигнали :ref:`custom_action<class_AcceptDialog_signal_custom_action>`, або :ref:`canceled<class_AcceptDialog_signal_canceled>`, цього діалогового вікна.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи тематичної нерухомості
--------------------------------------------------------

.. _class_AcceptDialog_theme_constant_buttons_min_height:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **buttons_min_height** = ``0`` :ref:`🔗<class_AcceptDialog_theme_constant_buttons_min_height>`

За замовчуванням **AcceptDialog** дозволяє лише використовувати або закривати його з тим самим результатом. Однак сигнали ``сигнал підтверджено`` і ``сигнал скасовано`` можуть зробити дві дії позитивними, а метод :ref:`add_button()<class_AcceptDialog_method_add_button>` дозволяє додавати власні кнопки та дії.

.. rst-class:: classref-item-separator

----

.. _class_AcceptDialog_theme_constant_buttons_min_width:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **buttons_min_width** = ``0`` :ref:`🔗<class_AcceptDialog_theme_constant_buttons_min_width>`

Мінімальна ширина кожної кнопки в нижньому рядку (наприклад, OK/Cancel) у пікселях. Це можна збільшити, щоб кнопки з коротким текстом було легше натискати.

.. rst-class:: classref-item-separator

----

.. _class_AcceptDialog_theme_constant_buttons_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **buttons_separation** = ``10`` :ref:`🔗<class_AcceptDialog_theme_constant_buttons_separation>`

Розмір вертикального простору між вмістом діалогу та рядком кнопок.

.. rst-class:: classref-item-separator

----

.. _class_AcceptDialog_theme_style_panel:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **panel** :ref:`🔗<class_AcceptDialog_theme_style_panel>`

Панель, яка заповнює фон вікна.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
