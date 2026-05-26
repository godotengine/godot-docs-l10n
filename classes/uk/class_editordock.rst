:github_url: hide

.. _class_EditorDock:

EditorDock
==========

**Експериментальний:** This class may be changed or removed in future versions.

**Успадковує:** :ref:`MarginContainer<class_MarginContainer>` **<** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`FileSystemDock<class_FileSystemDock>`

Закріплюваний контейнер для редактора.

.. rst-class:: classref-introduction-group

Опис
--------

EditorDock — це вузол :ref:`Container<class_Container>`, який можна закріпити в одному зі слотів док-станції редактора. Доки додаються плагінами, щоб забезпечити місце для елементів керування, пов'язаних з :ref:`EditorPlugin<class_EditorPlugin>`. Редактор постачається з кількома вбудованими доками, такими як док-станція Scene, док-станція FileSystem тощо.

Ви можете додати док-станцію за допомогою методу :ref:`EditorPlugin.add_dock()<class_EditorPlugin_method_add_dock>`. Док-станцію можна налаштувати, змінивши її властивості.

::

    @tool
    extends EditorPlugin

    # Посилання на док-станцію.
    var dock

    # Ініціалізація плагіна.
     func _enter_tree():
    dock = EditorDock.new()
    dock.title = "Мій Док"
    dock.dock_icon = preload("./dock_icon.png")
    dock.default_slot = EditorDock.DOCK_SLOT_RIGHT_UL
    var dock_content = preload("./dock_content.tscn").instantiate()
    dock.add_child(dock_content)
    add_dock(dock)

    # Очищення плагіна.
    func _exit_tree():
    remove_dock(dock)
    dock.queue_free()
    dock = null

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Створення плагінів <../tutorials/plugins/editor/making_plugins>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------------------------------------------+-----------------------------------------------------------------------+--------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                     | accessibility_region                                                  | ``true`` (overrides :ref:`Container<class_Container_property_accessibility_region>`) |
   +-------------------------------------------------------------+-----------------------------------------------------------------------+--------------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`DockLayout<enum_EditorDock_DockLayout>`\] | :ref:`available_layouts<class_EditorDock_property_available_layouts>` | ``5``                                                                                |
   +-------------------------------------------------------------+-----------------------------------------------------------------------+--------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                     | :ref:`closable<class_EditorDock_property_closable>`                   | ``false``                                                                            |
   +-------------------------------------------------------------+-----------------------------------------------------------------------+--------------------------------------------------------------------------------------+
   | :ref:`DockSlot<enum_EditorDock_DockSlot>`                   | :ref:`default_slot<class_EditorDock_property_default_slot>`           | ``-1``                                                                               |
   +-------------------------------------------------------------+-----------------------------------------------------------------------+--------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                           | :ref:`dock_icon<class_EditorDock_property_dock_icon>`                 |                                                                                      |
   +-------------------------------------------------------------+-----------------------------------------------------------------------+--------------------------------------------------------------------------------------+
   | :ref:`Shortcut<class_Shortcut>`                             | :ref:`dock_shortcut<class_EditorDock_property_dock_shortcut>`         |                                                                                      |
   +-------------------------------------------------------------+-----------------------------------------------------------------------+--------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                     | :ref:`force_show_icon<class_EditorDock_property_force_show_icon>`     | ``false``                                                                            |
   +-------------------------------------------------------------+-----------------------------------------------------------------------+--------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                     | :ref:`global<class_EditorDock_property_global>`                       | ``true``                                                                             |
   +-------------------------------------------------------------+-----------------------------------------------------------------------+--------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                         | :ref:`icon_name<class_EditorDock_property_icon_name>`                 | ``&""``                                                                              |
   +-------------------------------------------------------------+-----------------------------------------------------------------------+--------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                 | :ref:`layout_key<class_EditorDock_property_layout_key>`               | ``""``                                                                               |
   +-------------------------------------------------------------+-----------------------------------------------------------------------+--------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                 | :ref:`title<class_EditorDock_property_title>`                         | ``""``                                                                               |
   +-------------------------------------------------------------+-----------------------------------------------------------------------+--------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`                                   | :ref:`title_color<class_EditorDock_property_title_color>`             | ``Color(0, 0, 0, 0)``                                                                |
   +-------------------------------------------------------------+-----------------------------------------------------------------------+--------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                     | :ref:`transient<class_EditorDock_property_transient>`                 | ``false``                                                                            |
   +-------------------------------------------------------------+-----------------------------------------------------------------------+--------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +--------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_load_layout_from_config<class_EditorDock_private_method__load_layout_from_config>`\ (\ config\: :ref:`ConfigFile<class_ConfigFile>`, section\: :ref:`String<class_String>`\ ) |virtual|     |
   +--------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_save_layout_to_config<class_EditorDock_private_method__save_layout_to_config>`\ (\ config\: :ref:`ConfigFile<class_ConfigFile>`, section\: :ref:`String<class_String>`\ ) |virtual| |const| |
   +--------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_update_layout<class_EditorDock_private_method__update_layout>`\ (\ layout\: :ref:`int<class_int>`\ ) |virtual|                                                                              |
   +--------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`close<class_EditorDock_method_close>`\ (\ )                                                                                                                                                  |
   +--------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`make_visible<class_EditorDock_method_make_visible>`\ (\ )                                                                                                                                    |
   +--------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`open<class_EditorDock_method_open>`\ (\ )                                                                                                                                                    |
   +--------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигнали
