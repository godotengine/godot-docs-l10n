:github_url: hide

.. _class_SpriteFrames:

SpriteFrames
============

**Hereda:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Librería de fotogramas de sprite para AnimatedSprite2D y AnimatedSprite3D.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Librería de fotogramas de sprite para un nodo :ref:`AnimatedSprite2D<class_AnimatedSprite2D>` o :ref:`AnimatedSprite3D<class_AnimatedSprite3D>`. Contiene fotogramas y datos de animación para su reproducción.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`add_animation<class_SpriteFrames_method_add_animation>`\ (\ anim\: :ref:`StringName<class_StringName>`\ )                                                                                                                            |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`add_frame<class_SpriteFrames_method_add_frame>`\ (\ anim\: :ref:`StringName<class_StringName>`, texture\: :ref:`Texture2D<class_Texture2D>`, duration\: :ref:`float<class_float>` = 1.0, at_position\: :ref:`int<class_int>` = -1\ ) |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`clear<class_SpriteFrames_method_clear>`\ (\ anim\: :ref:`StringName<class_StringName>`\ )                                                                                                                                            |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`clear_all<class_SpriteFrames_method_clear_all>`\ (\ )                                                                                                                                                                                |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`duplicate_animation<class_SpriteFrames_method_duplicate_animation>`\ (\ anim_from\: :ref:`StringName<class_StringName>`, anim_to\: :ref:`StringName<class_StringName>`\ )                                                            |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`get_animation_loop<class_SpriteFrames_method_get_animation_loop>`\ (\ anim\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                          |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`LoopMode<enum_SpriteFrames_LoopMode>`       | :ref:`get_animation_loop_mode<class_SpriteFrames_method_get_animation_loop_mode>`\ (\ anim\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_animation_names<class_SpriteFrames_method_get_animation_names>`\ (\ ) |const|                                                                                                                                                    |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                         | :ref:`get_animation_speed<class_SpriteFrames_method_get_animation_speed>`\ (\ anim\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                        |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_frame_count<class_SpriteFrames_method_get_frame_count>`\ (\ anim\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                         | :ref:`get_frame_duration<class_SpriteFrames_method_get_frame_duration>`\ (\ anim\: :ref:`StringName<class_StringName>`, idx\: :ref:`int<class_int>`\ ) |const|                                                                             |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                 | :ref:`get_frame_texture<class_SpriteFrames_method_get_frame_texture>`\ (\ anim\: :ref:`StringName<class_StringName>`, idx\: :ref:`int<class_int>`\ ) |const|                                                                               |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`has_animation<class_SpriteFrames_method_has_animation>`\ (\ anim\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                    |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`remove_animation<class_SpriteFrames_method_remove_animation>`\ (\ anim\: :ref:`StringName<class_StringName>`\ )                                                                                                                      |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`remove_frame<class_SpriteFrames_method_remove_frame>`\ (\ anim\: :ref:`StringName<class_StringName>`, idx\: :ref:`int<class_int>`\ )                                                                                                 |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`rename_animation<class_SpriteFrames_method_rename_animation>`\ (\ anim\: :ref:`StringName<class_StringName>`, newname\: :ref:`StringName<class_StringName>`\ )                                                                       |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_animation_loop<class_SpriteFrames_method_set_animation_loop>`\ (\ anim\: :ref:`StringName<class_StringName>`, loop\: :ref:`bool<class_bool>`\ )                                                                                  |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_animation_loop_mode<class_SpriteFrames_method_set_animation_loop_mode>`\ (\ anim\: :ref:`StringName<class_StringName>`, loop_mode\: :ref:`LoopMode<enum_SpriteFrames_LoopMode>`\ )                                               |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_animation_speed<class_SpriteFrames_method_set_animation_speed>`\ (\ anim\: :ref:`StringName<class_StringName>`, fps\: :ref:`float<class_float>`\ )                                                                               |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_frame<class_SpriteFrames_method_set_frame>`\ (\ anim\: :ref:`StringName<class_StringName>`, idx\: :ref:`int<class_int>`, texture\: :ref:`Texture2D<class_Texture2D>`, duration\: :ref:`float<class_float>` = 1.0\ )              |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_SpriteFrames_LoopMode:

.. rst-class:: classref-enumeration

enum **LoopMode**: :ref:`🔗<enum_SpriteFrames_LoopMode>`

.. _class_SpriteFrames_constant_LOOP_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`LoopMode<enum_SpriteFrames_LoopMode>` **LOOP_NONE** = ``0``

The animation plays once and stops when it reaches the end, or the start if played in reverse.

.. _class_SpriteFrames_constant_LOOP_LINEAR:

.. rst-class:: classref-enumeration-constant

:ref:`LoopMode<enum_SpriteFrames_LoopMode>` **LOOP_LINEAR** = ``1``

The animation restarts from the beginning when it reaches the end, or from the end if played in reverse, repeating continuously.

.. _class_SpriteFrames_constant_LOOP_PINGPONG:

.. rst-class:: classref-enumeration-constant

:ref:`LoopMode<enum_SpriteFrames_LoopMode>` **LOOP_PINGPONG** = ``2``

The animation alternates direction each time it reaches the end or start, playing forward and then in reverse repeatedly.

\ **Note:** Both :ref:`AnimatedSprite2D<class_AnimatedSprite2D>` and :ref:`AnimatedSprite3D<class_AnimatedSprite3D>` play the first/last frame for its duration only once at each end of the animation loop (instead of twice, once per forward/backward animation direction).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_SpriteFrames_method_add_animation:

.. rst-class:: classref-method

|void| **add_animation**\ (\ anim\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_SpriteFrames_method_add_animation>`

Añade una nueva animación ``anim`` a la librería.

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_add_frame:

.. rst-class:: classref-method

|void| **add_frame**\ (\ anim\: :ref:`StringName<class_StringName>`, texture\: :ref:`Texture2D<class_Texture2D>`, duration\: :ref:`float<class_float>` = 1.0, at_position\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_SpriteFrames_method_add_frame>`

Añade un fotograma a la animación ``anim``. Si ``at_position`` es ``-1``, el fotograma se añadirá al final de la animación. ``duration`` especifica la duración relativa, véase :ref:`get_frame_duration()<class_SpriteFrames_method_get_frame_duration>` para más detalles.

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ anim\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_SpriteFrames_method_clear>`

Elimina todos los fotogramas de la animación ``anim``.

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_clear_all:

.. rst-class:: classref-method

|void| **clear_all**\ (\ ) :ref:`🔗<class_SpriteFrames_method_clear_all>`

Elimina todas las animaciones. Se creará una animación ``default`` vacía.

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_duplicate_animation:

.. rst-class:: classref-method

|void| **duplicate_animation**\ (\ anim_from\: :ref:`StringName<class_StringName>`, anim_to\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_SpriteFrames_method_duplicate_animation>`

Duplica la animación ``anim_from`` a una nueva animación llamada ``anim_to``. Falla si ``anim_to`` ya existe, o si ``anim_from`` no existe.

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_get_animation_loop:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_animation_loop**\ (\ anim\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_SpriteFrames_method_get_animation_loop>`

**Obsoleto:** Use :ref:`get_animation_loop_mode()<class_SpriteFrames_method_get_animation_loop_mode>` instead.

Returns ``true`` if ``get_animation_loop_mode(anim) == LOOP_LINEAR``. Otherwise, returns ``false``.

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_get_animation_loop_mode:

.. rst-class:: classref-method

:ref:`LoopMode<enum_SpriteFrames_LoopMode>` **get_animation_loop_mode**\ (\ anim\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_SpriteFrames_method_get_animation_loop_mode>`

Returns the loop mode for the ``anim`` animation.

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_get_animation_names:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_animation_names**\ (\ ) |const| :ref:`🔗<class_SpriteFrames_method_get_animation_names>`

Devuelve un array que contiene los nombres asociados a cada animación. Los valores se colocan en orden alfabético.

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_get_animation_speed:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_animation_speed**\ (\ anim\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_SpriteFrames_method_get_animation_speed>`

Devuelve la velocidad en fotogramas por segundo para la animación ``anim``.

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_get_frame_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_frame_count**\ (\ anim\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_SpriteFrames_method_get_frame_count>`

Devuelve el número de fotogramas para la animación ``anim``.

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_get_frame_duration:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_frame_duration**\ (\ anim\: :ref:`StringName<class_StringName>`, idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SpriteFrames_method_get_frame_duration>`

Returns a relative duration of the frame ``idx`` in the ``anim`` animation (defaults to ``1.0``). For example, a frame with a duration of ``2.0`` is displayed twice as long as a frame with a duration of ``1.0``. You can calculate the absolute duration (in seconds) of a frame using the following formula:

::

    absolute_duration = relative_duration / (animation_fps * abs(playing_speed))

In this example, ``playing_speed`` refers to either :ref:`AnimatedSprite2D.get_playing_speed()<class_AnimatedSprite2D_method_get_playing_speed>` or :ref:`AnimatedSprite3D.get_playing_speed()<class_AnimatedSprite3D_method_get_playing_speed>`.

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_get_frame_texture:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_frame_texture**\ (\ anim\: :ref:`StringName<class_StringName>`, idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SpriteFrames_method_get_frame_texture>`

Devuelve la textura del fotograma ``idx`` en la animación ``anim``.

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_has_animation:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_animation**\ (\ anim\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_SpriteFrames_method_has_animation>`

Devuelve ``true`` si la animación ``anim`` existe.

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_remove_animation:

.. rst-class:: classref-method

|void| **remove_animation**\ (\ anim\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_SpriteFrames_method_remove_animation>`

Elimina la animación ``anim``.

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_remove_frame:

.. rst-class:: classref-method

|void| **remove_frame**\ (\ anim\: :ref:`StringName<class_StringName>`, idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SpriteFrames_method_remove_frame>`

Elimina el fotograma ``idx`` de la animación ``anim``.

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_rename_animation:

.. rst-class:: classref-method

|void| **rename_animation**\ (\ anim\: :ref:`StringName<class_StringName>`, newname\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_SpriteFrames_method_rename_animation>`

Cambia el nombre de la animación ``anim`` a ``newname``.

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_set_animation_loop:

.. rst-class:: classref-method

|void| **set_animation_loop**\ (\ anim\: :ref:`StringName<class_StringName>`, loop\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SpriteFrames_method_set_animation_loop>`

**Obsoleto:** Use :ref:`set_animation_loop_mode()<class_SpriteFrames_method_set_animation_loop_mode>` instead.

If ``loop`` is ``false`` equivalent to ``set_animation_loop_mode(LOOP_NONE)``.

If ``loop`` is ``true`` equivalent to ``set_animation_loop_mode(LOOP_LINEAR)``.

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_set_animation_loop_mode:

.. rst-class:: classref-method

|void| **set_animation_loop_mode**\ (\ anim\: :ref:`StringName<class_StringName>`, loop_mode\: :ref:`LoopMode<enum_SpriteFrames_LoopMode>`\ ) :ref:`🔗<class_SpriteFrames_method_set_animation_loop_mode>`

Sets the ``loop_mode`` for the ``anim`` animation.

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_set_animation_speed:

.. rst-class:: classref-method

|void| **set_animation_speed**\ (\ anim\: :ref:`StringName<class_StringName>`, fps\: :ref:`float<class_float>`\ ) :ref:`🔗<class_SpriteFrames_method_set_animation_speed>`

Establece la velocidad para la animación ``anim`` en fotogramas por segundo.

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_set_frame:

.. rst-class:: classref-method

|void| **set_frame**\ (\ anim\: :ref:`StringName<class_StringName>`, idx\: :ref:`int<class_int>`, texture\: :ref:`Texture2D<class_Texture2D>`, duration\: :ref:`float<class_float>` = 1.0\ ) :ref:`🔗<class_SpriteFrames_method_set_frame>`

Establece la ``texture`` y la ``duration`` del fotograma ``idx`` en la animación ``anim``. ``duration`` especifica la duración relativa, véase :ref:`get_frame_duration()<class_SpriteFrames_method_get_frame_duration>` para obtener más detalles.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
