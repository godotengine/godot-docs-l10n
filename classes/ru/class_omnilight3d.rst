:github_url: hide

.. meta::
	:keywords: point

.. _class_OmniLight3D:

OmniLight3D
===========

**Наследует:** :ref:`Light3D<class_Light3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Всенаправленный свет, например, от лампочки или свечи.

.. rst-class:: classref-introduction-group

Описание
----------------

Всенаправленный свет — это тип :ref:`Light3D<class_Light3D>`, который излучает свет во всех направлениях. Свет ослабевает с расстоянием, и это ослабление можно настроить, изменив его энергию, радиус и параметры затухания.

\ **Примечание:** При использовании метода рендеринга Mobile на каждом ресурсе сетки может отображаться только 8 источников света omni. Попытка отобразить более 8 источников света omni на одном ресурсе сетки приведет к мерцанию источников света omni при движении камеры. При использовании метода рендеринга Compatibility на каждом ресурсе сетки по умолчанию может отображаться только 8 источников света omni, но это число можно увеличить, настроив :ref:`ProjectSettings.rendering/limits/opengl/max_lights_per_object<class_ProjectSettings_property_rendering/limits/opengl/max_lights_per_object>`.

\ **Примечание:** При использовании методов рендеринга Mobile или Compatibility источники света omni будут правильно влиять только на те сетки, видимость AABB которых пересекается с AABB источника света. Если используется шейдер для деформации сетки таким образом, что она выходит за пределы своего AABB, :ref:`GeometryInstance3D.extra_cull_margin<class_GeometryInstance3D_property_extra_cull_margin>` должен быть увеличен на сетке. В противном случае свет может быть не виден на сетке.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- `3D свет и тени <../tutorials/3d/lights_and_shadows.html#omni-light>`__

- :doc:`Поддельное глобальное освещение <../tutorials/3d/global_illumination/faking_global_illumination>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +------------------------------------------------+----------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                      | light_specular                                                       | ``0.5`` (overrides :ref:`Light3D<class_Light3D_property_light_specular>`)     |
   +------------------------------------------------+----------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                      | :ref:`omni_attenuation<class_OmniLight3D_property_omni_attenuation>` | ``1.0``                                                                       |
   +------------------------------------------------+----------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                      | :ref:`omni_range<class_OmniLight3D_property_omni_range>`             | ``5.0``                                                                       |
   +------------------------------------------------+----------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`ShadowMode<enum_OmniLight3D_ShadowMode>` | :ref:`omni_shadow_mode<class_OmniLight3D_property_omni_shadow_mode>` | ``1``                                                                         |
   +------------------------------------------------+----------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                      | shadow_normal_bias                                                   | ``1.0`` (overrides :ref:`Light3D<class_Light3D_property_shadow_normal_bias>`) |
   +------------------------------------------------+----------------------------------------------------------------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_OmniLight3D_ShadowMode:

.. rst-class:: classref-enumeration

enum **ShadowMode**: :ref:`🔗<enum_OmniLight3D_ShadowMode>`

.. _class_OmniLight3D_constant_SHADOW_DUAL_PARABOLOID:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowMode<enum_OmniLight3D_ShadowMode>` **SHADOW_DUAL_PARABOLOID** = ``0``

Тени визуализируются в текстуру двойного параболоида. Быстрее, чем :ref:`SHADOW_CUBE<class_OmniLight3D_constant_SHADOW_CUBE>`, но хуже по качеству.

.. _class_OmniLight3D_constant_SHADOW_CUBE:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowMode<enum_OmniLight3D_ShadowMode>` **SHADOW_CUBE** = ``1``

Тени рендерятся в кубическую карту. Медленнее, чем :ref:`SHADOW_DUAL_PARABOLOID<class_OmniLight3D_constant_SHADOW_DUAL_PARABOLOID>`, но качественнее.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_OmniLight3D_property_omni_attenuation:

.. rst-class:: classref-property

:ref:`float<class_float>` **omni_attenuation** = ``1.0`` :ref:`🔗<class_OmniLight3D_property_omni_attenuation>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

Управляет функцией затухания на расстоянии для всенаправленных источников света.

Значение ``0.0`` будет поддерживать постоянную яркость на протяжении большей части диапазона, но плавно ослаблять свет на границе диапазона. Используйте значение ``2.0`` для физически точных источников света, поскольку оно обеспечивает правильное обратноквадратичное затухание.

\ **Примечание:** Установка затухания на ``2.0`` или выше может привести к тому, что удаленные объекты будут получать минимальный свет, даже в пределах диапазона. Например, при диапазоне ``4096`` объект на ``100`` единиц ослабляется с коэффициентом ``0.0001``. При яркости по умолчанию ``1`` свет не будет виден на этом расстоянии.

\ **Примечание:** Использование отрицательных или значений выше ``10.0`` может привести к неожиданным результатам.

.. rst-class:: classref-item-separator

----

.. _class_OmniLight3D_property_omni_range:

.. rst-class:: classref-property

:ref:`float<class_float>` **omni_range** = ``5.0`` :ref:`🔗<class_OmniLight3D_property_omni_range>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

Радиус света. Обратите внимание, что эффективно освещенная область может казаться меньше в зависимости от используемого :ref:`omni_attenuation<class_OmniLight3D_property_omni_attenuation>`. Независимо от используемого :ref:`omni_attenuation<class_OmniLight3D_property_omni_attenuation>`, свет никогда не достигнет ничего за пределами этого радиуса.

\ **Примечание:** :ref:`omni_range<class_OmniLight3D_property_omni_range>` не зависит от :ref:`Node3D.scale<class_Node3D_property_scale>` (масштаба света или масштаба его родителя).

.. rst-class:: classref-item-separator

----

.. _class_OmniLight3D_property_omni_shadow_mode:

.. rst-class:: classref-property

:ref:`ShadowMode<enum_OmniLight3D_ShadowMode>` **omni_shadow_mode** = ``1`` :ref:`🔗<class_OmniLight3D_property_omni_shadow_mode>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_mode**\ (\ value\: :ref:`ShadowMode<enum_OmniLight3D_ShadowMode>`\ )
- :ref:`ShadowMode<enum_OmniLight3D_ShadowMode>` **get_shadow_mode**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
