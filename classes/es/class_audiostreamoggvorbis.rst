:github_url: hide

.. _class_AudioStreamOggVorbis:

AudioStreamOggVorbis
====================

**Hereda:** :ref:`AudioStream<class_AudioStream>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una clase que representa una secuencia de audio Ogg Vorbis.

.. rst-class:: classref-introduction-group

Descripción
----------------------

La clase AudioStreamOggVorbis es un :ref:`AudioStream<class_AudioStream>` especializado para el manejo de formatos de archivo Ogg Vorbis. Ofrece funcionalidad para cargar y reproducir archivos Ogg Vorbis, así como para gestionar el bucle y otras propiedades de reproducción. Esta clase es parte del sistema de flujo de audio, que también admite archivos WAV a través de la clase :ref:`AudioStreamWAV<class_AudioStreamWAV>`.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Carga y guardado de archivos en tiempo de ejecución <../tutorials/io/runtime_file_loading_and_saving>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                             | :ref:`bar_beats<class_AudioStreamOggVorbis_property_bar_beats>`             | ``4``     |
   +---------------------------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                             | :ref:`beat_count<class_AudioStreamOggVorbis_property_beat_count>`           | ``0``     |
   +---------------------------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                         | :ref:`bpm<class_AudioStreamOggVorbis_property_bpm>`                         | ``0.0``   |
   +---------------------------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                           | :ref:`loop<class_AudioStreamOggVorbis_property_loop>`                       | ``false`` |
   +---------------------------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                         | :ref:`loop_offset<class_AudioStreamOggVorbis_property_loop_offset>`         | ``0.0``   |
   +---------------------------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`OggPacketSequence<class_OggPacketSequence>` | :ref:`packet_sequence<class_AudioStreamOggVorbis_property_packet_sequence>` |           |
   +---------------------------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`Dictionary<class_Dictionary>`               | :ref:`tags<class_AudioStreamOggVorbis_property_tags>`                       | ``{}``    |
   +---------------------------------------------------+-----------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioStreamOggVorbis<class_AudioStreamOggVorbis>` | :ref:`load_from_buffer<class_AudioStreamOggVorbis_method_load_from_buffer>`\ (\ stream_data\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) |static| |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioStreamOggVorbis<class_AudioStreamOggVorbis>` | :ref:`load_from_file<class_AudioStreamOggVorbis_method_load_from_file>`\ (\ path\: :ref:`String<class_String>`\ ) |static|                              |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_AudioStreamOggVorbis_property_bar_beats:

.. rst-class:: classref-property

:ref:`int<class_int>` **bar_beats** = ``4`` :ref:`🔗<class_AudioStreamOggVorbis_property_bar_beats>`

.. rst-class:: classref-property-setget

- |void| **set_bar_beats**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bar_beats**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamOggVorbis_property_beat_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **beat_count** = ``0`` :ref:`🔗<class_AudioStreamOggVorbis_property_beat_count>`

.. rst-class:: classref-property-setget

- |void| **set_beat_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_beat_count**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamOggVorbis_property_bpm:

.. rst-class:: classref-property

:ref:`float<class_float>` **bpm** = ``0.0`` :ref:`🔗<class_AudioStreamOggVorbis_property_bpm>`

.. rst-class:: classref-property-setget

- |void| **set_bpm**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bpm**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamOggVorbis_property_loop:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **loop** = ``false`` :ref:`🔗<class_AudioStreamOggVorbis_property_loop>`

.. rst-class:: classref-property-setget

- |void| **set_loop**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **has_loop**\ (\ )

Si es ``true``, el audio se reproducirá de nuevo desde :ref:`loop_offset<class_AudioStreamOggVorbis_property_loop_offset>` especificado una vez finalizada la reproducción. Útil para sonidos ambientales y música de fondo.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamOggVorbis_property_loop_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **loop_offset** = ``0.0`` :ref:`🔗<class_AudioStreamOggVorbis_property_loop_offset>`

.. rst-class:: classref-property-setget

- |void| **set_loop_offset**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_loop_offset**\ (\ )

Tiempo en segundos en el que el stream comienza después de ser enlazada.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamOggVorbis_property_packet_sequence:

.. rst-class:: classref-property

:ref:`OggPacketSequence<class_OggPacketSequence>` **packet_sequence** :ref:`🔗<class_AudioStreamOggVorbis_property_packet_sequence>`

.. rst-class:: classref-property-setget

- |void| **set_packet_sequence**\ (\ value\: :ref:`OggPacketSequence<class_OggPacketSequence>`\ )
- :ref:`OggPacketSequence<class_OggPacketSequence>` **get_packet_sequence**\ (\ )

Contiene los datos Ogg sin procesar para esta transmisión.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamOggVorbis_property_tags:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **tags** = ``{}`` :ref:`🔗<class_AudioStreamOggVorbis_property_tags>`

.. rst-class:: classref-property-setget

- |void| **set_tags**\ (\ value\: :ref:`Dictionary<class_Dictionary>`\ )
- :ref:`Dictionary<class_Dictionary>` **get_tags**\ (\ )

Contiene etiquetas definidas por el usuario si se encuentran en los datos de Ogg Vorbis.

Las etiquetas utilizadas habitualmente incluyen ``title``, ``artist``, ``album``, ``tracknumber`` y ``date`` (``date`` no tiene un formato de fecha estándar).

\ **Nota:** No se *garantiza* que todas las etiquetas estén presentes en cada archivo, así que asegúrate de tener en cuenta que las claves no siempre existen.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_AudioStreamOggVorbis_method_load_from_buffer:

.. rst-class:: classref-method

:ref:`AudioStreamOggVorbis<class_AudioStreamOggVorbis>` **load_from_buffer**\ (\ stream_data\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) |static| :ref:`🔗<class_AudioStreamOggVorbis_method_load_from_buffer>`

Crea una nueva instancia de **AudioStreamOggVorbis** a partir del búfer especificado. El búfer debe contener datos Ogg Vorbis.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamOggVorbis_method_load_from_file:

.. rst-class:: classref-method

:ref:`AudioStreamOggVorbis<class_AudioStreamOggVorbis>` **load_from_file**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_AudioStreamOggVorbis_method_load_from_file>`

Crea una nueva instancia de **AudioStreamOggVorbis** a partir de la ruta de archivo indicada. El archivo debe estar en formato Ogg Vorbis.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
