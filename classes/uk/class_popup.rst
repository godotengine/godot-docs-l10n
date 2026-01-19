:github_url: hide

.. _class_Popup:

Popup
=====

**Успадковує:** :ref:`Window<class_Window>` **<** :ref:`Viewport<class_Viewport>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`PopupMenu<class_PopupMenu>`, :ref:`PopupPanel<class_PopupPanel>`

Базовий клас для контекстних вікон і панелей з фіксованою позицією.

.. rst-class:: classref-introduction-group

Опис
--------

**Popup** – це базовий клас для контекстних вікон та панелей з фіксованим положенням. За замовчуванням це модальний клас (див. :ref:`Window.popup_window<class_Window_property_popup_window>`) та надає методи для реалізації власної поведінки спливаючих вікон.

\ **Примітка:** **Popup** за замовчуванням невидимий. Щоб зробити його видимим, викличте один із методів ``popup_*`` з :ref:`Window<class_Window>` на вузлі, наприклад, :ref:`Window.popup_centered_clamped()<class_Window_method_popup_centered_clamped>`.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------+-------------------+-----------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | borderless        | ``true`` (overrides :ref:`Window<class_Window_property_borderless>`)        |
   +-------------------------+-------------------+-----------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | maximize_disabled | ``true`` (overrides :ref:`Window<class_Window_property_maximize_disabled>`) |
   +-------------------------+-------------------+-----------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | minimize_disabled | ``true`` (overrides :ref:`Window<class_Window_property_minimize_disabled>`) |
   +-------------------------+-------------------+-----------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | popup_window      | ``true`` (overrides :ref:`Window<class_Window_property_popup_window>`)      |
   +-------------------------+-------------------+-----------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | popup_wm_hint     | ``true`` (overrides :ref:`Window<class_Window_property_popup_wm_hint>`)     |
   +-------------------------+-------------------+-----------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | transient         | ``true`` (overrides :ref:`Window<class_Window_property_transient>`)         |
   +-------------------------+-------------------+-----------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | unresizable       | ``true`` (overrides :ref:`Window<class_Window_property_unresizable>`)       |
   +-------------------------+-------------------+-----------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | visible           | ``false`` (overrides :ref:`Window<class_Window_property_visible>`)          |
   +-------------------------+-------------------+-----------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | wrap_controls     | ``true`` (overrides :ref:`Window<class_Window_property_wrap_controls>`)     |
   +-------------------------+-------------------+-----------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигнали
--------------

.. _class_Popup_signal_popup_hide:

.. rst-class:: classref-signal

**popup_hide**\ (\ ) :ref:`🔗<class_Popup_signal_popup_hide>`

Увімкніть, коли спливаюче вікно.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
