:github_url: hide

.. _class_TextMesh:

TextMesh
========

**Наследует:** :ref:`PrimitiveMesh<class_PrimitiveMesh>` **<** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Создает :ref:`PrimitiveMesh<class_PrimitiveMesh>` из текста.

.. rst-class:: classref-introduction-group

Описание
----------------

Сгенерируйте :ref:`PrimitiveMesh<class_PrimitiveMesh>` из текста.

TextMesh можно сгенерировать только при использовании динамических шрифтов с векторными контурами глифов. Растровые шрифты (включая растровые данные в контейнерах TrueType/OpenType, например, цветные шрифты эмодзи) не поддерживаются.

UV-развёртка состоит из четырёх горизонтальных полос, расположенных сверху вниз: 40% высоты для лицевой стороны, 40% для обратной стороны, 10% для внешних и 10% для внутренних сторон.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`3D текст <../tutorials/3d/3d_text>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`AutowrapMode<enum_TextServer_AutowrapMode>`                         | :ref:`autowrap_mode<class_TextMesh_property_autowrap_mode>`                                                 | ``0``             |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                                 | :ref:`curve_step<class_TextMesh_property_curve_step>`                                                       | ``0.5``           |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                                 | :ref:`depth<class_TextMesh_property_depth>`                                                                 | ``0.05``          |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`Font<class_Font>`                                                   | :ref:`font<class_TextMesh_property_font>`                                                                   |                   |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`                                                     | :ref:`font_size<class_TextMesh_property_font_size>`                                                         | ``16``            |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>`         | :ref:`horizontal_alignment<class_TextMesh_property_horizontal_alignment>`                                   | ``1``             |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | |bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\] | :ref:`justification_flags<class_TextMesh_property_justification_flags>`                                     | ``163``           |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`String<class_String>`                                               | :ref:`language<class_TextMesh_property_language>`                                                           | ``""``            |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                                 | :ref:`line_spacing<class_TextMesh_property_line_spacing>`                                                   | ``0.0``           |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`                                             | :ref:`offset<class_TextMesh_property_offset>`                                                               | ``Vector2(0, 0)`` |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                                 | :ref:`pixel_size<class_TextMesh_property_pixel_size>`                                                       | ``0.01``          |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`StructuredTextParser<enum_TextServer_StructuredTextParser>`         | :ref:`structured_text_bidi_override<class_TextMesh_property_structured_text_bidi_override>`                 | ``0``             |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`Array<class_Array>`                                                 | :ref:`structured_text_bidi_override_options<class_TextMesh_property_structured_text_bidi_override_options>` | ``[]``            |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`String<class_String>`                                               | :ref:`text<class_TextMesh_property_text>`                                                                   | ``""``            |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`Direction<enum_TextServer_Direction>`                               | :ref:`text_direction<class_TextMesh_property_text_direction>`                                               | ``0``             |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                                   | :ref:`uppercase<class_TextMesh_property_uppercase>`                                                         | ``false``         |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`VerticalAlignment<enum_@GlobalScope_VerticalAlignment>`             | :ref:`vertical_alignment<class_TextMesh_property_vertical_alignment>`                                       | ``1``             |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                                 | :ref:`width<class_TextMesh_property_width>`                                                                 | ``500.0``         |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_TextMesh_property_autowrap_mode:

.. rst-class:: classref-property

:ref:`AutowrapMode<enum_TextServer_AutowrapMode>` **autowrap_mode** = ``0`` :ref:`🔗<class_TextMesh_property_autowrap_mode>`

.. rst-class:: classref-property-setget

- |void| **set_autowrap_mode**\ (\ value\: :ref:`AutowrapMode<enum_TextServer_AutowrapMode>`\ )
- :ref:`AutowrapMode<enum_TextServer_AutowrapMode>` **get_autowrap_mode**\ (\ )

Если установлено значение, отличное от :ref:`TextServer.AUTOWRAP_OFF<class_TextServer_constant_AUTOWRAP_OFF>`, текст будет заключен в ограничивающий прямоугольник узла. Если изменить размер узла, он автоматически изменит свою высоту, чтобы показать весь текст.

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_curve_step:

.. rst-class:: classref-property

:ref:`float<class_float>` **curve_step** = ``0.5`` :ref:`🔗<class_TextMesh_property_curve_step>`

