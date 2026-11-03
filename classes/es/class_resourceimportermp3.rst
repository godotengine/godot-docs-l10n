:github_url: hide

.. _class_ResourceImporterMP3:

ResourceImporterMP3
===================

**Hereda:** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Importa un archivo de audio MP3 para reproducción.

.. rst-class:: classref-introduction-group

Descripción
----------------------

MP3 es un formato de audio con pérdida, con peor calidad de audio en comparación con :ref:`ResourceImporterOggVorbis<class_ResourceImporterOggVorbis>` a una tasa de bits dada.

En la mayoría de los casos, se recomienda usar Ogg Vorbis sobre MP3. Sin embargo, si estás utilizando una fuente de sonido MP3 sin una fuente de mayor calidad disponible, entonces se recomienda usar el archivo MP3 directamente para evitar la doble compresión con pérdida.

MP3 requiere más CPU para decodificar que :ref:`ResourceImporterWAV<class_ResourceImporterWAV>`. Si necesitas reproducir muchos sonidos simultáneos, se recomienda usar WAV para esos sonidos en su lugar, especialmente si se apunta a dispositivos de gama baja.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Importar muestras de audio <../tutorials/assets_pipeline/importing_audio_samples>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`bar_beats<class_ResourceImporterMP3_property_bar_beats>`     | ``4``     |
   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`beat_count<class_ResourceImporterMP3_property_beat_count>`   | ``0``     |
   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`bpm<class_ResourceImporterMP3_property_bpm>`                 | ``0``     |
   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`loop<class_ResourceImporterMP3_property_loop>`               | ``false`` |
   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`loop_offset<class_ResourceImporterMP3_property_loop_offset>` | ``0``     |
   +---------------------------+--------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_ResourceImporterMP3_property_bar_beats:

.. rst-class:: classref-property

:ref:`int<class_int>` **bar_beats** = ``4`` :ref:`🔗<class_ResourceImporterMP3_property_bar_beats>`

El número de pulsos dentro de un solo compás en la pista de audio. Esto solo es relevante para la música que desee utilizar la funcionalidad de música interactiva, no para los efectos de sonido.

Se proporciona un editor más práctico para :ref:`bar_beats<class_ResourceImporterMP3_property_bar_beats>` en el diálogo **Configuración avanzada de importación**, ya que te permite previsualizar tus cambios sin tener que volver a importar el audio.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterMP3_property_beat_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **beat_count** = ``0`` :ref:`🔗<class_ResourceImporterMP3_property_beat_count>`

La duración de la pista de audio en pulsos. La duración real del archivo de audio puede ser mayor que lo indicado por esta propiedad. Esto solo es relevante para la música que desee utilizar la funcionalidad de música interactiva, no para los efectos de sonido.

Se proporciona un editor más práctico para :ref:`beat_count<class_ResourceImporterMP3_property_beat_count>` en el diálogo **Configuración avanzada de importación**, ya que te permite previsualizar tus cambios sin tener que volver a importar el audio.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterMP3_property_bpm:

.. rst-class:: classref-property

:ref:`float<class_float>` **bpm** = ``0`` :ref:`🔗<class_ResourceImporterMP3_property_bpm>`

El tempo de la pista de audio, medido en pulsos por minuto. Esto debería coincidir con el valor de BPM que se utilizó para componer la pista. Esto solo es relevante para la música que desee utilizar la funcionalidad de música interactiva, no para los efectos de sonido.

Se proporciona un editor más práctico para :ref:`bpm<class_ResourceImporterMP3_property_bpm>` en el diálogo **Configuración avanzada de importación**, ya que te permite previsualizar tus cambios sin tener que volver a importar el audio.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterMP3_property_loop:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **loop** = ``false`` :ref:`🔗<class_ResourceImporterMP3_property_loop>`

Si está habilitado, el audio comenzará a reproducirse desde el principio o desde :ref:`loop_offset<class_ResourceImporterMP3_property_loop_offset>` cuando la reproducción termine, ya sea al llegar al final del audio o al final del último pulso, según la cantidad especificada en :ref:`beat_count<class_ResourceImporterMP3_property_beat_count>`.

\ **Nota:** En :ref:`AudioStreamPlayer<class_AudioStreamPlayer>`, la señal :ref:`AudioStreamPlayer.finished<class_AudioStreamPlayer_signal_finished>` no se emitirá para el audio en bucle cuando llegue al final del archivo de audio, ya que el audio seguirá reproduciéndose indefinidamente.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterMP3_property_loop_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **loop_offset** = ``0`` :ref:`🔗<class_ResourceImporterMP3_property_loop_offset>`

Determina dónde comenzará a repetirse el audio después de que la reproducción llegue al final del audio. Esto se puede usar para solo repetir una parte del archivo de audio, lo cual es útil para algunos sonidos o música ambientales. El valor se determina en segundos en relación con el principio del audio. Un valor de ``0.0`` repetirá todo el archivo de audio.

Solo tiene efecto si :ref:`loop<class_ResourceImporterMP3_property_loop>` es ``true``.

Un editor más conveniente para :ref:`loop_offset<class_ResourceImporterMP3_property_loop_offset>` se proporciona en el diálogo **Configuración avanzada de importación**, ya que te permite previsualizar tus cambios sin tener que volver a importar el audio.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
