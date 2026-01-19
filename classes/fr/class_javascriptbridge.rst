:github_url: hide

.. _class_JavaScriptBridge:

JavaScriptBridge
================

**Hérite de :** :ref:`Object<class_Object>`

Singleton that connects the engine with the browser's JavaScript context in Web export.

.. rst-class:: classref-introduction-group

Description
-----------

The JavaScriptBridge singleton is implemented only in the Web export. It's used to access the browser's JavaScript context. This allows interaction with embedding pages or calling third-party JavaScript APIs.

\ **Note:** This singleton can be disabled at build-time to improve security. By default, the JavaScriptBridge singleton is enabled. Official export templates also have the JavaScriptBridge singleton enabled. See :doc:`Compiling for the Web <../engine_details/development/compiling/compiling_for_web>` in the documentation for more information.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Le singleton JavaScriptBridge <../tutorials/platform/web/javascript_bridge>`

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`JavaScriptObject<class_JavaScriptObject>` | :ref:`create_callback<class_JavaScriptBridge_method_create_callback>`\ (\ callable\: :ref:`Callable<class_Callable>`\ )                                                                                                                  |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                   | :ref:`create_object<class_JavaScriptBridge_method_create_object>`\ (\ object\: :ref:`String<class_String>`, ...\ ) |vararg|                                                                                                              |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`download_buffer<class_JavaScriptBridge_method_download_buffer>`\ (\ buffer\: :ref:`PackedByteArray<class_PackedByteArray>`, name\: :ref:`String<class_String>`, mime\: :ref:`String<class_String>` = "application/octet-stream"\ ) |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                   | :ref:`eval<class_JavaScriptBridge_method_eval>`\ (\ code\: :ref:`String<class_String>`, use_global_execution_context\: :ref:`bool<class_bool>` = false\ )                                                                                |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`force_fs_sync<class_JavaScriptBridge_method_force_fs_sync>`\ (\ )                                                                                                                                                                  |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`JavaScriptObject<class_JavaScriptObject>` | :ref:`get_interface<class_JavaScriptBridge_method_get_interface>`\ (\ interface\: :ref:`String<class_String>`\ )                                                                                                                         |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`is_js_buffer<class_JavaScriptBridge_method_is_js_buffer>`\ (\ javascript_object\: :ref:`JavaScriptObject<class_JavaScriptObject>`\ )                                                                                               |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`   | :ref:`js_buffer_to_packed_byte_array<class_JavaScriptBridge_method_js_buffer_to_packed_byte_array>`\ (\ javascript_buffer\: :ref:`JavaScriptObject<class_JavaScriptObject>`\ )                                                           |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`pwa_needs_update<class_JavaScriptBridge_method_pwa_needs_update>`\ (\ ) |const|                                                                                                                                                    |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`           | :ref:`pwa_update<class_JavaScriptBridge_method_pwa_update>`\ (\ )                                                                                                                                                                        |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_JavaScriptBridge_signal_pwa_update_available:

.. rst-class:: classref-signal

**pwa_update_available**\ (\ ) :ref:`🔗<class_JavaScriptBridge_signal_pwa_update_available>`

Emitted when an update for this progressive web app has been detected but is waiting to be activated because a previous version is active. See :ref:`pwa_update()<class_JavaScriptBridge_method_pwa_update>` to force the update to take place immediately.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_JavaScriptBridge_method_create_callback:

.. rst-class:: classref-method

:ref:`JavaScriptObject<class_JavaScriptObject>` **create_callback**\ (\ callable\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_JavaScriptBridge_method_create_callback>`

Creates a reference to a :ref:`Callable<class_Callable>` that can be used as a callback by JavaScript. The reference must be kept until the callback happens, or it won't be called at all. See :ref:`JavaScriptObject<class_JavaScriptObject>` for usage.

\ **Note:** The callback function must take exactly one :ref:`Array<class_Array>` argument, which is going to be the JavaScript `arguments object <https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/arguments>`__ converted to an array.

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_create_object:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **create_object**\ (\ object\: :ref:`String<class_String>`, ...\ ) |vararg| :ref:`🔗<class_JavaScriptBridge_method_create_object>`

