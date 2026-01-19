:github_url: hide

.. _class_JNISingleton:

JNISingleton
============

**Наследует:** :ref:`Object<class_Object>`

Синглтон, который связывает движок с плагинами Android для взаимодействия с собственным кодом Android.

.. rst-class:: classref-introduction-group

Описание
----------------

JNISingleton реализован только в экспорте Android. Он используется для вызова методов и подключения сигналов из плагина Android, написанного на Java или Kotlin. Методы и сигналы можно вызывать и подключать к JNISingleton, как если бы это был Node. Для получения дополнительной информации см. `Java Native Interface - Wikipedia <https://en.wikipedia.org/wiki/Java_Native_Interface>`__.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- `Создание плагинов для ОС Android <../tutorials/platform/android/android_plugin.html#doc-android-plugin>`__

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------+-------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`has_java_method<class_JNISingleton_method_has_java_method>`\ (\ method\: :ref:`StringName<class_StringName>`\ ) |const| |
   +-------------------------+-------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_JNISingleton_method_has_java_method:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_java_method**\ (\ method\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_JNISingleton_method_has_java_method>`

Возвращает ``true``, если заданное имя ``method`` существует в методах Java объекта JNISingleton.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
