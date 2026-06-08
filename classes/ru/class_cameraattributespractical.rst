:github_url: hide

.. _class_CameraAttributesPractical:

CameraAttributesPractical
=========================

**Наследует:** :ref:`CameraAttributes<class_CameraAttributes>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Настройки камеры в удобном формате.

.. rst-class:: classref-introduction-group

Описание
----------------

Управляет атрибутами камеры, такими как автоматическая экспозиция, глубина резкости и переопределение экспозиции.

При использовании в :ref:`WorldEnvironment<class_WorldEnvironment>` он предоставляет настройки по умолчанию для экспозиции, автоматической экспозиции и глубины резкости, которые будут использоваться всеми камерами без собственных :ref:`CameraAttributes<class_CameraAttributes>`, включая камеру редактора. При использовании в :ref:`Camera3D<class_Camera3D>` он переопределит любые :ref:`CameraAttributes<class_CameraAttributes>`, установленные в :ref:`WorldEnvironment<class_WorldEnvironment>`. При использовании в :ref:`VoxelGI<class_VoxelGI>` или :ref:`LightmapGI<class_LightmapGI>` будут использоваться только настройки экспозиции.

\ **Примечание:** Размытие глубины резкости поддерживается только в методах рендеринга Forward+ и Mobile, но не в Compatibility.

\ **Примечание:** Автоматическая экспозиция поддерживается только в методе рендеринга Forward+, но не в Mobile или Compatibility.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`auto_exposure_max_sensitivity<class_CameraAttributesPractical_property_auto_exposure_max_sensitivity>` | ``800.0`` |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`auto_exposure_min_sensitivity<class_CameraAttributesPractical_property_auto_exposure_min_sensitivity>` | ``0.0``   |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`dof_blur_amount<class_CameraAttributesPractical_property_dof_blur_amount>`                             | ``0.1``   |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`dof_blur_far_distance<class_CameraAttributesPractical_property_dof_blur_far_distance>`                 | ``10.0``  |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`dof_blur_far_enabled<class_CameraAttributesPractical_property_dof_blur_far_enabled>`                   | ``false`` |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`dof_blur_far_transition<class_CameraAttributesPractical_property_dof_blur_far_transition>`             | ``5.0``   |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`dof_blur_near_distance<class_CameraAttributesPractical_property_dof_blur_near_distance>`               | ``2.0``   |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`dof_blur_near_enabled<class_CameraAttributesPractical_property_dof_blur_near_enabled>`                 | ``false`` |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`dof_blur_near_transition<class_CameraAttributesPractical_property_dof_blur_near_transition>`           | ``1.0``   |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_CameraAttributesPractical_property_auto_exposure_max_sensitivity:

.. rst-class:: classref-property

:ref:`float<class_float>` **auto_exposure_max_sensitivity** = ``800.0`` :ref:`🔗<class_CameraAttributesPractical_property_auto_exposure_max_sensitivity>`

.. rst-class:: classref-property-setget

- |void| **set_auto_exposure_max_sensitivity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_auto_exposure_max_sensitivity**\ (\ )

Максимальная чувствительность (в ISO), используемая при расчете автоэкспозиции. При расчете средней яркости сцены цветовые значения будут ограничены по крайней мере этим значением. Это ограничивает автоэкспозицию от экспонирования ниже определенной яркости, что приводит к точке отсечения, в которой сцена останется яркой.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPractical_property_auto_exposure_min_sensitivity:

.. rst-class:: classref-property

:ref:`float<class_float>` **auto_exposure_min_sensitivity** = ``0.0`` :ref:`🔗<class_CameraAttributesPractical_property_auto_exposure_min_sensitivity>`

.. rst-class:: classref-property-setget

- |void| **set_auto_exposure_min_sensitivity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_auto_exposure_min_sensitivity**\ (\ )

Минимальная чувствительность (в ISO), используемая при расчете автоэкспозиции. При расчете средней яркости сцены цветовые значения будут ограничены по крайней мере этим значением. Это ограничивает автоэкспозицию от экспонирования выше определенной яркости, что приводит к точке отсечения, в которой сцена останется темной.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPractical_property_dof_blur_amount:

.. rst-class:: classref-property

:ref:`float<class_float>` **dof_blur_amount** = ``0.1`` :ref:`🔗<class_CameraAttributesPractical_property_dof_blur_amount>`

.. rst-class:: classref-property-setget

- |void| **set_dof_blur_amount**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_dof_blur_amount**\ (\ )

Устанавливает максимальное количество размытия. При использовании физически обоснованных значений размытия будет действовать как множитель. Высокие значения приводят к увеличению количества размытия, но могут быть намного более затратными для расчета. Лучше всего поддерживать это значение как можно ниже для данного стиля искусства.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPractical_property_dof_blur_far_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **dof_blur_far_distance** = ``10.0`` :ref:`🔗<class_CameraAttributesPractical_property_dof_blur_far_distance>`

.. rst-class:: classref-property-setget

- |void| **set_dof_blur_far_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_dof_blur_far_distance**\ (\ )

Объекты, находящиеся дальше от :ref:`Camera3D<class_Camera3D>` на эту величину, будут размыты эффектом глубины резкости. Измеряется в метрах.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPractical_property_dof_blur_far_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **dof_blur_far_enabled** = ``false`` :ref:`🔗<class_CameraAttributesPractical_property_dof_blur_far_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_dof_blur_far_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_dof_blur_far_enabled**\ (\ )

