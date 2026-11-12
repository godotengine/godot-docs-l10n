:github_url: hide

.. _class_AudioEffectCapture:

AudioEffectCapture
==================

**Hereda:** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Expone muestras de audio de un bus de audio en tiempo real, de modo que se pueda acceder a ellas como datos.

.. rst-class:: classref-introduction-group

Descripción
----------------------

AudioEffectCapture es un :ref:`AudioEffect<class_AudioEffect>` que copia todos los fotogramas de audio, también conocidos como «muestras» o «muestras de audio», del bus de audio al que está conectado a su búfer de anillo interno. Este efecto no altera el audio. Puede utilizarse para almacenar datos de audio en tiempo real para su reproducción y para crear visualizaciones de audio en tiempo real, como un osciloscopio.

El código de la aplicación debe consumir estos fotogramas de audio del búfer de anillo utilizando :ref:`get_buffer()<class_AudioEffectCapture_method_get_buffer>` y procesarlos según sea necesario, por ejemplo, para capturar datos de un :ref:`AudioStreamMicrophone<class_AudioStreamMicrophone>`, implementar efectos definidos por la aplicación o transmitir audio a través de la red. Al capturar datos de audio de un micrófono, el formato de las muestras será PCM estéreo de punto flotante de 32 bits.

A diferencia de :ref:`AudioEffectRecord<class_AudioEffectRecord>`, este efecto solo devuelve las muestras de audio sin procesar, en lugar de codificarlas en un :ref:`AudioStream<class_AudioStream>`.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Buses de audio <../tutorials/audio/audio_buses>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`buffer_length<class_AudioEffectCapture_property_buffer_length>` | ``0.1`` |
   +---------------------------+-----------------------------------------------------------------------+---------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`can_get_buffer<class_AudioEffectCapture_method_can_get_buffer>`\ (\ frames\: :ref:`int<class_int>`\ ) |const| |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`clear_buffer<class_AudioEffectCapture_method_clear_buffer>`\ (\ )                                             |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`get_buffer<class_AudioEffectCapture_method_get_buffer>`\ (\ frames\: :ref:`int<class_int>`\ )                 |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_buffer_length_frames<class_AudioEffectCapture_method_get_buffer_length_frames>`\ (\ ) |const|             |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_discarded_frames<class_AudioEffectCapture_method_get_discarded_frames>`\ (\ ) |const|                     |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_frames_available<class_AudioEffectCapture_method_get_frames_available>`\ (\ ) |const|                     |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_pushed_frames<class_AudioEffectCapture_method_get_pushed_frames>`\ (\ ) |const|                           |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_AudioEffectCapture_property_buffer_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **buffer_length** = ``0.1`` :ref:`🔗<class_AudioEffectCapture_property_buffer_length>`

.. rst-class:: classref-property-setget

- |void| **set_buffer_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_buffer_length**\ (\ )

Longitud del búfer de anillo interno, en segundos. Los valores más altos mantienen los datos durante más tiempo, pero requieren más memoria. El valor puede oscilar entre 0.01 y 10.

\ **Nota:** Establecer la longitud del búfer no tendrá efecto si ya ha sido inicializado.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_AudioEffectCapture_method_can_get_buffer:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **can_get_buffer**\ (\ frames\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioEffectCapture_method_can_get_buffer>`

Devuelve ``true`` si al menos ``frames`` muestras están disponibles para leer en el búfer de anillo interno.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectCapture_method_clear_buffer:

.. rst-class:: classref-method

|void| **clear_buffer**\ (\ ) :ref:`🔗<class_AudioEffectCapture_method_clear_buffer>`

Borra el búfer circular interno.

\ **Nota:** Llamar a esto durante una captura puede causar la pérdida de muestras, lo que provocaría chasquidos en la reproducción.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectCapture_method_get_buffer:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **get_buffer**\ (\ frames\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AudioEffectCapture_method_get_buffer>`

Obtiene las siguientes ``frames`` muestras del búfer de anillo interno.

Devuelve un :ref:`PackedVector2Array<class_PackedVector2Array>` que contiene exactamente ``frames`` muestras si están disponibles, o un :ref:`PackedVector2Array<class_PackedVector2Array>` vacío si no hay datos suficientes.

Las muestras son PCM de punto flotante con signo entre ``-1`` y ``1``. Tendrás que escalarlas si quieres usarlas como muestras de enteros de 8 o 16 bits. (\ ``v = 0x7fff * samples[0].x``)

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectCapture_method_get_buffer_length_frames:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_buffer_length_frames**\ (\ ) |const| :ref:`🔗<class_AudioEffectCapture_method_get_buffer_length_frames>`

Devuelve el tamaño total del búfer de anillo interno en número de muestras.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectCapture_method_get_discarded_frames:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_discarded_frames**\ (\ ) |const| :ref:`🔗<class_AudioEffectCapture_method_get_discarded_frames>`

Devuelve el número de muestras descartadas del bus de audio debido a que el búfer estaba lleno.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectCapture_method_get_frames_available:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_frames_available**\ (\ ) |const| :ref:`🔗<class_AudioEffectCapture_method_get_frames_available>`

Devuelve el número de muestras disponibles para leer mediante el método :ref:`get_buffer()<class_AudioEffectCapture_method_get_buffer>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectCapture_method_get_pushed_frames:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_pushed_frames**\ (\ ) |const| :ref:`🔗<class_AudioEffectCapture_method_get_pushed_frames>`

Devuelve el número de muestras insertadas desde el bus de audio.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
