:github_url: hide

.. _class_RDHitGroup:

RDHitGroup
==========

**Экспериментальное:** This class may be changed or removed in future versions.

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Группа попаданий (используется :ref:`RenderingDevice<class_RenderingDevice>`).

.. rst-class:: classref-introduction-group

Описание
----------------

Определяет группу попаданий для использования с :ref:`RenderingDevice.raytracing_pipeline_create()<class_RenderingDevice_method_raytracing_pipeline_create>`.

Группа попаданий объединяет шейдеры, которые выполняются при пересечении луча с геометрией. Она может включать шейдер ближайшего попадания, шейдер любого попадания и шейдер пересечения.

При заполнении таблиц привязки шейдеров попаданий с помощью :ref:`RenderingDevice.hit_sbt_range_update()<class_RenderingDevice_method_hit_sbt_range_update>` группы попаданий ссылаются по индексу.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------------------------------+---------------------------------------------------------------------------+
   | :ref:`RDPipelineShader<class_RDPipelineShader>` | :ref:`any_hit_shader<class_RDHitGroup_property_any_hit_shader>`           |
   +-------------------------------------------------+---------------------------------------------------------------------------+
   | :ref:`RDPipelineShader<class_RDPipelineShader>` | :ref:`closest_hit_shader<class_RDHitGroup_property_closest_hit_shader>`   |
   +-------------------------------------------------+---------------------------------------------------------------------------+
   | :ref:`RDPipelineShader<class_RDPipelineShader>` | :ref:`intersection_shader<class_RDHitGroup_property_intersection_shader>` |
   +-------------------------------------------------+---------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_RDHitGroup_property_any_hit_shader:

.. rst-class:: classref-property

:ref:`RDPipelineShader<class_RDPipelineShader>` **any_hit_shader** :ref:`🔗<class_RDHitGroup_property_any_hit_shader>`

.. rst-class:: classref-property-setget

- |void| **set_any_hit_shader**\ (\ value\: :ref:`RDPipelineShader<class_RDPipelineShader>`\ )
- :ref:`RDPipelineShader<class_RDPipelineShader>` **get_any_hit_shader**\ (\ )

Шейдер для каждого попадания в данной группе попаданий. Выполняется для каждого потенциального пересечения. Может быть ``null``.

.. rst-class:: classref-item-separator

----

.. _class_RDHitGroup_property_closest_hit_shader:

.. rst-class:: classref-property

:ref:`RDPipelineShader<class_RDPipelineShader>` **closest_hit_shader** :ref:`🔗<class_RDHitGroup_property_closest_hit_shader>`

.. rst-class:: classref-property-setget

- |void| **set_closest_hit_shader**\ (\ value\: :ref:`RDPipelineShader<class_RDPipelineShader>`\ )
- :ref:`RDPipelineShader<class_RDPipelineShader>` **get_closest_hit_shader**\ (\ )

Шейдер ближайшего попадания для этой группы попаданий. Выполняется для ближайшего пересечения. Может быть ``null``.

.. rst-class:: classref-item-separator

----

.. _class_RDHitGroup_property_intersection_shader:

.. rst-class:: classref-property

:ref:`RDPipelineShader<class_RDPipelineShader>` **intersection_shader** :ref:`🔗<class_RDHitGroup_property_intersection_shader>`

.. rst-class:: classref-property-setget

- |void| **set_intersection_shader**\ (\ value\: :ref:`RDPipelineShader<class_RDPipelineShader>`\ )
- :ref:`RDPipelineShader<class_RDPipelineShader>` **get_intersection_shader**\ (\ )

Шейдер пересечения для этой группы попаданий. Требуется для нетреугольной геометрии. При использовании для треугольной геометрии должен быть равен ``null``.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
