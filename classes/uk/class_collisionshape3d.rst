:github_url: hide

.. _class_CollisionShape3D:

CollisionShape3D
================

**Успадковує:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Вузлом, який надає :ref:`Shape3D<class_Shape3D>` на :ref:`CollisionObject3D<class_CollisionObject3D>` батьків.

.. rst-class:: classref-introduction-group

Опис
--------

Вузол, який надає :ref:`Shape3D<class_Shape3D>` батьківському об'єкту :ref:`CollisionObject3D<class_CollisionObject3D>` та дозволяє його редагування. Це може надати форму виявлення :ref:`Area3D<class_Area3D>` або перетворити :ref:`PhysicsBody3D<class_PhysicsBody3D>` на твердотільний об'єкт.

\ **Попередження:** Нерівномірно масштабований **CollisionShape3D**, ймовірно, не працюватиме належним чином. Переконайтеся, що його масштаб однаковий на всіх осях, і натомість налаштуйте його ресурс :ref:`shape<class_CollisionShape3D_property_shape>`.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Запровадження фізики <../tutorials/physics/physics_introduction>`

- `Демонстрація тривимірного кінематичного персонажа <https://godotengine.org/asset-library/asset/2739>`__

- `Демонстрація 3D-платформера <https://godotengine.org/asset-library/asset/2748>`__

- `Демо-версія шутера від третьої особи (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`     | :ref:`debug_color<class_CollisionShape3D_property_debug_color>` | ``Color(0, 0, 0, 0)`` |
   +-------------------------------+-----------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`       | :ref:`debug_fill<class_CollisionShape3D_property_debug_fill>`   | ``true``              |
   +-------------------------------+-----------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`       | :ref:`disabled<class_CollisionShape3D_property_disabled>`       | ``false``             |
   +-------------------------------+-----------------------------------------------------------------+-----------------------+
   | :ref:`Shape3D<class_Shape3D>` | :ref:`shape<class_CollisionShape3D_property_shape>`             |                       |
   +-------------------------------+-----------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +--------+---------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`make_convex_from_siblings<class_CollisionShape3D_method_make_convex_from_siblings>`\ (\ )                           |
   +--------+---------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`resource_changed<class_CollisionShape3D_method_resource_changed>`\ (\ resource\: :ref:`Resource<class_Resource>`\ ) |
   +--------+---------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_CollisionShape3D_property_debug_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **debug_color** = ``Color(0, 0, 0, 0)`` :ref:`🔗<class_CollisionShape3D_property_debug_color>`

.. rst-class:: classref-property-setget

- |void| **set_debug_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_debug_color**\ (\ )

Колір форми зіткнень, який відображається в редакторі або в запущеному проекті, якщо у верхній частині редактора позначено **Налагодження > Видимі форми зіткнень**.

\ **Примітка:** Значення за умовчанням — :ref:`ProjectSettings.debug/shapes/collision/shape_color<class_ProjectSettings_property_debug/shapes/collision/shape_color>`. Значення ``Color(0, 0, 0, 0)``, задокументоване тут, є заповнювачем, а не фактичним кольором налагодження за умовчанням.

.. rst-class:: classref-item-separator

----

.. _class_CollisionShape3D_property_debug_fill:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **debug_fill** = ``true`` :ref:`🔗<class_CollisionShape3D_property_debug_fill>`

.. rst-class:: classref-property-setget

- |void| **set_enable_debug_fill**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enable_debug_fill**\ (\ )

Якщо ``true``, коли фігура відображається, вона відображатиме суцільний колір заливки на додаток до свого каркасу.

.. rst-class:: classref-item-separator

----

.. _class_CollisionShape3D_property_disabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **disabled** = ``false`` :ref:`🔗<class_CollisionShape3D_property_disabled>`

.. rst-class:: classref-property-setget

- |void| **set_disabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_disabled**\ (\ )

Вимкнена форма зіткнення не має жодного впливу на світ. Цю властивість слід змінити за допомогою :ref:`Object.set_deferred()<class_Object_method_set_deferred>`.

.. rst-class:: classref-item-separator

----

.. _class_CollisionShape3D_property_shape:

.. rst-class:: classref-property

:ref:`Shape3D<class_Shape3D>` **shape** :ref:`🔗<class_CollisionShape3D_property_shape>`

.. rst-class:: classref-property-setget

- |void| **set_shape**\ (\ value\: :ref:`Shape3D<class_Shape3D>`\ )
- :ref:`Shape3D<class_Shape3D>` **get_shape**\ (\ )

Актуальна форма, яка належить цій формі зіткнення.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_CollisionShape3D_method_make_convex_from_siblings:

.. rst-class:: classref-method

|void| **make_convex_from_siblings**\ (\ ) :ref:`🔗<class_CollisionShape3D_method_make_convex_from_siblings>`

Налаштовує форму зіткнень до доповнення всіх його опуклих :ref:`MeshInstance3D<class_MeshInstance3D>` просіяння геометрії.

.. rst-class:: classref-item-separator

----

.. _class_CollisionShape3D_method_resource_changed:

.. rst-class:: classref-method

|void| **resource_changed**\ (\ resource\: :ref:`Resource<class_Resource>`\ ) :ref:`🔗<class_CollisionShape3D_method_resource_changed>`

**Застаріло:** Use :ref:`Resource.changed<class_Resource_signal_changed>` instead.

Цей метод нічого не робить.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
