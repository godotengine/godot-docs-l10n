:github_url: hide

.. _class_PhysicsServer3DRenderingServerHandler:

PhysicsServer3DRenderingServerHandler
=====================================

**Успадковує:** :ref:`Object<class_Object>`

Клас, який використовується для забезпечення :ref:`PhysicsServer3DExtension._soft_body_update_rendering_server()<class_PhysicsServer3DExtension_private_method__soft_body_update_rendering_server>` з рендерингом для м'яких тіл.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +--------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_set_aabb<class_PhysicsServer3DRenderingServerHandler_private_method__set_aabb>`\ (\ aabb\: :ref:`AABB<class_AABB>`\ ) |virtual| |required|                                                |
   +--------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_set_normal<class_PhysicsServer3DRenderingServerHandler_private_method__set_normal>`\ (\ vertex_id\: :ref:`int<class_int>`, normal\: :ref:`Vector3<class_Vector3>`\ ) |virtual| |required| |
   +--------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_set_vertex<class_PhysicsServer3DRenderingServerHandler_private_method__set_vertex>`\ (\ vertex_id\: :ref:`int<class_int>`, vertex\: :ref:`Vector3<class_Vector3>`\ ) |virtual| |required| |
   +--------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`set_aabb<class_PhysicsServer3DRenderingServerHandler_method_set_aabb>`\ (\ aabb\: :ref:`AABB<class_AABB>`\ )                                                                               |
   +--------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`set_normal<class_PhysicsServer3DRenderingServerHandler_method_set_normal>`\ (\ vertex_id\: :ref:`int<class_int>`, normal\: :ref:`Vector3<class_Vector3>`\ )                                |
   +--------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`set_vertex<class_PhysicsServer3DRenderingServerHandler_method_set_vertex>`\ (\ vertex_id\: :ref:`int<class_int>`, vertex\: :ref:`Vector3<class_Vector3>`\ )                                |
   +--------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_PhysicsServer3DRenderingServerHandler_private_method__set_aabb:

.. rst-class:: classref-method

|void| **_set_aabb**\ (\ aabb\: :ref:`AABB<class_AABB>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsServer3DRenderingServerHandler_private_method__set_aabb>`

Зателефоновано :ref:`PhysicsServer3D<class_PhysicsServer3D>`, щоб встановити межі коробки для :ref:`SoftBody3D<class_SoftBody3D>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsServer3DRenderingServerHandler_private_method__set_normal:

.. rst-class:: classref-method

|void| **_set_normal**\ (\ vertex_id\: :ref:`int<class_int>`, normal\: :ref:`Vector3<class_Vector3>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsServer3DRenderingServerHandler_private_method__set_normal>`

Зателефоновано :ref:`PhysicsServer3D<class_PhysicsServer3D>`, щоб встановити нормаль для :ref:`SoftBody3D<class_SoftBody3D>` vertex в індексі, зазначеному ``vertex_id``.

\ **Примітка:** Параметри ``парам нормальний``, що використовуються для типу ``const void*`` до Godot 4.2.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsServer3DRenderingServerHandler_private_method__set_vertex:

.. rst-class:: classref-method

|void| **_set_vertex**\ (\ vertex_id\: :ref:`int<class_int>`, vertex\: :ref:`Vector3<class_Vector3>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsServer3DRenderingServerHandler_private_method__set_vertex>`

Called by :ref:`PhysicsServer3D<class_PhysicsServer3D>`, щоб встановити позицію для :ref:`SoftBody3D<class_SoftBody3D>` vertex в індексі, зазначеному ``vertex_id``.

\ **Примітка:** ``vertex`` параметр, який використовується для типу ``const void *`` до Godot 4.2.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsServer3DRenderingServerHandler_method_set_aabb:

.. rst-class:: classref-method

|void| **set_aabb**\ (\ aabb\: :ref:`AABB<class_AABB>`\ ) :ref:`🔗<class_PhysicsServer3DRenderingServerHandler_method_set_aabb>`

Налаштовує лімітовану коробку для :ref:`SoftBody3D<class_SoftBody3D>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsServer3DRenderingServerHandler_method_set_normal:

.. rst-class:: classref-method

|void| **set_normal**\ (\ vertex_id\: :ref:`int<class_int>`, normal\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_PhysicsServer3DRenderingServerHandler_method_set_normal>`

Встановлює нормаль для :ref:`SoftBody3D<class_SoftBody3D>` vertex в індексі, зазначеному ``vertex_id``.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsServer3DRenderingServerHandler_method_set_vertex:

.. rst-class:: classref-method

|void| **set_vertex**\ (\ vertex_id\: :ref:`int<class_int>`, vertex\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_PhysicsServer3DRenderingServerHandler_method_set_vertex>`

Встановлює позицію для :ref:`SoftBody3D<class_SoftBody3D>` vertex в індексі, зазначеному ``vertex_id``.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