--------------

.. _class_EditorDock_signal_closed:

.. rst-class:: classref-signal

**closed**\ (\ ) :ref:`🔗<class_EditorDock_signal_closed>`

Викликається, коли док закривається кнопкою «Закрити» у контекстному спливаючому вікні, перед тим, як його видаляють з батьківського елемента. Див. :ref:`closable<class_EditorDock_property_closable>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_signal_opened:

.. rst-class:: classref-signal

**opened**\ (\ ) :ref:`🔗<class_EditorDock_signal_opened>`

Emitted when the dock is opened via the Editor > Editor Docks menu, before it's made visible.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_EditorDock_DockLayout:

.. rst-class:: classref-enumeration

flags **DockLayout**: :ref:`🔗<enum_EditorDock_DockLayout>`

.. _class_EditorDock_constant_DOCK_LAYOUT_VERTICAL:

.. rst-class:: classref-enumeration-constant

:ref:`DockLayout<enum_EditorDock_DockLayout>` **DOCK_LAYOUT_VERTICAL** = ``1``

Дозволяє розмістити док у вертикальних слотах док-станції з обох боків редактора.

.. _class_EditorDock_constant_DOCK_LAYOUT_HORIZONTAL:

.. rst-class:: classref-enumeration-constant

:ref:`DockLayout<enum_EditorDock_DockLayout>` **DOCK_LAYOUT_HORIZONTAL** = ``2``

Allows placing the dock in the horizontal dock slots at the bottom.

.. _class_EditorDock_constant_DOCK_LAYOUT_FLOATING:

.. rst-class:: classref-enumeration-constant

:ref:`DockLayout<enum_EditorDock_DockLayout>` **DOCK_LAYOUT_FLOATING** = ``4``

Дозволяє зробити док плаваючим (відкритим як окреме вікно).

.. _class_EditorDock_constant_DOCK_LAYOUT_ALL:

.. rst-class:: classref-enumeration-constant

:ref:`DockLayout<enum_EditorDock_DockLayout>` **DOCK_LAYOUT_ALL** = ``7``

Дозволяє розмістити док-станцію у всіх доступних слотах.

.. rst-class:: classref-item-separator

----

.. _enum_EditorDock_DockSlot:

.. rst-class:: classref-enumeration

enum **DockSlot**: :ref:`🔗<enum_EditorDock_DockSlot>`

.. _class_EditorDock_constant_DOCK_SLOT_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_NONE** = ``-1``

Док закритий.

.. _class_EditorDock_constant_DOCK_SLOT_LEFT_UL:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_LEFT_UL** = ``0``

Дак слот, ліва сторона, верхній лівий (порожня в макеті за замовчуванням).

.. _class_EditorDock_constant_DOCK_SLOT_LEFT_BL:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_LEFT_BL** = ``1``

Дак слот, ліва сторона, низ-ліва (порожня в макеті за замовчуванням).

.. _class_EditorDock_constant_DOCK_SLOT_LEFT_UR:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_LEFT_UR** = ``2``

Дак слот, ліва сторона, верхній правий (в розкладі за замовчуванням включає сцену і імпорт доки).

.. _class_EditorDock_constant_DOCK_SLOT_LEFT_BR:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_LEFT_BR** = ``3``

Слот для док-станції, ліворуч, внизу праворуч (у стандартній розкладці включає доки файлової системи та історії).

.. _class_EditorDock_constant_DOCK_SLOT_RIGHT_UL:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_RIGHT_UL** = ``4``

Слот для застикання, справа, угорі ліворуч (у стандартній розкладці включає застикання Інспектора, Сигнала та Групи).

.. _class_EditorDock_constant_DOCK_SLOT_RIGHT_BL:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_RIGHT_BL** = ``5``

Дак слот, права сторона, низ-ліва (порожня в макеті за замовчуванням).

.. _class_EditorDock_constant_DOCK_SLOT_RIGHT_UR:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_RIGHT_UR** = ``6``

Дак слот, права сторона, верхній правий (порожня в макеті за замовчуванням).

.. _class_EditorDock_constant_DOCK_SLOT_RIGHT_BR:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_RIGHT_BR** = ``7``

Дак слот, права сторона, нижня права (порожня в макеті за замовчуванням).

.. _class_EditorDock_constant_DOCK_SLOT_BOTTOM:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_BOTTOM** = ``8``

Нижня панель.

.. _class_EditorDock_constant_DOCK_SLOT_BOTTOM_L:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_BOTTOM_L** = ``9``

Dock slot at the bottom, below bottom panel, on the left side.

.. _class_EditorDock_constant_DOCK_SLOT_BOTTOM_R:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_BOTTOM_R** = ``10``

Dock slot at the bottom, below bottom panel, on the right side.

.. _class_EditorDock_constant_DOCK_SLOT_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_MAX** = ``11``

Представляє розмір :ref:`DockSlot<enum_EditorDock_DockSlot>` enum.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_EditorDock_property_available_layouts:

.. rst-class:: classref-property

|bitfield|\[:ref:`DockLayout<enum_EditorDock_DockLayout>`\] **available_layouts** = ``5`` :ref:`🔗<class_EditorDock_property_available_layouts>`

.. rst-class:: classref-property-setget

- |void| **set_available_layouts**\ (\ value\: |bitfield|\[:ref:`DockLayout<enum_EditorDock_DockLayout>`\]\ )
- |bitfield|\[:ref:`DockLayout<enum_EditorDock_DockLayout>`\] **get_available_layouts**\ (\ )

Доступні макети для цього доку у вигляді бітовій маски. За замовчуванням док дозволяє вертикальні та плаваючі макети.

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_property_closable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **closable** = ``false`` :ref:`🔗<class_EditorDock_property_closable>`

.. rst-class:: classref-property-setget

- |void| **set_closable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_closable**\ (\ )

Якщо ``true``, док можна закрити кнопкою «Закрити» у контекстному вікні. Доки з увімкненим :ref:`global<class_EditorDock_property_global>` завжди можна закрити..

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_property_default_slot:

.. rst-class:: classref-property

:ref:`DockSlot<enum_EditorDock_DockSlot>` **default_slot** = ``-1`` :ref:`🔗<class_EditorDock_property_default_slot>`

.. rst-class:: classref-property-setget

- |void| **set_default_slot**\ (\ value\: :ref:`DockSlot<enum_EditorDock_DockSlot>`\ )
- :ref:`DockSlot<enum_EditorDock_DockSlot>` **get_default_slot**\ (\ )

Стандартний слот дока, який використовується під час додавання дока за допомогою :ref:`EditorPlugin.add_dock()<class_EditorPlugin_method_add_dock>`.

Після додавання дока його можна перемістити в інший слот, і редактор автоматично запам'ятає його положення між сеансами. Якщо видалити та знову додати док, його значення буде скинуто до стандартного.

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_property_dock_icon:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **dock_icon** :ref:`🔗<class_EditorDock_property_dock_icon>`

.. rst-class:: classref-property-setget

- |void| **set_dock_icon**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_dock_icon**\ (\ )

Піктограма для дока, як текстура. Якщо вказано, вона замінить :ref:`icon_name<class_EditorDock_property_icon_name>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_property_dock_shortcut:

