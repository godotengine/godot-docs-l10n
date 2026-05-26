:github_url: hide

.. _class_AudioStreamMP3:

AudioStreamMP3
==============

**Hereda:** :ref:`AudioStream<class_AudioStream>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Driver de transmisión de audio MP3.

.. rst-class:: classref-introduction-group

Descripción
----------------------

MP3 audio stream driver. See :ref:`data<class_AudioStreamMP3_property_data>` if you want to load an MP3 file at run-time.

\ **Note:** This class can optionally support legacy MP1 and MP2 formats, provided that the engine is compiled with the ``minimp3_extra_formats=yes`` SCons option. These extra formats are not enabled by default.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                         | :ref:`bar_beats<class_AudioStreamMP3_property_bar_beats>`     | ``4``                 |
   +-----------------------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                         | :ref:`beat_count<class_AudioStreamMP3_property_beat_count>`   | ``0``                 |
   +-----------------------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                     | :ref:`bpm<class_AudioStreamMP3_property_bpm>`                 | ``0.0``               |
   +-----------------------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>` | :ref:`data<class_AudioStreamMP3_property_data>`               | ``PackedByteArray()`` |
   +-----------------------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                       | :ref:`loop<class_AudioStreamMP3_property_loop>`               | ``false``             |
   +-----------------------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                     | :ref:`loop_offset<class_AudioStreamMP3_property_loop_offset>` | ``0.0``               |
   +-----------------------------------------------+---------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioStreamMP3<class_AudioStreamMP3>` | :ref:`load_from_buffer<class_AudioStreamMP3_method_load_from_buffer>`\ (\ stream_data\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) |static| |
   +---------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioStreamMP3<class_AudioStreamMP3>` | :ref:`load_from_file<class_AudioStreamMP3_method_load_from_file>`\ (\ path\: :ref:`String<class_String>`\ ) |static|                              |
   +---------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_AudioStreamMP3_property_bar_beats:

.. rst-class:: classref-property

:ref:`int<class_int>` **bar_beats** = ``4`` :ref:`🔗<class_AudioStreamMP3_property_bar_beats>`

.. rst-class:: classref-property-setget

- |void| **set_bar_beats**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bar_beats**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamMP3_property_beat_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **beat_count** = ``0`` :ref:`🔗<class_AudioStreamMP3_property_beat_count>`

.. rst-class:: classref-property-setget

- |void| **set_beat_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_beat_count**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamMP3_property_bpm:

.. rst-class:: classref-property

:ref:`float<class_float>` **bpm** = ``0.0`` :ref:`🔗<class_AudioStreamMP3_property_bpm>`

.. rst-class:: classref-property-setget

- |void| **set_bpm**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bpm**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamMP3_property_data:

.. rst-class:: classref-property

:ref:`PackedByteArray<class_PackedByteArray>` **data** = ``PackedByteArray()`` :ref:`🔗<class_AudioStreamMP3_property_data>`

.. rst-class:: classref-property-setget

- |void| **set_data**\ (\ value\: :ref:`PackedByteArray<class_PackedByteArray>`\ )
- :ref:`PackedByteArray<class_PackedByteArray>` **get_data**\ (\ )

Contiene los datos de audio en bytes.

Puedes cargar un archivo sin tener que importarlo de antemano utilizando el fragmento de código siguiente. Ten en cuenta que este fragmento carga el archivo completo en la memoria y puede no ser ideal para archivos enormes (de cientos de megabytes o más).


.. tabs::

 .. code-tab:: gdscript

    func load_mp3(path):
        var file = FileAccess.open(path, FileAccess.READ)
        var sound = AudioStreamMP3.new()
        sound.data = file.get_buffer(file.get_length())
        return sound

 .. code-tab:: csharp

    public AudioStreamMP3 LoadMP3(string path)
    {
        using var file = FileAccess.Open(path, FileAccess.ModeFlags.Read);
        var sound = new AudioStreamMP3();
        sound.Data = file.GetBuffer(file.GetLength());
        return sound;
    }



**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedByteArray<class_PackedByteArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamMP3_property_loop:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **loop** = ``false`` :ref:`🔗<class_AudioStreamMP3_property_loop>`

.. rst-class:: classref-property-setget

- |void| **set_loop**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **has_loop**\ (\ )

Si es ``true``, el stream se repite automáticamente cuando llega al final.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamMP3_property_loop_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **loop_offset** = ``0.0`` :ref:`🔗<class_AudioStreamMP3_property_loop_offset>`

.. rst-class:: classref-property-setget

- |void| **set_loop_offset**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_loop_offset**\ (\ )

Tiempo en segundos en el que el stream comienza después de ser enlazada.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_AudioStreamMP3_method_load_from_buffer:

.. rst-class:: classref-method

:ref:`AudioStreamMP3<class_AudioStreamMP3>` **load_from_buffer**\ (\ stream_data\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) |static| :ref:`🔗<class_AudioStreamMP3_method_load_from_buffer>`

Crea una nueva instancia de **AudioStreamMP3** a partir del búfer especificado. El búfer debe contener datos MP3.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamMP3_method_load_from_file:

.. rst-class:: classref-method

:ref:`AudioStreamMP3<class_AudioStreamMP3>` **load_from_file**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_AudioStreamMP3_method_load_from_file>`

Crea una nueva instancia de **AudioStreamMP3** a partir de la ruta de archivo indicada. El archivo debe estar en formato MP3.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
