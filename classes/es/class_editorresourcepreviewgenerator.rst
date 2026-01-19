:github_url: hide

.. _class_EditorResourcePreviewGenerator:

EditorResourcePreviewGenerator
==============================

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Generador personalizado de vistas previas.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Código personalizado para generar vistas previas. Comprueba :ref:`EditorSettings.filesystem/file_dialog/thumbnail_size<class_EditorSettings_property_filesystem/file_dialog/thumbnail_size>` para encontrar un tamaño adecuado para generar las vistas previas.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`_can_generate_small_preview<class_EditorResourcePreviewGenerator_private_method__can_generate_small_preview>`\ (\ ) |virtual| |const|                                                                                                             |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`_generate<class_EditorResourcePreviewGenerator_private_method__generate>`\ (\ resource\: :ref:`Resource<class_Resource>`, size\: :ref:`Vector2i<class_Vector2i>`, metadata\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| |required| |const|  |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`_generate_from_path<class_EditorResourcePreviewGenerator_private_method__generate_from_path>`\ (\ path\: :ref:`String<class_String>`, size\: :ref:`Vector2i<class_Vector2i>`, metadata\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| |const| |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`_generate_small_preview_automatically<class_EditorResourcePreviewGenerator_private_method__generate_small_preview_automatically>`\ (\ ) |virtual| |const|                                                                                         |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`_handles<class_EditorResourcePreviewGenerator_private_method__handles>`\ (\ type\: :ref:`String<class_String>`\ ) |virtual| |required| |const|                                                                                                    |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`request_draw_and_wait<class_EditorResourcePreviewGenerator_method_request_draw_and_wait>`\ (\ viewport\: :ref:`RID<class_RID>`\ ) |const|                                                                                                         |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_EditorResourcePreviewGenerator_private_method__can_generate_small_preview:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_can_generate_small_preview**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorResourcePreviewGenerator_private_method__can_generate_small_preview>`

Si esta función devuelve ``true``, el generador llamará a :ref:`_generate()<class_EditorResourcePreviewGenerator_private_method__generate>` o :ref:`_generate_from_path()<class_EditorResourcePreviewGenerator_private_method__generate_from_path>` también para vistas previas pequeñas.

Por defecto, devuelve ``false``.

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePreviewGenerator_private_method__generate:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **_generate**\ (\ resource\: :ref:`Resource<class_Resource>`, size\: :ref:`Vector2i<class_Vector2i>`, metadata\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| |required| |const| :ref:`🔗<class_EditorResourcePreviewGenerator_private_method__generate>`

Generate a preview from a given resource with the specified size. This must always be implemented.

Returning ``null`` is an OK way to fail and let another generator take care.

Care must be taken because this function is always called from a thread (not the main thread).

\ ``metadata`` dictionary can be modified to store file-specific metadata that can be used in :ref:`EditorResourceTooltipPlugin._make_tooltip_for_path()<class_EditorResourceTooltipPlugin_private_method__make_tooltip_for_path>` (like image size, sample length etc.).

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePreviewGenerator_private_method__generate_from_path:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **_generate_from_path**\ (\ path\: :ref:`String<class_String>`, size\: :ref:`Vector2i<class_Vector2i>`, metadata\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| |const| :ref:`🔗<class_EditorResourcePreviewGenerator_private_method__generate_from_path>`

Generate a preview directly from a path with the specified size. Implementing this is optional, as default code will load and call :ref:`_generate()<class_EditorResourcePreviewGenerator_private_method__generate>`.

Returning ``null`` is an OK way to fail and let another generator take care.

Care must be taken because this function is always called from a thread (not the main thread).

\ ``metadata`` dictionary can be modified to store file-specific metadata that can be used in :ref:`EditorResourceTooltipPlugin._make_tooltip_for_path()<class_EditorResourceTooltipPlugin_private_method__make_tooltip_for_path>` (like image size, sample length etc.).

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePreviewGenerator_private_method__generate_small_preview_automatically:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_generate_small_preview_automatically**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorResourcePreviewGenerator_private_method__generate_small_preview_automatically>`

If this function returns ``true``, the generator will automatically generate the small previews from the normal preview texture generated by the methods :ref:`_generate()<class_EditorResourcePreviewGenerator_private_method__generate>` or :ref:`_generate_from_path()<class_EditorResourcePreviewGenerator_private_method__generate_from_path>`.

By default, it returns ``false``.

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePreviewGenerator_private_method__handles:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_handles**\ (\ type\: :ref:`String<class_String>`\ ) |virtual| |required| |const| :ref:`🔗<class_EditorResourcePreviewGenerator_private_method__handles>`

Returns ``true`` if your generator supports the resource of type ``type``.

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePreviewGenerator_method_request_draw_and_wait:

.. rst-class:: classref-method

|void| **request_draw_and_wait**\ (\ viewport\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_EditorResourcePreviewGenerator_method_request_draw_and_wait>`

Call from within :ref:`_generate()<class_EditorResourcePreviewGenerator_private_method__generate>` to request the rendering server draw to the ``viewport``.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
