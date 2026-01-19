:github_url: hide

.. _class_CanvasGroup:

CanvasGroup
===========

**Наследует:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Объединяет несколько 2D-узлов в одну операцию рисования.

.. rst-class:: classref-introduction-group

Описание
----------------

Дочерние узлы :ref:`CanvasItem<class_CanvasItem>` группы **CanvasGroup** отрисовываются как единый объект. Это позволяет, например, отрисовывать перекрывающиеся полупрозрачные 2D-узлы, не делая перекрывающиеся участки более непрозрачными, чем предполагалось (для достижения этого эффекта установите свойство :ref:`CanvasItem.self_modulate<class_CanvasItem_property_self_modulate>` для **CanvasGroup**).

\ **Примечание:** **CanvasGroup** использует пользовательский шейдер для чтения из буфера фона для отрисовки своих дочерних элементов. Присвоение :ref:`Material<class_Material>` группе **CanvasGroup** переопределяет встроенный шейдер. Чтобы воспроизвести поведение встроенного шейдера в пользовательском :ref:`Shader<class_Shader>`, используйте следующее:

::

    shader_type canvas_item;
    render_mode unshaded;

    uniform sampler2D screen_texture : hint_screen_texture, repeat_disable, filter_nearest;

    void fragment() {
        vec4 c = textureLod(screen_texture, SCREEN_UV, 0.0);

        if (c.a > 0.0001) {
            c.rgb /= c.a;
        }

        COLOR *= c;
    }

\ **Примечание:** Поскольку **CanvasGroup** и :ref:`CanvasItem.clip_children<class_CanvasItem_property_clip_children>` используют буфер заднего вида, дочерние элементы **CanvasGroup**, у которых :ref:`CanvasItem.clip_children<class_CanvasItem_property_clip_children>` установлено на значение, отличное от :ref:`CanvasItem.CLIP_CHILDREN_DISABLED<class_CanvasItem_constant_CLIP_CHILDREN_DISABLED>`, не будут работать корректно.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`clear_margin<class_CanvasGroup_property_clear_margin>` | ``10.0``  |
   +---------------------------+--------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`fit_margin<class_CanvasGroup_property_fit_margin>`     | ``10.0``  |
   +---------------------------+--------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`use_mipmaps<class_CanvasGroup_property_use_mipmaps>`   | ``false`` |
   +---------------------------+--------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_CanvasGroup_property_clear_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **clear_margin** = ``10.0`` :ref:`🔗<class_CanvasGroup_property_clear_margin>`

.. rst-class:: classref-property-setget

- |void| **set_clear_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_clear_margin**\ (\ )

Устанавливает размер поля, используемого для расширения очищаемого прямоугольника этого **CanvasGroup**. Это расширяет область заднего буфера, которая будет использоваться **CanvasGroup**. Меньшее поле уменьшит область используемого заднего буфера, что может повысить производительность, однако, если включен :ref:`use_mipmaps<class_CanvasGroup_property_use_mipmaps>`, небольшое поле может привести к ошибкам mipmap на краю **CanvasGroup**. Соответственно, его следует оставить как можно меньше, но следует увеличить, если по краям группы холстов появляются артефакты.

.. rst-class:: classref-item-separator

----

.. _class_CanvasGroup_property_fit_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **fit_margin** = ``10.0`` :ref:`🔗<class_CanvasGroup_property_fit_margin>`

.. rst-class:: classref-property-setget

- |void| **set_fit_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_fit_margin**\ (\ )

Устанавливает размер поля, используемого для расширения отрисовываемого прямоугольника этого **CanvasGroup**. Размер **CanvasGroup** определяется путем подгонки прямоугольника вокруг его дочерних элементов, а затем расширения этого прямоугольника на :ref:`fit_margin<class_CanvasGroup_property_fit_margin>`. Это увеличивает как используемую область заднего буфера, так и область, охватываемую **CanvasGroup**, что может снизить производительность. Это должно быть как можно меньше и должно расширяться только тогда, когда требуется увеличенный размер (например, для пользовательских эффектов шейдера).

.. rst-class:: classref-item-separator

----

.. _class_CanvasGroup_property_use_mipmaps:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_mipmaps** = ``false`` :ref:`🔗<class_CanvasGroup_property_use_mipmaps>`

.. rst-class:: classref-property-setget

- |void| **set_use_mipmaps**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_mipmaps**\ (\ )

Если ``true``, вычисляет mip-карты для заднего буфера перед рисованием **CanvasGroup**, чтобы mip-карты можно было использовать в пользовательском :ref:`ShaderMaterial<class_ShaderMaterial>`, прикрепленном к **CanvasGroup**. Генерация mip-карт снижает производительность, поэтому ее не следует включать, если это не требуется.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
