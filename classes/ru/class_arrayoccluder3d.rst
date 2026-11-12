:github_url: hide

.. _class_ArrayOccluder3D:

ArrayOccluder3D
===============

**Наследует:** :ref:`Occluder3D<class_Occluder3D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Трехмерная многоугольная форма для использования с отбраковкой окклюзии в :ref:`OccluderInstance3D<class_OccluderInstance3D>`.

.. rst-class:: classref-introduction-group

Описание
----------------

**ArrayOccluder3D** хранит произвольную форму 3D-полигона, которая может использоваться системой отсечения окклюзии движка. Это аналогично :ref:`ArrayMesh<class_ArrayMesh>`, но для окклюдеров.

Инструкции по настройке отсечения окклюзии см. в документации :ref:`OccluderInstance3D<class_OccluderInstance3D>`.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Отбраковка окклюзии <../tutorials/3d/occlusion_culling>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------------------------------------+----------------------------------------------------------+--------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`     | :ref:`indices<class_ArrayOccluder3D_property_indices>`   | ``PackedInt32Array()``   |
   +-----------------------------------------------------+----------------------------------------------------------+--------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`vertices<class_ArrayOccluder3D_property_vertices>` | ``PackedVector3Array()`` |
   +-----------------------------------------------------+----------------------------------------------------------+--------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +--------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`set_arrays<class_ArrayOccluder3D_method_set_arrays>`\ (\ vertices\: :ref:`PackedVector3Array<class_PackedVector3Array>`, indices\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ ) |
   +--------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_ArrayOccluder3D_property_indices:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **indices** = ``PackedInt32Array()`` :ref:`🔗<class_ArrayOccluder3D_property_indices>`

.. rst-class:: classref-property-setget

- |void| **set_indices**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_indices**\ (\ )

Положение индекса окклюдера. Индексы определяют, какие точки из массива :ref:`vertices<class_ArrayOccluder3D_property_vertices>` должны быть нарисованы и в каком порядке.

\ **Примечание:** Окклюдер всегда обновляется после установки этого значения. Если вы создаете окклюдеры процедурно, рассмотрите возможность использования :ref:`set_arrays()<class_ArrayOccluder3D_method_set_arrays>` вместо этого, чтобы избежать обновления окклюдера дважды при его создании.



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

Положения вершин окклюдера в локальных 3D-координатах.

\ **Примечание:** Окклюдер всегда обновляется после установки этого значения. Если вы создаете окклюдеры процедурно, рассмотрите возможность использования :ref:`set_arrays()<class_ArrayOccluder3D_method_set_arrays>` вместо этого, чтобы избежать обновления окклюдера дважды при его создании.



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector3Array<class_PackedVector3Array>` for more details.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_ArrayOccluder3D_method_set_arrays:

.. rst-class:: classref-method

|void| **set_arrays**\ (\ vertices\: :ref:`PackedVector3Array<class_PackedVector3Array>`, indices\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ ) :ref:`🔗<class_ArrayOccluder3D_method_set_arrays>`

Устанавливает :ref:`indices<class_ArrayOccluder3D_property_indices>` и :ref:`vertices<class_ArrayOccluder3D_property_vertices>`, при этом обновляя окончательный окклюдер только один раз после установки обоих значений.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
