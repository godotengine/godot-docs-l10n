:github_url: hide

.. _class_ConfigFile:

ConfigFile
==========

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Clase de ayuda para manejar los archivos de tipo INI.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Esta clase auxiliar puede utilizarse para almacenar valores :ref:`Variant<class_Variant>` en el sistema de archivos usando un formato estilo INI. Los valores almacenados se identifican por una sección y una clave:

.. code:: text

    [section]
    some_key=42
    string_example="Hello World3D!"
    a_vector=Vector3(1, 0, 2)

Los datos almacenados pueden guardarse o analizarse desde un archivo, aunque los objetos ConfigFile también pueden usarse directamente sin acceder al sistema de archivos.

El siguiente ejemplo muestra cómo crear un **ConfigFile** simple y guardarlo en el disco:


.. tabs::

 .. code-tab:: gdscript

    # Create new ConfigFile object.
    var config = ConfigFile.new()

    # Store some values.
    config.set_value("Player1", "player_name", "Steve")
    config.set_value("Player1", "best_score", 10)
    config.set_value("Player2", "player_name", "V3geta")
    config.set_value("Player2", "best_score", 9001)

    # Save it to a file (overwrite if already exists).
    config.save("user://scores.cfg")

 .. code-tab:: csharp

    // Create new ConfigFile object.
    var config = new ConfigFile();

    // Store some values.
    config.SetValue("Player1", "player_name", "Steve");
    config.SetValue("Player1", "best_score", 10);
    config.SetValue("Player2", "player_name", "V3geta");
    config.SetValue("Player2", "best_score", 9001);

    // Save it to a file (overwrite if already exists).
    config.Save("user://scores.cfg");



Este ejemplo muestra cómo podría cargarse el archivo anterior:


.. tabs::

 .. code-tab:: gdscript

    var score_data = {}
    var config = ConfigFile.new()

    # Load data from a file.
    var err = config.load("user://scores.cfg")

    # If the file didn't load, ignore it.
    if err != OK:
        return

    # Iterate over all sections.
    for player in config.get_sections():
        # Fetch the data for each section.
        var player_name = config.get_value(player, "player_name")
        var player_score = config.get_value(player, "best_score")
        score_data[player_name] = player_score

 .. code-tab:: csharp

    var score_data = new Godot.Collections.Dictionary();
    var config = new ConfigFile();

    // Load data from a file.
    Error err = config.Load("user://scores.cfg");

    // If the file didn't load, ignore it.
    if (err != Error.Ok)
    {
        return;
    }

    // Iterate over all sections.
    foreach (String player in config.GetSections())
    {
        // Fetch the data for each section.
        var player_name = (String)config.GetValue(player, "player_name");
        var player_score = (int)config.GetValue(player, "best_score");
        score_data[player_name] = player_score;
    }



Cualquier operación que modifique el ConfigFile, como :ref:`set_value()<class_ConfigFile_method_set_value>`, :ref:`clear()<class_ConfigFile_method_clear>` o :ref:`erase_section()<class_ConfigFile_method_erase_section>`, solo cambia lo que se carga en la memoria. Si deseas escribir el cambio en un archivo, debes guardar los cambios con :ref:`save()<class_ConfigFile_method_save>`, :ref:`save_encrypted()<class_ConfigFile_method_save_encrypted>` o :ref:`save_encrypted_pass()<class_ConfigFile_method_save_encrypted_pass>`.

Ten en cuenta que los nombres de las secciones y propiedades no pueden contener espacios. Cualquier cosa después de un espacio será ignorada al guardar y al cargar.

Los ConfigFiles también pueden contener líneas de comentario escritas manualmente que comienzan con un punto y coma (``;``). Esas líneas se ignorarán al analizar el archivo. Ten en cuenta que los comentarios se perderán al guardar el ConfigFile. Esto aún puede ser útil para archivos de configuración de servidores dedicados, que típicamente nunca se sobrescriben sin una acción explícita del usuario.

