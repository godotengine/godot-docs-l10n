:github_url: hide

.. _class_Sprite2D:

Sprite2D
========

**Успадковує:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Універсальний спрайтний вузол.

.. rst-class:: classref-introduction-group

Опис
--------

Вузлом, який відображає текстуру 2D. Текстура відображається може бути регіоном з більшої текстури атласів, або кадром з анімації аркуша спрайта.

.. rst-class:: classref-introduction-group

Посібники
------------------

- `Instancing Демо <https://godotengine.org/asset-library/asset/2716>`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

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

Методи
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

Сигнали
--------------

.. _class_Sprite2D_signal_frame_changed:

.. rst-class:: classref-signal

**frame_changed**\ (\ ) :ref:`🔗<class_Sprite2D_signal_frame_changed>`

Видається, коли змінюється :ref:`frame<class_Sprite2D_property_frame>`.

.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_signal_texture_changed:

.. rst-class:: classref-signal

**texture_changed**\ (\ ) :ref:`🔗<class_Sprite2D_signal_texture_changed>`

Виникає, коли змінюється :ref:`texture<class_Sprite2D_property_texture>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_Sprite2D_property_centered:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **centered** = ``true`` :ref:`🔗<class_Sprite2D_property_centered>`

.. rst-class:: classref-property-setget

- |void| **set_centered**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_centered**\ (\ )

Якщо ``true``, то текстура розташована.

\ **Примітка:** Для ігор з естетичною естетикою піксельного мистецтва, текстури можуть з'явитися деформовані при центруванні. Це викликається їх положенням між пікселями. Щоб запобігти цьому, встановити цю властивість ``false``, або розглянути можливість :ref:`ProjectSettings.rendering/2d/snap_2d_vertices_to_pixel<class_ProjectSettings_property_rendering/2d/snap_2d_vertices_to_pixel>` і :ref:`ProjectSettings.rendering/2d/snap_2d_transforms_to_pixel<class_ProjectSettings_property_rendering/2d/snap_2d_transforms_to_pixel>`.

.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_property_flip_h:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_h** = ``false`` :ref:`🔗<class_Sprite2D_property_flip_h>`

.. rst-class:: classref-property-setget

- |void| **set_flip_h**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_flipped_h**\ (\ )

Якщо ``true``, текстура віддзеркалюється горизонтально.

.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_property_flip_v:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_v** = ``false`` :ref:`🔗<class_Sprite2D_property_flip_v>`

.. rst-class:: classref-property-setget

- |void| **set_flip_v**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_flipped_v**\ (\ )

Якщо ``true``, текстура віддзеркалюється вертикально.

.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_property_frame:

.. rst-class:: classref-property

:ref:`int<class_int>` **frame** = ``0`` :ref:`🔗<class_Sprite2D_property_frame>`

.. rst-class:: classref-property-setget

- |void| **set_frame**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_frame**\ (\ )

Поточний кадр для відображення з аркуша спрайтів. :ref:`hframes<class_Sprite2D_property_hframes>` або :ref:`vframes<class_Sprite2D_property_vframes>` має бути більше 1. Ця властивість автоматично налаштовується, коли :ref:`hframes<class_Sprite2D_property_hframes>` або :ref:`vframes<class_Sprite2D_property_vframes>` змінюються так, щоб вони постійно вказували на той самий візуальний кадр (той самий стовпець і рядок). Якщо це неможливо, це значення скидається до ``0``.

.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_property_frame_coords:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **frame_coords** = ``Vector2i(0, 0)`` :ref:`🔗<class_Sprite2D_property_frame_coords>`

.. rst-class:: classref-property-setget

- |void| **set_frame_coords**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_frame_coords**\ (\ )

Координати кадру для відображення зі спрайт-листа. Це псевдонім для властивості :ref:`frame<class_Sprite2D_property_frame>`. :ref:`hframes<class_Sprite2D_property_hframes>` або :ref:`vframes<class_Sprite2D_property_vframes>` мають бути більшими 1.

.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_property_hframes:

.. rst-class:: classref-property

:ref:`int<class_int>` **hframes** = ``1`` :ref:`🔗<class_Sprite2D_property_hframes>`

.. rst-class:: classref-property-setget

- |void| **set_hframes**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_hframes**\ (\ )

Кількість стовпців у спрайтовому аркуші. Коли ця властивість змінюється, :ref:`frame<class_Sprite2D_property_frame>` коригується таким чином, щоб зберегти той самий візуальний кадр (той самий рядок і стовпець). Якщо це неможливо, :ref:`frame<class_Sprite2D_property_frame>` скидається до ``0``.

.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_property_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **offset** = ``Vector2(0, 0)`` :ref:`🔗<class_Sprite2D_property_offset>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_offset**\ (\ )