Включает размытие глубины резкости для объектов, находящихся дальше, чем :ref:`dof_blur_far_distance<class_CameraAttributesPractical_property_dof_blur_far_distance>`. Сила размытия контролируется :ref:`dof_blur_amount<class_CameraAttributesPractical_property_dof_blur_amount>` и модулируется :ref:`dof_blur_far_transition<class_CameraAttributesPractical_property_dof_blur_far_transition>`.

\ **Примечание:** Размытие глубины резкости поддерживается только в методах рендеринга Forward+ и Mobile, но не Compatibility.

\ **Примечание:** Размытие глубины резкости не поддерживается на окнах просмотра с прозрачным фоном (где :ref:`Viewport.transparent_bg<class_Viewport_property_transparent_bg>` имеет значение ``true``).

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPractical_property_dof_blur_far_transition:

.. rst-class:: classref-property

:ref:`float<class_float>` **dof_blur_far_transition** = ``5.0`` :ref:`🔗<class_CameraAttributesPractical_property_dof_blur_far_transition>`

.. rst-class:: classref-property-setget

- |void| **set_dof_blur_far_transition**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_dof_blur_far_transition**\ (\ )

При положительном значении расстояние, на котором (начиная с :ref:`dof_blur_far_distance<class_CameraAttributesPractical_property_dof_blur_far_distance>`) эффект размытия будет масштабироваться от 0 до :ref:`dof_blur_amount<class_CameraAttributesPractical_property_dof_blur_amount>`. При отрицательном значении используется физически обоснованное масштабирование, поэтому эффект глубины резкости будет масштабироваться от 0 при :ref:`dof_blur_far_distance<class_CameraAttributesPractical_property_dof_blur_far_distance>` и будет увеличиваться физически точным образом по мере удаления объектов от :ref:`Camera3D<class_Camera3D>`.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPractical_property_dof_blur_near_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **dof_blur_near_distance** = ``2.0`` :ref:`🔗<class_CameraAttributesPractical_property_dof_blur_near_distance>`

.. rst-class:: classref-property-setget

- |void| **set_dof_blur_near_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_dof_blur_near_distance**\ (\ )

Объекты, расположенные ближе к :ref:`Camera3D<class_Camera3D>` на эту величину, будут размыты эффектом глубины резкости. Измеряется в метрах.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPractical_property_dof_blur_near_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **dof_blur_near_enabled** = ``false`` :ref:`🔗<class_CameraAttributesPractical_property_dof_blur_near_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_dof_blur_near_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_dof_blur_near_enabled**\ (\ )

Включает размытие глубины резкости для объектов ближе, чем :ref:`dof_blur_near_distance<class_CameraAttributesPractical_property_dof_blur_near_distance>`. Сила размытия контролируется :ref:`dof_blur_amount<class_CameraAttributesPractical_property_dof_blur_amount>` и модулируется :ref:`dof_blur_near_transition<class_CameraAttributesPractical_property_dof_blur_near_transition>`.

\ **Примечание:** Размытие глубины резкости поддерживается только в методах рендеринга Forward+ и Mobile, но не Compatibility.

\ **Примечание:** Размытие глубины резкости не поддерживается на окнах просмотра с прозрачным фоном (где :ref:`Viewport.transparent_bg<class_Viewport_property_transparent_bg>` имеет значение ``true``).

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPractical_property_dof_blur_near_transition:

.. rst-class:: classref-property

:ref:`float<class_float>` **dof_blur_near_transition** = ``1.0`` :ref:`🔗<class_CameraAttributesPractical_property_dof_blur_near_transition>`

.. rst-class:: classref-property-setget

- |void| **set_dof_blur_near_transition**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_dof_blur_near_transition**\ (\ )

При положительном значении расстояние, на котором эффект размытия будет масштабироваться от 0 до :ref:`dof_blur_amount<class_CameraAttributesPractical_property_dof_blur_amount>`, заканчиваясь на :ref:`dof_blur_near_distance<class_CameraAttributesPractical_property_dof_blur_near_distance>`. При отрицательном значении используется физически обоснованное масштабирование, поэтому эффект глубины резкости будет масштабироваться от 0 до :ref:`dof_blur_near_distance<class_CameraAttributesPractical_property_dof_blur_near_distance>` и будет увеличиваться физически точным образом по мере приближения объектов к :ref:`Camera3D<class_Camera3D>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
