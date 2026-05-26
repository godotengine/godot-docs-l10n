:github_url: hide

.. _class_AnimationNodeBlendSpace1D:

AnimationNodeBlendSpace1D
=========================

**Hereda:** :ref:`AnimationRootNode<class_AnimationRootNode>` **<** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un conjunto de :ref:`AnimationRootNode<class_AnimationRootNode>`\ s colocados en un eje virtual, con transición cruzada entre los dos adyacentes. Usado por :ref:`AnimationTree<class_AnimationTree>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Un recurso utilizado por :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`.

\ **AnimationNodeBlendSpace1D** representa un eje virtual en el que se puede agregar cualquier tipo de :ref:`AnimationRootNode<class_AnimationRootNode>` usando :ref:`add_blend_point()<class_AnimationNodeBlendSpace1D_method_add_blend_point>`. Genera la mezcla lineal de los dos :ref:`AnimationRootNode<class_AnimationRootNode>` adyacentes al valor actual.

Puede establecer los límites del eje con :ref:`min_space<class_AnimationNodeBlendSpace1D_property_min_space>` y :ref:`max_space<class_AnimationNodeBlendSpace1D_property_max_space>`.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Usando AnimationTree <../tutorials/animation/animation_tree>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +------------------------------------------------------------+--------------------------------------------------------------------------+-------------+
   | :ref:`BlendMode<enum_AnimationNodeBlendSpace1D_BlendMode>` | :ref:`blend_mode<class_AnimationNodeBlendSpace1D_property_blend_mode>`   | ``0``       |
   +------------------------------------------------------------+--------------------------------------------------------------------------+-------------+
   | :ref:`float<class_float>`                                  | :ref:`max_space<class_AnimationNodeBlendSpace1D_property_max_space>`     | ``1.0``     |
   +------------------------------------------------------------+--------------------------------------------------------------------------+-------------+
   | :ref:`float<class_float>`                                  | :ref:`min_space<class_AnimationNodeBlendSpace1D_property_min_space>`     | ``-1.0``    |
   +------------------------------------------------------------+--------------------------------------------------------------------------+-------------+
   | :ref:`float<class_float>`                                  | :ref:`snap<class_AnimationNodeBlendSpace1D_property_snap>`               | ``0.1``     |
   +------------------------------------------------------------+--------------------------------------------------------------------------+-------------+
   | :ref:`bool<class_bool>`                                    | :ref:`sync<class_AnimationNodeBlendSpace1D_property_sync>`               | ``false``   |
   +------------------------------------------------------------+--------------------------------------------------------------------------+-------------+
   | :ref:`String<class_String>`                                | :ref:`value_label<class_AnimationNodeBlendSpace1D_property_value_label>` | ``"value"`` |
   +------------------------------------------------------------+--------------------------------------------------------------------------+-------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`add_blend_point<class_AnimationNodeBlendSpace1D_method_add_blend_point>`\ (\ node\: :ref:`AnimationRootNode<class_AnimationRootNode>`, pos\: :ref:`float<class_float>`, at_index\: :ref:`int<class_int>` = -1\ ) |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_blend_point_count<class_AnimationNodeBlendSpace1D_method_get_blend_point_count>`\ (\ ) |const|                                                                                                               |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AnimationRootNode<class_AnimationRootNode>` | :ref:`get_blend_point_node<class_AnimationNodeBlendSpace1D_method_get_blend_point_node>`\ (\ point\: :ref:`int<class_int>`\ ) |const|                                                                                  |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                         | :ref:`get_blend_point_position<class_AnimationNodeBlendSpace1D_method_get_blend_point_position>`\ (\ point\: :ref:`int<class_int>`\ ) |const|                                                                          |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`remove_blend_point<class_AnimationNodeBlendSpace1D_method_remove_blend_point>`\ (\ point\: :ref:`int<class_int>`\ )                                                                                              |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_blend_point_node<class_AnimationNodeBlendSpace1D_method_set_blend_point_node>`\ (\ point\: :ref:`int<class_int>`, node\: :ref:`AnimationRootNode<class_AnimationRootNode>`\ )                                |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_blend_point_position<class_AnimationNodeBlendSpace1D_method_set_blend_point_position>`\ (\ point\: :ref:`int<class_int>`, pos\: :ref:`float<class_float>`\ )                                                 |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_AnimationNodeBlendSpace1D_BlendMode:

.. rst-class:: classref-enumeration

enum **BlendMode**: :ref:`🔗<enum_AnimationNodeBlendSpace1D_BlendMode>`

.. _class_AnimationNodeBlendSpace1D_constant_BLEND_MODE_INTERPOLATED:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_AnimationNodeBlendSpace1D_BlendMode>` **BLEND_MODE_INTERPOLATED** = ``0``

La interpolación entre las animaciones es lineal.

.. _class_AnimationNodeBlendSpace1D_constant_BLEND_MODE_DISCRETE:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_AnimationNodeBlendSpace1D_BlendMode>` **BLEND_MODE_DISCRETE** = ``1``

El espacio de mezcla reproduce la animación del nodo de animación cuya posición de mezcla es la más cercana. Es útil para las animaciones 2D fotograma a fotograma.

