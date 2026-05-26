:github_url: hide

.. _class_GDExtensionManager:

GDExtensionManager
==================

**Hereda:** :ref:`Object<class_Object>`

Proporciona acceso a la funcionalidad de GDExtension.

.. rst-class:: classref-introduction-group

Descripción
----------------------

GDExtensionManager carga, inicializa y realiza un seguimiento de todas las bibliotecas :ref:`GDExtension<class_GDExtension>` disponibles en el proyecto.

\ **Nota:** No se preocupe por GDExtension a menos que sepa lo que está haciendo.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Descripción general de GDExtension <../engine_details/engine_api/gdextension/what_is_gdextension>`

- :doc:`Ejemplo de GDExtension en C++ <../tutorials/scripting/cpp/gdextension_cpp_example>`

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GDExtension<class_GDExtension>`                 | :ref:`get_extension<class_GDExtensionManager_method_get_extension>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                         |
   +-------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`     | :ref:`get_loaded_extensions<class_GDExtensionManager_method_get_loaded_extensions>`\ (\ ) |const|                                                                                                     |
   +-------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                               | :ref:`is_extension_loaded<class_GDExtensionManager_method_is_extension_loaded>`\ (\ path\: :ref:`String<class_String>`\ ) |const|                                                                     |
   +-------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`LoadStatus<enum_GDExtensionManager_LoadStatus>` | :ref:`load_extension<class_GDExtensionManager_method_load_extension>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                       |
   +-------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`LoadStatus<enum_GDExtensionManager_LoadStatus>` | :ref:`load_extension_from_function<class_GDExtensionManager_method_load_extension_from_function>`\ (\ path\: :ref:`String<class_String>`, init_func\: ``const GDExtensionInitializationFunction*``\ ) |
   +-------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`LoadStatus<enum_GDExtensionManager_LoadStatus>` | :ref:`reload_extension<class_GDExtensionManager_method_reload_extension>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                   |
   +-------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`LoadStatus<enum_GDExtensionManager_LoadStatus>` | :ref:`unload_extension<class_GDExtensionManager_method_unload_extension>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                   |
   +-------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Señales
--------------

.. _class_GDExtensionManager_signal_extension_loaded:

.. rst-class:: classref-signal

**extension_loaded**\ (\ extension\: :ref:`GDExtension<class_GDExtension>`\ ) :ref:`🔗<class_GDExtensionManager_signal_extension_loaded>`

Emitida después de que el editor ha terminado de cargar una nueva extensión.

\ **Nota:** Esta señal solo se emite en las compilaciones del editor.

.. rst-class:: classref-item-separator

----

.. _class_GDExtensionManager_signal_extension_unloading:

.. rst-class:: classref-signal

**extension_unloading**\ (\ extension\: :ref:`GDExtension<class_GDExtension>`\ ) :ref:`🔗<class_GDExtensionManager_signal_extension_unloading>`

Emitida antes de que el editor comience a descargar una extensión.

\ **Nota:** Esta señal solo se emite en las compilaciones del editor.

.. rst-class:: classref-item-separator

----

.. _class_GDExtensionManager_signal_extensions_reloaded:

.. rst-class:: classref-signal

**extensions_reloaded**\ (\ ) :ref:`🔗<class_GDExtensionManager_signal_extensions_reloaded>`

Emitida después de que el editor ha terminado de recargar una o más extensiones.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_GDExtensionManager_LoadStatus:

.. rst-class:: classref-enumeration

enum **LoadStatus**: :ref:`🔗<enum_GDExtensionManager_LoadStatus>`

.. _class_GDExtensionManager_constant_LOAD_STATUS_OK:

.. rst-class:: classref-enumeration-constant

:ref:`LoadStatus<enum_GDExtensionManager_LoadStatus>` **LOAD_STATUS_OK** = ``0``

La extensión se ha cargado correctamente.

.. _class_GDExtensionManager_constant_LOAD_STATUS_FAILED:

.. rst-class:: classref-enumeration-constant

:ref:`LoadStatus<enum_GDExtensionManager_LoadStatus>` **LOAD_STATUS_FAILED** = ``1``

La extensión no se pudo cargar, posiblemente porque no existe o le faltan dependencias.

.. _class_GDExtensionManager_constant_LOAD_STATUS_ALREADY_LOADED:

.. rst-class:: classref-enumeration-constant

:ref:`LoadStatus<enum_GDExtensionManager_LoadStatus>` **LOAD_STATUS_ALREADY_LOADED** = ``2``

La extensión ya ha sido cargada.

.. _class_GDExtensionManager_constant_LOAD_STATUS_NOT_LOADED:

.. rst-class:: classref-enumeration-constant

:ref:`LoadStatus<enum_GDExtensionManager_LoadStatus>` **LOAD_STATUS_NOT_LOADED** = ``3``

La extensión no se ha cargado.

.. _class_GDExtensionManager_constant_LOAD_STATUS_NEEDS_RESTART:

.. rst-class:: classref-enumeration-constant

:ref:`LoadStatus<enum_GDExtensionManager_LoadStatus>` **LOAD_STATUS_NEEDS_RESTART** = ``4``

La extensión requiere que la aplicación se reinicie para cargarse completamente.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_GDExtensionManager_method_get_extension:

.. rst-class:: classref-method

:ref:`GDExtension<class_GDExtension>` **get_extension**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_GDExtensionManager_method_get_extension>`

