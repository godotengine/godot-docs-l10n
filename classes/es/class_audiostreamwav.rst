:github_url: hide

.. _class_AudioStreamWAV:

AudioStreamWAV
==============

**Hereda:** :ref:`AudioStream<class_AudioStream>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Almacena datos de audio cargados desde archivos WAV.

.. rst-class:: classref-introduction-group

Descripción
----------------------

AudioStreamWAV stores sound samples loaded from WAV files. To play the stored sound, use an :ref:`AudioStreamPlayer<class_AudioStreamPlayer>` (for non-positional audio) or :ref:`AudioStreamPlayer2D<class_AudioStreamPlayer2D>`/:ref:`AudioStreamPlayer3D<class_AudioStreamPlayer3D>` (for positional audio). The sound can be looped.

This class can also be used to store dynamically-generated PCM audio data. See also :ref:`AudioStreamGenerator<class_AudioStreamGenerator>` for procedural audio generation.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Carga y guardado de archivos en tiempo de ejecución <../tutorials/io/runtime_file_loading_and_saving>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------+-------------------------------------------------------------+-----------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>` | :ref:`data<class_AudioStreamWAV_property_data>`             | ``PackedByteArray()`` |
   +-----------------------------------------------+-------------------------------------------------------------+-----------------------+
   | :ref:`Format<enum_AudioStreamWAV_Format>`     | :ref:`format<class_AudioStreamWAV_property_format>`         | ``0``                 |
   +-----------------------------------------------+-------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                         | :ref:`loop_begin<class_AudioStreamWAV_property_loop_begin>` | ``0``                 |
   +-----------------------------------------------+-------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                         | :ref:`loop_end<class_AudioStreamWAV_property_loop_end>`     | ``0``                 |
   +-----------------------------------------------+-------------------------------------------------------------+-----------------------+
   | :ref:`LoopMode<enum_AudioStreamWAV_LoopMode>` | :ref:`loop_mode<class_AudioStreamWAV_property_loop_mode>`   | ``0``                 |
   +-----------------------------------------------+-------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                         | :ref:`mix_rate<class_AudioStreamWAV_property_mix_rate>`     | ``44100``             |
   +-----------------------------------------------+-------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                       | :ref:`stereo<class_AudioStreamWAV_property_stereo>`         | ``false``             |
   +-----------------------------------------------+-------------------------------------------------------------+-----------------------+
   | :ref:`Dictionary<class_Dictionary>`           | :ref:`tags<class_AudioStreamWAV_property_tags>`             | ``{}``                |
   +-----------------------------------------------+-------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioStreamWAV<class_AudioStreamWAV>` | :ref:`load_from_buffer<class_AudioStreamWAV_method_load_from_buffer>`\ (\ stream_data\: :ref:`PackedByteArray<class_PackedByteArray>`, options\: :ref:`Dictionary<class_Dictionary>` = {}\ ) |static| |
   +---------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioStreamWAV<class_AudioStreamWAV>` | :ref:`load_from_file<class_AudioStreamWAV_method_load_from_file>`\ (\ path\: :ref:`String<class_String>`, options\: :ref:`Dictionary<class_Dictionary>` = {}\ ) |static|                              |
   +---------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`       | :ref:`save_to_wav<class_AudioStreamWAV_method_save_to_wav>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                 |
   +---------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_AudioStreamWAV_Format:

.. rst-class:: classref-enumeration

enum **Format**: :ref:`🔗<enum_AudioStreamWAV_Format>`

.. _class_AudioStreamWAV_constant_FORMAT_8_BITS:

.. rst-class:: classref-enumeration-constant

:ref:`Format<enum_AudioStreamWAV_Format>` **FORMAT_8_BITS** = ``0``

8-bit PCM audio codec.

.. _class_AudioStreamWAV_constant_FORMAT_16_BITS:

.. rst-class:: classref-enumeration-constant

:ref:`Format<enum_AudioStreamWAV_Format>` **FORMAT_16_BITS** = ``1``

16-bit PCM audio codec.

.. _class_AudioStreamWAV_constant_FORMAT_IMA_ADPCM:

.. rst-class:: classref-enumeration-constant

:ref:`Format<enum_AudioStreamWAV_Format>` **FORMAT_IMA_ADPCM** = ``2``

Audio is lossily compressed as IMA ADPCM.

.. _class_AudioStreamWAV_constant_FORMAT_QOA:

.. rst-class:: classref-enumeration-constant

:ref:`Format<enum_AudioStreamWAV_Format>` **FORMAT_QOA** = ``3``

El audio está comprimido con pérdida usando `Quite OK Audio <https://qoaformat.org/>`__.

.. rst-class:: classref-item-separator

----

.. _enum_AudioStreamWAV_LoopMode:

.. rst-class:: classref-enumeration

