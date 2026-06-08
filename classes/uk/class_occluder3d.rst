:github_url: hide

.. _class_Occluder3D:

Occluder3D
==========

**Успадковує:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`ArrayOccluder3D<class_ArrayOccluder3D>`, :ref:`BoxOccluder3D<class_BoxOccluder3D>`, :ref:`PolygonOccluder3D<class_PolygonOccluder3D>`, :ref:`QuadOccluder3D<class_QuadOccluder3D>`, :ref:`SphereOccluder3D<class_SphereOccluder3D>`

Oc включає в себе форму ресурсу для використання з оклюзійними кульками :ref:`OccluderInstance3D<class_OccluderInstance3D>`.

.. rst-class:: classref-introduction-group

Опис
--------

**Occluder3D** зберігає форму оклюцера, яка може використовуватися системою оклюзії двигуна.

Див. :ref:`OccluderInstance3D<class_OccluderInstance3D>` документацію для інструкцій з налаштування кульлінгу.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Вибракування оклюзії <../tutorials/3d/occlusion_culling>`

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`     | :ref:`get_indices<class_Occluder3D_method_get_indices>`\ (\ ) |const|   |
   +-----------------------------------------------------+-------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`get_vertices<class_Occluder3D_method_get_vertices>`\ (\ ) |const| |
   +-----------------------------------------------------+-------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_Occluder3D_method_get_indices:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_indices**\ (\ ) |const| :ref:`🔗<class_Occluder3D_method_get_indices>`

Повертає індекси вершини оклюцерної форми.

.. rst-class:: classref-item-separator

----

.. _class_Occluder3D_method_get_vertices:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **get_vertices**\ (\ ) |const| :ref:`🔗<class_Occluder3D_method_get_vertices>`

Повертає позиції вершини вершин.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
