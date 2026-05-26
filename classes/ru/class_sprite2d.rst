:github_url: hide

.. _class_Sprite2D:

Sprite2D
========

**Наследует:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Универсальный узел спрайта.

.. rst-class:: classref-introduction-group

Описание
----------------

Узел, отображающий 2D-текстуру. Отображаемая текстура может быть областью из более крупной текстуры атласа или кадром из анимации спрайт-листа.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- `Демонстрация экземпляра <https://godotengine.org/asset-library/asset/2716>`__

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`           | :ref:`centered<class_Sprite2D_property_centered>`                                     | ``true``              |
   +-----------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`           | :ref:`flip_h<class_Sprite2D_property_flip_h>`                                         | ``false``             |
   +-----------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`           | :ref:`flip_v<class_Sprite2D_property_flip_v>`                                         | ``false``             |
   +-----------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`             | :ref:`frame<class_Sprite2D_property_frame>`                                           | ``0``                 |
   +-----------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Vector2i<class_Vector2i>`   | :ref:`frame_coords<class_Sprite2D_property_frame_coords>`                             | ``Vector2i(0, 0)``    |
   +-----------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`             | :ref:`hframes<class_Sprite2D_property_hframes>`                                       | ``1``                 |
   +-----------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Vector2<class_Vector2>`     | :ref:`offset<class_Sprite2D_property_offset>`                                         | ``Vector2(0, 0)``     |
   +-----------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`           | :ref:`region_enabled<class_Sprite2D_property_region_enabled>`                         | ``false``             |
   +-----------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`           | :ref:`region_filter_clip_enabled<class_Sprite2D_property_region_filter_clip_enabled>` | ``false``             |
   +-----------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Rect2<class_Rect2>`         | :ref:`region_rect<class_Sprite2D_property_region_rect>`                               | ``Rect2(0, 0, 0, 0)`` |
   +-----------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`texture<class_Sprite2D_property_texture>`                                       |                       |
   +-----------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`             | :ref:`vframes<class_Sprite2D_property_vframes>`                                       | ``1``                 |
   +-----------------------------------+---------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------+------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`get_rect<class_Sprite2D_method_get_rect>`\ (\ ) |const|                                                    |
   +---------------------------+------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`is_pixel_opaque<class_Sprite2D_method_is_pixel_opaque>`\ (\ pos\: :ref:`Vector2<class_Vector2>`\ ) |const| |
   +---------------------------+------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
--------------

.. _class_Sprite2D_signal_frame_changed:

.. rst-class:: classref-signal

**frame_changed**\ (\ ) :ref:`🔗<class_Sprite2D_signal_frame_changed>`

Выдается при изменении :ref:`frame<class_Sprite2D_property_frame>`.

.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_signal_texture_changed:

.. rst-class:: classref-signal

**texture_changed**\ (\ ) :ref:`🔗<class_Sprite2D_signal_texture_changed>`

Выдается при изменении :ref:`texture<class_Sprite2D_property_texture>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_Sprite2D_property_centered:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **centered** = ``true`` :ref:`🔗<class_Sprite2D_property_centered>`

.. rst-class:: classref-property-setget

- |void| **set_centered**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_centered**\ (\ )

Если ``true``, текстура центрирована.

\ **Примечание:** В играх с пиксельной эстетикой текстуры могут выглядеть деформированными при центрировании. Это вызвано их положением между пикселями. Чтобы предотвратить это, установите это свойство на ``false`` или рассмотрите возможность включения :ref:`ProjectSettings.rendering/2d/snap/snap_2d_vertices_to_pixel<class_ProjectSettings_property_rendering/2d/snap/snap_2d_vertices_to_pixel>` и :ref:`ProjectSettings.rendering/2d/snap/snap_2d_transforms_to_pixel<class_ProjectSettings_property_rendering/2d/snap/snap_2d_transforms_to_pixel>`.

.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_property_flip_h:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_h** = ``false`` :ref:`🔗<class_Sprite2D_property_flip_h>`

.. rst-class:: classref-property-setget

- |void| **set_flip_h**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_flipped_h**\ (\ )

Если ``true``, текстура отражена по горизонтали.

.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_property_flip_v:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_v** = ``false`` :ref:`🔗<class_Sprite2D_property_flip_v>`

.. rst-class:: classref-property-setget

- |void| **set_flip_v**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_flipped_v**\ (\ )

Если ``true``, текстура отражена по вертикали.

.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_property_frame:

.. rst-class:: classref-property

:ref:`int<class_int>` **frame** = ``0`` :ref:`🔗<class_Sprite2D_property_frame>`

.. rst-class:: classref-property-setget

- |void| **set_frame**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_frame**\ (\ )

Текущий кадр для отображения из таблицы спрайтов. :ref:`hframes<class_Sprite2D_property_hframes>` или :ref:`vframes<class_Sprite2D_property_vframes>` должны быть больше 1. Это свойство автоматически корректируется, когда :ref:`hframes<class_Sprite2D_property_hframes>` или :ref:`vframes<class_Sprite2D_property_vframes>` изменяются, чтобы продолжать указывать на тот же визуальный кадр (тот же столбец и строку). Если это невозможно, это значение сбрасывается до ``0``.

.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_property_frame_coords:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **frame_coords** = ``Vector2i(0, 0)`` :ref:`🔗<class_Sprite2D_property_frame_coords>`