Зсув малювання текстури.

\ **Примітка:** Коли ви збільшуєте :ref:`offset<class_Sprite2D_property_offset>`.y у Sprite2D, спрайт переміщується вниз на екрані (тобто +Y — вниз).

.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_property_region_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **region_enabled** = ``false`` :ref:`🔗<class_Sprite2D_property_region_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_region_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_region_enabled**\ (\ )

Якщо ``true``, текстура вирізається з більшої текстури атласу. Див. :ref:`region_rect<class_Sprite2D_property_region_rect>`.

\ **Примітка:** При використанні власного :ref:`Shader<class_Shader>` на **Sprite2D**, вбудований шейдер ``UV`` буде посилатися на весь простір текстури. Замість цього використовуйте вбудований ``REGION_RECT``, щоб отримати область, яка зараз видна, визначену в :ref:`region_rect<class_Sprite2D_property_region_rect>`. Детальніше див. :doc:`CanvasItem shaders <../tutorials/shaders/shader_reference/canvas_item_shader>`.

.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_property_region_filter_clip_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **region_filter_clip_enabled** = ``false`` :ref:`🔗<class_Sprite2D_property_region_filter_clip_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_region_filter_clip_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_region_filter_clip_enabled**\ (\ )

Якщо ``true``, область за межами :ref:`region_rect<class_Sprite2D_property_region_rect>` обрізається, щоб уникнути витоку навколишніх пікселів текстури. :ref:`region_enabled<class_Sprite2D_property_region_enabled>` має мати значення ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_property_region_rect:

.. rst-class:: classref-property

:ref:`Rect2<class_Rect2>` **region_rect** = ``Rect2(0, 0, 0, 0)`` :ref:`🔗<class_Sprite2D_property_region_rect>`

.. rst-class:: classref-property-setget

- |void| **set_region_rect**\ (\ value\: :ref:`Rect2<class_Rect2>`\ )
- :ref:`Rect2<class_Rect2>` **get_region_rect**\ (\ )

Область текстури атласу для відображення. :ref:`region_enabled<class_Sprite2D_property_region_enabled>` має бути ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_property_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture** :ref:`🔗<class_Sprite2D_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ )

:ref:`Texture2D<class_Texture2D>` об'єкт для малювання.

.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_property_vframes:

.. rst-class:: classref-property

:ref:`int<class_int>` **vframes** = ``1`` :ref:`🔗<class_Sprite2D_property_vframes>`

.. rst-class:: classref-property-setget

- |void| **set_vframes**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_vframes**\ (\ )

Кількість рядків у спрайтовому аркуші. Коли ця властивість змінюється, :ref:`frame<class_Sprite2D_property_frame>` коригується таким чином, щоб зберегти той самий візуальний кадр (той самий рядок і стовпець). Якщо це неможливо, :ref:`frame<class_Sprite2D_property_frame>` скидається до ``0``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_Sprite2D_method_get_rect:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **get_rect**\ (\ ) |const| :ref:`🔗<class_Sprite2D_method_get_rect>`

Повертає :ref:`Rect2<class_Rect2>`, що представляє межу Sprite2D у локальних координатах. 

\ **Приклад:** Визначити, чи було натиснуто Sprite2D: 


.. tabs:: 

 .. code-tab:: gdscript
 
    func _input(event): 
        if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT: 
            if get_rect().has_point(to_local(event.position)): 
                print("Клац!")  

 .. code-tab:: csharp
 
    public override void _Input(InputEvent @event) 
    {
        if (@event is InputEventMouseButton inputEventMouse) 
        { 
            if (inputEventMouse.Pressed && inputEventMouse.ButtonIndex == MouseButton.Left) 
            { 
                if (GetRect().HasPoint(ToLocal(inputEventMouse.Position))) 
                { 
                    GD.Print("Один клік!"); 
                } 
            } 
        } 
    } 



.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_method_is_pixel_opaque:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_pixel_opaque**\ (\ pos\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Sprite2D_method_is_pixel_opaque>`

Повертає ``true``, якщо піксель у заданій позиції непрозорий, ``false`` в іншому випадку. Також повертає ``false``, якщо задана позиція виходить за межі дозволеного або значення :ref:`texture<class_Sprite2D_property_texture>` цього спрайта дорівнює ``null``. ``pos`` знаходиться в локальних координатах.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
