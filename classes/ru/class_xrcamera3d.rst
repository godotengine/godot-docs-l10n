:github_url: hide

.. _class_XRCamera3D:

XRCamera3D
==========

**Наследует:** :ref:`Camera3D<class_Camera3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Узел камеры, который автоматически позиционируется на основе данных отслеживания XR.

.. rst-class:: classref-introduction-group

Описание
----------------

Узел камеры, который автоматически позиционируется на основе данных отслеживания XR.

В отличие от :ref:`XRController3D<class_XRController3D>`, поток рендеринга имеет доступ к более актуальным данным отслеживания, и положение узла **XRCamera3D** может отставать на несколько миллисекунд от того, что используется для рендеринга.

\ **Примечание:** Если :ref:`Viewport.use_xr<class_Viewport_property_use_xr>` равен ``true``, большинство свойств камеры переопределяются активным :ref:`XRInterface<class_XRInterface>`. Доверять можно только ближней и дальней плоскостям.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Индекс документации XR <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------+
   | :ref:`PhysicsInterpolationMode<enum_Node_PhysicsInterpolationMode>` | physics_interpolation_mode | ``2`` (overrides :ref:`Node<class_Node_property_physics_interpolation_mode>`) |
   +---------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------+

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