.. rst-class:: classref-property

:ref:`Shortcut<class_Shortcut>` **dock_shortcut** :ref:`🔗<class_EditorDock_property_dock_shortcut>`

.. rst-class:: classref-property-setget

- |void| **set_dock_shortcut**\ (\ value\: :ref:`Shortcut<class_Shortcut>`\ )
- :ref:`Shortcut<class_Shortcut>` **get_dock_shortcut**\ (\ )

Ярлик, який використовується для відкриття дока.

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_property_force_show_icon:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **force_show_icon** = ``false`` :ref:`🔗<class_EditorDock_property_force_show_icon>`

.. rst-class:: classref-property-setget

- |void| **set_force_show_icon**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_force_show_icon**\ (\ )

If ``true``, the dock will always display an icon, regardless of :ref:`EditorSettings.interface/editor/docks/dock_tab_style<class_EditorSettings_property_interface/editor/docks/dock_tab_style>` or :ref:`EditorSettings.interface/editor/docks/bottom_dock_tab_style<class_EditorSettings_property_interface/editor/docks/bottom_dock_tab_style>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_property_global:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **global** = ``true`` :ref:`🔗<class_EditorDock_property_global>`

.. rst-class:: classref-property-setget

- |void| **set_global**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_global**\ (\ )

Якщо ``true``, док відображається в меню **Редактор > Доки редактора** і його можна закрити. Неглобальні доки все ще можна закрити за допомогою методу ``close`` або коли :ref:`closable<class_EditorDock_property_closable>` ``true``.

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_property_icon_name:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **icon_name** = ``&""`` :ref:`🔗<class_EditorDock_property_icon_name>`

.. rst-class:: classref-property-setget

- |void| **set_icon_name**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_icon_name**\ (\ )

Піктограма для дока, як назва з типу теми ``EditorIcons`` у темі редактора. Список доступних піктограм можна знайти `тут <https://godot-editor-icons.github.io/>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_property_layout_key:

