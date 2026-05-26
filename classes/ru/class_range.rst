:github_url: hide

.. _class_Range:

Range
=====

**Наследует:** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`EditorSpinSlider<class_EditorSpinSlider>`, :ref:`ProgressBar<class_ProgressBar>`, :ref:`ScrollBar<class_ScrollBar>`, :ref:`Slider<class_Slider>`, :ref:`SpinBox<class_SpinBox>`, :ref:`TextureProgressBar<class_TextureProgressBar>`

Абстрактный базовый класс для элементов управления, представляющих число в диапазоне.

.. rst-class:: classref-introduction-group

Описание
----------------

Range — абстрактный базовый класс для элементов управления, представляющих число в диапазоне, с использованием настроенного размера :ref:`step<class_Range_property_step>` и :ref:`page<class_Range_property_page>`. См. например, :ref:`ScrollBar<class_ScrollBar>` и :ref:`Slider<class_Slider>` для примеров узлов более высокого уровня, использующих Range.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +--------------------------------------------------------+----------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                | :ref:`allow_greater<class_Range_property_allow_greater>` | ``false``                                                                    |
   +--------------------------------------------------------+----------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                | :ref:`allow_lesser<class_Range_property_allow_lesser>`   | ``false``                                                                    |
   +--------------------------------------------------------+----------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                | :ref:`exp_edit<class_Range_property_exp_edit>`           | ``false``                                                                    |
   +--------------------------------------------------------+----------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                              | :ref:`max_value<class_Range_property_max_value>`         | ``100.0``                                                                    |
   +--------------------------------------------------------+----------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                              | :ref:`min_value<class_Range_property_min_value>`         | ``0.0``                                                                      |
   +--------------------------------------------------------+----------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                              | :ref:`page<class_Range_property_page>`                   | ``0.0``                                                                      |
   +--------------------------------------------------------+----------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                              | :ref:`ratio<class_Range_property_ratio>`                 |                                                                              |
   +--------------------------------------------------------+----------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                | :ref:`rounded<class_Range_property_rounded>`             | ``false``                                                                    |
   +--------------------------------------------------------+----------------------------------------------------------+------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\] | size_flags_vertical                                      | ``0`` (overrides :ref:`Control<class_Control_property_size_flags_vertical>`) |
   +--------------------------------------------------------+----------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                              | :ref:`step<class_Range_property_step>`                   | ``0.01``                                                                     |
   +--------------------------------------------------------+----------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                              | :ref:`value<class_Range_property_value>`                 | ``0.0``                                                                      |
   +--------------------------------------------------------+----------------------------------------------------------+------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +--------+-------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_value_changed<class_Range_private_method__value_changed>`\ (\ new_value\: :ref:`float<class_float>`\ ) |virtual| |
   +--------+-------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`set_value_no_signal<class_Range_method_set_value_no_signal>`\ (\ value\: :ref:`float<class_float>`\ )             |
   +--------+-------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`share<class_Range_method_share>`\ (\ with\: :ref:`Node<class_Node>`\ )                                            |
   +--------+-------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`unshare<class_Range_method_unshare>`\ (\ )                                                                        |
   +--------+-------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
--------------

.. _class_Range_signal_changed:

.. rst-class:: classref-signal

**changed**\ (\ ) :ref:`🔗<class_Range_signal_changed>`

Выдается при изменении :ref:`min_value<class_Range_property_min_value>`, :ref:`max_value<class_Range_property_max_value>`, :ref:`page<class_Range_property_page>` или :ref:`step<class_Range_property_step>`.

.. rst-class:: classref-item-separator

----

.. _class_Range_signal_value_changed:

.. rst-class:: classref-signal

**value_changed**\ (\ value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Range_signal_value_changed>`

Вызывается при изменении :ref:`value<class_Range_property_value>`. При использовании на :ref:`Slider<class_Slider>` вызывается непрерывно во время перетаскивания (потенциально каждый кадр). Если вы выполняете затратную операцию в функции, подключенной к :ref:`value_changed<class_Range_signal_value_changed>`, рассмотрите возможность использования *debouncing* :ref:`Timer<class_Timer>`, чтобы вызывать функцию реже.

\ **Примечание:** В отличие от сигналов, таких как :ref:`LineEdit.text_changed<class_LineEdit_signal_text_changed>`, :ref:`value_changed<class_Range_signal_value_changed>` также вызывается, когда ``value`` устанавливается напрямую через код.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_Range_property_allow_greater:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **allow_greater** = ``false`` :ref:`🔗<class_Range_property_allow_greater>`

.. rst-class:: classref-property-setget

- |void| **set_allow_greater**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_greater_allowed**\ (\ )

Если ``true``, :ref:`value<class_Range_property_value>` может быть больше, чем :ref:`max_value<class_Range_property_max_value>`.

.. rst-class:: classref-item-separator

----

.. _class_Range_property_allow_lesser:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **allow_lesser** = ``false`` :ref:`🔗<class_Range_property_allow_lesser>`

.. rst-class:: classref-property-setget

- |void| **set_allow_lesser**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_lesser_allowed**\ (\ )

Если ``true``, :ref:`value<class_Range_property_value>` может быть меньше, чем :ref:`min_value<class_Range_property_min_value>`.

.. rst-class:: classref-item-separator

----

.. _class_Range_property_exp_edit:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **exp_edit** = ``false`` :ref:`🔗<class_Range_property_exp_edit>`

.. rst-class:: classref-property-setget

