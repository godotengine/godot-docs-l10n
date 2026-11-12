:github_url: hide

.. _class_Marshalls:

Marshalls
=========

**Успадковує:** :ref:`Object<class_Object>`

Перетворення даних (маршлінг) і кодування помічників.

.. rst-class:: classref-introduction-group

Опис
--------

Забезпечує трансформацію даних та кодування функцій.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>` | :ref:`base64_to_raw<class_Marshalls_method_base64_to_raw>`\ (\ base64_str\: :ref:`String<class_String>`\ )                                                          |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                   | :ref:`base64_to_utf8<class_Marshalls_method_base64_to_utf8>`\ (\ base64_str\: :ref:`String<class_String>`\ )                                                        |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                 | :ref:`base64_to_variant<class_Marshalls_method_base64_to_variant>`\ (\ base64_str\: :ref:`String<class_String>`, allow_objects\: :ref:`bool<class_bool>` = false\ ) |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                   | :ref:`raw_to_base64<class_Marshalls_method_raw_to_base64>`\ (\ array\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                                             |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                   | :ref:`utf8_to_base64<class_Marshalls_method_utf8_to_base64>`\ (\ utf8_str\: :ref:`String<class_String>`\ )                                                          |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                   | :ref:`variant_to_base64<class_Marshalls_method_variant_to_base64>`\ (\ variant\: :ref:`Variant<class_Variant>`, full_objects\: :ref:`bool<class_bool>` = false\ )   |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_Marshalls_method_base64_to_raw:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **base64_to_raw**\ (\ base64_str\: :ref:`String<class_String>`\ ) :ref:`🔗<class_Marshalls_method_base64_to_raw>`

Повертає декодований :ref:`PackedByteArray<class_PackedByteArray>`, що відповідає рядку Base64-encoded ``base64_str``.

.. rst-class:: classref-item-separator

----

.. _class_Marshalls_method_base64_to_utf8:

.. rst-class:: classref-method

:ref:`String<class_String>` **base64_to_utf8**\ (\ base64_str\: :ref:`String<class_String>`\ ) :ref:`🔗<class_Marshalls_method_base64_to_utf8>`

Повернення декодованого рядка, що відповідає рядку Base64-encoded ``base64_str``.

.. rst-class:: classref-item-separator

----

.. _class_Marshalls_method_base64_to_variant:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **base64_to_variant**\ (\ base64_str\: :ref:`String<class_String>`, allow_objects\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Marshalls_method_base64_to_variant>`

Повернення декодованого :ref:`Variant<class_Variant>`, відповідного рядку Base64-encoded ``base64_str``. Якщо ``allow_objects`` є ``true``, декодування об'єктів дозволено.

Внутрішнє використання такого ж механізму декодування, як методу :ref:`@GlobalScope.bytes_to_var()<class_@GlobalScope_method_bytes_to_var>`.

\ **Попередження:** Десеріалізовані об'єкти можуть містити код, який отримує виконану. Не використовуйте цей параметр, якщо послідовний об'єкт виходить з ненадійних джерел, щоб уникнути загроз потенційної безпеки, таких як віддалене виконання коду.

.. rst-class:: classref-item-separator

----

.. _class_Marshalls_method_raw_to_base64:

.. rst-class:: classref-method

:ref:`String<class_String>` **raw_to_base64**\ (\ array\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_Marshalls_method_raw_to_base64>`

Повертає рядок Base64-encoded :ref:`PackedByteArray<class_PackedByteArray>`.

.. rst-class:: classref-item-separator

----

.. _class_Marshalls_method_utf8_to_base64:

.. rst-class:: classref-method

:ref:`String<class_String>` **utf8_to_base64**\ (\ utf8_str\: :ref:`String<class_String>`\ ) :ref:`🔗<class_Marshalls_method_utf8_to_base64>`

Повертає рядок UTF-8 ``utf8_str``.

.. rst-class:: classref-item-separator

----

.. _class_Marshalls_method_variant_to_base64:

.. rst-class:: classref-method

:ref:`String<class_String>` **variant_to_base64**\ (\ variant\: :ref:`Variant<class_Variant>`, full_objects\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Marshalls_method_variant_to_base64>`

Повертає рядок базового коду :ref:`Variant<class_Variant>` ``version``. Якщо ``full_objects`` є ``true``, кодування об'єктів дозволено (і може потенційно включати код).

Внутрішня, це використовує той же механізм кодування, як :ref:`GlobalScope.var_to_bytes()<class_GlobalScope_method_var_to_bytes>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