enum **LoopMode**: :ref:`🔗<enum_AudioStreamWAV_LoopMode>`

.. _class_AudioStreamWAV_constant_LOOP_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`LoopMode<enum_AudioStreamWAV_LoopMode>` **LOOP_DISABLED** = ``0``

El audio no se reproduce en bucle.

.. _class_AudioStreamWAV_constant_LOOP_FORWARD:

.. rst-class:: classref-enumeration-constant

:ref:`LoopMode<enum_AudioStreamWAV_LoopMode>` **LOOP_FORWARD** = ``1``

El audio hace un bucle con los datos entre :ref:`loop_begin<class_AudioStreamWAV_property_loop_begin>` y :ref:`loop_end<class_AudioStreamWAV_property_loop_end>`, reproduciéndose sólo hacia adelante.

.. _class_AudioStreamWAV_constant_LOOP_PINGPONG:

.. rst-class:: classref-enumeration-constant

:ref:`LoopMode<enum_AudioStreamWAV_LoopMode>` **LOOP_PINGPONG** = ``2``

El audio hace un bucle con los datos entre :ref:`loop_begin<class_AudioStreamWAV_property_loop_begin>` y :ref:`loop_end<class_AudioStreamWAV_property_loop_end>`, reproduciéndose hacia adelante y hacia atrás.

.. _class_AudioStreamWAV_constant_LOOP_BACKWARD:

.. rst-class:: classref-enumeration-constant

:ref:`LoopMode<enum_AudioStreamWAV_LoopMode>` **LOOP_BACKWARD** = ``3``

El audio hace un bucle con los datos entre :ref:`loop_begin<class_AudioStreamWAV_property_loop_begin>` y :ref:`loop_end<class_AudioStreamWAV_property_loop_end>`, reproduciéndose sólo hacia atrás.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_AudioStreamWAV_property_data:

.. rst-class:: classref-property

:ref:`PackedByteArray<class_PackedByteArray>` **data** = ``PackedByteArray()`` :ref:`🔗<class_AudioStreamWAV_property_data>`

.. rst-class:: classref-property-setget

- |void| **set_data**\ (\ value\: :ref:`PackedByteArray<class_PackedByteArray>`\ )
- :ref:`PackedByteArray<class_PackedByteArray>` **get_data**\ (\ )

Contiene los datos de audio en bytes.

\ **Nota:** Si :ref:`format<class_AudioStreamWAV_property_format>` está configurado en :ref:`FORMAT_8_BITS<class_AudioStreamWAV_constant_FORMAT_8_BITS>`, esta propiedad espera datos PCM de 8 bits con signo. Para convertir desde PCM de 8 bits sin signo, resta 128 a cada byte.

\ **Nota:** Si :ref:`format<class_AudioStreamWAV_property_format>` está configurado en :ref:`FORMAT_QOA<class_AudioStreamWAV_constant_FORMAT_QOA>`, esta propiedad espera datos de un archivo QOA completo.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedByteArray<class_PackedByteArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamWAV_property_format:

.. rst-class:: classref-property

:ref:`Format<enum_AudioStreamWAV_Format>` **format** = ``0`` :ref:`🔗<class_AudioStreamWAV_property_format>`

.. rst-class:: classref-property-setget

- |void| **set_format**\ (\ value\: :ref:`Format<enum_AudioStreamWAV_Format>`\ )
- :ref:`Format<enum_AudioStreamWAV_Format>` **get_format**\ (\ )

Formato de audio.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamWAV_property_loop_begin:

.. rst-class:: classref-property

:ref:`int<class_int>` **loop_begin** = ``0`` :ref:`🔗<class_AudioStreamWAV_property_loop_begin>`

.. rst-class:: classref-property-setget

- |void| **set_loop_begin**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_loop_begin**\ (\ )

El punto de inicio del bucle (en número de muestras, relativo al inicio de la secuencia).

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamWAV_property_loop_end:

.. rst-class:: classref-property

:ref:`int<class_int>` **loop_end** = ``0`` :ref:`🔗<class_AudioStreamWAV_property_loop_end>`

.. rst-class:: classref-property-setget

- |void| **set_loop_end**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_loop_end**\ (\ )

El punto de fin del bucle (en número de muestras, relativo al inicio de la secuencia).

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamWAV_property_loop_mode:

.. rst-class:: classref-property

:ref:`LoopMode<enum_AudioStreamWAV_LoopMode>` **loop_mode** = ``0`` :ref:`🔗<class_AudioStreamWAV_property_loop_mode>`

.. rst-class:: classref-property-setget

- |void| **set_loop_mode**\ (\ value\: :ref:`LoopMode<enum_AudioStreamWAV_LoopMode>`\ )
- :ref:`LoopMode<enum_AudioStreamWAV_LoopMode>` **get_loop_mode**\ (\ )