.. rst-class:: classref-property-setget

- |void| **set_curve_step**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_curve_step**\ (\ )

Шаг (в пикселях) используется для аппроксимации кривых Безье. Меньшие значения приводят к более плавным кривым, но их генерация и отрисовка занимают больше времени. Рекомендуется корректировать этот параметр в зависимости от размера шрифта и типичного расстояния просмотра.

\ **Примечание:** Изменение этого свойства приведет к перегенерации сетки, что является медленной операцией, особенно при больших размерах шрифта и длинных текстах.

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_depth:

.. rst-class:: classref-property

:ref:`float<class_float>` **depth** = ``0.05`` :ref:`🔗<class_TextMesh_property_depth>`

.. rst-class:: classref-property-setget

- |void| **set_depth**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_depth**\ (\ )

Если задано значение ``0.0`` для сетки только для передней поверхности, генерируется глубина, а UV-разметка изменяется для использования полной текстуры только для передней поверхности.

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_font:

.. rst-class:: classref-property

:ref:`Font<class_Font>` **font** :ref:`🔗<class_TextMesh_property_font>`

.. rst-class:: classref-property-setget

- |void| **set_font**\ (\ value\: :ref:`Font<class_Font>`\ )
- :ref:`Font<class_Font>` **get_font**\ (\ )

Конфигурация шрифта, используемая для отображения текста.

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_font_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **font_size** = ``16`` :ref:`🔗<class_TextMesh_property_font_size>`

.. rst-class:: classref-property-setget

- |void| **set_font_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_font_size**\ (\ )

Размер шрифта текста в **TextMesh**. Это свойство работает в тандеме с :ref:`pixel_size<class_TextMesh_property_pixel_size>`. Более высокие значения приведут к более детализированному шрифту, независимо от :ref:`curve_step<class_TextMesh_property_curve_step>` и :ref:`pixel_size<class_TextMesh_property_pixel_size>`. Рекомендуется поддерживать это значение ниже 63 (включительно) для хорошей производительности и регулировать :ref:`pixel_size<class_TextMesh_property_pixel_size>` по мере необходимости для увеличения размера текста.

\ **Примечание:** Изменение этого свойства приведет к перегенерации сетки, что является медленной операцией, особенно при больших размерах шрифта и длинных текстах. Для эффективного изменения размера текста в реальном времени вместо этого измените :ref:`Node3D.scale<class_Node3D_property_scale>` узла.

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_horizontal_alignment:

.. rst-class:: classref-property

:ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **horizontal_alignment** = ``1`` :ref:`🔗<class_TextMesh_property_horizontal_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_horizontal_alignment**\ (\ value\: :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>`\ )
- :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **get_horizontal_alignment**\ (\ )

Управляет горизонтальным выравниванием текста. Поддерживает выравнивание по левому краю, по центру, по правому краю и заполнение (также известное как выравнивание по ширине).

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_justification_flags:

.. rst-class:: classref-property

|bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\] **justification_flags** = ``163`` :ref:`🔗<class_TextMesh_property_justification_flags>`

.. rst-class:: classref-property-setget

- |void| **set_justification_flags**\ (\ value\: |bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\]\ )
- |bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\] **get_justification_flags**\ (\ )

Правила выравнивания заливки линий.

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_language:

.. rst-class:: classref-property

:ref:`String<class_String>` **language** = ``""`` :ref:`🔗<class_TextMesh_property_language>`

.. rst-class:: classref-property-setget

- |void| **set_language**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_language**\ (\ )

Код языка, используемый алгоритмами переноса строк и форматирования текста. Если оставить поле пустым, будет использоваться текущая локаль.

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_line_spacing:

.. rst-class:: classref-property

:ref:`float<class_float>` **line_spacing** = ``0.0`` :ref:`🔗<class_TextMesh_property_line_spacing>`

.. rst-class:: classref-property-setget

- |void| **set_line_spacing**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_line_spacing**\ (\ )

