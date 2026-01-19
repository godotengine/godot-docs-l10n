:github_url: hide

.. _class_HScrollBar:

HScrollBar
==========

**Наследует:** :ref:`ScrollBar<class_ScrollBar>` **<** :ref:`Range<class_Range>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Горизонтальная полоса прокрутки, идущая слева (мин.) направо (макс.).

.. rst-class:: classref-introduction-group

Описание
----------------

Горизонтальная полоса прокрутки, обычно используемая для навигации по содержимому, выходящему за пределы видимой ширины элемента управления. Это элемент управления на основе :ref:`Range<class_Range>` и идет слева (min) направо (max).

.. rst-class:: classref-reftable-group

Свойства темы
--------------------------

.. table::
   :widths: auto

   +-----------------------+-----------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`padding_bottom<class_HScrollBar_theme_constant_padding_bottom>` | ``0`` |
   +-----------------------+-----------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`padding_top<class_HScrollBar_theme_constant_padding_top>`       | ``0`` |
   +-----------------------+-----------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств темы
------------------------------------------

.. _class_HScrollBar_theme_constant_padding_bottom:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **padding_bottom** = ``0`` :ref:`🔗<class_HScrollBar_theme_constant_padding_bottom>`

Отступ между нижней частью элемента :ref:`ScrollBar.scroll<class_ScrollBar_theme_style_scroll>` и элементом :ref:`ScrollBar.grabber<class_ScrollBar_theme_style_grabber>`.

\ **Примечание:** Чтобы применить горизонтальный отступ, измените левые/правые поля содержимого элемента :ref:`ScrollBar.scroll<class_ScrollBar_theme_style_scroll>`.

.. rst-class:: classref-item-separator

----

.. _class_HScrollBar_theme_constant_padding_top:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **padding_top** = ``0`` :ref:`🔗<class_HScrollBar_theme_constant_padding_top>`

Отступ между верхней частью элемента :ref:`ScrollBar.scroll<class_ScrollBar_theme_style_scroll>` и элементом :ref:`ScrollBar.grabber<class_ScrollBar_theme_style_grabber>`.

\ **Примечание:** Чтобы применить горизонтальный отступ, измените левые/правые поля содержимого элемента :ref:`ScrollBar.scroll<class_ScrollBar_theme_style_scroll>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
