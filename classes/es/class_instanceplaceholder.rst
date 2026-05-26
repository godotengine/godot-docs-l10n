:github_url: hide

.. _class_InstancePlaceholder:

InstancePlaceholder
===================

**Hereda:** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Marcador de posición para la raíz :ref:`Node<class_Node>` de una :ref:`PackedScene<class_PackedScene>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Activar la opción **Carga como marcador de posición** para una escena instanciada en el editor hace que se sustituya por un **InstancePlaceholder** al ejecutar el juego. Esto no reemplazará el nodo en el editor. Esto hace posible retrasar la carga real de la escena hasta que se llame a :ref:`create_instance()<class_InstancePlaceholder_method_create_instance>`. Esto es útil para evitar cargar grandes escenas de una sola vez, cargando partes de ellas de forma selectiva.

\ **Nota:** Al igual que :ref:`Node<class_Node>`, **InstancePlaceholder** no tiene una transformación. Esto hace que cualquier nodo hijo se posicione de forma relativa al origen del :ref:`Viewport<class_Viewport>`, en lugar de su padre como se muestra en el editor. Reemplazar el marcador de posición por una escena con una transformación transformará a los hijos de forma relativa a su padre de nuevo.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Node<class_Node>`             | :ref:`create_instance<class_InstancePlaceholder_method_create_instance>`\ (\ replace\: :ref:`bool<class_bool>` = false, custom_scene\: :ref:`PackedScene<class_PackedScene>` = null\ ) |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`         | :ref:`get_instance_path<class_InstancePlaceholder_method_get_instance_path>`\ (\ ) |const|                                                                                             |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`get_stored_values<class_InstancePlaceholder_method_get_stored_values>`\ (\ with_order\: :ref:`bool<class_bool>` = false\ )                                                       |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_InstancePlaceholder_method_create_instance:

.. rst-class:: classref-method

:ref:`Node<class_Node>` **create_instance**\ (\ replace\: :ref:`bool<class_bool>` = false, custom_scene\: :ref:`PackedScene<class_PackedScene>` = null\ ) :ref:`🔗<class_InstancePlaceholder_method_create_instance>`

Llama a este método para cargar el nodo. El nodo creado será colocado como un hermano *por encima* del **InstancePlaceholder** en el árbol de la escena. La referencia del :ref:`Node<class_Node>` también se devuelve por conveniencia.

\ **Nota:** :ref:`create_instance()<class_InstancePlaceholder_method_create_instance>` no es seguro para hilos. Usa :ref:`Object.call_deferred()<class_Object_method_call_deferred>` si se llama desde un hilo.

.. rst-class:: classref-item-separator

----

.. _class_InstancePlaceholder_method_get_instance_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_instance_path**\ (\ ) |const| :ref:`🔗<class_InstancePlaceholder_method_get_instance_path>`

Obtiene la ruta del archivo de recursos :ref:`PackedScene<class_PackedScene>` que se carga por defecto al llamar a :ref:`create_instance()<class_InstancePlaceholder_method_create_instance>`. No es seguro para hilos. Usa :ref:`Object.call_deferred()<class_Object_method_call_deferred>` si se llama desde un hilo.

.. rst-class:: classref-item-separator

----

.. _class_InstancePlaceholder_method_get_stored_values:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_stored_values**\ (\ with_order\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_InstancePlaceholder_method_get_stored_values>`

Devuelve la lista de propiedades que se aplicarán al nodo cuando se llame a :ref:`create_instance()<class_InstancePlaceholder_method_create_instance>`.

Si ``with_order`` es ``true``, se añade al diccionario una clave llamada ``.order`` (nótese el punto inicial). Esta clave ``.order`` es un :ref:`Array<class_Array>` de :ref:`String<class_String>`\ s que contiene los nombres de las propiedades, especificando el orden en que se aplicarán (siendo el índice 0 el primero).

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
