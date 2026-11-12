:github_url: hide

.. _class_SubViewportContainer:

SubViewportContainer
====================

**Наследует:** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Контейнер, используемый для отображения содержимого :ref:`SubViewport<class_SubViewport>`.

.. rst-class:: classref-introduction-group

Описание
----------------

A container that displays the contents of underlying :ref:`SubViewport<class_SubViewport>` child nodes. It uses the combined size of the :ref:`SubViewport<class_SubViewport>`\ s as minimum size, unless :ref:`stretch<class_SubViewportContainer_property_stretch>` is enabled.

\ **Note:** Changing a **SubViewportContainer**'s :ref:`Control.scale<class_Control_property_scale>` will cause its contents to appear distorted. To change its visual size without causing distortion, adjust the node's offset properties instead (if it's not already in a container).

\ **Note:** The **SubViewportContainer** forwards mouse-enter and mouse-exit notifications to its sub-viewports.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +------------------------------------------+---------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`FocusMode<enum_Control_FocusMode>` | focus_mode                                                                | ``1`` (overrides :ref:`Control<class_Control_property_focus_mode>`) |
   +------------------------------------------+---------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                  | :ref:`mouse_target<class_SubViewportContainer_property_mouse_target>`     | ``false``                                                           |
   +------------------------------------------+---------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                  | :ref:`stretch<class_SubViewportContainer_property_stretch>`               | ``false``                                                           |
   +------------------------------------------+---------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`int<class_int>`                    | :ref:`stretch_shrink<class_SubViewportContainer_property_stretch_shrink>` | ``1``                                                               |
   +------------------------------------------+---------------------------------------------------------------------------+---------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`_propagate_input_event<class_SubViewportContainer_private_method__propagate_input_event>`\ (\ event\: :ref:`InputEvent<class_InputEvent>`\ ) |virtual| |const| |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_SubViewportContainer_property_mouse_target:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **mouse_target** = ``false`` :ref:`🔗<class_SubViewportContainer_property_mouse_target>`

.. rst-class:: classref-property-setget

- |void| **set_mouse_target**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_mouse_target_enabled**\ (\ )

Настройте, должны ли **SubViewportContainer** или в качестве альтернативы, узлы :ref:`Control<class_Control>` его дочерних элементов :ref:`SubViewport<class_SubViewport>`, быть доступны в качестве целей для функций, связанных с мышью, таких как определение цели перетаскивания в операциях перетаскивания или формы курсора наведенного узла :ref:`Control<class_Control>`.

Если ``false``, то узлы :ref:`Control<class_Control>` внутри его дочерних элементов :ref:`SubViewport<class_SubViewport>` считаются целями.

Если ``true``, то сам **SubViewportContainer** будет считаться целью.

.. rst-class:: classref-item-separator

----

.. _class_SubViewportContainer_property_stretch:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **stretch** = ``false`` :ref:`🔗<class_SubViewportContainer_property_stretch>`

.. rst-class:: classref-property-setget

- |void| **set_stretch**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_stretch_enabled**\ (\ )

Если ``true``, размер sub-viewport будет автоматически изменен до размера элемента управления.

\ **Примечание:** Если ``true``, это запретит изменять :ref:`SubViewport.size<class_SubViewport_property_size>` его дочерних элементов вручную.

.. rst-class:: classref-item-separator

----

.. _class_SubViewportContainer_property_stretch_shrink:

.. rst-class:: classref-property

:ref:`int<class_int>` **stretch_shrink** = ``1`` :ref:`🔗<class_SubViewportContainer_property_stretch_shrink>`

.. rst-class:: classref-property-setget

- |void| **set_stretch_shrink**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_stretch_shrink**\ (\ )

Делит эффективное разрешение sub-viewport на это значение, сохраняя его масштаб. Это можно использовать для ускорения рендеринга.

Например, подокно просмотра 1280×720 с :ref:`stretch_shrink<class_SubViewportContainer_property_stretch_shrink>`, установленным на ``2``, будет отображаться с разрешением 640×360, занимая тот же размер в контейнере.

\ **Примечание:** :ref:`stretch<class_SubViewportContainer_property_stretch>` должно быть ``true``, чтобы это свойство работало.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_SubViewportContainer_private_method__propagate_input_event:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_propagate_input_event**\ (\ event\: :ref:`InputEvent<class_InputEvent>`\ ) |virtual| |const| :ref:`🔗<class_SubViewportContainer_private_method__propagate_input_event>`

**Экспериментальное:** Этот метод может быть изменён или удалён в будущих версиях.

Виртуальный метод, реализуемый пользователем. Если он возвращает ``true``, события ``event`` распространяется на дочерние элементы :ref:`SubViewport<class_SubViewport>`. Распространение не происходит, если он возвращает ``false``. Если функция не реализована, все события распространяются на SubViewports.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
