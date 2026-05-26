:github_url: hide

.. _class_GradientTexture2D:

GradientTexture2D
=================

**Наследует:** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

2D-текстура, создающая узор с цветами, полученными из :ref:`Gradient<class_Gradient>`.

.. rst-class:: classref-introduction-group

Описание
----------------

2D-текстура, которая получает цвета из :ref:`Gradient<class_Gradient>` для заполнения данных текстуры. Эта текстура способна преобразовывать цветовой переход в различные узоры, такие как линейный или радиальный градиент. Текстура заполняется путем интерполяции цветов, начиная со смещений :ref:`fill_from<class_GradientTexture2D_property_fill_from>` до :ref:`fill_to<class_GradientTexture2D_property_fill_to>` по умолчанию, но градиентную заливку можно повторять, чтобы покрыть всю текстуру. 

Градиент выбирается индивидуально для каждого пикселя, поэтому он не обязательно представляет собой точную копию градиента (см. :ref:`width<class_GradientTexture2D_property_width>` и :ref:`height<class_GradientTexture2D_property_height>`). См. также :ref:`GradientTexture1D<class_GradientTexture1D>`, :ref:`CurveTexture<class_CurveTexture>` и :ref:`CurveXYZTexture<class_CurveXYZTexture>`.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +----------------------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Fill<enum_GradientTexture2D_Fill>`     | :ref:`fill<class_GradientTexture2D_property_fill>`           | ``0``                                                                                  |
   +----------------------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                | :ref:`fill_from<class_GradientTexture2D_property_fill_from>` | ``Vector2(0, 0)``                                                                      |
   +----------------------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                | :ref:`fill_to<class_GradientTexture2D_property_fill_to>`     | ``Vector2(1, 0)``                                                                      |
   +----------------------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Gradient<class_Gradient>`              | :ref:`gradient<class_GradientTexture2D_property_gradient>`   |                                                                                        |
   +----------------------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                        | :ref:`height<class_GradientTexture2D_property_height>`       | ``64``                                                                                 |
   +----------------------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Repeat<enum_GradientTexture2D_Repeat>` | :ref:`repeat<class_GradientTexture2D_property_repeat>`       | ``0``                                                                                  |
   +----------------------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                      | resource_local_to_scene                                      | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +----------------------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                      | :ref:`use_hdr<class_GradientTexture2D_property_use_hdr>`     | ``false``                                                                              |
   +----------------------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                        | :ref:`width<class_GradientTexture2D_property_width>`         | ``64``                                                                                 |
   +----------------------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_GradientTexture2D_Fill:

.. rst-class:: classref-enumeration

enum **Fill**: :ref:`🔗<enum_GradientTexture2D_Fill>`

.. _class_GradientTexture2D_constant_FILL_LINEAR:

.. rst-class:: classref-enumeration-constant

:ref:`Fill<enum_GradientTexture2D_Fill>` **FILL_LINEAR** = ``0``

Цвета линейно интерполируются по прямой линии.

.. _class_GradientTexture2D_constant_FILL_RADIAL:

.. rst-class:: classref-enumeration-constant

:ref:`Fill<enum_GradientTexture2D_Fill>` **FILL_RADIAL** = ``1``

Цвета линейно интерполируются по круговому шаблону.

.. _class_GradientTexture2D_constant_FILL_SQUARE:

.. rst-class:: classref-enumeration-constant

:ref:`Fill<enum_GradientTexture2D_Fill>` **FILL_SQUARE** = ``2``

Цвета линейно интерполируются в квадратный узор.

.. _class_GradientTexture2D_constant_FILL_CONIC:

.. rst-class:: classref-enumeration-constant

:ref:`Fill<enum_GradientTexture2D_Fill>` **FILL_CONIC** = ``3``

The colors are linearly interpolated in a cone pattern.

.. rst-class:: classref-item-separator

----

.. _enum_GradientTexture2D_Repeat:

.. rst-class:: classref-enumeration

enum **Repeat**: :ref:`🔗<enum_GradientTexture2D_Repeat>`

.. _class_GradientTexture2D_constant_REPEAT_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`Repeat<enum_GradientTexture2D_Repeat>` **REPEAT_NONE** = ``0``

Градиентная заливка ограничена диапазоном, определяемым смещениями :ref:`fill_from<class_GradientTexture2D_property_fill_from>` – :ref:`fill_to<class_GradientTexture2D_property_fill_to>`.

.. _class_GradientTexture2D_constant_REPEAT:

.. rst-class:: classref-enumeration-constant

:ref:`Repeat<enum_GradientTexture2D_Repeat>` **REPEAT** = ``1``

Текстура заполняется, начиная со смещений :ref:`fill_from<class_GradientTexture2D_property_fill_from>` до :ref:`fill_to<class_GradientTexture2D_property_fill_to>`, повторяя один и тот же узор в обоих направлениях.

.. _class_GradientTexture2D_constant_REPEAT_MIRROR:

.. rst-class:: classref-enumeration-constant

:ref:`Repeat<enum_GradientTexture2D_Repeat>` **REPEAT_MIRROR** = ``2``

Текстура заполняется, начиная со смещений :ref:`fill_from<class_GradientTexture2D_property_fill_from>` до :ref:`fill_to<class_GradientTexture2D_property_fill_to>`, зеркально отображая узор в обоих направлениях.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_GradientTexture2D_property_fill:

.. rst-class:: classref-property

:ref:`Fill<enum_GradientTexture2D_Fill>` **fill** = ``0`` :ref:`🔗<class_GradientTexture2D_property_fill>`

.. rst-class:: classref-property-setget

- |void| **set_fill**\ (\ value\: :ref:`Fill<enum_GradientTexture2D_Fill>`\ )
- :ref:`Fill<enum_GradientTexture2D_Fill>` **get_fill**\ (\ )

Тип заливки градиента.

.. rst-class:: classref-item-separator

----

.. _class_GradientTexture2D_property_fill_from:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **fill_from** = ``Vector2(0, 0)`` :ref:`🔗<class_GradientTexture2D_property_fill_from>`

.. rst-class:: classref-property-setget

- |void| **set_fill_from**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_fill_from**\ (\ )

Начальное смещение, используемое для заполнения текстуры, указанной в UV-координатах.

.. rst-class:: classref-item-separator

----

.. _class_GradientTexture2D_property_fill_to:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **fill_to** = ``Vector2(1, 0)`` :ref:`🔗<class_GradientTexture2D_property_fill_to>`

.. rst-class:: classref-property-setget

- |void| **set_fill_to**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_fill_to**\ (\ )

Конечное смещение, используемое для заполнения текстуры, указанной в UV-координатах.

.. rst-class:: classref-item-separator

----

.. _class_GradientTexture2D_property_gradient:

.. rst-class:: classref-property

:ref:`Gradient<class_Gradient>` **gradient** :ref:`🔗<class_GradientTexture2D_property_gradient>`

.. rst-class:: classref-property-setget

- |void| **set_gradient**\ (\ value\: :ref:`Gradient<class_Gradient>`\ )
- :ref:`Gradient<class_Gradient>` **get_gradient**\ (\ )

:ref:`Gradient<class_Gradient>`, используемый для заливки текстуры.

.. rst-class:: classref-item-separator

----

.. _class_GradientTexture2D_property_height:

.. rst-class:: classref-property

:ref:`int<class_int>` **height** = ``64`` :ref:`🔗<class_GradientTexture2D_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_height**\ (\ )

