:github_url: hide

.. _class_SubViewport:

SubViewport
===========

**Наследует:** :ref:`Viewport<class_Viewport>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Интерфейс к игровому миру, который не создает окно и не выводит изображение на экран напрямую.

.. rst-class:: classref-introduction-group

Описание
----------------

**SubViewport** Изолирует прямоугольную область сцены для независимого отображения. Это можно использовать, например, для отображения пользовательского интерфейса в трехмерном пространстве.

\ **Примечание:** **SubViewport** — это :ref:`Viewport<class_Viewport>`, который не является :ref:`Window<class_Window>`, т. е. он сам по себе ничего не рисует. Чтобы что-либо отобразить, **SubViewport** должен иметь ненулевой размер и быть либо помещен в :ref:`SubViewportContainer<class_SubViewportContainer>`, либо назначен :ref:`ViewportTexture<class_ViewportTexture>`.

\ **Примечание:** :ref:`InputEvent<class_InputEvent>` по умолчанию не передаются в автономный **SubViewport**. Чтобы обеспечить распространение :ref:`InputEvent<class_InputEvent>`, **SubViewport** можно поместить внутрь :ref:`SubViewportContainer<class_SubViewportContainer>`.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Использовать Viewports <../tutorials/rendering/viewports>`

- :doc:`Преобразования области просмотра и холста <../tutorials/2d/2d_transforms>`

- `Демонстрация графического интерфейса пользователя в 3D-окне просмотра <https://godotengine.org/asset-library/asset/2807>`__

- `Демонстрация 3D в 2D-виде <https://godotengine.org/asset-library/asset/2804>`__

- `Демонстрация 2D в 3D-виде <https://godotengine.org/asset-library/asset/2803>`__

- `Демо-версия захвата экрана <https://godotengine.org/asset-library/asset/2808>`__

- `Демонстрация динамического разделения экрана <https://godotengine.org/asset-library/asset/2806>`__

- `Демонстрация масштабирования 3D-разрешения <https://godotengine.org/asset-library/asset/2805>`__

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +------------------------------------------------+----------------------------------------------------------------------------------------+------------------------+
   | :ref:`ClearMode<enum_SubViewport_ClearMode>`   | :ref:`render_target_clear_mode<class_SubViewport_property_render_target_clear_mode>`   | ``0``                  |
   +------------------------------------------------+----------------------------------------------------------------------------------------+------------------------+
   | :ref:`UpdateMode<enum_SubViewport_UpdateMode>` | :ref:`render_target_update_mode<class_SubViewport_property_render_target_update_mode>` | ``2``                  |
   +------------------------------------------------+----------------------------------------------------------------------------------------+------------------------+
   | :ref:`Vector2i<class_Vector2i>`                | :ref:`size<class_SubViewport_property_size>`                                           | ``Vector2i(512, 512)`` |
   +------------------------------------------------+----------------------------------------------------------------------------------------+------------------------+
   | :ref:`Vector2i<class_Vector2i>`                | :ref:`size_2d_override<class_SubViewport_property_size_2d_override>`                   | ``Vector2i(0, 0)``     |
   +------------------------------------------------+----------------------------------------------------------------------------------------+------------------------+
   | :ref:`bool<class_bool>`                        | :ref:`size_2d_override_stretch<class_SubViewport_property_size_2d_override_stretch>`   | ``false``              |
   +------------------------------------------------+----------------------------------------------------------------------------------------+------------------------+
   | :ref:`int<class_int>`                          | :ref:`view_count<class_SubViewport_property_view_count>`                               | ``1``                  |
   +------------------------------------------------+----------------------------------------------------------------------------------------+------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_SubViewport_ClearMode:

.. rst-class:: classref-enumeration

enum **ClearMode**: :ref:`🔗<enum_SubViewport_ClearMode>`

.. _class_SubViewport_constant_CLEAR_MODE_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`ClearMode<enum_SubViewport_ClearMode>` **CLEAR_MODE_ALWAYS** = ``0``

Всегда очищайте цель рендеринга перед рисованием.

.. _class_SubViewport_constant_CLEAR_MODE_NEVER:

.. rst-class:: classref-enumeration-constant

:ref:`ClearMode<enum_SubViewport_ClearMode>` **CLEAR_MODE_NEVER** = ``1``

Никогда не очищайте цель рендеринга.

.. _class_SubViewport_constant_CLEAR_MODE_ONCE:

.. rst-class:: classref-enumeration-constant

:ref:`ClearMode<enum_SubViewport_ClearMode>` **CLEAR_MODE_ONCE** = ``2``

Очистите цель рендеринга на следующем кадре, затем переключитесь на :ref:`CLEAR_MODE_NEVER<class_SubViewport_constant_CLEAR_MODE_NEVER>`.

.. rst-class:: classref-item-separator

----

.. _enum_SubViewport_UpdateMode:

.. rst-class:: classref-enumeration

