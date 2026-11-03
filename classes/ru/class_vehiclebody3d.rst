:github_url: hide

.. _class_VehicleBody3D:

VehicleBody3D
=============

**Наследует:** :ref:`RigidBody3D<class_RigidBody3D>` **<** :ref:`PhysicsBody3D<class_PhysicsBody3D>` **<** :ref:`CollisionObject3D<class_CollisionObject3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Физическое 3D-тело, имитирующее поведение автомобиля.

.. rst-class:: classref-introduction-group

Описание
----------------

Это физическое тело реализует всю физическую логику, необходимую для моделирования автомобиля. Оно основано на системе Raycast Vehicle, обычно используемой в физических движках. Помимо узла :ref:`CollisionShape3D<class_CollisionShape3D>` для основного корпуса автомобиля, необходимо также добавить узел :ref:`VehicleWheel3D<class_VehicleWheel3D>` для каждого колеса. Также следует добавить к этому узлу узел :ref:`MeshInstance3D<class_MeshInstance3D>` для 3D-модели автомобиля, но эта модель, как правило, не должна включать сетки для колёс. Вы можете управлять автомобилем, используя свойства :ref:`brake<class_VehicleBody3D_property_brake>`, :ref:`engine_force<class_VehicleBody3D_property_engine_force>` и :ref:`steering<class_VehicleBody3D_property_steering>`. Положение или ориентацию этого узла нельзя изменять напрямую.

\ **Примечание:** Локальный передний план для этого узла — :ref:`Vector3.MODEL_FRONT<class_Vector3_constant_MODEL_FRONT>`.

\ **Примечание:** Точка начала координат VehicleBody3D будет определять центр тяжести вашего автомобиля. Чтобы сделать транспортное средство более приземлённым, исходную точку обычно располагают низко, перемещая :ref:`CollisionShape3D<class_CollisionShape3D>` и :ref:`MeshInstance3D<class_MeshInstance3D>` вверх.

\ **Примечание:** Этот класс имеет известные проблемы и не предназначен для реализации реалистичной трёхмерной физики транспортного средства. Если вам нужна продвинутая физика транспортного средства, вам, возможно, придётся написать собственную интеграцию физики с использованием :ref:`CharacterBody3D<class_CharacterBody3D>` или :ref:`RigidBody3D<class_RigidBody3D>`.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Введение в физику <../tutorials/physics/physics_introduction>`

- :doc:`Устранение неполадок в физике <../tutorials/physics/troubleshooting_physics_issues>`

- `3D Truck Town Демо <https://store.godotengine.org/asset/godot-foundation/truck-town-demo/>`__

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------+--------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`brake<class_VehicleBody3D_property_brake>`               | ``0.0``                                                                  |
   +---------------------------+----------------------------------------------------------------+--------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`engine_force<class_VehicleBody3D_property_engine_force>` | ``0.0``                                                                  |
   +---------------------------+----------------------------------------------------------------+--------------------------------------------------------------------------+
   | :ref:`float<class_float>` | mass                                                           | ``40.0`` (overrides :ref:`RigidBody3D<class_RigidBody3D_property_mass>`) |
   +---------------------------+----------------------------------------------------------------+--------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`steering<class_VehicleBody3D_property_steering>`         | ``0.0``                                                                  |
   +---------------------------+----------------------------------------------------------------+--------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_VehicleBody3D_property_brake:

.. rst-class:: classref-property

:ref:`float<class_float>` **brake** = ``0.0`` :ref:`🔗<class_VehicleBody3D_property_brake>`

.. rst-class:: classref-property-setget

- |void| **set_brake**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_brake**\ (\ )

Замедляет транспортное средство, применяя тормозное усилие. Транспортное средство замедляется только в том случае, если колеса соприкасаются с поверхностью. Сила, которую необходимо применить для адекватного замедления транспортного средства, зависит от :ref:`RigidBody3D.mass<class_RigidBody3D_property_mass>` транспортного средства. Для транспортного средства с массой, установленной на 1000, попробуйте значение в диапазоне 25–30 для резкого торможения.

.. rst-class:: classref-item-separator

----

.. _class_VehicleBody3D_property_engine_force:

.. rst-class:: classref-property

:ref:`float<class_float>` **engine_force** = ``0.0`` :ref:`🔗<class_VehicleBody3D_property_engine_force>`

.. rst-class:: classref-property-setget

- |void| **set_engine_force**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_engine_force**\ (\ )

Ускоряет транспортное средство, применяя силу двигателя. Транспортное средство ускоряется только в том случае, если колеса, у которых :ref:`VehicleWheel3D.use_as_traction<class_VehicleWheel3D_property_use_as_traction>` установлен на ``true``, соприкасаются с поверхностью. :ref:`RigidBody3D.mass<class_RigidBody3D_property_mass>` транспортного средства влияет на ускорение транспортного средства. Для транспортного средства с массой, установленной на 1000, попробуйте значение в диапазоне 25–50 для ускорения.

\ **Примечание:** Моделирование не учитывает влияние передач, вам нужно будет добавить логику для этого, если вы хотите смоделировать передачи.

Отрицательное значение приведет к тому, что транспортное средство будет двигаться задним ходом.

.. rst-class:: classref-item-separator

----

.. _class_VehicleBody3D_property_steering:

.. rst-class:: classref-property

:ref:`float<class_float>` **steering** = ``0.0`` :ref:`🔗<class_VehicleBody3D_property_steering>`

.. rst-class:: classref-property-setget

- |void| **set_steering**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_steering**\ (\ )

Угол поворота рулевого колеса транспортного средства. Установка этого значения на ненулевое приведет к повороту транспортного средства во время движения. Колеса, у которых :ref:`VehicleWheel3D.use_as_steering<class_VehicleWheel3D_property_use_as_steering>` установлен на ``true``, будут автоматически поворачиваться.

\ **Примечание:** Это свойство редактируется в инспекторе в градусах. В коде свойство задается в радианах.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