Дополнительный вертикальный интервал между строками (в пикселях), интервал добавляется к спуску строки. Это значение может быть отрицательным.

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **offset** = ``Vector2(0, 0)`` :ref:`🔗<class_TextMesh_property_offset>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_offset**\ (\ )

Смещение при отрисовке текста (в пикселях).

\ **Примечание:** Изменение этого свойства приведет к перегенерации сетки, что является медленной операцией. Для эффективного изменения положения текста в реальном времени вместо этого измените :ref:`Node3D.position<class_Node3D_property_position>` узла.

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_pixel_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **pixel_size** = ``0.01`` :ref:`🔗<class_TextMesh_property_pixel_size>`

.. rst-class:: classref-property-setget

- |void| **set_pixel_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pixel_size**\ (\ )

Размер текста, равный ширине одного пикселя, используется для его масштабирования в 3D. Это свойство работает совместно с :ref:`font_size<class_TextMesh_property_font_size>`.

\ **Примечание:** Изменение этого свойства приведет к перегенерации сетки, что является медленной операцией, особенно при больших размерах шрифта и длинных текстах. Для эффективного изменения размера текста в реальном времени вместо этого измените :ref:`Node3D.scale<class_Node3D_property_scale>` узла.

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_structured_text_bidi_override:

.. rst-class:: classref-property

:ref:`StructuredTextParser<enum_TextServer_StructuredTextParser>` **structured_text_bidi_override** = ``0`` :ref:`🔗<class_TextMesh_property_structured_text_bidi_override>`

.. rst-class:: classref-property-setget

- |void| **set_structured_text_bidi_override**\ (\ value\: :ref:`StructuredTextParser<enum_TextServer_StructuredTextParser>`\ )
- :ref:`StructuredTextParser<enum_TextServer_StructuredTextParser>` **get_structured_text_bidi_override**\ (\ )

Установите переопределение алгоритма BiDi для структурированного текста.

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_structured_text_bidi_override_options:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **structured_text_bidi_override_options** = ``[]`` :ref:`🔗<class_TextMesh_property_structured_text_bidi_override_options>`

.. rst-class:: classref-property-setget

- |void| **set_structured_text_bidi_override_options**\ (\ value\: :ref:`Array<class_Array>`\ )
- :ref:`Array<class_Array>` **get_structured_text_bidi_override_options**\ (\ )

Установите дополнительные параметры для переопределения BiDi.

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_text:

.. rst-class:: classref-property

:ref:`String<class_String>` **text** = ``""`` :ref:`🔗<class_TextMesh_property_text>`

.. rst-class:: classref-property-setget

- |void| **set_text**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_text**\ (\ )

Текст для генерации сетки.

\ **Примечание:** Поскольку он является :ref:`Resource<class_Resource>`, он не следует правилам :ref:`Node.auto_translate_mode<class_Node_property_auto_translate_mode>`. Если требуется отключить перевод, это следует сделать вручную с помощью :ref:`Object.set_message_translation()<class_Object_method_set_message_translation>`.

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_text_direction:

.. rst-class:: classref-property

:ref:`Direction<enum_TextServer_Direction>` **text_direction** = ``0`` :ref:`🔗<class_TextMesh_property_text_direction>`

.. rst-class:: classref-property-setget

- |void| **set_text_direction**\ (\ value\: :ref:`Direction<enum_TextServer_Direction>`\ )
- :ref:`Direction<enum_TextServer_Direction>` **get_text_direction**\ (\ )

Направление написания базового текста.

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_uppercase:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **uppercase** = ``false`` :ref:`🔗<class_TextMesh_property_uppercase>`

.. rst-class:: classref-property-setget

- |void| **set_uppercase**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_uppercase**\ (\ )

Если ``true``, весь текст отображается в ЗАГЛАВНОМ регистре.

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_vertical_alignment:

.. rst-class:: classref-property

:ref:`VerticalAlignment<enum_@GlobalScope_VerticalAlignment>` **vertical_alignment** = ``1`` :ref:`🔗<class_TextMesh_property_vertical_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_vertical_alignment**\ (\ value\: :ref:`VerticalAlignment<enum_@GlobalScope_VerticalAlignment>`\ )
- :ref:`VerticalAlignment<enum_@GlobalScope_VerticalAlignment>` **get_vertical_alignment**\ (\ )

Управляет вертикальным выравниванием текста. Поддерживает верх, центр и низ.

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_width:

.. rst-class:: classref-property

:ref:`float<class_float>` **width** = ``500.0`` :ref:`🔗<class_TextMesh_property_width>`

.. rst-class:: classref-property-setget

- |void| **set_width**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_width**\ (\ )

Ширина текста (в пикселях), используемая для выравнивания заливки.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
