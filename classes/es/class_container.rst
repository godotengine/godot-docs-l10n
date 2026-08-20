:github_url: hide

.. _class_Container:

Container
=========

**Hereda:** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`AspectRatioContainer<class_AspectRatioContainer>`, :ref:`BoxContainer<class_BoxContainer>`, :ref:`CenterContainer<class_CenterContainer>`, :ref:`EditorProperty<class_EditorProperty>`, :ref:`FlowContainer<class_FlowContainer>`, :ref:`FoldableContainer<class_FoldableContainer>`, :ref:`GraphElement<class_GraphElement>`, :ref:`GridContainer<class_GridContainer>`, :ref:`MarginContainer<class_MarginContainer>`, :ref:`PanelContainer<class_PanelContainer>`, :ref:`ScrollContainer<class_ScrollContainer>`, :ref:`SplitContainer<class_SplitContainer>`, :ref:`SubViewportContainer<class_SubViewportContainer>`, :ref:`TabContainer<class_TabContainer>`

Clase base para todos los contenedores de GUI.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Clase base para todos los contenedores de GUI. Un **Container** organiza automáticamente sus controles hijos de una manera determinada. Esta clase puede heredarse para crear tipos de contenedores personalizados.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Usar Contenedores <../tutorials/ui/gui_containers>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +----------------------------------------------+----------------------------------------------------------------------------+------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                      | :ref:`accessibility_region<class_Container_property_accessibility_region>` | ``false``                                                                          |
   +----------------------------------------------+----------------------------------------------------------------------------+------------------------------------------------------------------------------------+
   | :ref:`MouseFilter<enum_Control_MouseFilter>` | mouse_filter                                                               | ``1`` (overrides :ref:`Control<class_Control_property_mouse_filter>`)              |
   +----------------------------------------------+----------------------------------------------------------------------------+------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                      | propagate_maximum_size                                                     | ``true`` (overrides :ref:`Control<class_Control_property_propagate_maximum_size>`) |
   +----------------------------------------------+----------------------------------------------------------------------------+------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`_get_allowed_size_flags_horizontal<class_Container_private_method__get_allowed_size_flags_horizontal>`\ (\ ) |virtual| |const|              |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`_get_allowed_size_flags_vertical<class_Container_private_method__get_allowed_size_flags_vertical>`\ (\ ) |virtual| |const|                  |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`fit_child_in_rect<class_Container_method_fit_child_in_rect>`\ (\ child\: :ref:`Control<class_Control>`, rect\: :ref:`Rect2<class_Rect2>`\ ) |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`queue_sort<class_Container_method_queue_sort>`\ (\ )                                                                                        |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Señales
--------------

.. _class_Container_signal_pre_sort_children:

.. rst-class:: classref-signal

**pre_sort_children**\ (\ ) :ref:`🔗<class_Container_signal_pre_sort_children>`

Emitida cuando los hijos van a ser clasificados.

.. rst-class:: classref-item-separator

----

.. _class_Container_signal_sort_children:

.. rst-class:: classref-signal

**sort_children**\ (\ ) :ref:`🔗<class_Container_signal_sort_children>`

Emitida cuando se necesita ordenar a los hijos.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Constantes
--------------------

.. _class_Container_constant_NOTIFICATION_PRE_SORT_CHILDREN:

.. rst-class:: classref-constant

**NOTIFICATION_PRE_SORT_CHILDREN** = ``50`` :ref:`🔗<class_Container_constant_NOTIFICATION_PRE_SORT_CHILDREN>`

Notificación enviada justo antes de que los hijos sean ordenados, en caso de que haya algo que procesar de antemano.

.. _class_Container_constant_NOTIFICATION_SORT_CHILDREN:

.. rst-class:: classref-constant

**NOTIFICATION_SORT_CHILDREN** = ``51`` :ref:`🔗<class_Container_constant_NOTIFICATION_SORT_CHILDREN>`

La notificación, para cuando se ordenan los hijos, debe ser obedecida inmediatamente.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_Container_property_accessibility_region:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **accessibility_region** = ``false`` :ref:`🔗<class_Container_property_accessibility_region>`

.. rst-class:: classref-property-setget

- |void| **set_accessibility_region**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_accessibility_region**\ (\ )

Si ``true``, este contenedor se marca como una región para accesibilidad. Usa :ref:`Control.accessibility_name<class_Control_property_accessibility_name>` para darle a la región un nombre descriptivo. Los lectores de pantalla pueden navegar entre regiones utilizando la navegación por puntos de referencia.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_Container_private_method__get_allowed_size_flags_horizontal:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **_get_allowed_size_flags_horizontal**\ (\ ) |virtual| |const| :ref:`🔗<class_Container_private_method__get_allowed_size_flags_horizontal>`

Implementa este método para devolver una lista de los indicadores de tamaño (:ref:`SizeFlags<enum_Control_SizeFlags>`) horizontales permitidos para los nodos hijos. Técnicamente, esto no impide el uso de otros indicadores de tamaño si tu implementación lo requiere; solo limita las opciones disponibles para el usuario en el panel del Inspector.

\ **Nota:** No tener ningún indicador de tamaño equivale a tener :ref:`Control.SIZE_SHRINK_BEGIN<class_Control_constant_SIZE_SHRINK_BEGIN>`. Por lo tanto, este valor siempre está permitido de forma implícita.

.. rst-class:: classref-item-separator

----

.. _class_Container_private_method__get_allowed_size_flags_vertical:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **_get_allowed_size_flags_vertical**\ (\ ) |virtual| |const| :ref:`🔗<class_Container_private_method__get_allowed_size_flags_vertical>`

Implementa este método para devolver una lista de los indicadores de tamaño (:ref:`SizeFlags<enum_Control_SizeFlags>`) verticales permitidos para los nodos hijos. Técnicamente, esto no impide el uso de otros indicadores de tamaño si tu implementación lo requiere; solo limita las opciones disponibles para el usuario en el panel del Inspector.

\ **Nota:** No tener ningún indicador de tamaño equivale a tener :ref:`Control.SIZE_SHRINK_BEGIN<class_Control_constant_SIZE_SHRINK_BEGIN>`. Por lo tanto, este valor siempre está permitido de forma implícita.

.. rst-class:: classref-item-separator

----

.. _class_Container_method_fit_child_in_rect:

.. rst-class:: classref-method

|void| **fit_child_in_rect**\ (\ child\: :ref:`Control<class_Control>`, rect\: :ref:`Rect2<class_Rect2>`\ ) :ref:`🔗<class_Container_method_fit_child_in_rect>`

Ajustar un control hijo en un rectángulo dado. Esto es principalmente una ayuda para crear clases de contenedores personalizados.

.. rst-class:: classref-item-separator

----

.. _class_Container_method_queue_sort:

.. rst-class:: classref-method

|void| **queue_sort**\ (\ ) :ref:`🔗<class_Container_method_queue_sort>`

Encolar la reorganización de los hijos contenidos. Este método es llamado automáticamente, pero también puede ser llamado manualmente.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
