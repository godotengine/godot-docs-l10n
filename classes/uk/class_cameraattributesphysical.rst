:github_url: hide

.. _class_CameraAttributesPhysical:

CameraAttributesPhysical
========================

**Успадковує:** :ref:`CameraAttributes<class_CameraAttributes>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Фізично засновані налаштування камери.

.. rst-class:: classref-introduction-group

Опис
--------

**CameraAttributesPhysical** is used to set rendering settings based on a physically-based camera's settings. It is responsible for exposure, auto-exposure, and depth of field.

When used in a :ref:`WorldEnvironment<class_WorldEnvironment>` it provides default settings for exposure, auto-exposure, and depth of field that will be used by all cameras without their own :ref:`CameraAttributes<class_CameraAttributes>`, including the editor camera. When used in a :ref:`Camera3D<class_Camera3D>` it will override any :ref:`CameraAttributes<class_CameraAttributes>` set in the :ref:`WorldEnvironment<class_WorldEnvironment>` and will override the :ref:`Camera3D<class_Camera3D>`\ s :ref:`Camera3D.far<class_Camera3D_property_far>`, :ref:`Camera3D.near<class_Camera3D_property_near>`, :ref:`Camera3D.fov<class_Camera3D_property_fov>`, and :ref:`Camera3D.keep_aspect<class_Camera3D_property_keep_aspect>` properties. When used in :ref:`VoxelGI<class_VoxelGI>` or :ref:`LightmapGI<class_LightmapGI>`, only the exposure settings will be used.

The default settings are intended for use in an outdoor environment, tips for settings for use in an indoor environment can be found in each setting's documentation.

\ **Note:** Depth of field blur is only supported in the Forward+ and Mobile rendering methods, not Compatibility.

\ **Note:** Auto-exposure is only supported in the Forward+ rendering method, not Mobile or Compatibility.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Блоки фізичного освітлення та камери <../tutorials/3d/physical_light_and_camera_units>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`auto_exposure_max_exposure_value<class_CameraAttributesPhysical_property_auto_exposure_max_exposure_value>` | ``10.0``   |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`auto_exposure_min_exposure_value<class_CameraAttributesPhysical_property_auto_exposure_min_exposure_value>` | ``-8.0``   |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`exposure_aperture<class_CameraAttributesPhysical_property_exposure_aperture>`                               | ``16.0``   |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`exposure_shutter_speed<class_CameraAttributesPhysical_property_exposure_shutter_speed>`                     | ``100.0``  |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`frustum_far<class_CameraAttributesPhysical_property_frustum_far>`                                           | ``4000.0`` |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`frustum_focal_length<class_CameraAttributesPhysical_property_frustum_focal_length>`                         | ``35.0``   |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`frustum_focus_distance<class_CameraAttributesPhysical_property_frustum_focus_distance>`                     | ``10.0``   |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`frustum_near<class_CameraAttributesPhysical_property_frustum_near>`                                         | ``0.05``   |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------+------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_fov<class_CameraAttributesPhysical_method_get_fov>`\ (\ ) |const| |
   +---------------------------+-----------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_CameraAttributesPhysical_property_auto_exposure_max_exposure_value:

.. rst-class:: classref-property

:ref:`float<class_float>` **auto_exposure_max_exposure_value** = ``10.0`` :ref:`🔗<class_CameraAttributesPhysical_property_auto_exposure_max_exposure_value>`

.. rst-class:: classref-property-setget

- |void| **set_auto_exposure_max_exposure_value**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_auto_exposure_max_exposure_value**\ (\ )

Максимальна яскравість (у EV100), яка використовується під час розрахунку автоматичної експозиції. Під час обчислення середньої яскравості сцени значення кольорів будуть обмежені принаймні до цього значення. Це обмежує автоматичну експозицію від експозиції нижче певної яскравості, що призводить до точки відсікання, де сцена залишатиметься яскравою.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPhysical_property_auto_exposure_min_exposure_value:

.. rst-class:: classref-property

:ref:`float<class_float>` **auto_exposure_min_exposure_value** = ``-8.0`` :ref:`🔗<class_CameraAttributesPhysical_property_auto_exposure_min_exposure_value>`

.. rst-class:: classref-property-setget

- |void| **set_auto_exposure_min_exposure_value**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_auto_exposure_min_exposure_value**\ (\ )

Мінімальна яскравість (у EV100), яка використовується під час розрахунку автоматичної експозиції. Під час обчислення середньої яскравості сцени значення кольорів будуть обмежені принаймні до цього значення. Це обмежує автоматичну експозицію від експозиції вище певної яскравості, що призводить до точки зрізу, де сцена залишатиметься темною.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPhysical_property_exposure_aperture:

.. rst-class:: classref-property

:ref:`float<class_float>` **exposure_aperture** = ``16.0`` :ref:`🔗<class_CameraAttributesPhysical_property_exposure_aperture>`

.. rst-class:: classref-property-setget

- |void| **set_aperture**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_aperture**\ (\ )