El modo de repetición.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamWAV_property_mix_rate:

.. rst-class:: classref-property

:ref:`int<class_int>` **mix_rate** = ``44100`` :ref:`🔗<class_AudioStreamWAV_property_mix_rate>`

.. rst-class:: classref-property-setget

- |void| **set_mix_rate**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_mix_rate**\ (\ )

La frecuencia de muestreo para mezclar este audio. Valores más altos requieren más espacio de almacenamiento, pero ofrecen mejor calidad.

En juegos, las frecuencias de muestreo comunes son ``11025``, ``16000``, ``22050``, ``32000``, ``44100`` y ``48000``.

Según el `teorema de muestreo de Nyquist-Shannon <https://en.wikipedia.org/wiki/Nyquist%E2%80%93Shannon_sampling_theorem>`__, no hay diferencia de calidad perceptible para el oído humano al superar los 40,000 Hz (ya que la mayoría de los humanos solo pueden oír hasta ~20,000 Hz, a menudo menos). Si estás usando sonidos de tono más bajo, como voces, frecuencias de muestreo más bajas como ``32000`` o ``22050`` pueden ser utilizables sin pérdida de calidad.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamWAV_property_stereo:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **stereo** = ``false`` :ref:`🔗<class_AudioStreamWAV_property_stereo>`

.. rst-class:: classref-property-setget

- |void| **set_stereo**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_stereo**\ (\ )

Si es ``true``, el audio es estéreo.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamWAV_property_tags:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **tags** = ``{}`` :ref:`🔗<class_AudioStreamWAV_property_tags>`

.. rst-class:: classref-property-setget

- |void| **set_tags**\ (\ value\: :ref:`Dictionary<class_Dictionary>`\ )
- :ref:`Dictionary<class_Dictionary>` **get_tags**\ (\ )

Contiene las etiquetas definidas por el usuario si se encuentran en los datos WAV.

Las etiquetas más comunes incluyen ``title``, ``artist``, ``album``, ``tracknumber`` y ``date`` (``date`` no tiene un formato de fecha estándar).

\ **Nota:** Ninguna etiqueta está *garantizada* en todos los archivos, por lo que se debe tener en cuenta que las claves pueden no existir siempre.

\ **Nota:** Actualmente, solo se admiten archivos WAV que utilicen un chunk ``LIST`` con un identificador ``INFO`` para codificar las etiquetas.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_AudioStreamWAV_method_load_from_buffer:

.. rst-class:: classref-method

:ref:`AudioStreamWAV<class_AudioStreamWAV>` **load_from_buffer**\ (\ stream_data\: :ref:`PackedByteArray<class_PackedByteArray>`, options\: :ref:`Dictionary<class_Dictionary>` = {}\ ) |static| :ref:`🔗<class_AudioStreamWAV_method_load_from_buffer>`

Crea una nueva instancia de **AudioStreamWAV** a partir del buffer proporcionado. El buffer debe contener datos WAV.

Las claves y valores de ``options`` coinciden con las propiedades de :ref:`ResourceImporterWAV<class_ResourceImporterWAV>`. El uso de ``options`` es idéntico al de :ref:`load_from_file()<class_AudioStreamWAV_method_load_from_file>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamWAV_method_load_from_file:

.. rst-class:: classref-method

:ref:`AudioStreamWAV<class_AudioStreamWAV>` **load_from_file**\ (\ path\: :ref:`String<class_String>`, options\: :ref:`Dictionary<class_Dictionary>` = {}\ ) |static| :ref:`🔗<class_AudioStreamWAV_method_load_from_file>`

Crea una nueva instancia de **AudioStreamWAV** a partir de la ruta de archivo proporcionada. El archivo debe estar en formato WAV.

Las claves y valores de ``options`` coinciden con las propiedades de :ref:`ResourceImporterWAV<class_ResourceImporterWAV>`.

\ **Ejemplo:** Carga el primer archivo arrastrado como WAV y reprodúcelo:

::

    @onready var audio_player = $AudioStreamPlayer

    func _ready():
        get_window().files_dropped.connect(_on_files_dropped)

    func _on_files_dropped(files):
        if files[0].get_extension() == "wav":
            audio_player.stream = AudioStreamWAV.load_from_file(files[0], {
                    "force/max_rate": true,
                    "force/max_rate_hz": 11025
                })
            audio_player.play()

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamWAV_method_save_to_wav:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **save_to_wav**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_AudioStreamWAV_method_save_to_wav>`

Guarda el AudioStreamWAV como un archivo WAV en ``path``. Las muestras con formatos IMA ADPCM o Quite OK Audio no se pueden guardar.

\ **Nota:** Se añade automáticamente una extensión ``.wav`` a ``path`` si falta.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