\ **Nota:** La extensión de archivo dada a un ConfigFile no tiene ningún impacto en su formato o comportamiento. Por convención, aquí se usa la extensión ``.cfg``, pero cualquier otra extensión como ``.ini`` también es válida. Dado que ni ``.cfg`` ni ``.ini`` están estandarizados, el formato de ConfigFile de Godot puede diferir de los archivos escritos por otros programas.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`clear<class_ConfigFile_method_clear>`\ (\ )                                                                                                                                           |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`encode_to_text<class_ConfigFile_method_encode_to_text>`\ (\ ) |const|                                                                                                                 |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`erase_section<class_ConfigFile_method_erase_section>`\ (\ section\: :ref:`String<class_String>`\ )                                                                                    |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`erase_section_key<class_ConfigFile_method_erase_section_key>`\ (\ section\: :ref:`String<class_String>`, key\: :ref:`String<class_String>`\ )                                         |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_section_keys<class_ConfigFile_method_get_section_keys>`\ (\ section\: :ref:`String<class_String>`\ ) |const|                                                                      |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_sections<class_ConfigFile_method_get_sections>`\ (\ ) |const|                                                                                                                     |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                     | :ref:`get_value<class_ConfigFile_method_get_value>`\ (\ section\: :ref:`String<class_String>`, key\: :ref:`String<class_String>`, default\: :ref:`Variant<class_Variant>` = null\ ) |const| |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`has_section<class_ConfigFile_method_has_section>`\ (\ section\: :ref:`String<class_String>`\ ) |const|                                                                                |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`has_section_key<class_ConfigFile_method_has_section_key>`\ (\ section\: :ref:`String<class_String>`, key\: :ref:`String<class_String>`\ ) |const|                                     |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`load<class_ConfigFile_method_load>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                         |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`load_encrypted<class_ConfigFile_method_load_encrypted>`\ (\ path\: :ref:`String<class_String>`, key\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                                |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`load_encrypted_pass<class_ConfigFile_method_load_encrypted_pass>`\ (\ path\: :ref:`String<class_String>`, password\: :ref:`String<class_String>`\ )                                   |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`parse<class_ConfigFile_method_parse>`\ (\ data\: :ref:`String<class_String>`\ )                                                                                                       |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`save<class_ConfigFile_method_save>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                         |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`save_encrypted<class_ConfigFile_method_save_encrypted>`\ (\ path\: :ref:`String<class_String>`, key\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                                |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`save_encrypted_pass<class_ConfigFile_method_save_encrypted_pass>`\ (\ path\: :ref:`String<class_String>`, password\: :ref:`String<class_String>`\ )                                   |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_value<class_ConfigFile_method_set_value>`\ (\ section\: :ref:`String<class_String>`, key\: :ref:`String<class_String>`, value\: :ref:`Variant<class_Variant>`\ )                  |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_ConfigFile_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_ConfigFile_method_clear>`

Elimina todo el contenido de la configuración.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_encode_to_text:

.. rst-class:: classref-method

:ref:`String<class_String>` **encode_to_text**\ (\ ) |const| :ref:`🔗<class_ConfigFile_method_encode_to_text>`

Obtener la versión de texto de este archivo de configuración (el mismo texto que se escribiría en un archivo).

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_erase_section:

.. rst-class:: classref-method

|void| **erase_section**\ (\ section\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ConfigFile_method_erase_section>`

Borra la sección especificada junto con todos los pares clave-valor que hay dentro. Provoca un error si la sección no existe.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_erase_section_key:

.. rst-class:: classref-method

|void| **erase_section_key**\ (\ section\: :ref:`String<class_String>`, key\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ConfigFile_method_erase_section_key>`

Borra la clave especificada en una sección. Provoca un error si la sección o la clave no existen.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_get_section_keys:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_section_keys**\ (\ section\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_ConfigFile_method_get_section_keys>`

Devuelve un array de todos los identificadores clave definidos en la sección especificada. Levanta un error y devuelve un array vacío si la sección no existe.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_get_sections:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_sections**\ (\ ) |const| :ref:`🔗<class_ConfigFile_method_get_sections>`

Devuelve un array de todos los identificadores de sección definidos.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_get_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_value**\ (\ section\: :ref:`String<class_String>`, key\: :ref:`String<class_String>`, default\: :ref:`Variant<class_Variant>` = null\ ) |const| :ref:`🔗<class_ConfigFile_method_get_value>`

Devuelve el valor actual para la sección y la clave especificadas. Si la sección o la clave no existen, el método devuelve el valor ``default``. Si ``default`` no se especifica o se establece en ``null``, también se produce un error.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_has_section:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_section**\ (\ section\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_ConfigFile_method_has_section>`

Devuelve ``true`` si existe la sección especificada.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_has_section_key:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_section_key**\ (\ section\: :ref:`String<class_String>`, key\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_ConfigFile_method_has_section_key>`

Devuelve ``true`` si existe el par de claves de lasección especificada.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_load:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **load**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ConfigFile_method_load>`

Loads the config file specified as a parameter. The file's contents are parsed and loaded in the **ConfigFile** object which the method was called on.

Returns :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` on success, or one of the other :ref:`Error<enum_@GlobalScope_Error>` values if the operation failed.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_load_encrypted:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **load_encrypted**\ (\ path\: :ref:`String<class_String>`, key\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_ConfigFile_method_load_encrypted>`

Carga el archivo de configuración cifrado especificado como parámetro, utilizando la ``key`` proporcionada para descifrarlo. El contenido del archivo se analiza y se carga en el objeto **ConfigFile** sobre el cual se llamó al método.

Devuelve :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` si tiene éxito, o uno de los otros valores de :ref:`Error<enum_@GlobalScope_Error>` si la operación falla.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_load_encrypted_pass:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **load_encrypted_pass**\ (\ path\: :ref:`String<class_String>`, password\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ConfigFile_method_load_encrypted_pass>`

Carga el archivo de configuración cifrado especificado como parámetro, utilizando la ``password`` proporcionada para descifrarlo. El contenido del archivo se analiza y se carga en el objeto **ConfigFile** sobre el cual se llamó al método.

Devuelve :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` si tiene éxito, o uno de los otros valores de :ref:`Error<enum_@GlobalScope_Error>` si la operación falla.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_parse:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **parse**\ (\ data\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ConfigFile_method_parse>`

Analiza la cadena de texto pasada como si fuera el contenido de un archivo de configuración. La cadena se analiza y se carga en el objeto ConfigFile sobre el cual se llamó al método.

Devuelve :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` si tiene éxito, o uno de los otros valores de :ref:`Error<enum_@GlobalScope_Error>` si la operación falla.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_save:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **save**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ConfigFile_method_save>`

Guarda el contenido del objeto **ConfigFile** en el archivo especificado como parámetro. El archivo de salida utiliza una estructura de estilo INI.

Devuelve :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` si tiene éxito, o uno de los otros valores de :ref:`Error<enum_@GlobalScope_Error>` si la operación falla.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_save_encrypted:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **save_encrypted**\ (\ path\: :ref:`String<class_String>`, key\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_ConfigFile_method_save_encrypted>`

Guarda el contenido del objeto **ConfigFile** en el archivo cifrado con AES-256 especificado como parámetro, utilizando la ``key`` proporcionada para cifrarlo. El archivo de salida utiliza una estructura de estilo INI.

Devuelve :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` si tiene éxito, o uno de los otros valores de :ref:`Error<enum_@GlobalScope_Error>` si la operación falla.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_save_encrypted_pass:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **save_encrypted_pass**\ (\ path\: :ref:`String<class_String>`, password\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ConfigFile_method_save_encrypted_pass>`

Guarda el contenido del objeto **ConfigFile** en el archivo cifrado con AES-256 especificado como parámetro, utilizando la ``password`` proporcionada para cifrarlo. El archivo de salida utiliza una estructura de estilo INI.

Devuelve :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` si tiene éxito, o uno de los otros valores de :ref:`Error<enum_@GlobalScope_Error>` si la operación falla.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_set_value:

.. rst-class:: classref-method

|void| **set_value**\ (\ section\: :ref:`String<class_String>`, key\: :ref:`String<class_String>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_ConfigFile_method_set_value>`

Asigna un valor a la clave especificada de la sección especificada. Si la sección o la clave no existen, se crean. Al pasar un valor ``null`` se borra la clave especificada si existe, y se borra la sección si termina vacía una vez que se ha eliminado la clave.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