Devuelve la :ref:`GDExtension<class_GDExtension>` en la ``path`` del archivo dada, o ``null`` si no se ha cargado o no existe.

.. rst-class:: classref-item-separator

----

.. _class_GDExtensionManager_method_get_loaded_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_loaded_extensions**\ (\ ) |const| :ref:`🔗<class_GDExtensionManager_method_get_loaded_extensions>`

Devuelve las rutas de archivo de todas las extensiones cargadas actualmente.

.. rst-class:: classref-item-separator

----

.. _class_GDExtensionManager_method_is_extension_loaded:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_extension_loaded**\ (\ path\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_GDExtensionManager_method_is_extension_loaded>`

Devuelve ``true`` si la extensión en la ``path`` del archivo dada ya se ha cargado correctamente. Véase también :ref:`get_loaded_extensions()<class_GDExtensionManager_method_get_loaded_extensions>`.

.. rst-class:: classref-item-separator

----

.. _class_GDExtensionManager_method_load_extension:

.. rst-class:: classref-method

:ref:`LoadStatus<enum_GDExtensionManager_LoadStatus>` **load_extension**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_GDExtensionManager_method_load_extension>`

Carga una extensión por la ruta de archivo absoluta. La ``path`` debe apuntar a una :ref:`GDExtension<class_GDExtension>` válida. Devuelve :ref:`LOAD_STATUS_OK<class_GDExtensionManager_constant_LOAD_STATUS_OK>` si tiene éxito.

.. rst-class:: classref-item-separator

----

.. _class_GDExtensionManager_method_load_extension_from_function:

.. rst-class:: classref-method

:ref:`LoadStatus<enum_GDExtensionManager_LoadStatus>` **load_extension_from_function**\ (\ path\: :ref:`String<class_String>`, init_func\: ``const GDExtensionInitializationFunction*``\ ) :ref:`🔗<class_GDExtensionManager_method_load_extension_from_function>`

Loads the extension already in address space via the given path and initialization function. The ``path`` needs to be unique and start with ``"libgodot://"``. Returns :ref:`LOAD_STATUS_OK<class_GDExtensionManager_constant_LOAD_STATUS_OK>` if successful.

.. rst-class:: classref-item-separator

----

.. _class_GDExtensionManager_method_reload_extension:

.. rst-class:: classref-method

:ref:`LoadStatus<enum_GDExtensionManager_LoadStatus>` **reload_extension**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_GDExtensionManager_method_reload_extension>`

Recarga la extensión en la ruta de archivo dada. La ``path`` debe apuntar a una :ref:`GDExtension<class_GDExtension>` válida, de lo contrario, este método puede devolver :ref:`LOAD_STATUS_NOT_LOADED<class_GDExtensionManager_constant_LOAD_STATUS_NOT_LOADED>` o :ref:`LOAD_STATUS_FAILED<class_GDExtensionManager_constant_LOAD_STATUS_FAILED>`.

\ **Nota:** Solo puedes recargar extensiones en el editor. En las compilaciones de lanzamiento, este método siempre falla y devuelve :ref:`LOAD_STATUS_FAILED<class_GDExtensionManager_constant_LOAD_STATUS_FAILED>`.

.. rst-class:: classref-item-separator

----

.. _class_GDExtensionManager_method_unload_extension:

.. rst-class:: classref-method

:ref:`LoadStatus<enum_GDExtensionManager_LoadStatus>` **unload_extension**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_GDExtensionManager_method_unload_extension>`

Descarga una extensión por la ruta del archivo. La ``path`` debe apuntar a una :ref:`GDExtension<class_GDExtension>` ya cargada; de lo contrario, este método devuelve :ref:`LOAD_STATUS_NOT_LOADED<class_GDExtensionManager_constant_LOAD_STATUS_NOT_LOADED>`.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
