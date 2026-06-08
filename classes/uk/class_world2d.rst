:github_url: hide

.. _class_World2D:

World2D
=======

**Успадковує:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Ресурс, що містить всі компоненти 2D світу, такі як полотно і фізика простору.

.. rst-class:: classref-introduction-group

Опис
--------

Клас, який має все, що входить до світу 2D: фізичний простір, полотно і звуковий простір. 2D вершини реєструють свої ресурси в поточний 2D світ.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Рей-розміщення <../tutorials/physics/ray-casting>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------+----------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                             | :ref:`canvas<class_World2D_property_canvas>`                         |
   +-------------------------------------------------------------------+----------------------------------------------------------------------+
   | :ref:`PhysicsDirectSpaceState2D<class_PhysicsDirectSpaceState2D>` | :ref:`direct_space_state<class_World2D_property_direct_space_state>` |
   +-------------------------------------------------------------------+----------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                             | :ref:`navigation_map<class_World2D_property_navigation_map>`         |
   +-------------------------------------------------------------------+----------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                             | :ref:`space<class_World2D_property_space>`                           |
   +-------------------------------------------------------------------+----------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_World2D_property_canvas:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **canvas** :ref:`🔗<class_World2D_property_canvas>`

.. rst-class:: classref-property-setget

- :ref:`RID<class_RID>` **get_canvas**\ (\ )

:ref:`RID<class_RID>` цього світового полотна. Використовується :ref:`RenderingServer<class_RenderingServer>` для 2D креслення.

.. rst-class:: classref-item-separator

----

.. _class_World2D_property_direct_space_state:

.. rst-class:: classref-property

:ref:`PhysicsDirectSpaceState2D<class_PhysicsDirectSpaceState2D>` **direct_space_state** :ref:`🔗<class_World2D_property_direct_space_state>`

.. rst-class:: classref-property-setget

- :ref:`PhysicsDirectSpaceState2D<class_PhysicsDirectSpaceState2D>` **get_direct_space_state**\ (\ )

Прямий доступ до фізики світу 2D Використовуються для переробка струму та потенційних зіткнень. При використанні багатопоточної фізики, доступ обмежений :ref:`Node._physics_process()<class_Node_private_method__physics_process>` в основній нитці.

.. rst-class:: classref-item-separator

----

.. _class_World2D_property_navigation_map:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **navigation_map** :ref:`🔗<class_World2D_property_navigation_map>`

.. rst-class:: classref-property-setget

- :ref:`RID<class_RID>` **get_navigation_map**\ (\ )

:ref:`RID<class_RID>` навігаційної карти світу. Використовується :ref:`NavigationServer2D<class_NavigationServer2D>`.

.. rst-class:: classref-item-separator

----

.. _class_World2D_property_space:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **space** :ref:`🔗<class_World2D_property_space>`

.. rst-class:: classref-property-setget

- :ref:`RID<class_RID>` **get_space**\ (\ )

:ref:`RID<class_RID>` цього світового фізико-космічних ресурсів. Використовується :ref:`PhysicsServer2D<class_PhysicsServer2D>` для фізики 2D, лікуючи його як простір, так і площею.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
