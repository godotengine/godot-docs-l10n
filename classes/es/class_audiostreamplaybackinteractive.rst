:github_url: hide

.. _class_AudioStreamPlaybackInteractive:

AudioStreamPlaybackInteractive
==============================

**Hereda:** :ref:`AudioStreamPlayback<class_AudioStreamPlayback>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Componente de reproducción de :ref:`AudioStreamInteractive<class_AudioStreamInteractive>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Componente de reproducción de :ref:`AudioStreamInteractive<class_AudioStreamInteractive>`. Contiene funciones para cambiar el clip que se está reproduciendo actualmente.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-----------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`get_current_clip_index<class_AudioStreamPlaybackInteractive_method_get_current_clip_index>`\ (\ ) |const|                                          |
   +-----------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                | :ref:`switch_to_clip<class_AudioStreamPlaybackInteractive_method_switch_to_clip>`\ (\ clip_index\: :ref:`int<class_int>`\ )                              |
   +-----------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                | :ref:`switch_to_clip_by_name<class_AudioStreamPlaybackInteractive_method_switch_to_clip_by_name>`\ (\ clip_name\: :ref:`StringName<class_StringName>`\ ) |
   +-----------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_AudioStreamPlaybackInteractive_method_get_current_clip_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_current_clip_index**\ (\ ) |const| :ref:`🔗<class_AudioStreamPlaybackInteractive_method_get_current_clip_index>`

Devuelve el índice del clip que se está reproduciendo actualmente. Puedes usarlo para obtener el nombre del clip en reproducción con :ref:`AudioStreamInteractive.get_clip_name()<class_AudioStreamInteractive_method_get_clip_name>`.

\ **Ejemplo:** Obtener el nombre del clip que se está reproduciendo desde un nodo :ref:`AudioStreamPlayer<class_AudioStreamPlayer>`.


.. tabs::

 .. code-tab:: gdscript

    var playing_clip_name = stream.get_clip_name(get_stream_playback().get_current_clip_index())



.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlaybackInteractive_method_switch_to_clip:

.. rst-class:: classref-method

|void| **switch_to_clip**\ (\ clip_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AudioStreamPlaybackInteractive_method_switch_to_clip>`

Cambiar a un clip (por índice).

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlaybackInteractive_method_switch_to_clip_by_name:

.. rst-class:: classref-method

|void| **switch_to_clip_by_name**\ (\ clip_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AudioStreamPlaybackInteractive_method_switch_to_clip_by_name>`

Cambiar a un clip (por nombre).

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
