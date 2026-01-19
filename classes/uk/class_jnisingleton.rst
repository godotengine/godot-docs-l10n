:github_url: hide

.. _class_JNISingleton:

JNISingleton
============

**Успадковує:** :ref:`Object<class_Object>`

Oneton, який з'єднує двигун з Android плагінами для інтерфейсу з рідним Android-кодом.

.. rst-class:: classref-introduction-group

Опис
--------

JNISingleton реалізовано лише в експорті Android. Він використовується для виклику методів та підключення сигналів з плагіна Android, написаного на Java або Kotlin. Методи та сигнали можна викликати та підключати до JNISingleton так, ніби це Node. Див. `Нативний інтерфейс Java — Вікіпедія <https://en.wikipedia.org/wiki/Java_Native_Interface>`__ для отримання додаткової інформації.

.. rst-class:: classref-introduction-group

Посібники
------------------

- `Створення додатків Android <../tutorials/platform/android/android_plugin.html#doc-android-plugin>`__

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------+-------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`has_java_method<class_JNISingleton_method_has_java_method>`\ (\ method\: :ref:`StringName<class_StringName>`\ ) |const| |
   +-------------------------+-------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_JNISingleton_method_has_java_method:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_java_method**\ (\ method\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_JNISingleton_method_has_java_method>`

Повертає ``true``, якщо задана назва ``method`` існує в методах Java JNISingleton.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