Количество вертикальных цветовых образцов, которые будут получены из :ref:`Gradient<class_Gradient>`, которое также представляет высоту текстуры.

.. rst-class:: classref-item-separator

----

.. _class_GradientTexture2D_property_repeat:

.. rst-class:: classref-property

:ref:`Repeat<enum_GradientTexture2D_Repeat>` **repeat** = ``0`` :ref:`🔗<class_GradientTexture2D_property_repeat>`

.. rst-class:: classref-property-setget

- |void| **set_repeat**\ (\ value\: :ref:`Repeat<enum_GradientTexture2D_Repeat>`\ )
- :ref:`Repeat<enum_GradientTexture2D_Repeat>` **get_repeat**\ (\ )

Тип повторения градиента.

.. rst-class:: classref-item-separator

----

.. _class_GradientTexture2D_property_use_hdr:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_hdr** = ``false`` :ref:`🔗<class_GradientTexture2D_property_use_hdr>`

.. rst-class:: classref-property-setget

- |void| **set_use_hdr**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_hdr**\ (\ )

Если ``true``, сгенерированная текстура будет поддерживать высокий динамический диапазон (формат :ref:`Image.FORMAT_RGBAF<class_Image_constant_FORMAT_RGBAF>`). Это позволяет работать эффектам свечения, если :ref:`Environment.glow_enabled<class_Environment_property_glow_enabled>` имеет значение ``true``. Если ``false``, сгенерированная текстура будет использовать низкий динамический диапазон; слишком яркие цвета будут ограничены (формат :ref:`Image.FORMAT_RGBA8<class_Image_constant_FORMAT_RGBA8>`).

.. rst-class:: classref-item-separator

----

.. _class_GradientTexture2D_property_width:

.. rst-class:: classref-property

:ref:`int<class_int>` **width** = ``64`` :ref:`🔗<class_GradientTexture2D_property_width>`

.. rst-class:: classref-property-setget

- |void| **set_width**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_width**\ (\ )

Количество горизонтальных цветовых образцов, которые будут получены из :ref:`Gradient<class_Gradient>`, которое также представляет ширину текстуры.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
