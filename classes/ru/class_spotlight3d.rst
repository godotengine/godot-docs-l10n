:github_url: hide

.. _class_SpotLight3D:

SpotLight3D
===========

**Наследует:** :ref:`Light3D<class_Light3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Прожектор, например, рефлекторный прожектор или фонарь.

.. rst-class:: classref-introduction-group

Описание
----------------

Прожектор — это тип узла :ref:`Light3D<class_Light3D>`, который излучает свет в определённом направлении в форме конуса. Свет ослабевает с увеличением расстояния. Это ослабление можно настроить, изменив параметры энергии, радиуса и затухания :ref:`Light3D<class_Light3D>`.

Свет излучается в направлении -Z глобального базиса узла. Для невращённого источника света это означает, что свет излучается вперёд, освещая переднюю сторону 3D-модели (см. :ref:`Vector3.FORWARD<class_Vector3_constant_FORWARD>` и :ref:`Vector3.MODEL_FRONT<class_Vector3_constant_MODEL_FRONT>`).

\ **Примечание:** При использовании метода мобильного рендеринга на каждом ресурсе сетки может отображаться только 8 прожекторов. Попытка отобразить более 8 прожекторов на одном ресурсе сетки приведёт к мерцанию прожекторов при движении камеры. При использовании метода рендеринга Compatibility по умолчанию на каждом ресурсе сетки может отображаться только 8 точечных источников света, но это значение можно увеличить, изменив параметр :ref:`ProjectSettings.rendering/limits/opengl/max_lights_per_object<class_ProjectSettings_property_rendering/limits/opengl/max_lights_per_object>`.

\ **Примечание:** При использовании методов рендеринга Mobile или Compatibility точечные источники света будут корректно воздействовать только на те сетки, видимость которых AABB пересекается с AABB источника света. При использовании шейдера для деформации сетки таким образом, что она выходит за пределы AABB, необходимо увеличить параметр :ref:`GeometryInstance3D.extra_cull_margin<class_GeometryInstance3D_property_extra_cull_margin>` сетки. В противном случае источник света может быть не виден на сетке.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- `3D свет и тени <../tutorials/3d/lights_and_shadows.html#spot-light>`__

- :doc:`Поддельное глобальное освещение <../tutorials/3d/global_illumination/faking_global_illumination>`

- `Демонстрация шутера от третьего лица (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | light_specular                                                                   | ``0.5`` (overrides :ref:`Light3D<class_Light3D_property_light_specular>`)     |
   +---------------------------+----------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | shadow_bias                                                                      | ``0.03`` (overrides :ref:`Light3D<class_Light3D_property_shadow_bias>`)       |
   +---------------------------+----------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | shadow_normal_bias                                                               | ``1.0`` (overrides :ref:`Light3D<class_Light3D_property_shadow_normal_bias>`) |
   +---------------------------+----------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`spot_angle<class_SpotLight3D_property_spot_angle>`                         | ``45.0``                                                                      |
   +---------------------------+----------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`spot_angle_attenuation<class_SpotLight3D_property_spot_angle_attenuation>` | ``1.0``                                                                       |
   +---------------------------+----------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`spot_attenuation<class_SpotLight3D_property_spot_attenuation>`             | ``1.0``                                                                       |
   +---------------------------+----------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`spot_range<class_SpotLight3D_property_spot_range>`                         | ``5.0``                                                                       |
   +---------------------------+----------------------------------------------------------------------------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_SpotLight3D_property_spot_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **spot_angle** = ``45.0`` :ref:`🔗<class_SpotLight3D_property_spot_angle>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

Угол прожектора в градусах. Это угловой радиус, то есть угол между осью Z (центром конуса) и его краем. Угловой радиус по умолчанию 45 градусов соответствует конусу с угловым диаметром 90 градусов.

\ **Примечание:** :ref:`spot_angle<class_SpotLight3D_property_spot_angle>` не зависит от :ref:`Node3D.scale<class_Node3D_property_scale>` (масштаба источника света или масштаба его родительского объекта).

.. rst-class:: classref-item-separator

----

.. _class_SpotLight3D_property_spot_angle_attenuation:

.. rst-class:: classref-property

:ref:`float<class_float>` **spot_angle_attenuation** = ``1.0`` :ref:`🔗<class_SpotLight3D_property_spot_angle_attenuation>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

*Угловая* кривая затухания прожектора. См. также :ref:`spot_attenuation<class_SpotLight3D_property_spot_attenuation>`.

.. rst-class:: classref-item-separator

----

.. _class_SpotLight3D_property_spot_attenuation:

.. rst-class:: classref-property

:ref:`float<class_float>` **spot_attenuation** = ``1.0`` :ref:`🔗<class_SpotLight3D_property_spot_attenuation>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

Управляет функцией затухания на расстоянии для прожекторов.

Значение ``0.0`` будет поддерживать постоянную яркость на протяжении большей части диапазона, но плавно ослаблять свет на краю диапазона. Используйте значение ``2.0`` для физически точного освещения, так как это приводит к правильному обратному квадрату затухания.

\ **Примечание:** Установка затухания на ``2.0`` или выше может привести к тому, что удаленные объекты будут получать минимальный свет, даже в пределах диапазона. Например, при диапазоне ``4096`` объект на ``100`` единиц ослабляется с коэффициентом ``0.0001``. При яркости по умолчанию ``1`` свет не будет виден на этом расстоянии.

\ **Примечание:** Использование отрицательных или значений выше ``10.0`` может привести к неожиданным результатам.

.. rst-class:: classref-item-separator

----

.. _class_SpotLight3D_property_spot_range:

.. rst-class:: classref-property

:ref:`float<class_float>` **spot_range** = ``5.0`` :ref:`🔗<class_SpotLight3D_property_spot_range>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

Максимальный диапазон, который может быть достигнут прожектором. Обратите внимание, что эффективно освещенная область может казаться меньше в зависимости от используемого :ref:`spot_attenuation<class_SpotLight3D_property_spot_attenuation>`. Независимо от используемого :ref:`spot_attenuation<class_SpotLight3D_property_spot_attenuation>`, свет никогда не достигнет ничего за пределами этого диапазона.

\ **Примечание:** :ref:`spot_range<class_SpotLight3D_property_spot_range>` не зависит от :ref:`Node3D.scale<class_Node3D_property_scale>` (масштаба источника света или масштаба его родителя).

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
