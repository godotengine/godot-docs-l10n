:github_url: hide

.. _class_GraphElement:

GraphElement
============

**Hereda:** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`GraphFrame<class_GraphFrame>`, :ref:`GraphNode<class_GraphNode>`

Un contenedor que representa un elemento básico que puede colocarse dentro de un control :ref:`GraphEdit<class_GraphEdit>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

**GraphElement** permite crear elementos personalizados para un gráfico :ref:`GraphEdit<class_GraphEdit>`. Por defecto, dichos elementos se pueden seleccionar, cambiar de tamaño y cambiar de posición, pero no se pueden conectar. Para un elemento de gráfico que permita conexiones, véase :ref:`GraphNode<class_GraphNode>`.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`       | :ref:`draggable<class_GraphElement_property_draggable>`             | ``true``          |
   +-------------------------------+---------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`position_offset<class_GraphElement_property_position_offset>` | ``Vector2(0, 0)`` |
   +-------------------------------+---------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`       | :ref:`resizable<class_GraphElement_property_resizable>`             | ``false``         |
   +-------------------------------+---------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`       | :ref:`scaling_menus<class_GraphElement_property_scaling_menus>`     | ``false``         |
   +-------------------------------+---------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`       | :ref:`selectable<class_GraphElement_property_selectable>`           | ``true``          |
   +-------------------------------+---------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`       | :ref:`selected<class_GraphElement_property_selected>`               | ``false``         |
   +-------------------------------+---------------------------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

Propiedades del Tema
----------------------------------------

.. table::
   :widths: auto

   +-----------------------------------+-------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`resizer<class_GraphElement_theme_icon_resizer>` |
   +-----------------------------------+-------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Señales
--------------

.. _class_GraphElement_signal_delete_request:

.. rst-class:: classref-signal

**delete_request**\ (\ ) :ref:`🔗<class_GraphElement_signal_delete_request>`

Emitida cuando se solicita la eliminación de GraphElement.

.. rst-class:: classref-item-separator

----

.. _class_GraphElement_signal_dragged:

.. rst-class:: classref-signal

**dragged**\ (\ from\: :ref:`Vector2<class_Vector2>`, to\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_GraphElement_signal_dragged>`

Emitida cuando se arrastra el GraphElement.

.. rst-class:: classref-item-separator

----

.. _class_GraphElement_signal_node_deselected:

.. rst-class:: classref-signal

**node_deselected**\ (\ ) :ref:`🔗<class_GraphElement_signal_node_deselected>`

Emitida cuando se deselecciona un GraphElement.

.. rst-class:: classref-item-separator

----

.. _class_GraphElement_signal_node_selected:

.. rst-class:: classref-signal

**node_selected**\ (\ ) :ref:`🔗<class_GraphElement_signal_node_selected>`

Emitida cuando se selecciona un GraphElement.

.. rst-class:: classref-item-separator

----

.. _class_GraphElement_signal_position_offset_changed:

.. rst-class:: classref-signal

**position_offset_changed**\ (\ ) :ref:`🔗<class_GraphElement_signal_position_offset_changed>`

Emitida cuando se mueve el GraphElement.

.. rst-class:: classref-item-separator

----

.. _class_GraphElement_signal_raise_request:

.. rst-class:: classref-signal

**raise_request**\ (\ ) :ref:`🔗<class_GraphElement_signal_raise_request>`

Emitida cuando se solicita mostrar el GraphElement sobre otros. Ocurre al enfocar (hacer clic en) el GraphElement.

.. rst-class:: classref-item-separator

----

.. _class_GraphElement_signal_resize_end:

.. rst-class:: classref-signal

**resize_end**\ (\ new_size\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_GraphElement_signal_resize_end>`

Emitida al soltar el botón del ratón después de arrastrar el mango de redimensionamiento (véase :ref:`resizable<class_GraphElement_property_resizable>`).

.. rst-class:: classref-item-separator

----

.. _class_GraphElement_signal_resize_request:

.. rst-class:: classref-signal

**resize_request**\ (\ new_size\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_GraphElement_signal_resize_request>`

Emitida cuando se pide que el GraphElement sea redimensionado. Ocurre al arrastrar el mango de redimensionamiento (véase :ref:`resizable<class_GraphElement_property_resizable>`).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_GraphElement_property_draggable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **draggable** = ``true`` :ref:`🔗<class_GraphElement_property_draggable>`

.. rst-class:: classref-property-setget

- |void| **set_draggable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_draggable**\ (\ )

Si es ``true``, el usuario puede arrastrar el GraphElement.

.. rst-class:: classref-item-separator

----

.. _class_GraphElement_property_position_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **position_offset** = ``Vector2(0, 0)`` :ref:`🔗<class_GraphElement_property_position_offset>`

.. rst-class:: classref-property-setget

- |void| **set_position_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_position_offset**\ (\ )

El desplazamiento del GraphElement, relativo al desplazamiento del :ref:`GraphEdit<class_GraphEdit>`.

.. rst-class:: classref-item-separator

----

.. _class_GraphElement_property_resizable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **resizable** = ``false`` :ref:`🔗<class_GraphElement_property_resizable>`

.. rst-class:: classref-property-setget

- |void| **set_resizable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_resizable**\ (\ )

Si es ``true``, el usuario puede cambiar el tamaño del GraphElement.

\ **Nota:** Arrastrar el controlador sólo emitirá las señales :ref:`resize_request<class_GraphElement_signal_resize_request>` y :ref:`resize_end<class_GraphElement_signal_resize_end>`, el GraphElement necesita ser redimensionado manualmente.

.. rst-class:: classref-item-separator

----

.. _class_GraphElement_property_scaling_menus:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **scaling_menus** = ``false`` :ref:`🔗<class_GraphElement_property_scaling_menus>`

.. rst-class:: classref-property-setget

- |void| **set_scaling_menus**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_scaling_menus**\ (\ )

Si es ``true``, los :ref:`PopupMenu<class_PopupMenu>` que son descendientes del GraphElement se escalan con el zoom del :ref:`GraphEdit<class_GraphEdit>`.

.. rst-class:: classref-item-separator

----

.. _class_GraphElement_property_selectable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **selectable** = ``true`` :ref:`🔗<class_GraphElement_property_selectable>`

.. rst-class:: classref-property-setget

- |void| **set_selectable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_selectable**\ (\ )

Si es ``true``, el usuario puede seleccionar el GraphElement.

.. rst-class:: classref-item-separator

----

.. _class_GraphElement_property_selected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **selected** = ``false`` :ref:`🔗<class_GraphElement_property_selected>`

.. rst-class:: classref-property-setget

- |void| **set_selected**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_selected**\ (\ )

Si es ``true``, el GraphElement está seleccionado.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de las propiedades del tema
----------------------------------------------------------------------------------

.. _class_GraphElement_theme_icon_resizer:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **resizer** :ref:`🔗<class_GraphElement_theme_icon_resizer>`

El icono utilizado para el redimensionador, visible cuando :ref:`resizable<class_GraphElement_property_resizable>` está habilitado.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
