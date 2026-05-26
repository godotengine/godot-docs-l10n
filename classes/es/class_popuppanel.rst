:github_url: hide

.. _class_PopupPanel:

PopupPanel
==========

**Hereda:** :ref:`Popup<class_Popup>` **<** :ref:`Window<class_Window>` **<** :ref:`Viewport<class_Viewport>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un popup con un fondo de panel.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Un popup con un fondo de panel configurable. Cualquier control secundario agregado a este nodo se estirará para ajustarse al tamaño del panel (similar a cómo funciona :ref:`PanelContainer<class_PanelContainer>`). Si está creando ventanas, véase :ref:`Window<class_Window>`.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

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

Propiedades del Tema
----------------------------------------

.. table::
   :widths: auto

   +---------------------------------+--------------------------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`panel<class_PopupPanel_theme_style_panel>` |
   +---------------------------------+--------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de las propiedades del tema
----------------------------------------------------------------------------------

.. _class_PopupPanel_theme_style_panel:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **panel** :ref:`🔗<class_PopupPanel_theme_style_panel>`

:ref:`StyleBox<class_StyleBox>` para el panel de fondo.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
