:github_url: hide

.. _class_RegExMatch:

RegExMatch
==========

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Содержит результаты поиска :ref:`RegEx<class_RegEx>`.

.. rst-class:: classref-introduction-group

Описание
----------------

Содержит результаты одного совпадения :ref:`RegEx<class_RegEx>`, возвращаемого :ref:`RegEx.search()<class_RegEx_method_search>` и :ref:`RegEx.search_all()<class_RegEx_method_search_all>`. Его можно использовать для поиска позиции и диапазона совпадения и его групп захвата, а также для извлечения его подстроки.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------------------------------+---------------------------------------------------+-------------------------+
   | :ref:`Dictionary<class_Dictionary>`               | :ref:`names<class_RegExMatch_property_names>`     | ``{}``                  |
   +---------------------------------------------------+---------------------------------------------------+-------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`strings<class_RegExMatch_property_strings>` | ``PackedStringArray()`` |
   +---------------------------------------------------+---------------------------------------------------+-------------------------+
   | :ref:`String<class_String>`                       | :ref:`subject<class_RegExMatch_property_subject>` | ``""``                  |
   +---------------------------------------------------+---------------------------------------------------+-------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-----------------------------+---------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_end<class_RegExMatch_method_get_end>`\ (\ name\: :ref:`Variant<class_Variant>` = 0\ ) |const|       |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_group_count<class_RegExMatch_method_get_group_count>`\ (\ ) |const|                                 |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_start<class_RegExMatch_method_get_start>`\ (\ name\: :ref:`Variant<class_Variant>` = 0\ ) |const|   |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_string<class_RegExMatch_method_get_string>`\ (\ name\: :ref:`Variant<class_Variant>` = 0\ ) |const| |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_RegExMatch_property_names:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **names** = ``{}`` :ref:`🔗<class_RegExMatch_property_names>`

.. rst-class:: classref-property-setget

- :ref:`Dictionary<class_Dictionary>` **get_names**\ (\ )

Словарь именованных групп и соответствующий номер группы. Включаются только совпавшие группы. Если несколько групп имеют одинаковое имя, это имя будет ссылаться на первую совпавшую.

.. rst-class:: classref-item-separator

----

.. _class_RegExMatch_property_strings:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **strings** = ``PackedStringArray()`` :ref:`🔗<class_RegExMatch_property_strings>`

.. rst-class:: classref-property-setget

- :ref:`PackedStringArray<class_PackedStringArray>` **get_strings**\ (\ )

:ref:`Array<class_Array>` матча и его групп захвата.



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_RegExMatch_property_subject:

.. rst-class:: classref-property

:ref:`String<class_String>` **subject** = ``""`` :ref:`🔗<class_RegExMatch_property_subject>`

.. rst-class:: classref-property-setget

- :ref:`String<class_String>` **get_subject**\ (\ )

Исходная строка, используемая с шаблоном поиска для нахождения этого совпадающего результата.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_RegExMatch_method_get_end:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_end**\ (\ name\: :ref:`Variant<class_Variant>` = 0\ ) |const| :ref:`🔗<class_RegExMatch_method_get_end>`

Возвращает конечную позицию совпадения в исходной строке. Конечную позицию групп захвата можно получить, указав номер группы как целое число или имя строки (если это именованная группа). Значение по умолчанию 0 относится ко всему шаблону.

Возвращает -1, если группа не совпала или не существует.

.. rst-class:: classref-item-separator

----

.. _class_RegExMatch_method_get_group_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_group_count**\ (\ ) |const| :ref:`🔗<class_RegExMatch_method_get_group_count>`

Возвращает количество групп захвата.

.. rst-class:: classref-item-separator

----

.. _class_RegExMatch_method_get_start:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_start**\ (\ name\: :ref:`Variant<class_Variant>` = 0\ ) |const| :ref:`🔗<class_RegExMatch_method_get_start>`

Возвращает начальную позицию совпадения в исходной строке. Начальную позицию групп захвата можно получить, указав номер группы как целое число или имя строки (если это именованная группа). Значение по умолчанию 0 относится ко всему шаблону.

Возвращает -1, если группа не совпала или не существует.

.. rst-class:: classref-item-separator

----

.. _class_RegExMatch_method_get_string:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_string**\ (\ name\: :ref:`Variant<class_Variant>` = 0\ ) |const| :ref:`🔗<class_RegExMatch_method_get_string>`

Возвращает подстроку совпадения из исходной строки. Группы захвата можно получить, указав номер группы как целое число или имя строки (если это именованная группа). Значение по умолчанию 0 относится ко всему шаблону.

Возвращает пустую строку, если группа не совпала или не существует.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