.. _class_AnimationNodeBlendSpace1D_constant_BLEND_MODE_DISCRETE_CARRY:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_AnimationNodeBlendSpace1D_BlendMode>` **BLEND_MODE_DISCRETE_CARRY** = ``2``

Similar a :ref:`BLEND_MODE_DISCRETE<class_AnimationNodeBlendSpace1D_constant_BLEND_MODE_DISCRETE>`, pero inicia la nueva animación en la posición de reproducción de la última animación.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_AnimationNodeBlendSpace1D_property_blend_mode:

.. rst-class:: classref-property

:ref:`BlendMode<enum_AnimationNodeBlendSpace1D_BlendMode>` **blend_mode** = ``0`` :ref:`🔗<class_AnimationNodeBlendSpace1D_property_blend_mode>`

.. rst-class:: classref-property-setget

- |void| **set_blend_mode**\ (\ value\: :ref:`BlendMode<enum_AnimationNodeBlendSpace1D_BlendMode>`\ )
- :ref:`BlendMode<enum_AnimationNodeBlendSpace1D_BlendMode>` **get_blend_mode**\ (\ )

Controla la interpolación entre animaciones.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace1D_property_max_space:

.. rst-class:: classref-property

:ref:`float<class_float>` **max_space** = ``1.0`` :ref:`🔗<class_AnimationNodeBlendSpace1D_property_max_space>`

.. rst-class:: classref-property-setget

- |void| **set_max_space**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max_space**\ (\ )

El límite superior del eje del espacio de mezcla para la posición de los puntos. Véase :ref:`add_blend_point()<class_AnimationNodeBlendSpace1D_method_add_blend_point>`.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace1D_property_min_space:

.. rst-class:: classref-property

:ref:`float<class_float>` **min_space** = ``-1.0`` :ref:`🔗<class_AnimationNodeBlendSpace1D_property_min_space>`

.. rst-class:: classref-property-setget

- |void| **set_min_space**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_min_space**\ (\ )

El límite inferior del eje del espacio de mezcla para la posición de los puntos. Véase :ref:`add_blend_point()<class_AnimationNodeBlendSpace1D_method_add_blend_point>`.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace1D_property_snap:

.. rst-class:: classref-property

:ref:`float<class_float>` **snap** = ``0.1`` :ref:`🔗<class_AnimationNodeBlendSpace1D_property_snap>`

.. rst-class:: classref-property-setget

- |void| **set_snap**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_snap**\ (\ )

Incremento de la posición a la que se ajusta cuando se mueve un punto en el eje.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace1D_property_sync:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **sync** = ``false`` :ref:`🔗<class_AnimationNodeBlendSpace1D_property_sync>`

.. rst-class:: classref-property-setget

- |void| **set_use_sync**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_sync**\ (\ )

Si es ``false``, los fotogramas de las animaciones mezcladas se detienen cuando el valor de la mezcla es ``0``.

Si es ``true``, fuerza a las animaciones mezcladas a avanzar de fotograma.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace1D_property_value_label:

.. rst-class:: classref-property

:ref:`String<class_String>` **value_label** = ``"value"`` :ref:`🔗<class_AnimationNodeBlendSpace1D_property_value_label>`

.. rst-class:: classref-property-setget

- |void| **set_value_label**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_value_label**\ (\ )

Etiqueta del eje virtual del espacio de mezcla.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_AnimationNodeBlendSpace1D_method_add_blend_point:

.. rst-class:: classref-method

|void| **add_blend_point**\ (\ node\: :ref:`AnimationRootNode<class_AnimationRootNode>`, pos\: :ref:`float<class_float>`, at_index\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_AnimationNodeBlendSpace1D_method_add_blend_point>`

Agrega un nuevo punto que representa un ``node`` en el eje virtual en una posición dada definida por ``pos``. Puede insertarlo en un índice específico usando el argumento ``at_index``. Si usa el valor predeterminado para ``at_index``, el punto se inserta al final de la matriz de puntos de mezcla.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace1D_method_get_blend_point_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_blend_point_count**\ (\ ) |const| :ref:`🔗<class_AnimationNodeBlendSpace1D_method_get_blend_point_count>`

Devuelve el número de puntos en el eje de la mezcla.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace1D_method_get_blend_point_node:

.. rst-class:: classref-method

:ref:`AnimationRootNode<class_AnimationRootNode>` **get_blend_point_node**\ (\ point\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AnimationNodeBlendSpace1D_method_get_blend_point_node>`

Devuelve el :ref:`AnimationNode<class_AnimationNode>` referenciado por el punto en el índice ``point``.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace1D_method_get_blend_point_position:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_blend_point_position**\ (\ point\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AnimationNodeBlendSpace1D_method_get_blend_point_position>`

Devuelve la posición del punto en el índice ``point``.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace1D_method_remove_blend_point:

.. rst-class:: classref-method

|void| **remove_blend_point**\ (\ point\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AnimationNodeBlendSpace1D_method_remove_blend_point>`

Elimina el punto en el índice ``point`` del eje de la mezcla.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace1D_method_set_blend_point_node:

.. rst-class:: classref-method

|void| **set_blend_point_node**\ (\ point\: :ref:`int<class_int>`, node\: :ref:`AnimationRootNode<class_AnimationRootNode>`\ ) :ref:`🔗<class_AnimationNodeBlendSpace1D_method_set_blend_point_node>`

Cambia el :ref:`AnimationNode<class_AnimationNode>` al que se refiere el punto en el índice ``point``.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace1D_method_set_blend_point_position:

.. rst-class:: classref-method

|void| **set_blend_point_position**\ (\ point\: :ref:`int<class_int>`, pos\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AnimationNodeBlendSpace1D_method_set_blend_point_position>`

Actualiza la posición del punto en el índice ``point`` en el eje de la mezcla.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
