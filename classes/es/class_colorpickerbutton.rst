:github_url: hide

.. _class_ColorPickerButton:

ColorPickerButton
=================

**Hereda:** :ref:`Button<class_Button>` **<** :ref:`BaseButton<class_BaseButton>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un botón que abre un :ref:`ColorPicker<class_ColorPicker>` cuando se pulsa.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Encapsula un :ref:`ColorPicker<class_ColorPicker>`, haciéndolo accesible al pulsar un botón. Al pulsar el botón se activará/desactivará la visibilidad del :ref:`ColorPicker<class_ColorPicker>`.

Véase también :ref:`BaseButton<class_BaseButton>`, que contiene propiedades y métodos comunes asociados a este nodo.

\ **Nota:** Por defecto, el botón puede no ser lo suficientemente ancho para que la muestra de previsualización del color sea visible. Asegúrate de establecer :ref:`Control.custom_minimum_size<class_Control_property_custom_minimum_size>` a un valor lo suficientemente grande para darle al botón espacio suficiente.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- `Demo de Pintura en 2D con GD <https://godotengine.org/asset-library/asset/2768>`__

- `Demo de Arrastrar y Soltar con la interfaz gráfica de usuario <https://godotengine.org/asset-library/asset/2767>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------+------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>` | :ref:`color<class_ColorPickerButton_property_color>`                   | ``Color(0, 0, 0, 1)``                                                         |
   +---------------------------+------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`edit_alpha<class_ColorPickerButton_property_edit_alpha>`         | ``true``                                                                      |
   +---------------------------+------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`edit_intensity<class_ColorPickerButton_property_edit_intensity>` | ``true``                                                                      |
   +---------------------------+------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | toggle_mode                                                            | ``true`` (overrides :ref:`BaseButton<class_BaseButton_property_toggle_mode>`) |
   +---------------------------+------------------------------------------------------------------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------------+--------------------------------------------------------------------+
   | :ref:`ColorPicker<class_ColorPicker>` | :ref:`get_picker<class_ColorPickerButton_method_get_picker>`\ (\ ) |
   +---------------------------------------+--------------------------------------------------------------------+
   | :ref:`PopupPanel<class_PopupPanel>`   | :ref:`get_popup<class_ColorPickerButton_method_get_popup>`\ (\ )   |
   +---------------------------------------+--------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Propiedades del Tema
----------------------------------------

.. table::
   :widths: auto

   +-----------------------------------+--------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`bg<class_ColorPickerButton_theme_icon_bg>` |
   +-----------------------------------+--------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Señales
--------------

.. _class_ColorPickerButton_signal_color_changed:

.. rst-class:: classref-signal

**color_changed**\ (\ color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_ColorPickerButton_signal_color_changed>`

Emitida cuando el color cambia.

.. rst-class:: classref-item-separator

----

.. _class_ColorPickerButton_signal_picker_created:

.. rst-class:: classref-signal

**picker_created**\ (\ ) :ref:`🔗<class_ColorPickerButton_signal_picker_created>`

Emitida cuando se crea el :ref:`ColorPicker<class_ColorPicker>` (se pulsa el botón por primera vez).

.. rst-class:: classref-item-separator

----

.. _class_ColorPickerButton_signal_popup_closed:

.. rst-class:: classref-signal

**popup_closed**\ (\ ) :ref:`🔗<class_ColorPickerButton_signal_popup_closed>`

Emitida cuando :ref:`ColorPicker<class_ColorPicker>` está cerrado.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_ColorPickerButton_property_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_ColorPickerButton_property_color>`

.. rst-class:: classref-property-setget

- |void| **set_pick_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_pick_color**\ (\ )

El color actualmente seleccionado.

.. rst-class:: classref-item-separator

----

.. _class_ColorPickerButton_property_edit_alpha:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **edit_alpha** = ``true`` :ref:`🔗<class_ColorPickerButton_property_edit_alpha>`

.. rst-class:: classref-property-setget

- |void| **set_edit_alpha**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_editing_alpha**\ (\ )

Si es ``true``, el canal alfa en el :ref:`ColorPicker<class_ColorPicker>` visualizado será visible.

.. rst-class:: classref-item-separator

----

.. _class_ColorPickerButton_property_edit_intensity:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **edit_intensity** = ``true`` :ref:`🔗<class_ColorPickerButton_property_edit_intensity>`

.. rst-class:: classref-property-setget

- |void| **set_edit_intensity**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_editing_intensity**\ (\ )

Si es ``true``, el deslizador de intensidad del :ref:`ColorPicker<class_ColorPicker>` mostrado será visible.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_ColorPickerButton_method_get_picker:

.. rst-class:: classref-method

:ref:`ColorPicker<class_ColorPicker>` **get_picker**\ (\ ) :ref:`🔗<class_ColorPickerButton_method_get_picker>`

Devuelve el :ref:`ColorPicker<class_ColorPicker>` que este nodo activa/desactiva.

\ **Advertencia:** Este es un nodo interno requerido, removerlo y liberarlo puede causar un fallo. Si deseas ocultarlo o alguno de sus hijos, usa su propiedad :ref:`CanvasItem.visible<class_CanvasItem_property_visible>`.

.. rst-class:: classref-item-separator

----

.. _class_ColorPickerButton_method_get_popup:

.. rst-class:: classref-method

:ref:`PopupPanel<class_PopupPanel>` **get_popup**\ (\ ) :ref:`🔗<class_ColorPickerButton_method_get_popup>`

Returns the control's :ref:`PopupPanel<class_PopupPanel>` which allows you to connect to popup signals. This allows you to handle events when the ColorPicker is shown or hidden.

\ **Warning:** This is a required internal node, removing and freeing it may cause a crash. If you wish to hide it or any of its children, use their :ref:`Window.visible<class_Window_property_visible>` property.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de las propiedades del tema
----------------------------------------------------------------------------------

.. _class_ColorPickerButton_theme_icon_bg:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **bg** :ref:`🔗<class_ColorPickerButton_theme_icon_bg>`

El fondo del rectángulo de vista previa de color en el botón.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
