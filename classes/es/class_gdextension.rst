:github_url: hide

.. _class_GDExtension:

GDExtension
===========

**Hereda:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una biblioteca nativa para GDExtension.

.. rst-class:: classref-introduction-group

Descripción
----------------------

El tipo de recurso **GDExtension** representa una `biblioteca compartida <https://en.wikipedia.org/wiki/Shared_library>`__ que puede ampliar la funcionalidad del motor. El singleton :ref:`GDExtensionManager<class_GDExtensionManager>` es responsable de cargar, recargar y descargar los recursos **GDExtension**.

\ **Nota:** GDExtension no es un lenguaje de scripting y no tiene relación con los recursos :ref:`GDScript<class_GDScript>`.

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

   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`InitializationLevel<enum_GDExtension_InitializationLevel>` | :ref:`get_minimum_library_initialization_level<class_GDExtension_method_get_minimum_library_initialization_level>`\ (\ ) |const| |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_library_open<class_GDExtension_method_is_library_open>`\ (\ ) |const|                                                   |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_GDExtension_InitializationLevel:

.. rst-class:: classref-enumeration

enum **InitializationLevel**: :ref:`🔗<enum_GDExtension_InitializationLevel>`

.. _class_GDExtension_constant_INITIALIZATION_LEVEL_CORE:

.. rst-class:: classref-enumeration-constant

:ref:`InitializationLevel<enum_GDExtension_InitializationLevel>` **INITIALIZATION_LEVEL_CORE** = ``0``

La biblioteca se inicializa al mismo tiempo que las características principales del motor.

.. _class_GDExtension_constant_INITIALIZATION_LEVEL_SERVERS:

.. rst-class:: classref-enumeration-constant

:ref:`InitializationLevel<enum_GDExtension_InitializationLevel>` **INITIALIZATION_LEVEL_SERVERS** = ``1``

La biblioteca se inicializa al mismo tiempo que los servidores del motor (como :ref:`RenderingServer<class_RenderingServer>` o :ref:`PhysicsServer3D<class_PhysicsServer3D>`).

.. _class_GDExtension_constant_INITIALIZATION_LEVEL_SCENE:

.. rst-class:: classref-enumeration-constant

:ref:`InitializationLevel<enum_GDExtension_InitializationLevel>` **INITIALIZATION_LEVEL_SCENE** = ``2``

La biblioteca se inicializa al mismo tiempo que las clases relacionadas con la escena del motor.

.. _class_GDExtension_constant_INITIALIZATION_LEVEL_EDITOR:

.. rst-class:: classref-enumeration-constant

:ref:`InitializationLevel<enum_GDExtension_InitializationLevel>` **INITIALIZATION_LEVEL_EDITOR** = ``3``

La biblioteca se inicializa al mismo tiempo que las clases del editor del motor. Solo ocurre al cargar la GDExtension en el editor.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_GDExtension_method_get_minimum_library_initialization_level:

.. rst-class:: classref-method

:ref:`InitializationLevel<enum_GDExtension_InitializationLevel>` **get_minimum_library_initialization_level**\ (\ ) |const| :ref:`🔗<class_GDExtension_method_get_minimum_library_initialization_level>`

Devuelve el nivel más bajo requerido para que esta extensión se inicialice correctamente (consulta la enumeración :ref:`InitializationLevel<enum_GDExtension_InitializationLevel>`).

.. rst-class:: classref-item-separator

----

.. _class_GDExtension_method_is_library_open:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_library_open**\ (\ ) |const| :ref:`🔗<class_GDExtension_method_is_library_open>`

Devuelve ``true`` si la biblioteca de esta extensión se ha abierto.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
