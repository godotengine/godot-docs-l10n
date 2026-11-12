:github_url: hide

.. _class_BoxContainer:

BoxContainer
============

**Наследует:** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`HBoxContainer<class_HBoxContainer>`, :ref:`VBoxContainer<class_VBoxContainer>`

Контейнер, который располагает свои дочерние элементы управления горизонтально или вертикально.

.. rst-class:: classref-introduction-group

Описание
----------------

Контейнер, который располагает свои дочерние элементы управления горизонтально или вертикально, автоматически перестраивая их при изменении их минимального размера.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Использование контейнеров <../tutorials/ui/gui_containers>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------------------------------------+---------------------------------------------------------------+-----------+
   | :ref:`AlignmentMode<enum_BoxContainer_AlignmentMode>` | :ref:`alignment<class_BoxContainer_property_alignment>`       | ``0``     |
   +-------------------------------------------------------+---------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                               | :ref:`reverse_sort<class_BoxContainer_property_reverse_sort>` | ``false`` |
   +-------------------------------------------------------+---------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                               | :ref:`vertical<class_BoxContainer_property_vertical>`         | ``false`` |
   +-------------------------------------------------------+---------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------------+------------------------------------------------------------------------------------------------+
   | :ref:`Control<class_Control>` | :ref:`add_spacer<class_BoxContainer_method_add_spacer>`\ (\ begin\: :ref:`bool<class_bool>`\ ) |
   +-------------------------------+------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Свойства темы
--------------------------

.. table::
   :widths: auto

   +-----------------------+-----------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`separation<class_BoxContainer_theme_constant_separation>` | ``4`` |
   +-----------------------+-----------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_BoxContainer_AlignmentMode:

.. rst-class:: classref-enumeration

enum **AlignmentMode**: :ref:`🔗<enum_BoxContainer_AlignmentMode>`

.. _class_BoxContainer_constant_ALIGNMENT_BEGIN:

.. rst-class:: classref-enumeration-constant

:ref:`AlignmentMode<enum_BoxContainer_AlignmentMode>` **ALIGNMENT_BEGIN** = ``0``

Дочерние элементы управления будут расположены в начале контейнера, т. е. сверху, если ориентация вертикальная, слева, если ориентация горизонтальная (справа для макета RTL).

.. _class_BoxContainer_constant_ALIGNMENT_CENTER:

.. rst-class:: classref-enumeration-constant

:ref:`AlignmentMode<enum_BoxContainer_AlignmentMode>` **ALIGNMENT_CENTER** = ``1``

Дочерние элементы управления будут размещены в центре контейнера.

.. _class_BoxContainer_constant_ALIGNMENT_END:

.. rst-class:: classref-enumeration-constant

:ref:`AlignmentMode<enum_BoxContainer_AlignmentMode>` **ALIGNMENT_END** = ``2``

Дочерние элементы управления будут располагаться в конце контейнера, т. е. внизу, если ориентация вертикальная, справа, если ориентация горизонтальная (слева для макета RTL).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_BoxContainer_property_alignment:

.. rst-class:: classref-property

:ref:`AlignmentMode<enum_BoxContainer_AlignmentMode>` **alignment** = ``0`` :ref:`🔗<class_BoxContainer_property_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_alignment**\ (\ value\: :ref:`AlignmentMode<enum_BoxContainer_AlignmentMode>`\ )
- :ref:`AlignmentMode<enum_BoxContainer_AlignmentMode>` **get_alignment**\ (\ )

Выравнивание дочерних элементов контейнера (должно быть одним из :ref:`ALIGNMENT_BEGIN<class_BoxContainer_constant_ALIGNMENT_BEGIN>`, :ref:`ALIGNMENT_CENTER<class_BoxContainer_constant_ALIGNMENT_CENTER>` или :ref:`ALIGNMENT_END<class_BoxContainer_constant_ALIGNMENT_END>`).

.. rst-class:: classref-item-separator

----

.. _class_BoxContainer_property_reverse_sort:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **reverse_sort** = ``false`` :ref:`🔗<class_BoxContainer_property_reverse_sort>`

.. rst-class:: classref-property-setget

- |void| **set_reverse_sort**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_reverse_sort**\ (\ )

If ``true``, the **BoxContainer** will arrange its children in reverse order.

.. rst-class:: classref-item-separator

----

.. _class_BoxContainer_property_vertical:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **vertical** = ``false`` :ref:`🔗<class_BoxContainer_property_vertical>`

.. rst-class:: classref-property-setget

- |void| **set_vertical**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_vertical**\ (\ )

Если ``true``, **BoxContainer** расположит свои дочерние элементы вертикально, а не горизонтально.

Нельзя изменить при использовании :ref:`HBoxContainer<class_HBoxContainer>` и :ref:`VBoxContainer<class_VBoxContainer>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_BoxContainer_method_add_spacer:

.. rst-class:: classref-method

:ref:`Control<class_Control>` **add_spacer**\ (\ begin\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_BoxContainer_method_add_spacer>`

Добавляет узел :ref:`Control<class_Control>` в поле в качестве разделителя. Если ``begin`` равен ``true``, он вставит узел :ref:`Control<class_Control>` перед всеми остальными дочерними элементами.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств темы
------------------------------------------

.. _class_BoxContainer_theme_constant_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **separation** = ``4`` :ref:`🔗<class_BoxContainer_theme_constant_separation>`

Расстояние между элементами **BoxContainer** в пикселях.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