.. rst-class:: classref-property

:ref:`String<class_String>` **layout_key** = ``""`` :ref:`🔗<class_EditorDock_property_layout_key>`

.. rst-class:: classref-property-setget

- |void| **set_layout_key**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_layout_key**\ (\ )

Ключ, що представляє цей док у файлі макета редактора. Якщо порожній, буде використано відображену назву дока.

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_property_title:

.. rst-class:: classref-property

:ref:`String<class_String>` **title** = ``""`` :ref:`🔗<class_EditorDock_property_title>`

.. rst-class:: classref-property-setget

- |void| **set_title**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_title**\ (\ )

Назва вкладки дока. Якщо порожня, буде використано :ref:`Node.name<class_Node_property_name>` дока. Якщо назва згенерована автоматично (містить ``@``), буде використано назву першого дочірнього елемента.

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_property_title_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **title_color** = ``Color(0, 0, 0, 0)`` :ref:`🔗<class_EditorDock_property_title_color>`

.. rst-class:: classref-property-setget

- |void| **set_title_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_title_color**\ (\ )

Колір заголовка вкладки Dock. Якщо його альфа-кадр дорівнює ``0.0``, буде використано колір шрифту за замовчуванням.

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_property_transient:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **transient** = ``false`` :ref:`🔗<class_EditorDock_property_transient>`

.. rst-class:: classref-property-setget

- |void| **set_transient**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_transient**\ (\ )

Якщо значення ``true``, док не відкривається та не закривається автоматично під час завантаження макета редактора, а лише переміщується. Його також не можна відкрити за допомогою комбінації клавіш. Це призначено для доків, які відкриваються та закриваються в певних випадках, наприклад, під час вибору вузла :ref:`TileMap<class_TileMap>` або :ref:`AnimationTree<class_AnimationTree>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_EditorDock_private_method__load_layout_from_config:

.. rst-class:: classref-method

|void| **_load_layout_from_config**\ (\ config\: :ref:`ConfigFile<class_ConfigFile>`, section\: :ref:`String<class_String>`\ ) |virtual| :ref:`🔗<class_EditorDock_private_method__load_layout_from_config>`

Реалізуйте цей метод для обробки завантаження макета цього дока. Він еквівалентний :ref:`EditorPlugin._set_window_layout()<class_EditorPlugin_private_method__set_window_layout>`. ``section`` – це унікальна секція, що базується на :ref:`layout_key<class_EditorDock_property_layout_key>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_private_method__save_layout_to_config:

.. rst-class:: classref-method

|void| **_save_layout_to_config**\ (\ config\: :ref:`ConfigFile<class_ConfigFile>`, section\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_EditorDock_private_method__save_layout_to_config>`

Реалізуйте цей метод для збереження макета цього дока. Він еквівалентний методу :ref:`EditorPlugin._get_window_layout()<class_EditorPlugin_private_method__get_window_layout>`. ``section`` – це унікальна секція, що базується на :ref:`layout_key<class_EditorDock_property_layout_key>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_private_method__update_layout:

.. rst-class:: classref-method

|void| **_update_layout**\ (\ layout\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_EditorDock_private_method__update_layout>`

Реалізуйте цей метод для обробки перемикання макета для цього доку. ``layout`` є однією з констант :ref:`DockLayout<enum_EditorDock_DockLayout>`.

::

    func _update_layout(layout):
        box_container.vertical = (layout == DOCK_LAYOUT_VERTICAL)

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_method_close:

.. rst-class:: classref-method

|void| **close**\ (\ ) :ref:`🔗<class_EditorDock_method_close>`

Закриває док, приховуючи його вкладку.

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_method_make_visible:

.. rst-class:: classref-method

|void| **make_visible**\ (\ ) :ref:`🔗<class_EditorDock_method_make_visible>`

Фокусує вкладку дока (або вікно, якщо воно плаваюче). Якщо док був закритий, він буде відкритий. Якщо це нижній док, робить нижню панель видимою.

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_method_open:

.. rst-class:: classref-method

|void| **open**\ (\ ) :ref:`🔗<class_EditorDock_method_open>`

Відкриває док. Він з’явиться в останньому використаному слоті дока. Якщо док не має слота за замовчуванням, він буде відкритий плаваючим.

\ **Примітка:** Це не переводить док у фокус. Якщо ви хочете відкрити та перевести док у фокус, використовуйте :ref:`make_visible()<class_EditorDock_method_make_visible>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
