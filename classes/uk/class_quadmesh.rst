:github_url: hide

.. _class_QuadMesh:

QuadMesh
========

**Успадковує:** :ref:`PlaneMesh<class_PlaneMesh>` **<** :ref:`PrimitiveMesh<class_PrimitiveMesh>` **<** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Клас, що представляє собою квадратну сіточку з камерою.

.. rst-class:: classref-introduction-group

Опис
--------

Клас, що представляє квадрат :ref:`PrimitiveMesh<class_PrimitiveMesh>`. Ця плоска сітка не має товщини. За замовчуванням ця сітка вирівняна по осях X та Y; таке обертання більше підходить для використання з матеріалами для рекламних щитів. **QuadMesh** еквівалентний :ref:`PlaneMesh<class_PlaneMesh>`, за винятком того, що його значення за замовчуванням :ref:`PlaneMesh.orientation<class_PlaneMesh_property_orientation>` дорівнює :ref:`PlaneMesh.FACE_Z<class_PlaneMesh_constant_FACE_Z>`.

.. rst-class:: classref-introduction-group

Посібники
------------------

- `Графічний інтерфейс у 3D Viewport Demo <https://godotengine.org/asset-library/asset/2807>`__

- `2D в 3D Viewport Demo <https://godotengine.org/asset-library/asset/2803>`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +------------------------------------------------+-------------+-------------------------------------------------------------------------------+
   | :ref:`Orientation<enum_PlaneMesh_Orientation>` | orientation | ``2`` (overrides :ref:`PlaneMesh<class_PlaneMesh_property_orientation>`)      |
   +------------------------------------------------+-------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                  | size        | ``Vector2(1, 1)`` (overrides :ref:`PlaneMesh<class_PlaneMesh_property_size>`) |
   +------------------------------------------------+-------------+-------------------------------------------------------------------------------+

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
