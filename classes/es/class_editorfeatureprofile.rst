:github_url: hide

.. _class_EditorFeatureProfile:

EditorFeatureProfile
====================

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un perfil de características del editor que puede ser usado para deshabilitar características específicas.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Un perfil de características del editor puede ser usado para deshabilitar características específicas del editor de Godot. Cuando se deshabilita, las características no aparecen en el editor, lo que hace que el editor esté menos desordenado. Esto es útil en entornos educativos para reducir la confusión o cuando se trabaja en equipo. Por ejemplo, los artistas y los diseñadores de niveles podrían utilizar un perfil de características que deshabilite el editor de scripts para evitar hacer accidentalmente cambios en los archivos que no deben editar.

Para gestionar visualmente los perfiles de característica del editor, utiliza **Editor > Manage Feature Profiles...** en la parte superior de la ventana del editor.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`           | :ref:`get_feature_name<class_EditorFeatureProfile_method_get_feature_name>`\ (\ feature\: :ref:`Feature<enum_EditorFeatureProfile_Feature>`\ )                                                                                             |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_class_disabled<class_EditorFeatureProfile_method_is_class_disabled>`\ (\ class_name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                              |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_class_editor_disabled<class_EditorFeatureProfile_method_is_class_editor_disabled>`\ (\ class_name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_class_property_disabled<class_EditorFeatureProfile_method_is_class_property_disabled>`\ (\ class_name\: :ref:`StringName<class_StringName>`, property\: :ref:`StringName<class_StringName>`\ ) |const|                            |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_feature_disabled<class_EditorFeatureProfile_method_is_feature_disabled>`\ (\ feature\: :ref:`Feature<enum_EditorFeatureProfile_Feature>`\ ) |const|                                                                               |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`load_from_file<class_EditorFeatureProfile_method_load_from_file>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                                          |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`save_to_file<class_EditorFeatureProfile_method_save_to_file>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                                              |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_disable_class<class_EditorFeatureProfile_method_set_disable_class>`\ (\ class_name\: :ref:`StringName<class_StringName>`, disable\: :ref:`bool<class_bool>`\ )                                                                   |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_disable_class_editor<class_EditorFeatureProfile_method_set_disable_class_editor>`\ (\ class_name\: :ref:`StringName<class_StringName>`, disable\: :ref:`bool<class_bool>`\ )                                                     |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_disable_class_property<class_EditorFeatureProfile_method_set_disable_class_property>`\ (\ class_name\: :ref:`StringName<class_StringName>`, property\: :ref:`StringName<class_StringName>`, disable\: :ref:`bool<class_bool>`\ ) |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_disable_feature<class_EditorFeatureProfile_method_set_disable_feature>`\ (\ feature\: :ref:`Feature<enum_EditorFeatureProfile_Feature>`, disable\: :ref:`bool<class_bool>`\ )                                                    |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_EditorFeatureProfile_Feature:

.. rst-class:: classref-enumeration

enum **Feature**: :ref:`🔗<enum_EditorFeatureProfile_Feature>`

.. _class_EditorFeatureProfile_constant_FEATURE_3D:

.. rst-class:: classref-enumeration-constant

:ref:`Feature<enum_EditorFeatureProfile_Feature>` **FEATURE_3D** = ``0``

El editor 3D. Si esta característica está desactivada, el editor 3D no se mostrará, pero los nodos 3D seguirán mostrándose en el diálogo Crear nuevo nodo.

.. _class_EditorFeatureProfile_constant_FEATURE_SCRIPT:

.. rst-class:: classref-enumeration-constant

:ref:`Feature<enum_EditorFeatureProfile_Feature>` **FEATURE_SCRIPT** = ``1``

La pestaña Script, que contiene el editor de scripts y el navegador de referencia de clases. Si esta característica está desactivada, la pestaña Script no se mostrará.

.. _class_EditorFeatureProfile_constant_FEATURE_ASSET_LIB:

.. rst-class:: classref-enumeration-constant

:ref:`Feature<enum_EditorFeatureProfile_Feature>` **FEATURE_ASSET_LIB** = ``2``

The Asset Store tab. If this feature is disabled, the Asset Store tab won't display.

.. _class_EditorFeatureProfile_constant_FEATURE_SCENE_TREE:

.. rst-class:: classref-enumeration-constant

:ref:`Feature<enum_EditorFeatureProfile_Feature>` **FEATURE_SCENE_TREE** = ``3``

Edición del árbol de escenas. Si esta función está desactivada, el acoplamiento del árbol de escenas seguirá siendo visible pero será de sólo lectura.

.. _class_EditorFeatureProfile_constant_FEATURE_NODE_DOCK:

.. rst-class:: classref-enumeration-constant

:ref:`Feature<enum_EditorFeatureProfile_Feature>` **FEATURE_NODE_DOCK** = ``4``

**Obsoleto:** Replaced by the Signals and Groups docks.

El nodo dock. Si esta característica está desactivada, las señales y grupos no serán visibles y modificables desde el editor.

.. _class_EditorFeatureProfile_constant_FEATURE_FILESYSTEM_DOCK:

.. rst-class:: classref-enumeration-constant

:ref:`Feature<enum_EditorFeatureProfile_Feature>` **FEATURE_FILESYSTEM_DOCK** = ``5``

El dock del Sistema de Archivo. Si esta función está desactivada, el acoplamiento del Sistema de archivos no será visible.

.. _class_EditorFeatureProfile_constant_FEATURE_IMPORT_DOCK:

.. rst-class:: classref-enumeration-constant

:ref:`Feature<enum_EditorFeatureProfile_Feature>` **FEATURE_IMPORT_DOCK** = ``6``

El Import dock. Si esta función está desactivada, el muelle de importación no será visible.

.. _class_EditorFeatureProfile_constant_FEATURE_HISTORY_DOCK:

.. rst-class:: classref-enumeration-constant

:ref:`Feature<enum_EditorFeatureProfile_Feature>` **FEATURE_HISTORY_DOCK** = ``7``

The History dock. If this feature is disabled, the History dock won't be visible.

.. _class_EditorFeatureProfile_constant_FEATURE_GAME:

.. rst-class:: classref-enumeration-constant

:ref:`Feature<enum_EditorFeatureProfile_Feature>` **FEATURE_GAME** = ``8``

The Game tab, which allows embedding the game window and selecting nodes by clicking inside of it. If this feature is disabled, the Game tab won't display.

.. _class_EditorFeatureProfile_constant_FEATURE_SIGNALS_DOCK:

.. rst-class:: classref-enumeration-constant

:ref:`Feature<enum_EditorFeatureProfile_Feature>` **FEATURE_SIGNALS_DOCK** = ``9``

The Signals dock. If this feature is disabled, signals won't be visible and modifiable from the editor.

.. _class_EditorFeatureProfile_constant_FEATURE_GROUPS_DOCK:

.. rst-class:: classref-enumeration-constant

:ref:`Feature<enum_EditorFeatureProfile_Feature>` **FEATURE_GROUPS_DOCK** = ``10``

The Groups dock. If this feature is disabled, groups won't be visible and modifiable from the editor.

.. _class_EditorFeatureProfile_constant_FEATURE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Feature<enum_EditorFeatureProfile_Feature>` **FEATURE_MAX** = ``11``

Representa el tamaño del enum :ref:`Feature<enum_EditorFeatureProfile_Feature>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_EditorFeatureProfile_method_get_feature_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_feature_name**\ (\ feature\: :ref:`Feature<enum_EditorFeatureProfile_Feature>`\ ) :ref:`🔗<class_EditorFeatureProfile_method_get_feature_name>`

Devuelve el nombre legible para humanos de la ``feature`` especificada.

.. rst-class:: classref-item-separator

----

.. _class_EditorFeatureProfile_method_is_class_disabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_class_disabled**\ (\ class_name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_EditorFeatureProfile_method_is_class_disabled>`

Returns ``true`` if the class specified by ``class_name`` is disabled. When disabled, the class won't appear in the Create New Node dialog.

.. rst-class:: classref-item-separator

----

.. _class_EditorFeatureProfile_method_is_class_editor_disabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_class_editor_disabled**\ (\ class_name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_EditorFeatureProfile_method_is_class_editor_disabled>`

Returns ``true`` if editing for the class specified by ``class_name`` is disabled. When disabled, the class will still appear in the Create New Node dialog but the Inspector will be read-only when selecting a node that extends the class.

.. rst-class:: classref-item-separator

----

.. _class_EditorFeatureProfile_method_is_class_property_disabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_class_property_disabled**\ (\ class_name\: :ref:`StringName<class_StringName>`, property\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_EditorFeatureProfile_method_is_class_property_disabled>`

Returns ``true`` if ``property`` is disabled in the class specified by ``class_name``. When a property is disabled, it won't appear in the Inspector when selecting a node that extends the class specified by ``class_name``.

.. rst-class:: classref-item-separator

----

.. _class_EditorFeatureProfile_method_is_feature_disabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_feature_disabled**\ (\ feature\: :ref:`Feature<enum_EditorFeatureProfile_Feature>`\ ) |const| :ref:`🔗<class_EditorFeatureProfile_method_is_feature_disabled>`

Returns ``true`` if the ``feature`` is disabled. When a feature is disabled, it will disappear from the editor entirely.

.. rst-class:: classref-item-separator

----

.. _class_EditorFeatureProfile_method_load_from_file:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **load_from_file**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorFeatureProfile_method_load_from_file>`

Loads an editor feature profile from a file. The file must follow the JSON format obtained by using the feature profile manager's **Export** button or the :ref:`save_to_file()<class_EditorFeatureProfile_method_save_to_file>` method.

\ **Note:** Feature profiles created via the user interface are loaded from the ``feature_profiles`` directory, as a file with the ``.profile`` extension. The editor configuration folder can be found by using :ref:`EditorPaths.get_config_dir()<class_EditorPaths_method_get_config_dir>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorFeatureProfile_method_save_to_file:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **save_to_file**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorFeatureProfile_method_save_to_file>`

Saves the editor feature profile to a file in JSON format. It can then be imported using the feature profile manager's **Import** button or the :ref:`load_from_file()<class_EditorFeatureProfile_method_load_from_file>` method.

\ **Note:** Feature profiles created via the user interface are saved in the ``feature_profiles`` directory, as a file with the ``.profile`` extension. The editor configuration folder can be found by using :ref:`EditorPaths.get_config_dir()<class_EditorPaths_method_get_config_dir>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorFeatureProfile_method_set_disable_class:

.. rst-class:: classref-method

|void| **set_disable_class**\ (\ class_name\: :ref:`StringName<class_StringName>`, disable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorFeatureProfile_method_set_disable_class>`

If ``disable`` is ``true``, disables the class specified by ``class_name``. When disabled, the class won't appear in the Create New Node dialog.

.. rst-class:: classref-item-separator

----

.. _class_EditorFeatureProfile_method_set_disable_class_editor:

.. rst-class:: classref-method

|void| **set_disable_class_editor**\ (\ class_name\: :ref:`StringName<class_StringName>`, disable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorFeatureProfile_method_set_disable_class_editor>`

If ``disable`` is ``true``, disables editing for the class specified by ``class_name``. When disabled, the class will still appear in the Create New Node dialog but the Inspector will be read-only when selecting a node that extends the class.

.. rst-class:: classref-item-separator

----

.. _class_EditorFeatureProfile_method_set_disable_class_property:

.. rst-class:: classref-method

|void| **set_disable_class_property**\ (\ class_name\: :ref:`StringName<class_StringName>`, property\: :ref:`StringName<class_StringName>`, disable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorFeatureProfile_method_set_disable_class_property>`

If ``disable`` is ``true``, disables editing for ``property`` in the class specified by ``class_name``. When a property is disabled, it won't appear in the Inspector when selecting a node that extends the class specified by ``class_name``.

.. rst-class:: classref-item-separator

----

.. _class_EditorFeatureProfile_method_set_disable_feature:

.. rst-class:: classref-method

|void| **set_disable_feature**\ (\ feature\: :ref:`Feature<enum_EditorFeatureProfile_Feature>`, disable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorFeatureProfile_method_set_disable_feature>`

If ``disable`` is ``true``, disables the editor feature specified in ``feature``. When a feature is disabled, it will disappear from the editor entirely.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
