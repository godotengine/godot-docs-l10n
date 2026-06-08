:github_url: hide

.. _class_OpenXRIPBinding:

OpenXRIPBinding
===============

**Успадковує:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Визначте зв'язок між :ref:`OpenXRAction<class_OpenXRAction>` і входом XR або виведенням.

.. rst-class:: classref-introduction-group

Опис
--------

Цей ресурс прив’язки прив’язує :ref:`OpenXRAction<class_OpenXRAction>` до введення або виведення. Оскільки більшість контролерів мають ліву та праву версії, які обробляються одним профілем взаємодії, ми можемо вказати кілька прив’язок. Наприклад, дію «Вогонь» можна прив’язати як до «/user/hand/left/input/trigger», так і до «/user/hand/right/input/trigger». Для цього знадобляться два обов’язкових записи.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------------------------------+----------------------------------------------------------------------------+--------+
   | :ref:`OpenXRAction<class_OpenXRAction>`           | :ref:`action<class_OpenXRIPBinding_property_action>`                       |        |
   +---------------------------------------------------+----------------------------------------------------------------------------+--------+
   | :ref:`Array<class_Array>`                         | :ref:`binding_modifiers<class_OpenXRIPBinding_property_binding_modifiers>` | ``[]`` |
   +---------------------------------------------------+----------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                       | :ref:`binding_path<class_OpenXRIPBinding_property_binding_path>`           | ``""`` |
   +---------------------------------------------------+----------------------------------------------------------------------------+--------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`paths<class_OpenXRIPBinding_property_paths>`                         |        |
   +---------------------------------------------------+----------------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`add_path<class_OpenXRIPBinding_method_add_path>`\ (\ path\: :ref:`String<class_String>`\ )                            |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRActionBindingModifier<class_OpenXRActionBindingModifier>` | :ref:`get_binding_modifier<class_OpenXRIPBinding_method_get_binding_modifier>`\ (\ index\: :ref:`int<class_int>`\ ) |const| |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                 | :ref:`get_binding_modifier_count<class_OpenXRIPBinding_method_get_binding_modifier_count>`\ (\ ) |const|                    |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                 | :ref:`get_path_count<class_OpenXRIPBinding_method_get_path_count>`\ (\ ) |const|                                            |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`has_path<class_OpenXRIPBinding_method_has_path>`\ (\ path\: :ref:`String<class_String>`\ ) |const|                    |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`remove_path<class_OpenXRIPBinding_method_remove_path>`\ (\ path\: :ref:`String<class_String>`\ )                      |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_OpenXRIPBinding_property_action:

.. rst-class:: classref-property

:ref:`OpenXRAction<class_OpenXRAction>` **action** :ref:`🔗<class_OpenXRIPBinding_property_action>`

.. rst-class:: classref-property-setget

- |void| **set_action**\ (\ value\: :ref:`OpenXRAction<class_OpenXRAction>`\ )
- :ref:`OpenXRAction<class_OpenXRAction>` **get_action**\ (\ )

:ref:`OpenXRAction<class_OpenXRAction>`, який прив’язаний до :ref:`binding_path<class_OpenXRIPBinding_property_binding_path>`.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRIPBinding_property_binding_modifiers:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **binding_modifiers** = ``[]`` :ref:`🔗<class_OpenXRIPBinding_property_binding_modifiers>`

.. rst-class:: classref-property-setget

- |void| **set_binding_modifiers**\ (\ value\: :ref:`Array<class_Array>`\ )
- :ref:`Array<class_Array>` **get_binding_modifiers**\ (\ )

Модифікатори зв’язування для цього зв’язування.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRIPBinding_property_binding_path:

.. rst-class:: classref-property

:ref:`String<class_String>` **binding_path** = ``""`` :ref:`🔗<class_OpenXRIPBinding_property_binding_path>`

.. rst-class:: classref-property-setget

- |void| **set_binding_path**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_binding_path**\ (\ )

Шлях прив’язки, який визначає введення або вихід, прив’язаний до :ref:`action<class_OpenXRIPBinding_property_action>`.

\ **Примітка:** Шляхи прив’язки є пропозиціями, середовище виконання XR може вибрати прив’язку дії до іншого введення або виведення, емулюючи цей вхід або вихід.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRIPBinding_property_paths:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **paths** :ref:`🔗<class_OpenXRIPBinding_property_paths>`

.. rst-class:: classref-property-setget

- |void| **set_paths**\ (\ value\: :ref:`PackedStringArray<class_PackedStringArray>`\ )
- :ref:`PackedStringArray<class_PackedStringArray>` **get_paths**\ (\ )

**Застаріло:** Use :ref:`binding_path<class_OpenXRIPBinding_property_binding_path>` instead.

Шляхи, які визначають вхідні або вихідні, що знаходяться на пристрої.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_OpenXRIPBinding_method_add_path:

.. rst-class:: classref-method

|void| **add_path**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_OpenXRIPBinding_method_add_path>`

**Застаріло:** Binding is for a single path.

Додати шлях введення/виведення до цієї прив'язки.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRIPBinding_method_get_binding_modifier:

.. rst-class:: classref-method

:ref:`OpenXRActionBindingModifier<class_OpenXRActionBindingModifier>` **get_binding_modifier**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRIPBinding_method_get_binding_modifier>`

Отримайте :ref:`OpenXRBindingModifier<class_OpenXRBindingModifier>` за цим індексом.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRIPBinding_method_get_binding_modifier_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_binding_modifier_count**\ (\ ) |const| :ref:`🔗<class_OpenXRIPBinding_method_get_binding_modifier_count>`

Отримайте кількість модифікаторів зв’язування для цього зв’язування.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRIPBinding_method_get_path_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_path_count**\ (\ ) |const| :ref:`🔗<class_OpenXRIPBinding_method_get_path_count>`

**Застаріло:** Binding is for a single path.

Отримати кількість вхідних / вихідних шляхів в цій пов'язці.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRIPBinding_method_has_path:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_path**\ (\ path\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_OpenXRIPBinding_method_has_path>`

**Застаріло:** Binding is for a single path.

Повертає ``true``, якщо цей вхід / вихідний шлях є частиною цієї прив'язки.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRIPBinding_method_remove_path:

.. rst-class:: classref-method

|void| **remove_path**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_OpenXRIPBinding_method_remove_path>`

**Застаріло:** Binding is for a single path.

Видаліть цей вхід / вихідний шлях з цієї прив'язки.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
