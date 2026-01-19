:github_url: hide

.. _class_NavigationServer3DManager:

NavigationServer3DManager
=========================

**Наследует:** :ref:`Object<class_Object>`

Синглтон для управления реализациями :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. rst-class:: classref-introduction-group

Описание
----------------

**NavigationServer3DManager** — это API для регистрации реализаций :ref:`NavigationServer3D<class_NavigationServer3D>` и установки реализации по умолчанию.

\ **Примечание:** Переключение серверов во время выполнения невозможно. Этот класс используется только при запуске на уровне инициализации сервера.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`register_server<class_NavigationServer3DManager_method_register_server>`\ (\ name\: :ref:`String<class_String>`, create_callback\: :ref:`Callable<class_Callable>`\ ) |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`set_default_server<class_NavigationServer3DManager_method_set_default_server>`\ (\ name\: :ref:`String<class_String>`, priority\: :ref:`int<class_int>`\ )            |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_NavigationServer3DManager_method_register_server:

.. rst-class:: classref-method

|void| **register_server**\ (\ name\: :ref:`String<class_String>`, create_callback\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_NavigationServer3DManager_method_register_server>`

Регистрирует реализацию :ref:`NavigationServer3D<class_NavigationServer3D>`, передав ``name`` и :ref:`Callable<class_Callable>`, которая возвращает объект :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationServer3DManager_method_set_default_server:

.. rst-class:: classref-method

|void| **set_default_server**\ (\ name\: :ref:`String<class_String>`, priority\: :ref:`int<class_int>`\ ) :ref:`🔗<class_NavigationServer3DManager_method_set_default_server>`

Устанавливает реализацию :ref:`NavigationServer3D<class_NavigationServer3D>` по умолчанию на ту, которая указана в ``name``, если ``priority`` выше приоритета текущей реализации по умолчанию.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
