:github_url: hide

.. _class_ResourceLoader:

ResourceLoader
==============

**Hereda:** :ref:`Object<class_Object>`

Un singleton para cargar archivos de recursos.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Un singleton utilizado para cargar archivos de recursos desde el sistema de archivos.

Utiliza las muchas clases :ref:`ResourceFormatLoader<class_ResourceFormatLoader>` registradas en el motor (ya sean integradas o de un plugin) para cargar archivos en la memoria y convertirlos a un formato que pueda ser utilizado por el motor.

\ **Nota:** Primero debes importar los archivos al motor para cargarlos usando :ref:`load()<class_ResourceLoader_method_load>`. Si quieres cargar :ref:`Image<class_Image>`\ s en tiempo de ejecución, puedes usar :ref:`Image.load()<class_Image_method_load>`. Si quieres importar archivos de audio, puedes usar el fragmento de código descrito en :ref:`AudioStreamMP3.data<class_AudioStreamMP3_property_data>`.

\ **Nota:** Los archivos que no son de recursos, como los archivos de texto plano, no se pueden leer usando **ResourceLoader**. Utiliza :ref:`FileAccess<class_FileAccess>` para esos archivos en su lugar, y ten en cuenta que los archivos que no son de recursos no se exportan de forma predeterminada (consulta las notas en la descripción de la clase :ref:`FileAccess<class_FileAccess>` para obtener instrucciones sobre cómo exportarlos).

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- `Threaded Loading Demo <https://godotengine.org/asset-library/asset/2778>`__

- `Demo de Prueba de Sistema Operativo <https://godotengine.org/asset-library/asset/2789>`__

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                        | :ref:`add_resource_format_loader<class_ResourceLoader_method_add_resource_format_loader>`\ (\ format_loader\: :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`, at_front\: :ref:`bool<class_bool>` = false\ )                                                                         |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                       | :ref:`exists<class_ResourceLoader_method_exists>`\ (\ path\: :ref:`String<class_String>`, type_hint\: :ref:`String<class_String>` = ""\ )                                                                                                                                                    |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>`                               | :ref:`get_cached_ref<class_ResourceLoader_method_get_cached_ref>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                                                                                                  |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`             | :ref:`get_dependencies<class_ResourceLoader_method_get_dependencies>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                                                                                              |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`             | :ref:`get_recognized_extensions_for_type<class_ResourceLoader_method_get_recognized_extensions_for_type>`\ (\ type\: :ref:`String<class_String>`\ )                                                                                                                                          |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                         | :ref:`get_resource_uid<class_ResourceLoader_method_get_resource_uid>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                                                                                              |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                       | :ref:`has_cached<class_ResourceLoader_method_has_cached>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                                                                                                          |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`             | :ref:`list_directory<class_ResourceLoader_method_list_directory>`\ (\ directory_path\: :ref:`String<class_String>`\ )                                                                                                                                                                        |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>`                               | :ref:`load<class_ResourceLoader_method_load>`\ (\ path\: :ref:`String<class_String>`, type_hint\: :ref:`String<class_String>` = "", cache_mode\: :ref:`CacheMode<enum_ResourceLoader_CacheMode>` = 1\ )                                                                                      |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>`                               | :ref:`load_threaded_get<class_ResourceLoader_method_load_threaded_get>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                                                                                            |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ThreadLoadStatus<enum_ResourceLoader_ThreadLoadStatus>` | :ref:`load_threaded_get_status<class_ResourceLoader_method_load_threaded_get_status>`\ (\ path\: :ref:`String<class_String>`, progress\: :ref:`Array<class_Array>` = []\ )                                                                                                                   |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                         | :ref:`load_threaded_request<class_ResourceLoader_method_load_threaded_request>`\ (\ path\: :ref:`String<class_String>`, type_hint\: :ref:`String<class_String>` = "", use_sub_threads\: :ref:`bool<class_bool>` = false, cache_mode\: :ref:`CacheMode<enum_ResourceLoader_CacheMode>` = 1\ ) |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                        | :ref:`remove_resource_format_loader<class_ResourceLoader_method_remove_resource_format_loader>`\ (\ format_loader\: :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`\ )                                                                                                               |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                        | :ref:`set_abort_on_missing_resources<class_ResourceLoader_method_set_abort_on_missing_resources>`\ (\ abort\: :ref:`bool<class_bool>`\ )                                                                                                                                                     |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_ResourceLoader_ThreadLoadStatus:

.. rst-class:: classref-enumeration

enum **ThreadLoadStatus**: :ref:`🔗<enum_ResourceLoader_ThreadLoadStatus>`