enum **UpdateMode**: :ref:`🔗<enum_SubViewport_UpdateMode>`

.. _class_SubViewport_constant_UPDATE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`UpdateMode<enum_SubViewport_UpdateMode>` **UPDATE_DISABLED** = ``0``

Не обновляйте цель рендеринга.

.. _class_SubViewport_constant_UPDATE_ONCE:

.. rst-class:: classref-enumeration-constant

:ref:`UpdateMode<enum_SubViewport_UpdateMode>` **UPDATE_ONCE** = ``1``

Обновите цель рендеринга один раз, затем переключитесь на :ref:`UPDATE_DISABLED<class_SubViewport_constant_UPDATE_DISABLED>`.

.. _class_SubViewport_constant_UPDATE_WHEN_VISIBLE:

.. rst-class:: classref-enumeration-constant

:ref:`UpdateMode<enum_SubViewport_UpdateMode>` **UPDATE_WHEN_VISIBLE** = ``2``

Обновлять цель рендеринга только тогда, когда он виден. Это значение по умолчанию.

.. _class_SubViewport_constant_UPDATE_WHEN_PARENT_VISIBLE:

.. rst-class:: classref-enumeration-constant

:ref:`UpdateMode<enum_SubViewport_UpdateMode>` **UPDATE_WHEN_PARENT_VISIBLE** = ``3``

Обновляйте цель рендеринга только тогда, когда его родительский объект виден.

.. _class_SubViewport_constant_UPDATE_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`UpdateMode<enum_SubViewport_UpdateMode>` **UPDATE_ALWAYS** = ``4``

Всегда обновляйте цель рендеринга.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_SubViewport_property_render_target_clear_mode:

.. rst-class:: classref-property

:ref:`ClearMode<enum_SubViewport_ClearMode>` **render_target_clear_mode** = ``0`` :ref:`🔗<class_SubViewport_property_render_target_clear_mode>`

.. rst-class:: classref-property-setget

- |void| **set_clear_mode**\ (\ value\: :ref:`ClearMode<enum_SubViewport_ClearMode>`\ )
- :ref:`ClearMode<enum_SubViewport_ClearMode>` **get_clear_mode**\ (\ )

Режим очистки, когда в качестве цели рендеринга используется подокно просмотра.

\ **Примечание:** Это свойство предназначено для использования в 2D.

.. rst-class:: classref-item-separator

----

.. _class_SubViewport_property_render_target_update_mode:

.. rst-class:: classref-property

:ref:`UpdateMode<enum_SubViewport_UpdateMode>` **render_target_update_mode** = ``2`` :ref:`🔗<class_SubViewport_property_render_target_update_mode>`

.. rst-class:: classref-property-setget

- |void| **set_update_mode**\ (\ value\: :ref:`UpdateMode<enum_SubViewport_UpdateMode>`\ )
- :ref:`UpdateMode<enum_SubViewport_UpdateMode>` **get_update_mode**\ (\ )

Режим обновления, когда в качестве цели рендеринга используется подокно просмотра.

.. rst-class:: classref-item-separator

----

.. _class_SubViewport_property_size:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **size** = ``Vector2i(512, 512)`` :ref:`🔗<class_SubViewport_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_size**\ (\ )

Ширина и высота подокна просмотра. Должны быть установлены на значение больше или равное 2 пикселям в обоих сторонах. В противном случае ничего не будет отображено.

\ **Примечание:** Если родительский узел — :ref:`SubViewportContainer<class_SubViewportContainer>`, а его :ref:`SubViewportContainer.stretch<class_SubViewportContainer_property_stretch>` — ``true``, размер окна просмотра нельзя изменить вручную.

.. rst-class:: classref-item-separator

----

.. _class_SubViewport_property_size_2d_override:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **size_2d_override** = ``Vector2i(0, 0)`` :ref:`🔗<class_SubViewport_property_size_2d_override>`

.. rst-class:: classref-property-setget

- |void| **set_size_2d_override**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_size_2d_override**\ (\ )

Переопределение размера 2D подокна просмотра. Если ширина или высота равна ``0``, переопределение отключено.

.. rst-class:: classref-item-separator

----

.. _class_SubViewport_property_size_2d_override_stretch:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **size_2d_override_stretch** = ``false`` :ref:`🔗<class_SubViewport_property_size_2d_override_stretch>`

.. rst-class:: classref-property-setget

- |void| **set_size_2d_override_stretch**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_size_2d_override_stretch_enabled**\ (\ )

Если ``true``, переопределение размера 2D также влияет на растяжение.

.. rst-class:: classref-item-separator

----

.. _class_SubViewport_property_view_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **view_count** = ``1`` :ref:`🔗<class_SubViewport_property_view_count>`

.. rst-class:: classref-property-setget

- |void| **set_view_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_view_count**\ (\ )

The number of view layers we are rendering to. Set this to ``2`` to enable stereo rendering.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
