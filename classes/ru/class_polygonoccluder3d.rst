:github_url: hide

.. _class_PolygonOccluder3D:

PolygonOccluder3D
=================

**Наследует:** :ref:`Occluder3D<class_Occluder3D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Плоская 2D-многоугольная форма для использования с отбраковкой окклюзии в :ref:`OccluderInstance3D<class_OccluderInstance3D>`.

.. rst-class:: classref-introduction-group

Описание
----------------

**PolygonOccluder3D** хранит форму многоугольника, которую может использовать система отсечения окклюзии движка. Когда в редакторе выбран :ref:`OccluderInstance3D<class_OccluderInstance3D>` с **PolygonOccluder3D**, редактор появится в верхней части 3D-окна просмотра, чтобы вы могли добавлять/удалять точки. Все точки должны быть размещены на одной 2D-плоскости, что означает, что невозможно создать произвольные 3D-формы с помощью одного **PolygonOccluder3D**. Чтобы использовать произвольные 3D-формы в качестве окклюдеров, используйте вместо этого функцию запекания :ref:`ArrayOccluder3D<class_ArrayOccluder3D>` или :ref:`OccluderInstance3D<class_OccluderInstance3D>`.

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
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`polygon<class_PolygonOccluder3D_property_polygon>` | ``PackedVector2Array()`` |
   +-----------------------------------------------------+----------------------------------------------------------+--------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_PolygonOccluder3D_property_polygon:

.. rst-class:: classref-property

:ref:`PackedVector2Array<class_PackedVector2Array>` **polygon** = ``PackedVector2Array()`` :ref:`🔗<class_PolygonOccluder3D_property_polygon>`

.. rst-class:: classref-property-setget

- |void| **set_polygon**\ (\ value\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )
- :ref:`PackedVector2Array<class_PackedVector2Array>` **get_polygon**\ (\ )

Полигон, который будет использоваться для отбраковки окклюзии. Полигон может быть выпуклым или вогнутым, но он должен иметь как можно меньше точек для максимальной производительности.

Полигон *неt* должен иметь пересекающихся линий. В противном случае триангуляция не будет выполнена (с выводом сообщения об ошибке).



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector2Array<class_PackedVector2Array>` for more details.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
