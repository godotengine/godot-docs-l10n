:github_url: hide

.. _class_GodotInstance:

GodotInstance
=============

**Наследует:** :ref:`Object<class_Object>`

Предоставляет доступ к встроенному экземпляру Godot.

.. rst-class:: classref-introduction-group

Описание
----------------

GodotInstance представляет собой запущенный экземпляр Godot, управляемый извне кода, без постоянного цикла main. Он создается с помощью C API ``libgodot_create_godot_instance``. В одном процессе может быть создан только один экземпляр.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------+
   | |void|                  | :ref:`focus_in<class_GodotInstance_method_focus_in>`\ (\ )     |
   +-------------------------+----------------------------------------------------------------+
   | |void|                  | :ref:`focus_out<class_GodotInstance_method_focus_out>`\ (\ )   |
   +-------------------------+----------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_started<class_GodotInstance_method_is_started>`\ (\ ) |
   +-------------------------+----------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`iteration<class_GodotInstance_method_iteration>`\ (\ )   |
   +-------------------------+----------------------------------------------------------------+
   | |void|                  | :ref:`pause<class_GodotInstance_method_pause>`\ (\ )           |
   +-------------------------+----------------------------------------------------------------+
   | |void|                  | :ref:`resume<class_GodotInstance_method_resume>`\ (\ )         |
   +-------------------------+----------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`start<class_GodotInstance_method_start>`\ (\ )           |
   +-------------------------+----------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_GodotInstance_method_focus_in:

.. rst-class:: classref-method

|void| **focus_in**\ (\ ) :ref:`🔗<class_GodotInstance_method_focus_in>`

Уведомляет экземпляр о том, что он находится в фокусе.

.. rst-class:: classref-item-separator

----

.. _class_GodotInstance_method_focus_out:

.. rst-class:: classref-method

|void| **focus_out**\ (\ ) :ref:`🔗<class_GodotInstance_method_focus_out>`

Уведомляет экземпляр о том, что он в данный момент не находится в фокусе.

.. rst-class:: classref-item-separator

----

.. _class_GodotInstance_method_is_started:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_started**\ (\ ) :ref:`🔗<class_GodotInstance_method_is_started>`

Возвращает ``true``, если данный экземпляр полностью запущен.

.. rst-class:: classref-item-separator

----

.. _class_GodotInstance_method_iteration:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **iteration**\ (\ ) :ref:`🔗<class_GodotInstance_method_iteration>`

Выполняет одну итерацию основного цикла. Возвращает ``true``, если движок пытается завершить работу.

.. rst-class:: classref-item-separator

----

.. _class_GodotInstance_method_pause:

.. rst-class:: classref-method

|void| **pause**\ (\ ) :ref:`🔗<class_GodotInstance_method_pause>`

Уведомляет экземпляр о том, что он будет приостановлен.

.. rst-class:: classref-item-separator

----

.. _class_GodotInstance_method_resume:

.. rst-class:: classref-method

|void| **resume**\ (\ ) :ref:`🔗<class_GodotInstance_method_resume>`

Уведомляет экземпляр о возобновлении его работы.

.. rst-class:: classref-item-separator

----

.. _class_GodotInstance_method_start:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **start**\ (\ ) :ref:`🔗<class_GodotInstance_method_start>`

Завершает последовательность запуска данного экземпляра. В случае успеха возвращает ``true``.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
