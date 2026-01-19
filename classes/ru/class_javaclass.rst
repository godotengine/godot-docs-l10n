:github_url: hide

.. _class_JavaClass:

JavaClass
=========

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Представляет класс из Java Native Interface.

.. rst-class:: classref-introduction-group

Описание
----------------

Представляет класс из Java Native Interface. Возвращается из :ref:`JavaClassWrapper.wrap()<class_JavaClassWrapper_method_wrap>`.

\ **Примечание:** Этот класс работает только на Android. На любой другой платформе этот класс ничего не делает.

\ **Примечание:** Этот класс не следует путать с :ref:`JavaScriptObject<class_JavaScriptObject>`.

.. rst-class:: classref-reftable-group

Методы
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

Описания метода
------------------------------

.. _class_JavaClass_method_get_java_class_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_java_class_name**\ (\ ) |const| :ref:`🔗<class_JavaClass_method_get_java_class_name>`

Возвращает имя класса Java.

.. rst-class:: classref-item-separator

----

.. _class_JavaClass_method_get_java_method_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_java_method_list**\ (\ ) |const| :ref:`🔗<class_JavaClass_method_get_java_method_list>`

Возвращает методы Java объекта и их сигнатуры в виде :ref:`Array<class_Array>` словарей в том же формате, что и :ref:`Object.get_method_list()<class_Object_method_get_method_list>`.

.. rst-class:: classref-item-separator

----

.. _class_JavaClass_method_get_java_parent_class:

.. rst-class:: classref-method

:ref:`JavaClass<class_JavaClass>` **get_java_parent_class**\ (\ ) |const| :ref:`🔗<class_JavaClass_method_get_java_parent_class>`

Возвращает **JavaClass**, представляющий родительский класс Java данного класса.

.. rst-class:: classref-item-separator

----

.. _class_JavaClass_method_has_java_method:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_java_method**\ (\ method\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_JavaClass_method_has_java_method>`

Возвращает ``true``, если заданное имя ``method`` существует в методах Java объекта.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