.. _class_ResourceLoader_constant_THREAD_LOAD_INVALID_RESOURCE:

.. rst-class:: classref-enumeration-constant

:ref:`ThreadLoadStatus<enum_ResourceLoader_ThreadLoadStatus>` **THREAD_LOAD_INVALID_RESOURCE** = ``0``

El recurso no es válido, o no ha sido cargado con :ref:`load_threaded_request()<class_ResourceLoader_method_load_threaded_request>`.

.. _class_ResourceLoader_constant_THREAD_LOAD_IN_PROGRESS:

.. rst-class:: classref-enumeration-constant

:ref:`ThreadLoadStatus<enum_ResourceLoader_ThreadLoadStatus>` **THREAD_LOAD_IN_PROGRESS** = ``1``

El recurso todavía está siendo cargado.

.. _class_ResourceLoader_constant_THREAD_LOAD_FAILED:

.. rst-class:: classref-enumeration-constant

:ref:`ThreadLoadStatus<enum_ResourceLoader_ThreadLoadStatus>` **THREAD_LOAD_FAILED** = ``2``

Ocurrió algún error durante la carga y falló.

.. _class_ResourceLoader_constant_THREAD_LOAD_LOADED:

.. rst-class:: classref-enumeration-constant

:ref:`ThreadLoadStatus<enum_ResourceLoader_ThreadLoadStatus>` **THREAD_LOAD_LOADED** = ``3``

El recurso se cargó correctamente y se puede acceder a él a través de :ref:`load_threaded_get()<class_ResourceLoader_method_load_threaded_get>`.

.. rst-class:: classref-item-separator

----

.. _enum_ResourceLoader_CacheMode:

.. rst-class:: classref-enumeration

enum **CacheMode**: :ref:`🔗<enum_ResourceLoader_CacheMode>`

.. _class_ResourceLoader_constant_CACHE_MODE_IGNORE:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceLoader_CacheMode>` **CACHE_MODE_IGNORE** = ``0``

Ni el recurso principal (el que se solicitó cargar) ni ninguno de sus subrecursos se recuperan de la caché ni se almacenan en ella. Las dependencias (recursos externos) se cargan con :ref:`CACHE_MODE_REUSE<class_ResourceLoader_constant_CACHE_MODE_REUSE>`.

.. _class_ResourceLoader_constant_CACHE_MODE_REUSE:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceLoader_CacheMode>` **CACHE_MODE_REUSE** = ``1``

El recurso principal (el que se solicitó cargar), sus subrecursos y sus dependencias (recursos externos) se recuperan de la caché si están presentes, en lugar de cargarse. Los que no están en caché se cargan y luego se almacenan en la caché. Las mismas reglas se propagan recursivamente por el árbol de dependencias (recursos externos).

.. _class_ResourceLoader_constant_CACHE_MODE_REPLACE:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceLoader_CacheMode>` **CACHE_MODE_REPLACE** = ``2``

Como :ref:`CACHE_MODE_REUSE<class_ResourceLoader_constant_CACHE_MODE_REUSE>`, pero la caché se comprueba para el recurso principal (el que se solicitó cargar), así como para cada uno de sus subrecursos. Aquellos que ya están en la caché, siempre que los tipos cargados y cacheados coincidan, ven sus datos actualizados desde el almacenamiento en las instancias ya existentes. De lo contrario, se recrean como objetos completamente nuevos.

.. _class_ResourceLoader_constant_CACHE_MODE_IGNORE_DEEP:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceLoader_CacheMode>` **CACHE_MODE_IGNORE_DEEP** = ``3``

Como :ref:`CACHE_MODE_IGNORE<class_ResourceLoader_constant_CACHE_MODE_IGNORE>`, pero se propaga recursivamente por el árbol de dependencias (recursos externos).

.. _class_ResourceLoader_constant_CACHE_MODE_REPLACE_DEEP:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceLoader_CacheMode>` **CACHE_MODE_REPLACE_DEEP** = ``4``

Como :ref:`CACHE_MODE_REPLACE<class_ResourceLoader_constant_CACHE_MODE_REPLACE>`, pero se propaga recursivamente por el árbol de dependencias (recursos externos).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_ResourceLoader_method_add_resource_format_loader:

.. rst-class:: classref-method

|void| **add_resource_format_loader**\ (\ format_loader\: :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`, at_front\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_ResourceLoader_method_add_resource_format_loader>`

Registra un nuevo :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`. El ResourceLoader utilizará el ResourceFormatLoader como se describe en :ref:`load()<class_ResourceLoader_method_load>`.

