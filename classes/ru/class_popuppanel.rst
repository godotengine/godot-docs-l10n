:github_url: hide

.. _class_PopupPanel:

PopupPanel
==========

**Наследует:** :ref:`Popup<class_Popup>` **<** :ref:`Window<class_Window>` **<** :ref:`Viewport<class_Viewport>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Всплывающее окно с фоном панели.

.. rst-class:: classref-introduction-group

Описание
----------------

Всплывающее окно с настраиваемым фоном панели. Любые дочерние элементы управления, добавленные в этот узел, будут растянуты в соответствии с размером панели (аналогично тому, как работает :ref:`PanelContainer<class_PanelContainer>`). Если вы создаете окна, см. :ref:`Window<class_Window>`.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------------------------+------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`DefaultCanvasItemTextureFilter<enum_Viewport_DefaultCanvasItemTextureFilter>` | canvas_item_default_texture_filter | ``4`` (overrides :ref:`Viewport<class_Viewport_property_canvas_item_default_texture_filter>`) |
   +-------------------------------------------------------------------------------------+------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`DefaultCanvasItemTextureRepeat<enum_Viewport_DefaultCanvasItemTextureRepeat>` | canvas_item_default_texture_repeat | ``3`` (overrides :ref:`Viewport<class_Viewport_property_canvas_item_default_texture_repeat>`) |
   +-------------------------------------------------------------------------------------+------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                             | transparent                        | ``true`` (overrides :ref:`Window<class_Window_property_transparent>`)                         |
   +-------------------------------------------------------------------------------------+------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                             | transparent_bg                     | ``true`` (overrides :ref:`Viewport<class_Viewport_property_transparent_bg>`)                  |
   +-------------------------------------------------------------------------------------+------------------------------------+-----------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Свойства темы
--------------------------

.. table::
   :widths: auto

   +---------------------------------+--------------------------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`panel<class_PopupPanel_theme_style_panel>` |
   +---------------------------------+--------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств темы
------------------------------------------

.. _class_PopupPanel_theme_style_panel:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **panel** :ref:`🔗<class_PopupPanel_theme_style_panel>`

:ref:`StyleBox<class_StyleBox>` для фоновой панели.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
