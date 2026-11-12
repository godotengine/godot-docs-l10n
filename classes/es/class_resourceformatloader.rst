:github_url: hide

.. _class_ResourceFormatLoader:

ResourceFormatLoader
====================

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Carga un tipo de recurso específico de un archivo.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Godot carga recursos en el editor o en los juegos exportados usando ResourceFormatLoaders. Se consultan automáticamente a través del singleton :ref:`ResourceLoader<class_ResourceLoader>`, o cuando se carga un recurso con dependencias internas. Cada tipo de archivo puede cargarse como un tipo de recurso diferente, por lo que se registran varios ResourceFormatLoaders en el motor.

Extender esta clase te permite definir tu propio cargador. Asegúrate de respetar los tipos y valores de retorno documentados. Debes darle un nombre de clase global con ``class_name`` para que se registre. Al igual que los ResourceFormatLoaders incorporados, se llamará automáticamente cuando se carguen los recursos de su(s) tipo(s) manejado(s). También puedes implementar un :ref:`ResourceFormatSaver<class_ResourceFormatSaver>`.

\ **Nota:** También puedes extender :ref:`EditorImportPlugin<class_EditorImportPlugin>` si el tipo de recurso que necesitas existe pero Godot es incapaz de cargar su formato. Elegir una forma en lugar de otra depende de si el formato es adecuado o no para el juego exportado final. Por ejemplo, es mejor importar primero las texturas ``.png`` como ``.ctex`` (:ref:`CompressedTexture2D<class_CompressedTexture2D>`), para que se puedan cargar con mayor eficacia en la tarjeta gráfica.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`_exists<class_ResourceFormatLoader_private_method__exists>`\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                                                                                    |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`_get_classes_used<class_ResourceFormatLoader_private_method__get_classes_used>`\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                                                                |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`_get_dependencies<class_ResourceFormatLoader_private_method__get_dependencies>`\ (\ path\: :ref:`String<class_String>`, add_types\: :ref:`bool<class_bool>`\ ) |virtual| |const|                                                                           |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`_get_recognized_extensions<class_ResourceFormatLoader_private_method__get_recognized_extensions>`\ (\ ) |virtual| |const|                                                                                                                                  |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`_get_resource_script_class<class_ResourceFormatLoader_private_method__get_resource_script_class>`\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                                              |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`_get_resource_type<class_ResourceFormatLoader_private_method__get_resource_type>`\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                                                              |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`_get_resource_uid<class_ResourceFormatLoader_private_method__get_resource_uid>`\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                                                                |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`_handles_type<class_ResourceFormatLoader_private_method__handles_type>`\ (\ type\: :ref:`StringName<class_StringName>`\ ) |virtual| |const|                                                                                                                |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                     | :ref:`_load<class_ResourceFormatLoader_private_method__load>`\ (\ path\: :ref:`String<class_String>`, original_path\: :ref:`String<class_String>`, use_sub_threads\: :ref:`bool<class_bool>`, cache_mode\: :ref:`int<class_int>`\ ) |virtual| |required| |const| |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`_recognize_path<class_ResourceFormatLoader_private_method__recognize_path>`\ (\ path\: :ref:`String<class_String>`, type\: :ref:`StringName<class_StringName>`\ ) |virtual| |const|                                                                        |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`_rename_dependencies<class_ResourceFormatLoader_private_method__rename_dependencies>`\ (\ path\: :ref:`String<class_String>`, renames\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| |const|                                                           |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_ResourceFormatLoader_CacheMode:

.. rst-class:: classref-enumeration

enum **CacheMode**: :ref:`🔗<enum_ResourceFormatLoader_CacheMode>`

.. _class_ResourceFormatLoader_constant_CACHE_MODE_IGNORE:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceFormatLoader_CacheMode>` **CACHE_MODE_IGNORE** = ``0``

Ni el recurso principal (el que se solicitó cargar) ni ninguno de sus subrecursos se recuperan de la caché ni se almacenan en ella. Las dependencias (recursos externos) se cargan con :ref:`CACHE_MODE_REUSE<class_ResourceFormatLoader_constant_CACHE_MODE_REUSE>`.

.. _class_ResourceFormatLoader_constant_CACHE_MODE_REUSE:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceFormatLoader_CacheMode>` **CACHE_MODE_REUSE** = ``1``

El recurso principal (el que se solicitó cargar), sus subrecursos y sus dependencias (recursos externos) se recuperan de la caché si están presentes, en lugar de cargarse. Los que no están en caché se cargan y luego se almacenan en la caché. Las mismas reglas se propagan recursivamente por el árbol de dependencias (recursos externos).

.. _class_ResourceFormatLoader_constant_CACHE_MODE_REPLACE:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceFormatLoader_CacheMode>` **CACHE_MODE_REPLACE** = ``2``

Como :ref:`CACHE_MODE_REUSE<class_ResourceFormatLoader_constant_CACHE_MODE_REUSE>`, pero la caché se comprueba para el recurso principal (el que se solicitó cargar), así como para cada uno de sus subrecursos. Aquellos que ya están en la caché, siempre que los tipos cargados y cacheados coincidan, ven sus datos actualizados desde el almacenamiento en las instancias ya existentes. De lo contrario, se recrean como objetos completamente nuevos.

.. _class_ResourceFormatLoader_constant_CACHE_MODE_IGNORE_DEEP:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceFormatLoader_CacheMode>` **CACHE_MODE_IGNORE_DEEP** = ``3``

Como :ref:`CACHE_MODE_IGNORE<class_ResourceFormatLoader_constant_CACHE_MODE_IGNORE>`, pero se propaga recursivamente por el árbol de dependencias (recursos externos).

.. _class_ResourceFormatLoader_constant_CACHE_MODE_REPLACE_DEEP:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceFormatLoader_CacheMode>` **CACHE_MODE_REPLACE_DEEP** = ``4``

Como :ref:`CACHE_MODE_REPLACE<class_ResourceFormatLoader_constant_CACHE_MODE_REPLACE>`, pero se propaga recursivamente por el árbol de dependencias (recursos externos).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_ResourceFormatLoader_private_method__exists:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_exists**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__exists>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatLoader_private_method__get_classes_used:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_classes_used**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__get_classes_used>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatLoader_private_method__get_dependencies:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_dependencies**\ (\ path\: :ref:`String<class_String>`, add_types\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__get_dependencies>`

Debería devolver las dependencias para el recurso en la ``path`` dada. Cada dependencia es una string compuesta por una a tres secciones separadas por ``::``, omitiendo las secciones finales vacías:

- La primera sección debería contener el UID si el recurso tiene uno. De lo contrario, debería contener la ruta del archivo.

- La segunda sección debería contener el nombre de clase de la dependencia si ``add_types`` es ``true``. De lo contrario, debería estar vacía.

- La tercera sección debería contener la ruta de respaldo si el recurso tiene un UID. De lo contrario, debería estar vacía.

::

    func _get_dependencies(path, add_types):
        return [
            "uid://fqgvuwrkuixh::Script::res://script.gd",
            "uid://fqgvuwrkuixh::::res://script.gd",
            "res://script.gd::Script",
            "res://script.gd",
        ]

\ **Nota:** Los tipos de recursos personalizados definidos por scripts no son conocidos por la :ref:`ClassDB<class_ClassDB>`, por lo que se puede usar ``"Resource"`` como nombre de la clase.

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatLoader_private_method__get_recognized_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_recognized_extensions**\ (\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__get_recognized_extensions>`

Obtiene la lista de extensiones de los archivos que este cargador es capaz de leer.

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatLoader_private_method__get_resource_script_class:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_resource_script_class**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__get_resource_script_class>`

Devuelve el nombre de la clase de script asociada con el :ref:`Resource<class_Resource>` bajo la ``path`` dada. Si el recurso no tiene script o el script no es una clase con nombre, debería devolver ``""``.

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatLoader_private_method__get_resource_type:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_resource_type**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__get_resource_type>`

Obtiene el nombre de la clase del recurso asociado con el camino dado. Si el cargador no puede manejarlo, debe devolver ``"``.

\ **Nota:** Los tipos de recursos personalizados definidos por los scripts no son conocidos por el :ref:`ClassDB<class_ClassDB>`, por lo que debería devolver ``"Resource"`` por ellos.

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatLoader_private_method__get_resource_uid:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_resource_uid**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__get_resource_uid>`

Debería devolver el ID único para el recurso asociado con la ruta dada. Si este método no se sobrescribe, se genera un archivo ``.uid`` junto con el archivo de recurso, conteniendo el ID único.

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatLoader_private_method__handles_type:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_handles_type**\ (\ type\: :ref:`StringName<class_StringName>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__handles_type>`

Dice qué clase de recursos puede cargar este cargador.

\ **Nota:** Los tipos de recursos personalizados definidos por los scripts no son conocidos por la :ref:`ClassDB<class_ClassDB>`, por lo que sólo puedes manejar ``"Resource"`` para ellos.

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatLoader_private_method__load:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_load**\ (\ path\: :ref:`String<class_String>`, original_path\: :ref:`String<class_String>`, use_sub_threads\: :ref:`bool<class_bool>`, cache_mode\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__load>`

Carga un recurso cuando el motor encuentra que este cargador es compatible. Si el recurso cargado es el resultado de una importación, ``original_path`` se dirigirá al archivo fuente. Devuelve un objeto :ref:`Resource<class_Resource>` en caso de éxito, o una constante :ref:`Error<enum_@GlobalScope_Error>` en caso de fracaso.

La propiedad ``cache_mode`` define si y cómo la caché debería ser usada o actualizada al cargar el recurso. Véase :ref:`CacheMode<enum_ResourceFormatLoader_CacheMode>` para más detalles.

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatLoader_private_method__recognize_path:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_recognize_path**\ (\ path\: :ref:`String<class_String>`, type\: :ref:`StringName<class_StringName>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__recognize_path>`

Indica si este cargador debe o no cargar un recurso desde su ruta de recurso para un tipo dado.

Si no se implementa, el comportamiento predeterminado devuelve si la extensión de la ruta está dentro de las proporcionadas por :ref:`_get_recognized_extensions()<class_ResourceFormatLoader_private_method__get_recognized_extensions>`, y si el tipo está dentro de los proporcionados por :ref:`_get_resource_type()<class_ResourceFormatLoader_private_method__get_resource_type>`.

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatLoader_private_method__rename_dependencies:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_rename_dependencies**\ (\ path\: :ref:`String<class_String>`, renames\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__rename_dependencies>`

Si se implementa, renombra las dependencias dentro del recurso dado y lo guarda. ``renames`` es un diccionario ``{ String => String }`` que mapea las antiguas rutas de dependencia a las nuevas rutas.

Devuelve :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` en caso de éxito, o una constante :ref:`Error<enum_@GlobalScope_Error>` en caso de fracaso.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