.. rst-class:: classref-property-setget

- |void| **set_frame_coords**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_frame_coords**\ (\ )

Координаты кадра для отображения из таблицы спрайтов. Это псевдоним для свойства :ref:`frame<class_Sprite2D_property_frame>`. :ref:`hframes<class_Sprite2D_property_hframes>` или :ref:`vframes<class_Sprite2D_property_vframes>` должны быть больше 1.

.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_property_hframes:

.. rst-class:: classref-property

:ref:`int<class_int>` **hframes** = ``1`` :ref:`🔗<class_Sprite2D_property_hframes>`

.. rst-class:: classref-property-setget

- |void| **set_hframes**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_hframes**\ (\ )

Количество столбцов в таблице спрайтов. При изменении этого свойства :ref:`frame<class_Sprite2D_property_frame>` корректируется так, чтобы сохранялась та же визуальная рамка (та же строка и столбец). Если это невозможно, :ref:`frame<class_Sprite2D_property_frame>` сбрасывается до ``0``.

.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_property_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **offset** = ``Vector2(0, 0)`` :ref:`🔗<class_Sprite2D_property_offset>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_offset**\ (\ )

Смещение отрисовки текстуры.

\ **Примечание:** При увеличении :ref:`offset<class_Sprite2D_property_offset>`.y в Sprite2D спрайт перемещается вниз на экране (т. е. +Y — вниз).

.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_property_region_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **region_enabled** = ``false`` :ref:`🔗<class_Sprite2D_property_region_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_region_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_region_enabled**\ (\ )

Если ``true``, текстура вырезается из более крупной текстуры атласа. См. :ref:`region_rect<class_Sprite2D_property_region_rect>`.

\ **Примечание:** При использовании пользовательского :ref:`Shader<class_Shader>` в **Sprite2D** встроенный шейдер ``UV`` будет ссылаться на всё пространство текстуры. Вместо этого используйте встроенный шейдер ``REGION_RECT`` для получения текущей видимой области, заданной в :ref:`region_rect<class_Sprite2D_property_region_rect>`. Подробнее см. :doc:`Шейдеры CanvasItem <../tutorials/shaders/shader_reference/canvas_item_shader>`.

.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_property_region_filter_clip_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **region_filter_clip_enabled** = ``false`` :ref:`🔗<class_Sprite2D_property_region_filter_clip_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_region_filter_clip_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_region_filter_clip_enabled**\ (\ )

Если ``true``, область за пределами :ref:`region_rect<class_Sprite2D_property_region_rect>` обрезается, чтобы избежать просачивания окружающих пикселей текстуры. :ref:`region_enabled<class_Sprite2D_property_region_enabled>` должно быть ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_property_region_rect:

.. rst-class:: classref-property

:ref:`Rect2<class_Rect2>` **region_rect** = ``Rect2(0, 0, 0, 0)`` :ref:`🔗<class_Sprite2D_property_region_rect>`

.. rst-class:: classref-property-setget

- |void| **set_region_rect**\ (\ value\: :ref:`Rect2<class_Rect2>`\ )
- :ref:`Rect2<class_Rect2>` **get_region_rect**\ (\ )

Область текстуры атласа для отображения. :ref:`region_enabled<class_Sprite2D_property_region_enabled>` должен быть ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_property_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture** :ref:`🔗<class_Sprite2D_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ )

:ref:`Texture2D<class_Texture2D>` объект для рисования.

.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_property_vframes:

.. rst-class:: classref-property

:ref:`int<class_int>` **vframes** = ``1`` :ref:`🔗<class_Sprite2D_property_vframes>`

.. rst-class:: classref-property-setget

- |void| **set_vframes**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_vframes**\ (\ )

Количество строк в таблице спрайтов. При изменении этого свойства :ref:`frame<class_Sprite2D_property_frame>` корректируется так, чтобы сохранялась та же визуальная рамка (та же строка и столбец). Если это невозможно, :ref:`frame<class_Sprite2D_property_frame>` сбрасывается до ``0``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_Sprite2D_method_get_rect:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **get_rect**\ (\ ) |const| :ref:`🔗<class_Sprite2D_method_get_rect>`

Возвращает :ref:`Rect2<class_Rect2>`, представляющий границу Sprite2D в локальных координатах.

\ **Пример:** Определить, был ли нажат Sprite2D:


.. tabs::

 .. code-tab:: gdscript

    func _input(event):
        if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
            if get_rect().has_point(to_local(event.position)):
                print("Нажато!")

 .. code-tab:: csharp

    public override void _Input(InputEvent @event)
    {
        if (@event is InputEventMouseButton inputEventMouse)
        {
            if (inputEventMouse.Pressed && inputEventMouse.ButtonIndex == MouseButton.Left)
            {
                if (GetRect().HasPoint(ToLocal(inputEventMouse.Position)))
                {
                    GD.Print("Нажато!");
                }
            }
        }
    }



.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_method_is_pixel_opaque:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_pixel_opaque**\ (\ pos\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Sprite2D_method_is_pixel_opaque>`

Возвращает ``true``, если пиксель в заданной позиции непрозрачен, ``false`` в противном случае. Также возвращает ``false``, если заданная позиция выходит за пределы допустимых значений или :ref:`texture<class_Sprite2D_property_texture>` этого спрайта равна ``null``. ``pos`` — локальные координаты.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
