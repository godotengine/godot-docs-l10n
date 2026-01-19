:github_url: hide

.. _class_VScrollBar:

VScrollBar
==========

**Успадковує:** :ref:`ScrollBar<class_ScrollBar>` **<** :ref:`Range<class_Range>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Вертикальний прокрутка, яка йде з верхньої частини (хв) донизу (макс).

.. rst-class:: classref-introduction-group

Опис
--------

Вертикальний прокруток, як правило, використовується для навігації за допомогою вмісту, що поширюється за видимою висотою управління. Це контроль на основі :ref:`Range<class_Range>` і йде зверху (min) донизу (max). Зверніть увагу, що цей напрямок є протилежним :ref:`VSlider<class_VSlider>`.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +--------------------------------------------------------+-----------------------+--------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\] | size_flags_horizontal | ``0`` (overrides :ref:`Control<class_Control_property_size_flags_horizontal>`) |
   +--------------------------------------------------------+-----------------------+--------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\] | size_flags_vertical   | ``1`` (overrides :ref:`Control<class_Control_property_size_flags_vertical>`)   |
   +--------------------------------------------------------+-----------------------+--------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Властивості теми
--------------------------------

.. table::
   :widths: auto

   +-----------------------+---------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`padding_left<class_VScrollBar_theme_constant_padding_left>`   | ``0`` |
   +-----------------------+---------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`padding_right<class_VScrollBar_theme_constant_padding_right>` | ``0`` |
   +-----------------------+---------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи тематичної нерухомості
--------------------------------------------------------

.. _class_VScrollBar_theme_constant_padding_left:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **padding_left** = ``0`` :ref:`🔗<class_VScrollBar_theme_constant_padding_left>`

Відступ між лівим краєм елемента :ref:`ScrollBar.scroll<class_ScrollBar_theme_style_scroll>` та елементом :ref:`ScrollBar.grabber<class_ScrollBar_theme_style_grabber>`.

\ **Примітка:** Щоб застосувати вертикальний відступ, змініть верхній/нижній поля вмісту :ref:`ScrollBar.scroll<class_ScrollBar_theme_style_scroll>`.

.. rst-class:: classref-item-separator

----

.. _class_VScrollBar_theme_constant_padding_right:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **padding_right** = ``0`` :ref:`🔗<class_VScrollBar_theme_constant_padding_right>`

Відступ між правим краєм елемента :ref:`ScrollBar.scroll<class_ScrollBar_theme_style_scroll>` та елементом :ref:`ScrollBar.grabber<class_ScrollBar_theme_style_grabber>`.

\ **Примітка:** Щоб застосувати вертикальний відступ, змініть верхній/нижній поля вмісту :ref:`ScrollBar.scroll<class_ScrollBar_theme_style_scroll>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
