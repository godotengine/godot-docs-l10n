:github_url: hide

.. _class_StyleBox:

StyleBox
========

**Успадковує:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`StyleBoxEmpty<class_StyleBoxEmpty>`, :ref:`StyleBoxFlat<class_StyleBoxFlat>`, :ref:`StyleBoxLine<class_StyleBoxLine>`, :ref:`StyleBoxTexture<class_StyleBoxTexture>`

Абстрактний базовий клас для визначення стилізованих блоків для елементів інтерфейсу користувача.

.. rst-class:: classref-introduction-group

Опис
--------

**StyleBox** є абстрактним базовим класом для креслення стилізованих коробок для елементів інтерфейсу. Застосовується для панелей, кнопок, :ref:`LineEdit<class_LineEdit>` фонів, :ref:`Tree<class_Tree>` фонів і т.д., а також для тестування прозорої маски для точкових сигналів. Якщо тест маски не виходить на **StyleBox**, призначену як маска для керування, натискання та сигнали руху будуть проходити через неї на один нижче.

\ **Note:** Для контрольних вузлів, які мають *Theme Properties*, ``focus`` **StyleBox** відображається над ``normal``, ``hover`` або `` натискається`` **StyleBox**. Це робить ``фокус`` **StyleBox** більш багаторазовим у різних вузлах.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`content_margin_bottom<class_StyleBox_property_content_margin_bottom>` | ``-1.0`` |
   +---------------------------+-----------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`content_margin_left<class_StyleBox_property_content_margin_left>`     | ``-1.0`` |
   +---------------------------+-----------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`content_margin_right<class_StyleBox_property_content_margin_right>`   | ``-1.0`` |
   +---------------------------+-----------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`content_margin_top<class_StyleBox_property_content_margin_top>`       | ``-1.0`` |
   +---------------------------+-----------------------------------------------------------------------------+----------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`_draw<class_StyleBox_private_method__draw>`\ (\ to_canvas_item\: :ref:`RID<class_RID>`, rect\: :ref:`Rect2<class_Rect2>`\ ) |virtual| |required| |const| |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`           | :ref:`_get_draw_rect<class_StyleBox_private_method__get_draw_rect>`\ (\ rect\: :ref:`Rect2<class_Rect2>`\ ) |virtual| |const|                                  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`       | :ref:`_get_minimum_size<class_StyleBox_private_method__get_minimum_size>`\ (\ ) |virtual| |const|                                                              |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`_test_mask<class_StyleBox_private_method__test_mask>`\ (\ point\: :ref:`Vector2<class_Vector2>`, rect\: :ref:`Rect2<class_Rect2>`\ ) |virtual| |const|   |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`draw<class_StyleBox_method_draw>`\ (\ canvas_item\: :ref:`RID<class_RID>`, rect\: :ref:`Rect2<class_Rect2>`\ ) |const|                                   |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`get_content_margin<class_StyleBox_method_get_content_margin>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|                                |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`CanvasItem<class_CanvasItem>` | :ref:`get_current_item_drawn<class_StyleBox_method_get_current_item_drawn>`\ (\ ) |const|                                                                      |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`get_margin<class_StyleBox_method_get_margin>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|                                                |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`       | :ref:`get_minimum_size<class_StyleBox_method_get_minimum_size>`\ (\ ) |const|                                                                                  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`       | :ref:`get_offset<class_StyleBox_method_get_offset>`\ (\ ) |const|                                                                                              |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`set_content_margin<class_StyleBox_method_set_content_margin>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, offset\: :ref:`float<class_float>`\ )    |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`set_content_margin_all<class_StyleBox_method_set_content_margin_all>`\ (\ offset\: :ref:`float<class_float>`\ )                                          |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`test_mask<class_StyleBox_method_test_mask>`\ (\ point\: :ref:`Vector2<class_Vector2>`, rect\: :ref:`Rect2<class_Rect2>`\ ) |const|                       |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_StyleBox_property_content_margin_bottom:

.. rst-class:: classref-property

:ref:`float<class_float>` **content_margin_bottom** = ``-1.0`` :ref:`🔗<class_StyleBox_property_content_margin_bottom>`

.. rst-class:: classref-property-setget

- |void| **set_content_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, offset\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_content_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Нижня маржа для змісту цієї стильної коробки. Збільшення цього значення знижує простір, доступним до вмісту знизу.

Якщо це значення є негативним, він ігнорується та використовується для дитини. Наприклад, для :ref:`StyleBoxFlat<class_StyleBoxFlat>` використовується товщину кордону (за наявності)

Це до коду, використовуючи цей стиль поле, щоб визначити, що ці вміст є: наприклад, :ref:`Button<class_Button>` поважає цей запас вмісту для текстового вмісту кнопки.

\ :ref:`get_margin()<class_StyleBox_method_get_margin>` слід використовувати для того, щоб викинути це значення як споживач замість читання цих властивостей безпосередньо. Це тому, що це правильно поважає негативні значення і знизився вище.

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_property_content_margin_left:

.. rst-class:: classref-property

:ref:`float<class_float>` **content_margin_left** = ``-1.0`` :ref:`🔗<class_StyleBox_property_content_margin_left>`

.. rst-class:: classref-property-setget

- |void| **set_content_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, offset\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_content_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Лівий запас для змісту цього стилю коробки. Збільшення цього значення знижує простір, доступним до вмісту зліва.

Refer to :ref:`content_margin_dr<class_StyleBox_property_content_margin_dr>` для додаткових міркування.

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_property_content_margin_right:

.. rst-class:: classref-property

:ref:`float<class_float>` **content_margin_right** = ``-1.0`` :ref:`🔗<class_StyleBox_property_content_margin_right>`

.. rst-class:: classref-property-setget

- |void| **set_content_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, offset\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_content_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Правильний запас для змісту цього стилю коробки. Збільшення цього значення знижує простір, доступним до вмісту з правого.

Refer to :ref:`content_margin_dr<class_StyleBox_property_content_margin_dr>` для додаткових міркування.

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_property_content_margin_top:

.. rst-class:: classref-property

:ref:`float<class_float>` **content_margin_top** = ``-1.0`` :ref:`🔗<class_StyleBox_property_content_margin_top>`

.. rst-class:: classref-property-setget

- |void| **set_content_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, offset\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_content_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Верхній запас для змісту цієї стильної коробки. Збільшення цього значення знижує простір, доступним до вмісту з вершини.

Refer to :ref:`content_margin_dr<class_StyleBox_property_content_margin_dr>` для додаткових міркування.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_StyleBox_private_method__draw:

.. rst-class:: classref-method

|void| **_draw**\ (\ to_canvas_item\: :ref:`RID<class_RID>`, rect\: :ref:`Rect2<class_Rect2>`\ ) |virtual| |required| |const| :ref:`🔗<class_StyleBox_private_method__draw>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_private_method__get_draw_rect:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **_get_draw_rect**\ (\ rect\: :ref:`Rect2<class_Rect2>`\ ) |virtual| |const| :ref:`🔗<class_StyleBox_private_method__get_draw_rect>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_private_method__get_minimum_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **_get_minimum_size**\ (\ ) |virtual| |const| :ref:`🔗<class_StyleBox_private_method__get_minimum_size>`

Віртуальний метод для реалізації користувача. Повертає нестандартний мінімальний розмір, що в стилі, необхідно поважати при малюнку. За замовчуванням :ref:`get_minimum_size()<class_StyleBox_method_get_minimum_size>` приймає запаси вмісту в обліковий запис. Цей метод може бути переданий для додавання іншого обмеження розміру. Поєднання поведінки за замовчуванням і виведення цього методу буде використовуватися, для облікового запису для обох розмірів.

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_private_method__test_mask:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_test_mask**\ (\ point\: :ref:`Vector2<class_Vector2>`, rect\: :ref:`Rect2<class_Rect2>`\ ) |virtual| |const| :ref:`🔗<class_StyleBox_private_method__test_mask>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_method_draw:

