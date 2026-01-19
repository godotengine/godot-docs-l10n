:github_url: hide

.. _class_GodotInstance:

GodotInstance
=============

**继承：** :ref:`Object<class_Object>`

Provides access to an embedded Godot instance.

.. rst-class:: classref-introduction-group

描述
----

GodotInstance represents a running Godot instance that is controlled from an outside codebase, without a perpetual main loop. It is created by the C API ``libgodot_create_godot_instance``. Only one may be created per process.

.. rst-class:: classref-reftable-group

方法
----

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

方法说明
--------

.. _class_GodotInstance_method_focus_in:

.. rst-class:: classref-method

|void| **focus_in**\ (\ ) :ref:`🔗<class_GodotInstance_method_focus_in>`

Notifies the instance that it is now in focus.

.. rst-class:: classref-item-separator

----

.. _class_GodotInstance_method_focus_out:

.. rst-class:: classref-method

|void| **focus_out**\ (\ ) :ref:`🔗<class_GodotInstance_method_focus_out>`

Notifies the instance that it is now not in focus.

.. rst-class:: classref-item-separator

----

.. _class_GodotInstance_method_is_started:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_started**\ (\ ) :ref:`🔗<class_GodotInstance_method_is_started>`

Returns ``true`` if this instance has been fully started.

.. rst-class:: classref-item-separator

----

.. _class_GodotInstance_method_iteration:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **iteration**\ (\ ) :ref:`🔗<class_GodotInstance_method_iteration>`

Runs a single iteration of the main loop. Returns ``true`` if the engine is attempting to quit.

.. rst-class:: classref-item-separator

----

.. _class_GodotInstance_method_pause:

.. rst-class:: classref-method

|void| **pause**\ (\ ) :ref:`🔗<class_GodotInstance_method_pause>`

Notifies the instance that it is going to be paused.

.. rst-class:: classref-item-separator

----

.. _class_GodotInstance_method_resume:

.. rst-class:: classref-method

|void| **resume**\ (\ ) :ref:`🔗<class_GodotInstance_method_resume>`

Notifies the instance that it is being resumed.

.. rst-class:: classref-item-separator

----

.. _class_GodotInstance_method_start:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **start**\ (\ ) :ref:`🔗<class_GodotInstance_method_start>`

Finishes this instance's startup sequence. Returns ``true`` on success.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
