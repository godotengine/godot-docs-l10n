:github_url: hide

.. _class_JavaObject:

JavaObject
==========

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Представляє об'єкт з Java рідного інтерфейсу.

.. rst-class:: classref-introduction-group

Опис
--------

Представляє об’єкт із рідного інтерфейсу Java. Його можна повернути з методів Java, викликаних у :ref:`JavaClass<class_JavaClass>` або інших **JavaObject**. Перегляньте :ref:`JavaClassWrapper<class_JavaClassWrapper>` для прикладу. 

\ **Примітка:** цей клас працює лише на Android. На будь-якій іншій платформі цей клас нічого не робить. 

\ **Примітка:** Цей клас не слід плутати з :ref:`JavaScriptObject<class_JavaScriptObject>`.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-----------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`JavaClass<class_JavaClass>` | :ref:`get_java_class<class_JavaObject_method_get_java_class>`\ (\ ) |const|                                                 |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`has_java_method<class_JavaObject_method_has_java_method>`\ (\ method\: :ref:`StringName<class_StringName>`\ ) |const| |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_JavaObject_method_get_java_class:

.. rst-class:: classref-method

:ref:`JavaClass<class_JavaClass>` **get_java_class**\ (\ ) |const| :ref:`🔗<class_JavaObject_method_get_java_class>`

Повертає :ref:`JavaClass<class_JavaClass>`, екземпляром якого є цей об’єкт.

.. rst-class:: classref-item-separator

----

.. _class_JavaObject_method_has_java_method:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_java_method**\ (\ method\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_JavaObject_method_has_java_method>`

Повертає ``true``, якщо задана назва ``method`` існує в методах Java об'єкта.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