.. rst-class:: classref-method

|void| **draw**\ (\ canvas_item\: :ref:`RID<class_RID>`, rect\: :ref:`Rect2<class_Rect2>`\ ) |const| :ref:`🔗<class_StyleBox_method_draw>`

Накладає цей стильовий ящик за допомогою пункту полотна, визначеного заданими :ref:`RID<class_RID>`.

Значення :ref:`RID<class_RID>` може бути результатом :ref:`CanvasItem.get_canvas_item()<class_CanvasItem_method_get_canvas_item>`, який називається існуючим :ref:`CanvasItem<class_CanvasItem>`-derived node, або безпосередньо від створення предмета полотна в :ref:`RenderingServer<class_RenderingServer>` з :ref:`RenderingServer.canvas_item_create()<class_RenderingServer_method_canvas_item_create>`.

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_method_get_content_margin:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_content_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const| :ref:`🔗<class_StyleBox_method_get_content_margin>`

Повернення за замовчуванням за вказаною :ref:`Side<enum_@GlobalScope_Side>`.

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_method_get_current_item_drawn:

.. rst-class:: classref-method

:ref:`CanvasItem<class_CanvasItem>` **get_current_item_drawn**\ (\ ) |const| :ref:`🔗<class_StyleBox_method_get_current_item_drawn>`

Повертає :ref:`CanvasItem<class_CanvasItem>`, який обробляє зворотний виклик :ref:`CanvasItem.NOTIFICATION_DRAW<class_CanvasItem_constant_NOTIFICATION_DRAW>` або :ref:`CanvasItem._draw()<class_CanvasItem_private_method__draw>` у цей момент.

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_method_get_margin:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const| :ref:`🔗<class_StyleBox_method_get_margin>`

Повертає зміщення поля вмісту для вказаного :ref:`Side<enum_@GlobalScope_Side>`.

Додатні значення зменшують розмір досередини, на відміну від значень полів :ref:`Control<class_Control>`.

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_method_get_minimum_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_minimum_size**\ (\ ) |const| :ref:`🔗<class_StyleBox_method_get_minimum_size>`

Повертаємо мінімальний розмір, який цей стильний ящик може бути об'ємним.

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_method_get_offset:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_offset**\ (\ ) |const| :ref:`🔗<class_StyleBox_method_get_offset>`

Повертаємо "вихід" стильної коробки. Ця функція помічника повертає значення, еквівалентне ``Vector2(style.get_margin(MARGIN_LEFT), стиль.get_margin(MARGIN_TOP)``.

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_method_set_content_margin:

.. rst-class:: classref-method

|void| **set_content_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, offset\: :ref:`float<class_float>`\ ) :ref:`🔗<class_StyleBox_method_set_content_margin>`

Налаштовує значення за замовчуванням вказаної :ref:`Side<enum_@GlobalScope_Side>` на ``offset`` пікселів.

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_method_set_content_margin_all:

.. rst-class:: classref-method

|void| **set_content_margin_all**\ (\ offset\: :ref:`float<class_float>`\ ) :ref:`🔗<class_StyleBox_method_set_content_margin_all>`

Встановлює запас за замовчуванням до ``offset`` пікселів для всіх сторін.

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_method_test_mask:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **test_mask**\ (\ point\: :ref:`Vector2<class_Vector2>`, rect\: :ref:`Rect2<class_Rect2>`\ ) |const| :ref:`🔗<class_StyleBox_method_test_mask>`

Тестуйте позицію в прямокутному трикутнику, поверніть, чи переходить тест маски.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
