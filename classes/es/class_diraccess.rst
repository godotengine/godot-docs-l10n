:github_url: hide

.. meta::
	:keywords: directory, path, folder

.. _class_DirAccess:

DirAccess
=========

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Proporciona métodos para gestionar directorios y su contenido.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Esta clase se utiliza para gestionar directorios y su contenido, incluso fuera de la carpeta del proyecto.

\ **DirAccess** no puede instanciarse directamente. En su lugar, se crea mediante un método estático que recibe la ruta que se desea abrir.

La mayoría de los métodos tienen una alternativa estática que se puede usar sin crear un **DirAccess**. Los métodos estáticos solo admiten rutas absolutas (incluyendo ``res://`` y ``user://``).

::

    # Estándar
    var dir = DirAccess.open("user://levels")
    dir.make_dir("world1")
    # Estático
    DirAccess.make_dir_absolute("user://levels/world1")

\ **Nota:** Acceder a directorios del proyecto ("res://") una vez exportado puede comportarse de manera inesperada, ya que algunos archivos se convierten a formatos específicos del motor y sus archivos fuente originales pueden no estar presentes en el paquete PCK esperado. Por este motivo, para acceder a recursos en un proyecto exportado, se recomienda usar :ref:`ResourceLoader<class_ResourceLoader>` en lugar de :ref:`FileAccess<class_FileAccess>`.

A continuación, un ejemplo de cómo iterar los archivos de un directorio:


.. tabs::

 .. code-tab:: gdscript

    func dir_contents(path):
        var dir = DirAccess.open(path)
        if dir:
            dir.list_dir_begin()
            var file_name = dir.get_next()
            while file_name != "":
                if dir.current_is_dir():
                    print("Directorio encontrado: " + file_name)
                else:
                    print("Archivo encontrado: " + file_name)
                file_name = dir.get_next()
        else:
            print("Ocurrió un error al intentar acceder a la ruta.")

 .. code-tab:: csharp

    public void DirContents(string path)
    {
        using var dir = DirAccess.Open(path);
        if (dir != null)
        {
            dir.ListDirBegin();
            string fileName = dir.GetNext();
            while (fileName != "")
            {
                if (dir.CurrentIsDir())
                {
                    GD.Print($"Directorio encontrado: {fileName}");
                }
                else
                {
                    GD.Print($"Archivo encontrado: {fileName}");
                }
                fileName = dir.GetNext();
            }
        }
        else
        {
            GD.Print("Ocurrió un error al intentar acceder a la ruta.");
        }
    }



Tenga en cuenta que los nombres de archivo pueden cambiar o reasignarse después de la exportación. Si desea ver la lista real de archivos de recursos tal como aparece en el editor, usa :ref:`ResourceLoader.list_directory()<class_ResourceLoader_method_list_directory>`.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Sistema de archivos <../tutorials/scripting/filesystem>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`include_hidden<class_DirAccess_property_include_hidden>`             |
   +-------------------------+----------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`include_navigational<class_DirAccess_property_include_navigational>` |
   +-------------------------+----------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`change_dir<class_DirAccess_method_change_dir>`\ (\ to_dir\: :ref:`String<class_String>`\ )                                                                                          |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`copy<class_DirAccess_method_copy>`\ (\ from\: :ref:`String<class_String>`, to\: :ref:`String<class_String>`, chmod_flags\: :ref:`int<class_int>` = -1\ )                            |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`copy_absolute<class_DirAccess_method_copy_absolute>`\ (\ from\: :ref:`String<class_String>`, to\: :ref:`String<class_String>`, chmod_flags\: :ref:`int<class_int>` = -1\ ) |static| |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`create_link<class_DirAccess_method_create_link>`\ (\ source\: :ref:`String<class_String>`, target\: :ref:`String<class_String>`\ )                                                  |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`DirAccess<class_DirAccess>`                 | :ref:`create_temp<class_DirAccess_method_create_temp>`\ (\ prefix\: :ref:`String<class_String>` = "", keep\: :ref:`bool<class_bool>` = false\ ) |static|                                  |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`current_is_dir<class_DirAccess_method_current_is_dir>`\ (\ ) |const|                                                                                                                |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`dir_exists<class_DirAccess_method_dir_exists>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                            |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`dir_exists_absolute<class_DirAccess_method_dir_exists_absolute>`\ (\ path\: :ref:`String<class_String>`\ ) |static|                                                                 |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`file_exists<class_DirAccess_method_file_exists>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                          |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`get_current_dir<class_DirAccess_method_get_current_dir>`\ (\ include_drive\: :ref:`bool<class_bool>` = true\ ) |const|                                                              |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_current_drive<class_DirAccess_method_get_current_drive>`\ (\ )                                                                                                                  |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_directories<class_DirAccess_method_get_directories>`\ (\ )                                                                                                                      |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_directories_at<class_DirAccess_method_get_directories_at>`\ (\ path\: :ref:`String<class_String>`\ ) |static|                                                                   |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_drive_count<class_DirAccess_method_get_drive_count>`\ (\ ) |static|                                                                                                             |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`get_drive_label<class_DirAccess_method_get_drive_label>`\ (\ idx\: :ref:`int<class_int>`\ ) |static|                                                                                |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`get_drive_name<class_DirAccess_method_get_drive_name>`\ (\ idx\: :ref:`int<class_int>`\ ) |static|                                                                                  |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_files<class_DirAccess_method_get_files>`\ (\ )                                                                                                                                  |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_files_at<class_DirAccess_method_get_files_at>`\ (\ path\: :ref:`String<class_String>`\ ) |static|                                                                               |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`get_filesystem_type<class_DirAccess_method_get_filesystem_type>`\ (\ ) |const|                                                                                                      |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`get_next<class_DirAccess_method_get_next>`\ (\ )                                                                                                                                    |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`get_open_error<class_DirAccess_method_get_open_error>`\ (\ ) |static|                                                                                                               |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_space_left<class_DirAccess_method_get_space_left>`\ (\ )                                                                                                                        |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`is_bundle<class_DirAccess_method_is_bundle>`\ (\ path\: :ref:`String<class_String>`\ ) |const|                                                                                      |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`is_case_sensitive<class_DirAccess_method_is_case_sensitive>`\ (\ path\: :ref:`String<class_String>`\ ) |const|                                                                      |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`is_equivalent<class_DirAccess_method_is_equivalent>`\ (\ path_a\: :ref:`String<class_String>`, path_b\: :ref:`String<class_String>`\ ) |const|                                      |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`is_link<class_DirAccess_method_is_link>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                  |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`list_dir_begin<class_DirAccess_method_list_dir_begin>`\ (\ )                                                                                                                        |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`list_dir_end<class_DirAccess_method_list_dir_end>`\ (\ )                                                                                                                            |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`make_dir<class_DirAccess_method_make_dir>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`make_dir_absolute<class_DirAccess_method_make_dir_absolute>`\ (\ path\: :ref:`String<class_String>`\ ) |static|                                                                     |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`make_dir_recursive<class_DirAccess_method_make_dir_recursive>`\ (\ path\: :ref:`String<class_String>`\ )                                                                            |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`make_dir_recursive_absolute<class_DirAccess_method_make_dir_recursive_absolute>`\ (\ path\: :ref:`String<class_String>`\ ) |static|                                                 |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`DirAccess<class_DirAccess>`                 | :ref:`open<class_DirAccess_method_open>`\ (\ path\: :ref:`String<class_String>`\ ) |static|                                                                                               |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`read_link<class_DirAccess_method_read_link>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                              |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`remove<class_DirAccess_method_remove>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                    |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`remove_absolute<class_DirAccess_method_remove_absolute>`\ (\ path\: :ref:`String<class_String>`\ ) |static|                                                                         |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`rename<class_DirAccess_method_rename>`\ (\ from\: :ref:`String<class_String>`, to\: :ref:`String<class_String>`\ )                                                                  |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`rename_absolute<class_DirAccess_method_rename_absolute>`\ (\ from\: :ref:`String<class_String>`, to\: :ref:`String<class_String>`\ ) |static|                                       |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_DirAccess_property_include_hidden:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **include_hidden** :ref:`🔗<class_DirAccess_property_include_hidden>`

.. rst-class:: classref-property-setget

- |void| **set_include_hidden**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_include_hidden**\ (\ )

Si es ``true``, los archivos ocultos se incluyen al navegar por el directorio.

Afecta a :ref:`list_dir_begin()<class_DirAccess_method_list_dir_begin>`, :ref:`get_directories()<class_DirAccess_method_get_directories>` y :ref:`get_files()<class_DirAccess_method_get_files>`.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_property_include_navigational:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **include_navigational** :ref:`🔗<class_DirAccess_property_include_navigational>`

.. rst-class:: classref-property-setget

- |void| **set_include_navigational**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_include_navigational**\ (\ )

Si es ``true``, ``.`` y ``..`` se incluyen al navegar por el directorio.

Afecta a :ref:`list_dir_begin()<class_DirAccess_method_list_dir_begin>` y :ref:`get_directories()<class_DirAccess_method_get_directories>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_DirAccess_method_change_dir:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **change_dir**\ (\ to_dir\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_change_dir>`

Cambia el directorio abierto actualmente al que se pasa como argumento. El argumento puede ser relativo al directorio actual (por ejemplo, ``newdir`` o ``../newdir``), o una ruta absoluta (por ejemplo, ``/tmp/newdir`` o ``res://somedir/newdir``).

Devuelve una de las constantes de código de :ref:`Error<enum_@GlobalScope_Error>` (:ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` si tiene éxito).

\ **Nota:** El nuevo directorio debe estar dentro del mismo ámbito; por ejemplo, si habías abierto un directorio dentro de ``res://``, no puedes cambiarlo al directorio ``user://``. Si necesitas abrir un directorio en otro ámbito de acceso, utiliza :ref:`open()<class_DirAccess_method_open>` para crear una nueva instancia en su lugar.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_copy:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **copy**\ (\ from\: :ref:`String<class_String>`, to\: :ref:`String<class_String>`, chmod_flags\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_DirAccess_method_copy>`

Copia el archivo ``from`` al destino ``to``. Ambos argumentos deben ser rutas a archivos, ya sean relativas o absolutas. Si el archivo de destino existe y no está protegido contra escritura, se sobrescribirá.

Si ``chmod_flags`` es distinto de ``-1``, los permisos de Unix para la ruta de destino se establecerán al valor proporcionado, siempre que esté disponible en el sistema operativo actual.

Devuelve una de las constantes de código de :ref:`Error<enum_@GlobalScope_Error>` (:ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` si tiene éxito).

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_copy_absolute:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **copy_absolute**\ (\ from\: :ref:`String<class_String>`, to\: :ref:`String<class_String>`, chmod_flags\: :ref:`int<class_int>` = -1\ ) |static| :ref:`🔗<class_DirAccess_method_copy_absolute>`

Versión estática de :ref:`copy()<class_DirAccess_method_copy>`. Solo admite rutas absolutas.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_create_link:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_link**\ (\ source\: :ref:`String<class_String>`, target\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_create_link>`

Crea un enlace simbólico entre archivos o carpetas.

\ **Nota:** En Windows, este método solo funciona si la aplicación se está ejecutando con privilegios elevados o el Modo Desarrollador está habilitado.

\ **Nota:** Este método está implementado en macOS, Linux y Windows.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_create_temp:

.. rst-class:: classref-method

:ref:`DirAccess<class_DirAccess>` **create_temp**\ (\ prefix\: :ref:`String<class_String>` = "", keep\: :ref:`bool<class_bool>` = false\ ) |static| :ref:`🔗<class_DirAccess_method_create_temp>`

Crea un directorio temporal. Este directorio se eliminará cuando el **DirAccess** devuelto sea liberado.

Si ``prefix`` no está vacío, se antepondrá al nombre del directorio, separado por un ``-``.

Si ``keep`` es ``true``, el directorio no se eliminará cuando el **DirAccess** devuelto sea liberado.

Devuelve ``null`` si no se pudo abrir el directorio. Puede utilizarse :ref:`get_open_error()<class_DirAccess_method_get_open_error>` para comprobar el error que se produjo.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_current_is_dir:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **current_is_dir**\ (\ ) |const| :ref:`🔗<class_DirAccess_method_current_is_dir>`

Devuelve si el objeto actual procesado con la última llamada a :ref:`get_next()<class_DirAccess_method_get_next>` es un directorio. ``.`` y ``..`` son considerados directorios.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_dir_exists:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **dir_exists**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_dir_exists>`

Devuelve si el directorio de destino existe. El argumento puede ser relativo al directorio actual, o una ruta absoluta.

\ **Nota:** El :ref:`bool<class_bool>` devuelto en el editor y después de la exportación cuando se usa en una ruta en el directorio ``res://`` puede ser diferente. Algunos archivos se convierten a formatos específicos del motor cuando se exportan, lo que puede cambiar la estructura del directorio.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_dir_exists_absolute:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **dir_exists_absolute**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_DirAccess_method_dir_exists_absolute>`

Versión estática de :ref:`dir_exists()<class_DirAccess_method_dir_exists>`. Solo admite rutas absolutas.

\ **Nota:** El :ref:`bool<class_bool>` devuelto en el editor y después de la exportación cuando se usa en una ruta en el directorio ``res://`` puede ser diferente. Algunos archivos se convierten a formatos específicos del motor cuando se exportan, lo que puede cambiar la estructura del directorio.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_file_exists:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **file_exists**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_file_exists>`

Devuelve si el archivo de destino existe. El argumento puede ser relativo al directorio actual o una ruta absoluta.

Para un equivalente estático, utiliza :ref:`FileAccess.file_exists()<class_FileAccess_method_file_exists>`.

\ **Nota:** Muchos tipos de recursos se importan (por ejemplo, texturas o archivos de sonido) y su asset original no se incluirá en el juego exportado, ya que solo se utiliza la versión importada. Consulta :ref:`ResourceLoader.exists()<class_ResourceLoader_method_exists>` para un enfoque alternativo que tenga en cuenta el remapeo de recursos.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_current_dir:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_current_dir**\ (\ include_drive\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_DirAccess_method_get_current_dir>`

Devuelve la ruta absoluta del directorio abierto actualmente (por ejemplo, ``res://folder`` o ``C:\tmp\folder``).

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_current_drive:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_current_drive**\ (\ ) :ref:`🔗<class_DirAccess_method_get_current_drive>`

Devuelve el índice de la unidad del directorio abierto actualmente. Véase :ref:`get_drive_name()<class_DirAccess_method_get_drive_name>` para convertir el índice devuelto al nombre de la unidad.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_directories:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_directories**\ (\ ) :ref:`🔗<class_DirAccess_method_get_directories>`

Devuelve un :ref:`PackedStringArray<class_PackedStringArray>` que contiene los nombres de archivo del contenido del directorio, excluyendo los archivos. El array está ordenado alfabéticamente.

Afectado por :ref:`include_hidden<class_DirAccess_property_include_hidden>` y :ref:`include_navigational<class_DirAccess_property_include_navigational>`.

\ **Nota:** Los directorios devueltos en el editor y después de la exportación en el directorio ``res://`` pueden diferir, ya que algunos archivos se convierten a formatos específicos del motor cuando se exportan.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_directories_at:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_directories_at**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_DirAccess_method_get_directories_at>`

Devuelve un :ref:`PackedStringArray<class_PackedStringArray>` que contiene nombres de archivos del contenido del directorio, excluyendo archivos, en la ``path`` dada. El array se ordena alfabéticamente.

Usa :ref:`get_directories()<class_DirAccess_method_get_directories>` si quieres más control sobre lo que se incluye.

\ **Nota:** Los directorios devueltos en el editor y después de la exportación en el directorio ``res://`` pueden diferir, ya que algunos archivos se convierten a formatos específicos del motor cuando se exportan.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_drive_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_drive_count**\ (\ ) |static| :ref:`🔗<class_DirAccess_method_get_drive_count>`

En Windows, devuelve el número de unidades (particiones) montadas en el sistema de archivos actual.

En macOS y Android, devuelve el número de volúmenes montados.

En Linux, devuelve el número de volúmenes montados y los marcadores de GTK 3.

En otras plataformas, el método devuelve 0.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_drive_label:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_drive_label**\ (\ idx\: :ref:`int<class_int>`\ ) |static| :ref:`🔗<class_DirAccess_method_get_drive_label>`

En Windows, devuelve la etiqueta de la unidad (partición) pasada como argumento.

En otras plataformas, o si la unidad solicitada no existe, devuelve una cadena vacía.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_drive_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_drive_name**\ (\ idx\: :ref:`int<class_int>`\ ) |static| :ref:`🔗<class_DirAccess_method_get_drive_name>`

On Windows, returns the name of the drive (partition) passed as an argument (e.g. ``C:``).

On macOS, returns the path to the mounted volume passed as an argument.

On Linux, returns the path to the mounted volume or GTK 3 bookmark passed as an argument.

On Android (API level 30+), returns the path to the mounted volume as an argument.

On other platforms, or if the requested drive does not exist, returns an empty String.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_files:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_files**\ (\ ) :ref:`🔗<class_DirAccess_method_get_files>`

Devuelve un :ref:`PackedStringArray<class_PackedStringArray>` que contiene los nombres de archivo del contenido del directorio, excluyendo directorios. El array se ordena alfabéticamente.

Afectado por :ref:`include_hidden<class_DirAccess_property_include_hidden>`.

\ **Nota:** Cuando se usa en una ruta ``res://`` en un proyecto exportado, solo se devuelven los archivos realmente incluidos en el PCK en el nivel de carpeta dado. En la práctica, esto significa que, dado que los recursos importados se almacenan en una carpeta de nivel superior ``.godot/``, solo se devuelven las rutas a archivos ``*.gd`` y ``*.import`` (además de algunos archivos como ``project.godot`` o ``project.binary`` y el icono del proyecto). En un proyecto exportado, la lista de archivos devueltos también variará dependiendo de si :ref:`ProjectSettings.editor/export/convert_text_resources_to_binary<class_ProjectSettings_property_editor/export/convert_text_resources_to_binary>` es ``true``.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_files_at:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_files_at**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_DirAccess_method_get_files_at>`

Devuelve un :ref:`PackedStringArray<class_PackedStringArray>` que contiene los nombres de archivo del contenido del directorio, excluyendo directorios, en la ``path`` dada. El array se ordena alfabéticamente.

Usa :ref:`get_files()<class_DirAccess_method_get_files>` si quieres más control sobre lo que se incluye.

\ **Nota:** Cuando se usa en una ruta ``res://`` en un proyecto exportado, solo se devuelven los archivos incluidos en el PCK en el nivel de carpeta dado. En la práctica, esto significa que, dado que los recursos importados se almacenan en una carpeta de nivel superior ``.godot/``, solo se devuelven las rutas a archivos ``.gd`` y ``.import`` (además de algunos otros archivos, como ``project.godot`` o ``project.binary`` y el icono del proyecto). En un proyecto exportado, la lista de archivos devueltos también variará dependiendo de :ref:`ProjectSettings.editor/export/convert_text_resources_to_binary<class_ProjectSettings_property_editor/export/convert_text_resources_to_binary>`.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_filesystem_type:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_filesystem_type**\ (\ ) |const| :ref:`🔗<class_DirAccess_method_get_filesystem_type>`

Devuelve el nombre del tipo de sistema de archivos del disco del directorio actual. Los valores devueltos son cadenas de texto en mayúsculas como ``NTFS``, ``FAT32``, ``EXFAT``, ``APFS``, ``EXT4``, ``BTRFS``, y así sucesivamente.

\ **Nota:** Este método está implementado en macOS, Linux, Windows y para el sistema de archivos virtual PCK.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_next:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_next**\ (\ ) :ref:`🔗<class_DirAccess_method_get_next>`

Devuelve el siguiente elemento (archivo o directorio) en el directorio actual.

Se devuelve el nombre del archivo o directorio (y no su ruta completa). Una vez que la secuencia se ha procesado completamente, el método devuelve una string vacía y cierra la secuencia automáticamente (es decir, :ref:`list_dir_end()<class_DirAccess_method_list_dir_end>` no sería obligatorio en tal caso).

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_open_error:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **get_open_error**\ (\ ) |static| :ref:`🔗<class_DirAccess_method_get_open_error>`

Devuelve el resultado de la última llamada a :ref:`open()<class_DirAccess_method_open>` en el hilo actual.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_space_left:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_space_left**\ (\ ) :ref:`🔗<class_DirAccess_method_get_space_left>`

Devuelve el espacio disponible en el disco del directorio actual, en bytes. Devuelve ``0`` si el método específico de la plataforma para consultar el espacio disponible falla.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_is_bundle:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_bundle**\ (\ path\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_DirAccess_method_is_bundle>`

Devuelve ``true`` si el directorio es un paquete de macOS.

\ **Nota:** Este método está implementado en macOS.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_is_case_sensitive:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_case_sensitive**\ (\ path\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_DirAccess_method_is_case_sensitive>`

Devuelve ``true`` si el sistema de archivos o el directorio utilizan nombres de archivo que distinguen entre mayúsculas y minúsculas.

\ **Nota:** Este método está implementado en macOS, Linux (solo para sistemas de archivos EXT4 y F2FS) y Windows. En otras plataformas, siempre devuelve ``true``.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_is_equivalent:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_equivalent**\ (\ path_a\: :ref:`String<class_String>`, path_b\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_DirAccess_method_is_equivalent>`

Devuelve ``true`` si las rutas ``path_a`` y ``path_b`` se resuelven en el mismo objeto del sistema de archivos. Devuelve ``false`` en caso contrario, incluso si los archivos son idénticos bit a bit (por ejemplo, copias idénticas del archivo que no son enlaces simbólicos).

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_is_link:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_link**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_is_link>`

Devuelve ``true`` si el archivo o directorio es un enlace simbólico, una unión de directorio u otro punto de reanálisis.

\ **Nota:** Este método está implementado en macOS, Linux y Windows.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_list_dir_begin:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **list_dir_begin**\ (\ ) :ref:`🔗<class_DirAccess_method_list_dir_begin>`

Inicializa el flujo usado para listar todos los archivos y directorios usando la función :ref:`get_next()<class_DirAccess_method_get_next>`, cerrando el flujo abierto actual si es necesario. Una vez que el flujo ha sido procesado, típicamente debería ser cerrado con :ref:`list_dir_end()<class_DirAccess_method_list_dir_end>`.

Afectado por :ref:`include_hidden<class_DirAccess_property_include_hidden>` y :ref:`include_navigational<class_DirAccess_property_include_navigational>`.

\ **Nota:** El orden de los archivos y directorios devueltos por este método no es determinístico y puede variar entre sistemas operativos. Si quieres una lista de todos los archivos o carpetas ordenados alfabéticamente, usa :ref:`get_files()<class_DirAccess_method_get_files>` o :ref:`get_directories()<class_DirAccess_method_get_directories>`.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_list_dir_end:

.. rst-class:: classref-method

|void| **list_dir_end**\ (\ ) :ref:`🔗<class_DirAccess_method_list_dir_end>`

Cierra el flujo actual abierto con :ref:`list_dir_begin()<class_DirAccess_method_list_dir_begin>` (no importa si se ha procesado completamente con :ref:`get_next()<class_DirAccess_method_get_next>` o no).

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_make_dir:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **make_dir**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_make_dir>`

Crea un directorio. El argumento puede ser relativo al directorio actual o una ruta absoluta. El directorio de destino debe ubicarse en un directorio ya existente (para crear la ruta completa recursivamente, Véase :ref:`make_dir_recursive()<class_DirAccess_method_make_dir_recursive>`).

Devuelve una de las constantes de código :ref:`Error<enum_@GlobalScope_Error>` (:ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` en caso de éxito).

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_make_dir_absolute:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **make_dir_absolute**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_DirAccess_method_make_dir_absolute>`

Versión estática de :ref:`make_dir()<class_DirAccess_method_make_dir>`. Solo admite rutas absolutas.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_make_dir_recursive:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **make_dir_recursive**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_make_dir_recursive>`

Crea un directorio de destino y todos los directorios intermedios necesarios en su ruta, llamando a :ref:`make_dir()<class_DirAccess_method_make_dir>` recursivamente. El argumento puede ser relativo al directorio actual, o una ruta absoluta.

Devuelve una de las constantes de código de :ref:`Error<enum_@GlobalScope_Error>` (:ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` en caso de éxito).

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_make_dir_recursive_absolute:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **make_dir_recursive_absolute**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_DirAccess_method_make_dir_recursive_absolute>`

Versión estática de :ref:`make_dir_recursive()<class_DirAccess_method_make_dir_recursive>`. Solo admite rutas absolutas.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_open:

.. rst-class:: classref-method

:ref:`DirAccess<class_DirAccess>` **open**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_DirAccess_method_open>`

Crea un nuevo objeto **DirAccess** y abre un directorio existente del sistema de archivos. El argumento ``path`` puede estar dentro del árbol del proyecto (``res://folder``), el directorio de usuario (``user://folder``) o una ruta absoluta del sistema de archivos de usuario (por ejemplo, ``/tmp/folder`` o ``C:\tmp\folder``).

Devuelve ``null`` si falló la apertura del directorio. Puedes usar :ref:`get_open_error()<class_DirAccess_method_get_open_error>` para verificar el error ocurrido.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_read_link:

.. rst-class:: classref-method

:ref:`String<class_String>` **read_link**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_read_link>`

Devuelve el destino del enlace simbólico.

\ **Nota:** Este método está implementado en macOS, Linux y Windows.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_remove:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **remove**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_remove>`

Elimina permanentemente el archivo de destino o un directorio vacío. El argumento puede ser relativo al directorio actual o una ruta absoluta. Si el directorio de destino no está vacío, la operación fallará.

Si no desea eliminar el archivo o directorio permanentemente, utiliza :ref:`OS.move_to_trash()<class_OS_method_move_to_trash>`.

Devuelve una de las constantes de código :ref:`Error<enum_@GlobalScope_Error>`, (:ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` en caso de éxito).

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_remove_absolute:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **remove_absolute**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_DirAccess_method_remove_absolute>`

Versión estática de :ref:`remove()<class_DirAccess_method_remove>`. Solo admite rutas absolutas.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_rename:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **rename**\ (\ from\: :ref:`String<class_String>`, to\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_rename>`

Renombra (mueve) el archivo o directorio ``from`` al destino ``to``. Ambos argumentos deben ser rutas a archivos o directorios, ya sean relativas o absolutas. Si el archivo o directorio de destino existe y no está protegido contra el acceso, será sobrescrito.

Devuelve una de las constantes del código :ref:`Error<enum_@GlobalScope_Error>` (:ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` en caso de éxito).

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_rename_absolute:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **rename_absolute**\ (\ from\: :ref:`String<class_String>`, to\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_DirAccess_method_rename_absolute>`

Versión estática de :ref:`rename()<class_DirAccess_method_rename>`. Solo admite rutas absolutas.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
