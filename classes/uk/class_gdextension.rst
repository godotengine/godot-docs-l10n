:github_url: hide

.. _class_GDExtension:

GDExtension
===========

**Успадковує:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Бібліотека для GDExtension.

.. rst-class:: classref-introduction-group

Опис
--------

Тип ресурсу **GDExtension** представляє `спільну бібліотеку <https://en.wikipedia.org/wiki/Shared_library>`__, яка може розширити функціональні можливості механізму. Синглтон :ref:`GDExtensionManager<class_GDExtensionManager>` відповідає за завантаження, перезавантаження та вивантаження ресурсів **GDExtension**. 

\ **Примітка:** GDExtension сама по собі не є мовою сценаріїв і не має жодного відношення до ресурсів :ref:`GDScript<class_GDScript>`.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Огляд GDExtension <../engine_details/engine_api/gdextension/what_is_gdextension>`

- :doc:`Приклад GDExtension в C++ <../tutorials/scripting/cpp/gdextension_cpp_example>`

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`InitializationLevel<enum_GDExtension_InitializationLevel>` | :ref:`get_minimum_library_initialization_level<class_GDExtension_method_get_minimum_library_initialization_level>`\ (\ ) |const| |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_library_open<class_GDExtension_method_is_library_open>`\ (\ ) |const|                                                   |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_GDExtension_InitializationLevel:

.. rst-class:: classref-enumeration

enum **InitializationLevel**: :ref:`🔗<enum_GDExtension_InitializationLevel>`

.. _class_GDExtension_constant_INITIALIZATION_LEVEL_CORE:

.. rst-class:: classref-enumeration-constant

:ref:`InitializationLevel<enum_GDExtension_InitializationLevel>` **INITIALIZATION_LEVEL_CORE** = ``0``

Бібліотека ініціюється одночасно, оскільки основні функції двигуна.

.. _class_GDExtension_constant_INITIALIZATION_LEVEL_SERVERS:

.. rst-class:: classref-enumeration-constant

:ref:`InitializationLevel<enum_GDExtension_InitializationLevel>` **INITIALIZATION_LEVEL_SERVERS** = ``1``

Бібліотека ініціалізується одночасно з серверами механізму (наприклад, :ref:`RenderingServer<class_RenderingServer>` або :ref:`PhysicsServer3D<class_PhysicsServer3D>`).

.. _class_GDExtension_constant_INITIALIZATION_LEVEL_SCENE:

.. rst-class:: classref-enumeration-constant

:ref:`InitializationLevel<enum_GDExtension_InitializationLevel>` **INITIALIZATION_LEVEL_SCENE** = ``2``

Бібліотека ініціюється в той же час, як пов'язані з сценарними класами двигуна.

.. _class_GDExtension_constant_INITIALIZATION_LEVEL_EDITOR:

.. rst-class:: classref-enumeration-constant

:ref:`InitializationLevel<enum_GDExtension_InitializationLevel>` **INITIALIZATION_LEVEL_EDITOR** = ``3``

Бібліотека ініціюється в той же час, як класи редактора двигуна. При завантаженні GDExtension у редакторі.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_GDExtension_method_get_minimum_library_initialization_level:

.. rst-class:: classref-method

:ref:`InitializationLevel<enum_GDExtension_InitializationLevel>` **get_minimum_library_initialization_level**\ (\ ) |const| :ref:`🔗<class_GDExtension_method_get_minimum_library_initialization_level>`

Повертає найнижчий рівень, необхідний для правильної ініціалізації цього розширення (див. перелік :ref:`InitializationLevel<enum_GDExtension_InitializationLevel>`).

.. rst-class:: classref-item-separator

----

.. _class_GDExtension_method_is_library_open:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_library_open**\ (\ ) |const| :ref:`🔗<class_GDExtension_method_is_library_open>`

Повертає ``true``, якщо бібліотеку цього розширення було відкрито.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
