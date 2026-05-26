:github_url: hide

.. _class_AnimationNodeExtension:

AnimationNodeExtension
======================

**Experimental:** This class may be changed or removed in future versions.

**Hereda:** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Clase base para extender :ref:`AnimationRootNode<class_AnimationRootNode>`\ s desde GDScript, C# o C++.

.. rst-class:: classref-introduction-group

Descripción
----------------------

**AnimationNodeExtension** expone las APIs de :ref:`AnimationRootNode<class_AnimationRootNode>` para permitir a los usuarios extenderlo desde GDScript, C# o C++. Esta clase no está pensada para ser usada directamente, sino para ser extendida por otras clases. Se usa para crear nodos personalizados para el sistema :ref:`AnimationTree<class_AnimationTree>`.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>` | :ref:`_process_animation_node<class_AnimationNodeExtension_private_method__process_animation_node>`\ (\ playback_info\: :ref:`PackedFloat64Array<class_PackedFloat64Array>`, test_only\: :ref:`bool<class_bool>`\ ) |virtual| |required| |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                           | :ref:`get_remaining_time<class_AnimationNodeExtension_method_get_remaining_time>`\ (\ node_info\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`, break_loop\: :ref:`bool<class_bool>`\ ) |static|                                  |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`is_looping<class_AnimationNodeExtension_method_is_looping>`\ (\ node_info\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) |static|                                                                                        |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_AnimationNodeExtension_private_method__process_animation_node:

.. rst-class:: classref-method

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **_process_animation_node**\ (\ playback_info\: :ref:`PackedFloat64Array<class_PackedFloat64Array>`, test_only\: :ref:`bool<class_bool>`\ ) |virtual| |required| :ref:`🔗<class_AnimationNodeExtension_private_method__process_animation_node>`

Una versión del método :ref:`AnimationNode._process()<class_AnimationNode_private_method__process>` pensada para ser sobrescrita por un nodo personalizado. Devuelve una :ref:`PackedFloat32Array<class_PackedFloat32Array>` con la información de la animación procesada.

El parámetro :ref:`PackedFloat64Array<class_PackedFloat64Array>` contiene información de reproducción, conteniendo los siguientes valores codificados como números de punto flotante (en orden): tiempo de reproducción y delta, tiempo de inicio y final, si se ha solicitado una búsqueda (codificado como un float mayor a ``0``), si la solicitud de búsqueda fue solicitada externamente (codificado como un float mayor a ``0``), el :ref:`LoopedFlag<enum_Animation_LoopedFlag>` actual (codificado como float), y el peso de mezcla actual.

La función debe retornar un :ref:`PackedFloat32Array<class_PackedFloat32Array>` de la información de tiempo del nodo, conteniendo los siguientes valores (en orden): largo de la animación, posición en el tiempo, delta, :ref:`LoopMode<enum_Animation_LoopMode>` (codificado como float), si la animación está por terminar (codificado como un float mayor a ``0``) y si la animación es infinita (codificado como un float mayor a ``0``). Todos los valores deben incluirse en la array retornada.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeExtension_method_get_remaining_time:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_remaining_time**\ (\ node_info\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`, break_loop\: :ref:`bool<class_bool>`\ ) |static| :ref:`🔗<class_AnimationNodeExtension_method_get_remaining_time>`

Devuelve el tiempo restante de la animación para la información del nodo dada. Para animaciones en bucle, solo devolverá el tiempo restante si ``break_loop`` es ``true``, de lo contrario se devolverá un valor entero grande.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeExtension_method_is_looping:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_looping**\ (\ node_info\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) |static| :ref:`🔗<class_AnimationNodeExtension_method_is_looping>`

Devuelve ``true`` si la animación para el ``node_info`` dado está en bucle.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