Creates a new JavaScript object using the ``new`` constructor. The ``object`` must a valid property of the JavaScript ``window``. See :ref:`JavaScriptObject<class_JavaScriptObject>` for usage.

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_download_buffer:

.. rst-class:: classref-method

|void| **download_buffer**\ (\ buffer\: :ref:`PackedByteArray<class_PackedByteArray>`, name\: :ref:`String<class_String>`, mime\: :ref:`String<class_String>` = "application/octet-stream"\ ) :ref:`🔗<class_JavaScriptBridge_method_download_buffer>`

Prompts the user to download a file containing the specified ``buffer``. The file will have the given ``name`` and ``mime`` type.

\ **Note:** The browser may override the `MIME type <https://en.wikipedia.org/wiki/Media_type>`__ provided based on the file ``name``'s extension.

\ **Note:** Browsers might block the download if :ref:`download_buffer()<class_JavaScriptBridge_method_download_buffer>` is not being called from a user interaction (e.g. button click).

\ **Note:** Browsers might ask the user for permission or block the download if multiple download requests are made in a quick succession.

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_eval:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **eval**\ (\ code\: :ref:`String<class_String>`, use_global_execution_context\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_JavaScriptBridge_method_eval>`

Execute the string ``code`` as JavaScript code within the browser window. This is a call to the actual global JavaScript function ``eval()``.

If ``use_global_execution_context`` is ``true``, the code will be evaluated in the global execution context. Otherwise, it is evaluated in the execution context of a function within the engine's runtime environment.

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_force_fs_sync:

.. rst-class:: classref-method

|void| **force_fs_sync**\ (\ ) :ref:`🔗<class_JavaScriptBridge_method_force_fs_sync>`

Force synchronization of the persistent file system (when enabled).

\ **Note:** This is only useful for modules or extensions that can't use :ref:`FileAccess<class_FileAccess>` to write files.

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_get_interface:

.. rst-class:: classref-method

:ref:`JavaScriptObject<class_JavaScriptObject>` **get_interface**\ (\ interface\: :ref:`String<class_String>`\ ) :ref:`🔗<class_JavaScriptBridge_method_get_interface>`

Returns an interface to a JavaScript object that can be used by scripts. The ``interface`` must be a valid property of the JavaScript ``window``. The callback must accept a single :ref:`Array<class_Array>` argument, which will contain the JavaScript ``arguments``. See :ref:`JavaScriptObject<class_JavaScriptObject>` for usage.

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_is_js_buffer:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_js_buffer**\ (\ javascript_object\: :ref:`JavaScriptObject<class_JavaScriptObject>`\ ) :ref:`🔗<class_JavaScriptBridge_method_is_js_buffer>`

Returns ``true`` if the given ``javascript_object`` is of type `[code]ArrayBuffer[/code] <https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/ArrayBuffer>`__, `[code]DataView[/code] <https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/DataView>`__, or one of the many `typed array objects <https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/TypedArray>`__.

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_js_buffer_to_packed_byte_array:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **js_buffer_to_packed_byte_array**\ (\ javascript_buffer\: :ref:`JavaScriptObject<class_JavaScriptObject>`\ ) :ref:`🔗<class_JavaScriptBridge_method_js_buffer_to_packed_byte_array>`

Returns a copy of ``javascript_buffer``'s contents as a :ref:`PackedByteArray<class_PackedByteArray>`. See also :ref:`is_js_buffer()<class_JavaScriptBridge_method_is_js_buffer>`.

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_pwa_needs_update:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **pwa_needs_update**\ (\ ) |const| :ref:`🔗<class_JavaScriptBridge_method_pwa_needs_update>`

Returns ``true`` if a new version of the progressive web app is waiting to be activated.

\ **Note:** Only relevant when exported as a Progressive Web App.

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_pwa_update:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **pwa_update**\ (\ ) :ref:`🔗<class_JavaScriptBridge_method_pwa_update>`

Performs the live update of the progressive web app. Forcing the new version to be installed and the page to be reloaded.

\ **Note:** Your application will be **reloaded in all browser tabs**.

\ **Note:** Only relevant when exported as a Progressive Web App and :ref:`pwa_needs_update()<class_JavaScriptBridge_method_pwa_needs_update>` returns ``true``.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
