:github_url: hide

.. _class_AudioEffectRecord:

AudioEffectRecord
=================

**Hereda:** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Efecto de audio utilizado para grabar el sonido de un bus de audio.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Permite al usuario grabar el sonido de un bus de audio en un :ref:`AudioStreamWAV<class_AudioStreamWAV>`. Cuando se utiliza en el bus de audio "Master", se incluye todo el audio reproducido por Godot.

A diferencia de :ref:`AudioEffectCapture<class_AudioEffectCapture>`, este efecto codifica la grabación en el formato especificado (8-bit, 16-bit o comprimido) en lugar de proporcionar acceso a las muestras de audio sin procesar.

Puede utilizarse (junto con un :ref:`AudioStreamMicrophone<class_AudioStreamMicrophone>`) para grabar desde un micrófono.

\ **Nota:** :ref:`ProjectSettings.audio/driver/enable_input<class_ProjectSettings_property_audio/driver/enable_input>` debe estar en ``true`` para que la entrada de audio funcione. Véase también la descripción de esa configuración para conocer consideraciones relacionadas con permisos y ajustes de privacidad del sistema operativo.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Grabando con micrófono <../tutorials/audio/recording_with_microphone>`

- `Demo de Grabación de Audio con Micrófono <https://godotengine.org/asset-library/asset/2760>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------------------------+--------------------------------------------------------+-------+
   | :ref:`Format<enum_AudioStreamWAV_Format>` | :ref:`format<class_AudioEffectRecord_property_format>` | ``1`` |
   +-------------------------------------------+--------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioStreamWAV<class_AudioStreamWAV>` | :ref:`get_recording<class_AudioEffectRecord_method_get_recording>`\ (\ ) |const|                                         |
   +---------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                     | :ref:`is_recording_active<class_AudioEffectRecord_method_is_recording_active>`\ (\ ) |const|                             |
   +---------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`set_recording_active<class_AudioEffectRecord_method_set_recording_active>`\ (\ record\: :ref:`bool<class_bool>`\ ) |
   +---------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_AudioEffectRecord_property_format:

.. rst-class:: classref-property

:ref:`Format<enum_AudioStreamWAV_Format>` **format** = ``1`` :ref:`🔗<class_AudioEffectRecord_property_format>`

.. rst-class:: classref-property-setget

- |void| **set_format**\ (\ value\: :ref:`Format<enum_AudioStreamWAV_Format>`\ )
- :ref:`Format<enum_AudioStreamWAV_Format>` **get_format**\ (\ )

Especifica el formato en que se grabará la muestra.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_AudioEffectRecord_method_get_recording:

.. rst-class:: classref-method

:ref:`AudioStreamWAV<class_AudioStreamWAV>` **get_recording**\ (\ ) |const| :ref:`🔗<class_AudioEffectRecord_method_get_recording>`

Devuelve la muestra registrada.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectRecord_method_is_recording_active:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_recording_active**\ (\ ) |const| :ref:`🔗<class_AudioEffectRecord_method_is_recording_active>`

Devuelve si la grabación está activa o no.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectRecord_method_set_recording_active:

.. rst-class:: classref-method

|void| **set_recording_active**\ (\ record\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_AudioEffectRecord_method_set_recording_active>`

Si es ``true``, el sonido será grabado. Ten en cuenta que al reiniciar la grabación se eliminará la muestra previamente grabada.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
