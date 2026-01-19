:github_url: hide

.. _class_EditorResourcePreview:

EditorResourcePreview
=====================

**Hereda:** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un nodo utilizado para generar vistas previas de recursos o archivos.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Este nodo se utiliza para generar vistas previas de recursos o archivos.

\ **Nota:** Esta clase no debe ser instanciada directamente. En su lugar, accede al singleton usando :ref:`EditorInterface.get_resource_previewer()<class_EditorInterface_method_get_resource_previewer>`.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`add_preview_generator<class_EditorResourcePreview_method_add_preview_generator>`\ (\ generator\: :ref:`EditorResourcePreviewGenerator<class_EditorResourcePreviewGenerator>`\ )                                                                                                           |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`check_for_invalidation<class_EditorResourcePreview_method_check_for_invalidation>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                                                                              |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`queue_edited_resource_preview<class_EditorResourcePreview_method_queue_edited_resource_preview>`\ (\ resource\: :ref:`Resource<class_Resource>`, receiver\: :ref:`Object<class_Object>`, receiver_func\: :ref:`StringName<class_StringName>`, userdata\: :ref:`Variant<class_Variant>`\ ) |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`queue_resource_preview<class_EditorResourcePreview_method_queue_resource_preview>`\ (\ path\: :ref:`String<class_String>`, receiver\: :ref:`Object<class_Object>`, receiver_func\: :ref:`StringName<class_StringName>`, userdata\: :ref:`Variant<class_Variant>`\ )                       |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`remove_preview_generator<class_EditorResourcePreview_method_remove_preview_generator>`\ (\ generator\: :ref:`EditorResourcePreviewGenerator<class_EditorResourcePreviewGenerator>`\ )                                                                                                     |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Señales
--------------

.. _class_EditorResourcePreview_signal_preview_invalidated:

.. rst-class:: classref-signal

**preview_invalidated**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorResourcePreview_signal_preview_invalidated>`

Se emite si una vista previa se ha invalidado (cambiado). ``path`` corresponde a la ruta de la vista previa.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_EditorResourcePreview_method_add_preview_generator:

.. rst-class:: classref-method

|void| **add_preview_generator**\ (\ generator\: :ref:`EditorResourcePreviewGenerator<class_EditorResourcePreviewGenerator>`\ ) :ref:`🔗<class_EditorResourcePreview_method_add_preview_generator>`

Crear un generador de previsualización propio y personalizado.

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePreview_method_check_for_invalidation:

.. rst-class:: classref-method

|void| **check_for_invalidation**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorResourcePreview_method_check_for_invalidation>`

Comprueba si el recurso ha cambiado, si es así, se invalidará y se emitirá la señal correspondiente.

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePreview_method_queue_edited_resource_preview:

.. rst-class:: classref-method

|void| **queue_edited_resource_preview**\ (\ resource\: :ref:`Resource<class_Resource>`, receiver\: :ref:`Object<class_Object>`, receiver_func\: :ref:`StringName<class_StringName>`, userdata\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_EditorResourcePreview_method_queue_edited_resource_preview>`

Encola el ``resource`` que se está editando para su vista previa. Una vez que la vista previa esté lista, se llamará a ``receiver_func`` de ``receiver``. ``receiver_func`` debe tomar los siguientes cuatro argumentos: :ref:`String<class_String>` path, :ref:`Texture2D<class_Texture2D>` preview, :ref:`Texture2D<class_Texture2D>` thumbnail_preview, :ref:`Variant<class_Variant>` userdata. ``userdata`` puede ser cualquier cosa, y será devuelto cuando se llame a ``receiver_func``.

\ **Nota:** Si no fue posible crear la vista previa, se seguirá llamando a ``receiver_func``, pero la vista previa será ``null``.

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePreview_method_queue_resource_preview:

.. rst-class:: classref-method

|void| **queue_resource_preview**\ (\ path\: :ref:`String<class_String>`, receiver\: :ref:`Object<class_Object>`, receiver_func\: :ref:`StringName<class_StringName>`, userdata\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_EditorResourcePreview_method_queue_resource_preview>`

Encola un archivo de recurso ubicado en ``path`` para su vista previa. Una vez que la vista previa esté lista, se llamará a ``receiver_func`` de ``receiver``. ``receiver_func`` debe tomar los siguientes cuatro argumentos: :ref:`String<class_String>` path, :ref:`Texture2D<class_Texture2D>` preview, :ref:`Texture2D<class_Texture2D>` thumbnail_preview, :ref:`Variant<class_Variant>` userdata. ``userdata`` puede ser cualquier cosa, y será devuelto cuando se llame a ``receiver_func``.

\ **Nota:** Si no fue posible crear la vista previa, se seguirá llamando a ``receiver_func``, pero la vista previa será ``null``.

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePreview_method_remove_preview_generator:

.. rst-class:: classref-method

|void| **remove_preview_generator**\ (\ generator\: :ref:`EditorResourcePreviewGenerator<class_EditorResourcePreviewGenerator>`\ ) :ref:`🔗<class_EditorResourcePreview_method_remove_preview_generator>`

Elimina un generador de previsualización personalizado.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