Розмір діафрагми камери, виміряний у діафрагмах. Діафрагма — це безрозмірне співвідношення між фокусною відстанню камери та діаметром діафрагми. Значення високої діафрагми призведе до меншої діафрагми, що призводить до тьмянішого зображення та чіткішого фокусування. Низька діафрагма створює широку діафрагму, яка пропускає більше світла, що призводить до яскравішого та менш сфокусованого зображення. Значення за замовчуванням підходить для зовнішнього освітлення вдень (тобто для використання за замовчуванням :ref:`DirectionalLight3D<class_DirectionalLight3D>`), для внутрішнього освітлення більш прийнятним є значення від 2 до 4.

 Доступно, лише якщо ввімкнено :ref:`ProjectSettings.rendering/lights_and_shadows/use_physical_light_units<class_ProjectSettings_property_rendering/lights_and_shadows/use_physical_light_units>`.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPhysical_property_exposure_shutter_speed:

.. rst-class:: classref-property

:ref:`float<class_float>` **exposure_shutter_speed** = ``100.0`` :ref:`🔗<class_CameraAttributesPhysical_property_exposure_shutter_speed>`

.. rst-class:: classref-property-setget

- |void| **set_shutter_speed**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_shutter_speed**\ (\ )

Час для відкриття та закриття затвора, оцінюється як ``1 / shutter_speed`` секунди. Більше значення пропускатиме менше світла (що призводить до темнішого зображення), тоді як нижче значення пропускатиме більше світла (що призводить до більш яскравого зображення).

 Доступно, лише якщо ввімкнено :ref:`ProjectSettings.rendering/lights_and_shadows/use_physical_light_units<class_ProjectSettings_property_rendering/lights_and_shadows/use_physical_light_units>`.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPhysical_property_frustum_far:

.. rst-class:: classref-property

:ref:`float<class_float>` **frustum_far** = ``4000.0`` :ref:`🔗<class_CameraAttributesPhysical_property_frustum_far>`

.. rst-class:: classref-property-setget

- |void| **set_far**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_far**\ (\ )

Значення заміни для :ref:`Camera3D.far<class_Camera3D_property_far>`. Використовується внутрішньо під час обчислення глибини різкості. Якщо приєднати до :ref:`Camera3D<class_Camera3D>` як його :ref:`Camera3D.attributes<class_Camera3D_property_attributes>`, він замінить властивість :ref:`Camera3D.far<class_Camera3D_property_far>`.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPhysical_property_frustum_focal_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **frustum_focal_length** = ``35.0`` :ref:`🔗<class_CameraAttributesPhysical_property_frustum_focal_length>`

.. rst-class:: classref-property-setget

- |void| **set_focal_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_focal_length**\ (\ )

Відстань між об’єктивом камери та діафрагмою камери, вимірюється в міліметрах. Керує полем зору та глибиною різкості. Більша фокусна відстань призведе до меншого поля зору та меншої глибини різкості, тобто менше об’єктів буде у фокусі. Менша фокусна відстань призведе до ширшого поля зору та більшої глибини різкості, тобто більше об’єктів буде у фокусі. Якщо прикріпити до :ref:`Camera3D<class_Camera3D>` як його :ref:`Camera3D.attributes<class_Camera3D_property_attributes>`, він замінить властивості :ref:`Camera3D.fov<class_Camera3D_property_fov>` і :ref:`Camera3D.keep_aspect<class_Camera3D_property_keep_aspect>`.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPhysical_property_frustum_focus_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **frustum_focus_distance** = ``10.0`` :ref:`🔗<class_CameraAttributesPhysical_property_frustum_focus_distance>`

.. rst-class:: classref-property-setget

- |void| **set_focus_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_focus_distance**\ (\ )

Відстань від камери об'єкта, який буде у фокусі, вимірюється в метрах. Внутрішньо це буде закріплено, щоб бути принаймні на 1 міліметр більше, ніж :ref:`frustum_focal_length<class_CameraAttributesPhysical_property_frustum_focal_length>`.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPhysical_property_frustum_near:

.. rst-class:: classref-property

:ref:`float<class_float>` **frustum_near** = ``0.05`` :ref:`🔗<class_CameraAttributesPhysical_property_frustum_near>`

.. rst-class:: classref-property-setget

- |void| **set_near**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_near**\ (\ )

Перевизначає значення для :ref:`Camera3D.near<class_Camera3D_property_near>`. Використовується внутрішньо під час обчислення глибини різкості. Якщо приєднати до :ref:`Camera3D<class_Camera3D>` як його :ref:`Camera3D.attributes<class_Camera3D_property_attributes>`, він замінить властивість :ref:`Camera3D.near<class_Camera3D_property_near>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_CameraAttributesPhysical_method_get_fov:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_fov**\ (\ ) |const| :ref:`🔗<class_CameraAttributesPhysical_method_get_fov>`

Повертає вертикальне поле зору, яке відповідає :ref:`frustum_focal_length<class_CameraAttributesPhysical_property_frustum_focal_length>`. Це значення обчислюється внутрішньо щоразу, коли змінюється :ref:`frustum_focal_length<class_CameraAttributesPhysical_property_frustum_focal_length>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
