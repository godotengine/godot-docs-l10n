:github_url: hide

.. _class_RegExMatch:

RegExMatch
==========

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Містить результати пошуку :ref:`RegEx<class_RegEx>`.

.. rst-class:: classref-introduction-group

Опис
--------

Містить результати одного збігу :ref:`RegEx<class_RegEx>`, повернутого методами ``RegEx.search`` та ``RegEx.search_all``. Його можна використовувати для знаходження позиції та діапазону збігу та його груп захоплення, а також для вилучення його підрядка.

.. rst-class:: classref-reftable-group

Властивості
----------------------

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

Методи
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

Описи властивостей
------------------------------------

.. _class_RegExMatch_property_names:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **names** = ``{}`` :ref:`🔗<class_RegExMatch_property_names>`

.. rst-class:: classref-property-setget

- :ref:`Dictionary<class_Dictionary>` **get_names**\ (\ )

Словник іменних груп та його відповідного номеру групи. Включені тільки групи, які були збігаються. Якщо у декількох групах є однакове ім'я, що ім'я буде посилатися на перший матч.

.. rst-class:: classref-item-separator

----

.. _class_RegExMatch_property_strings:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **strings** = ``PackedStringArray()`` :ref:`🔗<class_RegExMatch_property_strings>`

.. rst-class:: classref-property-setget

- :ref:`PackedStringArray<class_PackedStringArray>` **get_strings**\ (\ )

:ref:`Array<class_Array>` матчу та її захоплення груп.



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_RegExMatch_property_subject:

.. rst-class:: classref-property

:ref:`String<class_String>` **subject** = ``""`` :ref:`🔗<class_RegExMatch_property_subject>`

.. rst-class:: classref-property-setget

- :ref:`String<class_String>` **get_subject**\ (\ )

Початкова рядок використовується з шаблоном пошуку, щоб знайти цей результат відповідності.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_RegExMatch_method_get_end:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_end**\ (\ name\: :ref:`Variant<class_Variant>` = 0\ ) |const| :ref:`🔗<class_RegExMatch_method_get_end>`

Повертає кінцеву позицію матчу в межах початкового рядка. Кінцева позиція груп захоплення може бути отримана шляхом надання його номеру групи як ціле або його рядок (якщо це названа група). Значення за замовчуванням 0 відноситься до цілого шаблону.

Повертає -1, якщо група не відповідає або не існує.

.. rst-class:: classref-item-separator

----

.. _class_RegExMatch_method_get_group_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_group_count**\ (\ ) |const| :ref:`🔗<class_RegExMatch_method_get_group_count>`

Повертає кількість захоплюючих груп.

.. rst-class:: classref-item-separator

----

.. _class_RegExMatch_method_get_start:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_start**\ (\ name\: :ref:`Variant<class_Variant>` = 0\ ) |const| :ref:`🔗<class_RegExMatch_method_get_start>`

Повертає початкову позицію матчу в межах початкового рядка. Початкова позиція груп захоплення може бути отримана шляхом надання його номеру групи як ціле або його рядок (якщо це названа група). Значення за замовчуванням 0 відноситься до цілого шаблону.

Повертає -1, якщо група не відповідає або не існує.

.. rst-class:: classref-item-separator

----

.. _class_RegExMatch_method_get_string:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_string**\ (\ name\: :ref:`Variant<class_Variant>` = 0\ ) |const| :ref:`🔗<class_RegExMatch_method_get_string>`

Повертає підрядку матчу з початкового рядка. Захоплення груп можна отримати, надаючи його номер групи як ціле або його назву (якщо це названа група). Значення за замовчуванням 0 відноситься до цілого шаблону.

Повертає порожній рядок, якщо група не відповідає або не існує.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
