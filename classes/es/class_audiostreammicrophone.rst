:github_url: hide

.. _class_AudioStreamMicrophone:

AudioStreamMicrophone
=====================

**Hereda:** :ref:`AudioStream<class_AudioStream>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Reproduce datos de entrada de audio en tiempo real.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Cuando se utiliza directamente en un nodo :ref:`AudioStreamPlayer<class_AudioStreamPlayer>`, **AudioStreamMicrophone** reproduce la entrada del micrófono en tiempo real. Esto puede usarse en conjunto con :ref:`AudioEffectCapture<class_AudioEffectCapture>` para procesar los datos o guardarlos.

\ **Nota:** :ref:`ProjectSettings.audio/driver/enable_input<class_ProjectSettings_property_audio/driver/enable_input>` debe estar en ``true`` para que la entrada de audio funcione. Consulte también la descripción de ese ajuste para conocer las advertencias relacionadas con los permisos y la configuración de privacidad del sistema operativo.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Corriente de Audio <../tutorials/audio/audio_streams>`

- :doc:`Grabando con micrófono <../tutorials/audio/recording_with_microphone>`

- `Demo de Grabación de Micrófono de Audio <https://github.com/godotengine/godot-demo-projects/tree/master/audio/mic_record>`__

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
