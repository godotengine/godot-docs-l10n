:github_url: hide

.. _class_OpenXRBindingModifier:

OpenXRBindingModifier
=====================

**Успадковує:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`OpenXRActionBindingModifier<class_OpenXRActionBindingModifier>`, :ref:`OpenXRIPBindingModifier<class_OpenXRIPBindingModifier>`

Базовий клас модифікатора прив’язки.

.. rst-class:: classref-introduction-group

Опис
--------

Базовий клас модифікатора прив’язки. Підкласи реалізують різні модифікатори, які змінюють те, як середовище виконання OpenXR обробляє вхідні дані.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-----------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                   | :ref:`_get_description<class_OpenXRBindingModifier_private_method__get_description>`\ (\ ) |virtual| |required| |const| |
   +-----------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>` | :ref:`_get_ip_modification<class_OpenXRBindingModifier_private_method__get_ip_modification>`\ (\ ) |virtual| |required| |
   +-----------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_OpenXRBindingModifier_private_method__get_description:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_description**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_OpenXRBindingModifier_private_method__get_description>`

Повертає опис цього класу, який використовується для рядка заголовка редактора модифікаторів зв’язування.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRBindingModifier_private_method__get_ip_modification:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **_get_ip_modification**\ (\ ) |virtual| |required| :ref:`🔗<class_OpenXRBindingModifier_private_method__get_ip_modification>`

Повертає дані, що надсилаються до OpenXR під час надсилання запропонованих взаємодіючих прив’язок, частиною яких є цей модифікатор.

\ **Примітка:** Це має бути сумісний з даними структуру ``XrBindingModificationBaseHeaderKHR``.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
