:github_url: hide

.. _class_AnimationNodeAnimation:

AnimationNodeAnimation
======================

**Hereda:** :ref:`AnimationRootNode<class_AnimationRootNode>` **<** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una animación de entrada para un :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Un recurso para añadir a un :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`. Solo tiene un puerto de salida que utiliza la propiedad :ref:`animation<class_AnimationNodeAnimation_property_animation>`. Se utiliza como entrada para los :ref:`AnimationNode<class_AnimationNode>` que mezclan animaciones.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Usando AnimationTree <../tutorials/animation/animation_tree>`

- `Demo de Plataformas en 3D <https://godotengine.org/asset-library/asset/2748>`__

- `Demo de Shooter en Tercera Persona (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------------------------------------+---------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                               | :ref:`advance_on_start<class_AnimationNodeAnimation_property_advance_on_start>`       | ``false`` |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------+-----------+
   | :ref:`StringName<class_StringName>`                   | :ref:`animation<class_AnimationNodeAnimation_property_animation>`                     | ``&""``   |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------+-----------+
   | :ref:`LoopMode<enum_Animation_LoopMode>`              | :ref:`loop_mode<class_AnimationNodeAnimation_property_loop_mode>`                     |           |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------+-----------+
   | :ref:`PlayMode<enum_AnimationNodeAnimation_PlayMode>` | :ref:`play_mode<class_AnimationNodeAnimation_property_play_mode>`                     | ``0``     |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                             | :ref:`start_offset<class_AnimationNodeAnimation_property_start_offset>`               |           |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                               | :ref:`stretch_time_scale<class_AnimationNodeAnimation_property_stretch_time_scale>`   |           |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                             | :ref:`timeline_length<class_AnimationNodeAnimation_property_timeline_length>`         |           |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                               | :ref:`use_custom_timeline<class_AnimationNodeAnimation_property_use_custom_timeline>` | ``false`` |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_AnimationNodeAnimation_PlayMode:

.. rst-class:: classref-enumeration

enum **PlayMode**: :ref:`🔗<enum_AnimationNodeAnimation_PlayMode>`

.. _class_AnimationNodeAnimation_constant_PLAY_MODE_FORWARD:

.. rst-class:: classref-enumeration-constant

:ref:`PlayMode<enum_AnimationNodeAnimation_PlayMode>` **PLAY_MODE_FORWARD** = ``0``

Reproduce la animación en dirección hacia adelante.

.. _class_AnimationNodeAnimation_constant_PLAY_MODE_BACKWARD:

.. rst-class:: classref-enumeration-constant

:ref:`PlayMode<enum_AnimationNodeAnimation_PlayMode>` **PLAY_MODE_BACKWARD** = ``1``

Reproduce la animación en dirección hacia atrás.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_AnimationNodeAnimation_property_advance_on_start:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **advance_on_start** = ``false`` :ref:`🔗<class_AnimationNodeAnimation_property_advance_on_start>`

.. rst-class:: classref-property-setget

- |void| **set_advance_on_start**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_advance_on_start**\ (\ )

Si es ``true``, al recibir una solicitud para reproducir una animación desde el principio, el primer fotograma no se dibuja, sino que solo se procesa, y la reproducción comienza desde el siguiente fotograma.

Véase también las notas de :ref:`AnimationPlayer.play()<class_AnimationPlayer_method_play>`.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeAnimation_property_animation:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **animation** = ``&""`` :ref:`🔗<class_AnimationNodeAnimation_property_animation>`

.. rst-class:: classref-property-setget

- |void| **set_animation**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_animation**\ (\ )

Animación para usar como salida. Es una de las animaciones proporcionadas por :ref:`AnimationTree.anim_player<class_AnimationTree_property_anim_player>`.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeAnimation_property_loop_mode:

.. rst-class:: classref-property

:ref:`LoopMode<enum_Animation_LoopMode>` **loop_mode** :ref:`🔗<class_AnimationNodeAnimation_property_loop_mode>`

.. rst-class:: classref-property-setget

- |void| **set_loop_mode**\ (\ value\: :ref:`LoopMode<enum_Animation_LoopMode>`\ )
- :ref:`LoopMode<enum_Animation_LoopMode>` **get_loop_mode**\ (\ )

Si :ref:`use_custom_timeline<class_AnimationNodeAnimation_property_use_custom_timeline>` es ``true``, sobrescribe los ajustes de bucle del recurso :ref:`Animation<class_Animation>` original con el valor.

\ **Nota:** Si el :ref:`Animation.loop_mode<class_Animation_property_loop_mode>` no está configurado para bucle, la opción :ref:`Animation.track_set_interpolation_loop_wrap()<class_Animation_method_track_set_interpolation_loop_wrap>` no se respetará. Si no puedes obtener el comportamiento esperado, considera duplicar el recurso :ref:`Animation<class_Animation>` y cambiar los ajustes de bucle.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeAnimation_property_play_mode:

.. rst-class:: classref-property

:ref:`PlayMode<enum_AnimationNodeAnimation_PlayMode>` **play_mode** = ``0`` :ref:`🔗<class_AnimationNodeAnimation_property_play_mode>`

.. rst-class:: classref-property-setget

- |void| **set_play_mode**\ (\ value\: :ref:`PlayMode<enum_AnimationNodeAnimation_PlayMode>`\ )
- :ref:`PlayMode<enum_AnimationNodeAnimation_PlayMode>` **get_play_mode**\ (\ )

Determina la dirección de reproducción de la animación.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeAnimation_property_start_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **start_offset** :ref:`🔗<class_AnimationNodeAnimation_property_start_offset>`

.. rst-class:: classref-property-setget

- |void| **set_start_offset**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_start_offset**\ (\ )

Si :ref:`use_custom_timeline<class_AnimationNodeAnimation_property_use_custom_timeline>` es ``true``, desplaza la posición inicial de la animación.

Esto es útil para ajustar qué pie pisa primero en animaciones de caminata en 3D.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeAnimation_property_stretch_time_scale:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **stretch_time_scale** :ref:`🔗<class_AnimationNodeAnimation_property_stretch_time_scale>`

.. rst-class:: classref-property-setget

- |void| **set_stretch_time_scale**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_stretching_time_scale**\ (\ )

Si es ``true``, escala el tiempo para que la duración especificada en :ref:`timeline_length<class_AnimationNodeAnimation_property_timeline_length>` sea un ciclo.

Esto es útil para hacer coincidir los periodos de las animaciones de caminar y correr.

Si es ``false``, se respeta la duración original de la animación. Si estableces el bucle en :ref:`loop_mode<class_AnimationNodeAnimation_property_loop_mode>`, la animación se repetirá en :ref:`timeline_length<class_AnimationNodeAnimation_property_timeline_length>`.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeAnimation_property_timeline_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **timeline_length** :ref:`🔗<class_AnimationNodeAnimation_property_timeline_length>`

.. rst-class:: classref-property-setget

- |void| **set_timeline_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_timeline_length**\ (\ )

The length of the custom timeline.

If :ref:`stretch_time_scale<class_AnimationNodeAnimation_property_stretch_time_scale>` is ``true``, scales the animation to this length.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeAnimation_property_use_custom_timeline:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_custom_timeline** = ``false`` :ref:`🔗<class_AnimationNodeAnimation_property_use_custom_timeline>`

.. rst-class:: classref-property-setget

- |void| **set_use_custom_timeline**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_custom_timeline**\ (\ )

Si es ``true``, el :ref:`AnimationNode<class_AnimationNode>` proporciona una animación basada en el recurso :ref:`Animation<class_Animation>` con algunos parámetros ajustados.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