Este método se realiza implícitamente para los ResourceFormatLoaders escritos en GDScript (véase :ref:`ResourceFormatLoader<class_ResourceFormatLoader>` para obtener más información).

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_exists:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **exists**\ (\ path\: :ref:`String<class_String>`, type_hint\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_ResourceLoader_method_exists>`

Devuelve si existe un recurso reconocido para la ``path`` dada.

Se puede utilizar un ``type_hint`` opcional para especificar con más detalle el tipo de :ref:`Resource<class_Resource>` que debe manejar el :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`. Cualquier cosa que herede de :ref:`Resource<class_Resource>` puede ser utilizado como un type hint, por ejemplo :ref:`Image<class_Image>`.

\ **Nota:** Si utilizas :ref:`Resource.take_over_path()<class_Resource_method_take_over_path>`, este método devolverá ``true`` para la ruta tomada incluso si el recurso no fue guardado (es decir, existe solo en la caché de recursos).

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_get_cached_ref:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **get_cached_ref**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceLoader_method_get_cached_ref>`

Devuelve la referencia al recurso en caché para la ``path`` dada.

\ **Nota:** Si el recurso no está en caché, el :ref:`Resource<class_Resource>` devuelto no será válido.

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_get_dependencies:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_dependencies**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceLoader_method_get_dependencies>`

Devuelve las dependencias del recurso en la ``path`` dada.

Cada dependencia es una string que puede dividirse en secciones mediante ``::``. Puede haber una sección o tres secciones, siendo la segunda sección siempre vacía. Cuando hay una sección, contiene la ruta del archivo. Cuando hay tres secciones, la primera sección contiene el UID y la tercera sección contiene la ruta de respaldo.

::

    for dependencia in ResourceLoader.get_dependencies(path):
        if dependencia.contains("::"):
            print(dependency.get_slice("::", 0)) # Imprime el UID.
            print(dependency.get_slice("::", 2)) # Imprime la ruta de respaldo.
        else:
            print(dependency) # Imprime la ruta.

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_get_recognized_extensions_for_type:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_recognized_extensions_for_type**\ (\ type\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceLoader_method_get_recognized_extensions_for_type>`

Devuelve la lista de extensiones reconocidas para un tipo de recurso.

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_get_resource_uid:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_resource_uid**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceLoader_method_get_resource_uid>`

Devuelve el ID asociado con una ruta de recurso dada, o ``-1`` cuando no existe dicho ID.

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_has_cached:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_cached**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceLoader_method_has_cached>`

Devuelve si un recurso en caché está disponible para la ``path`` dada.

Una vez que un recurso ha sido cargado por el motor, se almacena en la memoria caché para un acceso más rápido, y las futuras llamadas al método :ref:`load()<class_ResourceLoader_method_load>` utilizarán la versión en caché. El recurso en caché puede ser sobrescrito usando :ref:`Resource.take_over_path()<class_Resource_method_take_over_path>` en un nuevo recurso para esa misma ruta.

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_list_directory:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **list_directory**\ (\ directory_path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceLoader_method_list_directory>`

Lista un directorio, devolviendo todos los recursos y subdirectorios contenidos dentro. Los archivos de recursos tienen los nombres de archivo originales tal como se ven en el editor antes de la exportación. Los directorios tienen ``"/"`` añadido.

::

    # Imprime ["extra_data/", "model.gltf", "model.tscn", "model_slime.png"]
    print(ResourceLoader.list_directory("res://assets/enemies/slime"))

\ **Nota:** El orden de los archivos y directorios devueltos por este método no es determinista, y puede variar entre sistemas operativos.

\ **Nota:** Para recorrer normalmente el sistema de archivos, consulta :ref:`DirAccess<class_DirAccess>`.

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_load:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **load**\ (\ path\: :ref:`String<class_String>`, type_hint\: :ref:`String<class_String>` = "", cache_mode\: :ref:`CacheMode<enum_ResourceLoader_CacheMode>` = 1\ ) :ref:`🔗<class_ResourceLoader_method_load>`

Carga un recurso en la ``path`` dada, almacenando el resultado en caché para un acceso posterior.

Se consultan secuencialmente los :ref:`ResourceFormatLoader<class_ResourceFormatLoader>` registrados para encontrar el primero que pueda manejar la extensión del archivo, y luego intenta la carga. Si la carga falla, también se intentan los ResourceFormatLoader restantes.

Se puede utilizar un ``type_hint`` opcional para especificar aún más el tipo de :ref:`Resource<class_Resource>` que debe ser manejado por el :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`. Cualquier cosa que herede de :ref:`Resource<class_Resource>` puede ser utilizada como una pista de tipo, por ejemplo :ref:`Image<class_Image>`.

La propiedad ``cache_mode`` define si y cómo la caché debe ser utilizada o actualizada al cargar el recurso.

Devuelve un recurso vacío si ningún :ref:`ResourceFormatLoader<class_ResourceFormatLoader>` pudo manejar el archivo, e imprime un error si no se encuentra ningún archivo en la ruta especificada.

GDScript tiene un método incorporado simplificado :ref:`@GDScript.load()<class_@GDScript_method_load>` que puede ser utilizado en la mayoría de las situaciones, dejando el uso de **ResourceLoader** para escenarios más avanzados.

\ **Nota:** Si :ref:`ProjectSettings.editor/export/convert_text_resources_to_binary<class_ProjectSettings_property_editor/export/convert_text_resources_to_binary>` es ``true``, :ref:`@GDScript.load()<class_@GDScript_method_load>` no podrá leer los archivos convertidos en un proyecto exportado. Si dependes de la carga en tiempo de ejecución de archivos presentes dentro del PCK, establece :ref:`ProjectSettings.editor/export/convert_text_resources_to_binary<class_ProjectSettings_property_editor/export/convert_text_resources_to_binary>` a ``false``.

\ **Nota:** Las rutas relativas se prefijarán con ``"res://"`` antes de la carga, para evitar resultados inesperados asegúrate de que tus rutas sean absolutas.

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_load_threaded_get:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **load_threaded_get**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceLoader_method_load_threaded_get>`

Devuelve el recurso cargado por :ref:`load_threaded_request()<class_ResourceLoader_method_load_threaded_request>`.

Si se llama a esto antes de que el hilo de carga haya terminado (es decir, :ref:`load_threaded_get_status()<class_ResourceLoader_method_load_threaded_get_status>` no es :ref:`THREAD_LOAD_LOADED<class_ResourceLoader_constant_THREAD_LOAD_LOADED>`), el hilo que llama se bloqueará hasta que el recurso haya terminado de cargarse. Sin embargo, se recomienda utilizar :ref:`load_threaded_get_status()<class_ResourceLoader_method_load_threaded_get_status>` para saber cuándo la carga se ha completado realmente.

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_load_threaded_get_status:

.. rst-class:: classref-method

:ref:`ThreadLoadStatus<enum_ResourceLoader_ThreadLoadStatus>` **load_threaded_get_status**\ (\ path\: :ref:`String<class_String>`, progress\: :ref:`Array<class_Array>` = []\ ) :ref:`🔗<class_ResourceLoader_method_load_threaded_get_status>`

Devuelve el estado de una operación de carga por hilos iniciada con :ref:`load_threaded_request()<class_ResourceLoader_method_load_threaded_request>` para el recurso en ``path``.

Una variable de array puede ser pasada opcionalmente a través de ``progress``, y devolverá un array de un elemento que contiene la relación de terminación de la carga por hilos (entre ``0.0`` y ``1.0``).

\ **Nota:** La forma recomendada de usar este método es llamarlo durante diferentes frames (por ejemplo, en :ref:`Node._process()<class_Node_private_method__process>`, en lugar de un bucle).

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_load_threaded_request:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **load_threaded_request**\ (\ path\: :ref:`String<class_String>`, type_hint\: :ref:`String<class_String>` = "", use_sub_threads\: :ref:`bool<class_bool>` = false, cache_mode\: :ref:`CacheMode<enum_ResourceLoader_CacheMode>` = 1\ ) :ref:`🔗<class_ResourceLoader_method_load_threaded_request>`

Carga el recurso usando hilos. Si ``use_sub_threads`` es ``true``, se utilizarán múltiples hilos para cargar el recurso, lo que hace que la carga sea más rápida, pero puede afectar al hilo principal (y por lo tanto causar ralentizaciones en el juego).

El parámetro ``cache_mode`` define si y cómo la caché debe ser utilizada o actualizada al cargar el recurso.

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_remove_resource_format_loader:

.. rst-class:: classref-method

|void| **remove_resource_format_loader**\ (\ format_loader\: :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`\ ) :ref:`🔗<class_ResourceLoader_method_remove_resource_format_loader>`

Sobrescribe el registro del :ref:`ResourceFormatLoader<class_ResourceFormatLoader>` dado.

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_set_abort_on_missing_resources:

.. rst-class:: classref-method

|void| **set_abort_on_missing_resources**\ (\ abort\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_ResourceLoader_method_set_abort_on_missing_resources>`

Cambia el comportamiento sobre los subrecursos faltantes. El comportamiento por defecto es abortar la carga.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
