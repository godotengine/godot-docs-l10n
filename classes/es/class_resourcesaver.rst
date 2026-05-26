:github_url: hide

.. _class_ResourceSaver:

ResourceSaver
=============

**Hereda:** :ref:`Object<class_Object>`

Un singleton para guardar :ref:`Resource<class_Resource>`\ s en el sistema de archivos.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Un singleton para guardar tipos de recursos en el sistema de archivos.

Utiliza las muchas clases :ref:`ResourceFormatSaver<class_ResourceFormatSaver>` registradas en el motor (ya sea integrado o de un plugin) para guardar datos de recursos en archivos basados en texto (p. ej. ``.tres`` o ``.tscn``) o archivos binarios (p. ej. ``.res`` o ``.scn``).

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`add_resource_format_saver<class_ResourceSaver_method_add_resource_format_saver>`\ (\ format_saver\: :ref:`ResourceFormatSaver<class_ResourceFormatSaver>`, at_front\: :ref:`bool<class_bool>` = false\ )      |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_recognized_extensions<class_ResourceSaver_method_get_recognized_extensions>`\ (\ type\: :ref:`Resource<class_Resource>`\ )                                                                                |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_resource_id_for_path<class_ResourceSaver_method_get_resource_id_for_path>`\ (\ path\: :ref:`String<class_String>`, generate\: :ref:`bool<class_bool>` = false\ )                                          |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`remove_resource_format_saver<class_ResourceSaver_method_remove_resource_format_saver>`\ (\ format_saver\: :ref:`ResourceFormatSaver<class_ResourceFormatSaver>`\ )                                            |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`save<class_ResourceSaver_method_save>`\ (\ resource\: :ref:`Resource<class_Resource>`, path\: :ref:`String<class_String>` = "", flags\: |bitfield|\[:ref:`SaverFlags<enum_ResourceSaver_SaverFlags>`\] = 0\ ) |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`set_uid<class_ResourceSaver_method_set_uid>`\ (\ resource\: :ref:`String<class_String>`, uid\: :ref:`int<class_int>`\ )                                                                                       |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_ResourceSaver_SaverFlags:

.. rst-class:: classref-enumeration

flags **SaverFlags**: :ref:`🔗<enum_ResourceSaver_SaverFlags>`

.. _class_ResourceSaver_constant_FLAG_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`SaverFlags<enum_ResourceSaver_SaverFlags>` **FLAG_NONE** = ``0``

No hay opción de guardado de recursos.

.. _class_ResourceSaver_constant_FLAG_RELATIVE_PATHS:

.. rst-class:: classref-enumeration-constant

:ref:`SaverFlags<enum_ResourceSaver_SaverFlags>` **FLAG_RELATIVE_PATHS** = ``1``

Guarda el recurso con una ruta relativa a la escena que lo utiliza.

.. _class_ResourceSaver_constant_FLAG_BUNDLE_RESOURCES:

.. rst-class:: classref-enumeration-constant

:ref:`SaverFlags<enum_ResourceSaver_SaverFlags>` **FLAG_BUNDLE_RESOURCES** = ``2``

Agrupa los recursos externos.

.. _class_ResourceSaver_constant_FLAG_CHANGE_PATH:

.. rst-class:: classref-enumeration-constant

:ref:`SaverFlags<enum_ResourceSaver_SaverFlags>` **FLAG_CHANGE_PATH** = ``4``

Cambia la :ref:`Resource.resource_path<class_Resource_property_resource_path>` del recurso guardado para que coincida con su nueva ubicación.

.. _class_ResourceSaver_constant_FLAG_OMIT_EDITOR_PROPERTIES:

.. rst-class:: classref-enumeration-constant

:ref:`SaverFlags<enum_ResourceSaver_SaverFlags>` **FLAG_OMIT_EDITOR_PROPERTIES** = ``8``

No guarde los metadatos específicos del editor (identificados por su prefijo ``__editor``).

.. _class_ResourceSaver_constant_FLAG_SAVE_BIG_ENDIAN:

.. rst-class:: classref-enumeration-constant

:ref:`SaverFlags<enum_ResourceSaver_SaverFlags>` **FLAG_SAVE_BIG_ENDIAN** = ``16``

Guardar como big endian (véase :ref:`FileAccess.big_endian<class_FileAccess_property_big_endian>`).

.. _class_ResourceSaver_constant_FLAG_COMPRESS:

.. rst-class:: classref-enumeration-constant

