:github_url: hide

.. _class_ArrayOccluder3D:

ArrayOccluder3D
===============

**Успадковує:** :ref:`Occluder3D<class_Occluder3D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Форма 3D полігону, яка використовується для вибракування оклюзії в :ref:`OccluderInstance3D<class_OccluderInstance3D>`.

.. rst-class:: classref-introduction-group

Опис
--------

**ArrayOccluder3D** зберігає довільну форму 3D полігону, який може бути використаний системою рушія для вибракування оклюзії. Це аналог :ref:`ArrayMesh<class_ArrayMesh>`, але для оклюдерів.

Інструкції з налаштування вибракування оклюзії дивіться у документації до :ref:`OccluderInstance3D<class_OccluderInstance3D>`.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Вибракування оклюзії <../tutorials/3d/occlusion_culling>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+----------------------------------------------------------+--------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`     | :ref:`indices<class_ArrayOccluder3D_property_indices>`   | ``PackedInt32Array()``   |
   +-----------------------------------------------------+----------------------------------------------------------+--------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`vertices<class_ArrayOccluder3D_property_vertices>` | ``PackedVector3Array()`` |
   +-----------------------------------------------------+----------------------------------------------------------+--------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +--------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`set_arrays<class_ArrayOccluder3D_method_set_arrays>`\ (\ vertices\: :ref:`PackedVector3Array<class_PackedVector3Array>`, indices\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ ) |
   +--------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_ArrayOccluder3D_property_indices:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **indices** = ``PackedInt32Array()`` :ref:`🔗<class_ArrayOccluder3D_property_indices>`

.. rst-class:: classref-property-setget

- |void| **set_indices**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_indices**\ (\ )

Індексне положення оклюдера. Індекси визначають, які точки з масиву :ref:`vertices<class_ArrayOccluder3D_property_vertices>` слід намалювати та в якому порядку.

\ **Примітка.** Оклюдер завжди оновлюється після встановлення цього значення. Якщо ви створюєте оклюдери процедурно, подумайте про використання :ref:`set_arrays()<class_ArrayOccluder3D_method_set_arrays>`, щоб уникнути подвійного оновлення оклюдера під час його створення.



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt32Array<class_PackedInt32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_ArrayOccluder3D_property_vertices:

.. rst-class:: classref-property

:ref:`PackedVector3Array<class_PackedVector3Array>` **vertices** = ``PackedVector3Array()`` :ref:`🔗<class_ArrayOccluder3D_property_vertices>`

.. rst-class:: classref-property-setget

- |void| **set_vertices**\ (\ value\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ )
- :ref:`PackedVector3Array<class_PackedVector3Array>` **get_vertices**\ (\ )

Позиції вершини оклюдера в локальних 3D-координатах.

\ **Примітка.** Оклюдер завжди оновлюється після встановлення цього значення. Якщо ви створюєте оклюдери процедурно, подумайте про використання :ref:`set_arrays()<class_ArrayOccluder3D_method_set_arrays>`, щоб уникнути подвійного оновлення оклюдера під час його створення.



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector3Array<class_PackedVector3Array>` for more details.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_ArrayOccluder3D_method_set_arrays:

.. rst-class:: classref-method

|void| **set_arrays**\ (\ vertices\: :ref:`PackedVector3Array<class_PackedVector3Array>`, indices\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ ) :ref:`🔗<class_ArrayOccluder3D_method_set_arrays>`

Встановлює :ref:`indices<class_ArrayOccluder3D_property_indices>` і :ref:`vertices<class_ArrayOccluder3D_property_vertices>`, оновлюючи остаточний оклюдер лише один раз після встановлення обох значень.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
