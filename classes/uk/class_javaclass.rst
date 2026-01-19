:github_url: hide

.. _class_JavaClass:

JavaClass
=========

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Представляє клас із рідного інтерфейсу Java.

.. rst-class:: classref-introduction-group

Опис
--------

Представляє клас із рідного інтерфейсу Java. Його повертає :ref:`JavaClassWrapper.wrap()<class_JavaClassWrapper_method_wrap>`. 

\ **Примітка:** цей клас працює лише на Android. На будь-якій іншій платформі цей клас нічого не робить. 

\ **Примітка:** Цей клас не слід плутати з :ref:`JavaScriptObject<class_JavaScriptObject>`.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`get_java_class_name<class_JavaClass_method_get_java_class_name>`\ (\ ) |const|                                       |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`get_java_method_list<class_JavaClass_method_get_java_method_list>`\ (\ ) |const|                                     |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`JavaClass<class_JavaClass>`                                | :ref:`get_java_parent_class<class_JavaClass_method_get_java_parent_class>`\ (\ ) |const|                                   |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`has_java_method<class_JavaClass_method_has_java_method>`\ (\ method\: :ref:`StringName<class_StringName>`\ ) |const| |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_JavaClass_method_get_java_class_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_java_class_name**\ (\ ) |const| :ref:`🔗<class_JavaClass_method_get_java_class_name>`

Повертає назву класу Java.

.. rst-class:: classref-item-separator

----

.. _class_JavaClass_method_get_java_method_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_java_method_list**\ (\ ) |const| :ref:`🔗<class_JavaClass_method_get_java_method_list>`

Повертає Java-методи об'єкта та їхні сигнатури як :ref:`Array<class_Array>` словників, у тому ж форматі, що й :ref:`Object.get_method_list()<class_Object_method_get_method_list>`.

.. rst-class:: classref-item-separator

----

.. _class_JavaClass_method_get_java_parent_class:

.. rst-class:: classref-method

:ref:`JavaClass<class_JavaClass>` **get_java_parent_class**\ (\ ) |const| :ref:`🔗<class_JavaClass_method_get_java_parent_class>`

Повертає **JavaClass**, що представляє батьківський клас Java цього класу.

.. rst-class:: classref-item-separator

----

.. _class_JavaClass_method_has_java_method:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_java_method**\ (\ method\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_JavaClass_method_has_java_method>`

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