- |void| **set_exp_ratio**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_ratio_exp**\ (\ )

Если ``true``, а :ref:`min_value<class_Range_property_min_value>` больше или равно ``0``, :ref:`value<class_Range_property_value>` будет представлено экспоненциально, а не линейно.

.. rst-class:: classref-item-separator

----

.. _class_Range_property_max_value:

.. rst-class:: classref-property

:ref:`float<class_float>` **max_value** = ``100.0`` :ref:`🔗<class_Range_property_max_value>`

.. rst-class:: classref-property-setget

- |void| **set_max**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max**\ (\ )

Максимальное значение. Диапазон ограничивается, если :ref:`value<class_Range_property_value>` больше, чем :ref:`max_value<class_Range_property_max_value>`.

.. rst-class:: classref-item-separator

----

.. _class_Range_property_min_value:

.. rst-class:: classref-property

:ref:`float<class_float>` **min_value** = ``0.0`` :ref:`🔗<class_Range_property_min_value>`

.. rst-class:: classref-property-setget

- |void| **set_min**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_min**\ (\ )

Минимальное значение. Диапазон ограничивается, если :ref:`value<class_Range_property_value>` меньше :ref:`min_value<class_Range_property_min_value>`.

.. rst-class:: classref-item-separator

----

.. _class_Range_property_page:

.. rst-class:: classref-property

:ref:`float<class_float>` **page** = ``0.0`` :ref:`🔗<class_Range_property_page>`

.. rst-class:: classref-property-setget

- |void| **set_page**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_page**\ (\ )

Размер страницы. Используется в основном для :ref:`ScrollBar<class_ScrollBar>`. Длина захвата :ref:`ScrollBar<class_ScrollBar>` — это размер :ref:`ScrollBar<class_ScrollBar>`, умноженный на :ref:`page<class_Range_property_page>` и на разницу между :ref:`min_value<class_Range_property_min_value>` и :ref:`max_value<class_Range_property_max_value>`.

.. rst-class:: classref-item-separator

----

.. _class_Range_property_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **ratio** :ref:`🔗<class_Range_property_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_as_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_as_ratio**\ (\ )

Значение отображается в диапазоне от 0 до 1.

.. rst-class:: classref-item-separator

----

.. _class_Range_property_rounded:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **rounded** = ``false`` :ref:`🔗<class_Range_property_rounded>`

.. rst-class:: classref-property-setget

- |void| **set_use_rounded_values**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_rounded_values**\ (\ )

Если ``true``, :ref:`value<class_Range_property_value>` всегда будет округляться до ближайшего целого числа.

.. rst-class:: classref-item-separator

----

.. _class_Range_property_step:

.. rst-class:: classref-property

:ref:`float<class_float>` **step** = ``0.01`` :ref:`🔗<class_Range_property_step>`

.. rst-class:: classref-property-setget

- |void| **set_step**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_step**\ (\ )

Если значение параметра :ref:`value<class_Range_property_value>` больше ``0.0``, оно всегда будет округляться до кратного значения этого свойства, превышающего :ref:`min_value<class_Range_property_min_value>`. Например, если :ref:`min_value<class_Range_property_min_value>` равно ``0.1``, а step равно ``0.2``, то значение параметра :ref:`value<class_Range_property_value>` будет ограничено значениями ``0.1``, ``0.3``, ``0.5`` и так далее. Если :ref:`rounded<class_Range_property_rounded>` также равно ``true``, значение параметра :ref:`value<class_Range_property_value>` сначала будет округляться до кратного значения этого свойства, а затем до ближайшего целого числа.

.. rst-class:: classref-item-separator

----

.. _class_Range_property_value:

.. rst-class:: classref-property

:ref:`float<class_float>` **value** = ``0.0`` :ref:`🔗<class_Range_property_value>`

.. rst-class:: classref-property-setget

- |void| **set_value**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_value**\ (\ )

Текущее значение диапазона. Изменение этого свойства (даже через код) вызовет сигнал :ref:`value_changed<class_Range_signal_value_changed>`. Используйте :ref:`set_value_no_signal()<class_Range_method_set_value_no_signal>`, если хотите этого избежать.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_Range_private_method__value_changed:

.. rst-class:: classref-method

|void| **_value_changed**\ (\ new_value\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_Range_private_method__value_changed>`

Вызывается при изменении значения **Range** (при соблюдении тех же условий, что и :ref:`value_changed<class_Range_signal_value_changed>`).

.. rst-class:: classref-item-separator

----

.. _class_Range_method_set_value_no_signal:

.. rst-class:: classref-method

|void| **set_value_no_signal**\ (\ value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Range_method_set_value_no_signal>`

Устанавливает текущее значение **Range** на указанное ``value`` без передачи сигнала :ref:`value_changed<class_Range_signal_value_changed>`.

.. rst-class:: classref-item-separator

----

.. _class_Range_method_share:

.. rst-class:: classref-method

|void| **share**\ (\ with\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_Range_method_share>`

Связывает два **Range** вместе с любыми диапазонами, ранее сгруппированными с любым из них. Когда любая из переменных-членов диапазона изменяется, она поделится новым значением со всеми другими диапазонами в своей группе.

.. rst-class:: classref-item-separator

----

.. _class_Range_method_unshare:

.. rst-class:: classref-method

|void| **unshare**\ (\ ) :ref:`🔗<class_Range_method_unshare>`

Запрещает **Range** совместно использовать свои переменные-члены с другими.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