:ref:`SaverFlags<enum_ResourceSaver_SaverFlags>` **FLAG_COMPRESS** = ``32``

Comprime el recurso al guardarlo usando :ref:`FileAccess.COMPRESSION_ZSTD<class_FileAccess_constant_COMPRESSION_ZSTD>`. Solo disponible para tipos de recursos binarios.

.. _class_ResourceSaver_constant_FLAG_REPLACE_SUBRESOURCE_PATHS:

.. rst-class:: classref-enumeration-constant

:ref:`SaverFlags<enum_ResourceSaver_SaverFlags>` **FLAG_REPLACE_SUBRESOURCE_PATHS** = ``64``

Asumir las rutas de los subrecursos guardados (véase :ref:`Resource.take_over_path()<class_Resource_method_take_over_path>`).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_ResourceSaver_method_add_resource_format_saver:

.. rst-class:: classref-method

|void| **add_resource_format_saver**\ (\ format_saver\: :ref:`ResourceFormatSaver<class_ResourceFormatSaver>`, at_front\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_ResourceSaver_method_add_resource_format_saver>`

Registra un nuevo :ref:`ResourceFormatSaver<class_ResourceFormatSaver>`. ResourceSaver usará el ResourceFormatSaver como se describe en :ref:`save()<class_ResourceSaver_method_save>`.

Este método se realiza implícitamente para los ResourceFormatSavers escritos en GDScript (véase :ref:`ResourceFormatSaver<class_ResourceFormatSaver>` para obtener más información).

.. rst-class:: classref-item-separator

----

.. _class_ResourceSaver_method_get_recognized_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_recognized_extensions**\ (\ type\: :ref:`Resource<class_Resource>`\ ) :ref:`🔗<class_ResourceSaver_method_get_recognized_extensions>`

Devuelve la lista de extensiones disponibles para guardar un recurso de un tipo determinado.

.. rst-class:: classref-item-separator

----

.. _class_ResourceSaver_method_get_resource_id_for_path:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_resource_id_for_path**\ (\ path\: :ref:`String<class_String>`, generate\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_ResourceSaver_method_get_resource_id_for_path>`

Devuelve el ID del recurso para la ruta dada. Si ``generate`` es ``true``, se generará un nuevo ID de recurso si no se encuentra uno para la ruta. Si ``generate`` es ``false`` y no se encuentra la ruta, se devuelve :ref:`ResourceUID.INVALID_ID<class_ResourceUID_constant_INVALID_ID>`.

.. rst-class:: classref-item-separator

----

.. _class_ResourceSaver_method_remove_resource_format_saver:

.. rst-class:: classref-method

|void| **remove_resource_format_saver**\ (\ format_saver\: :ref:`ResourceFormatSaver<class_ResourceFormatSaver>`\ ) :ref:`🔗<class_ResourceSaver_method_remove_resource_format_saver>`

Anula el registro del :ref:`ResourceFormatSaver<class_ResourceFormatSaver>` indicado.

.. rst-class:: classref-item-separator

----

.. _class_ResourceSaver_method_save:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **save**\ (\ resource\: :ref:`Resource<class_Resource>`, path\: :ref:`String<class_String>` = "", flags\: |bitfield|\[:ref:`SaverFlags<enum_ResourceSaver_SaverFlags>`\] = 0\ ) :ref:`🔗<class_ResourceSaver_method_save>`

Guarda un recurso en el disco en la ruta dada, utilizando un :ref:`ResourceFormatSaver<class_ResourceFormatSaver>` que reconoce el objeto de recurso. Si ``path`` está vacío, **ResourceSaver** intentará utilizar :ref:`Resource.resource_path<class_Resource_property_resource_path>`.

La máscara de bits ``flags`` se puede especificar para personalizar el comportamiento de guardado.

Devuelve :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` si tiene éxito.

\ **Nota:** Cuando el proyecto se está ejecutando, cualquier UID generado asociado con el recurso no se guardará, ya que el código requerido solo se ejecuta en modo editor.

.. rst-class:: classref-item-separator

----

.. _class_ResourceSaver_method_set_uid:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **set_uid**\ (\ resource\: :ref:`String<class_String>`, uid\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ResourceSaver_method_set_uid>`

Establece el UID de la ``resource`` ruta dada a ``uid``. Puedes generar un nuevo UID usando :ref:`ResourceUID.create_id()<class_ResourceUID_method_create_id>`.

Dado que los recursos normalmente obtendrán un UID automáticamente, este método solo es útil en casos muy específicos.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
