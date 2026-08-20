:github_url: hide

.. _class_NavigationServer2DManager:

NavigationServer2DManager
=========================

**Hereda:** :ref:`Object<class_Object>`

Un singleton para administrar implementaciones de :ref:`NavigationServer2D<class_NavigationServer2D>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

**NavigationServer2DManager** is the API for registering :ref:`NavigationServer2D<class_NavigationServer2D>` implementations and setting the default implementation.

\ **Note:** It is not possible to switch servers at runtime. This class is only used on startup at the server initialization level.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`register_server<class_NavigationServer2DManager_method_register_server>`\ (\ name\: :ref:`String<class_String>`, create_callback\: :ref:`Callable<class_Callable>`\ ) |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`set_default_server<class_NavigationServer2DManager_method_set_default_server>`\ (\ name\: :ref:`String<class_String>`, priority\: :ref:`int<class_int>`\ )            |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_NavigationServer2DManager_method_register_server:

.. rst-class:: classref-method

|void| **register_server**\ (\ name\: :ref:`String<class_String>`, create_callback\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_NavigationServer2DManager_method_register_server>`

Registers a :ref:`NavigationServer2D<class_NavigationServer2D>` implementation by passing a ``name`` and a :ref:`Callable<class_Callable>` that returns a :ref:`NavigationServer2D<class_NavigationServer2D>` object.

.. rst-class:: classref-item-separator

----

.. _class_NavigationServer2DManager_method_set_default_server:

.. rst-class:: classref-method

|void| **set_default_server**\ (\ name\: :ref:`String<class_String>`, priority\: :ref:`int<class_int>`\ ) :ref:`🔗<class_NavigationServer2DManager_method_set_default_server>`

Sets the default :ref:`NavigationServer2D<class_NavigationServer2D>` implementation to the one identified by ``name``, if ``priority`` is greater than the priority of the current default implementation.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
