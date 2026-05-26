:github_url: hide

.. _class_JavaObject:

JavaObject
==========

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Representa un objeto de la Java Native Interface.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Representa un objeto de la Interfaz Nativa de Java. Puede ser devuelto por métodos Java llamados en :ref:`JavaClass<class_JavaClass>` u otros **JavaObject**\ s. Véase :ref:`JavaClassWrapper<class_JavaClassWrapper>` para un ejemplo.

\ **Nota:** Esta clase solo funciona en Android. En cualquier otra plataforma, esta clase no hace nada.

\ **Nota:** Esta clase no debe confundirse con :ref:`JavaScriptObject<class_JavaScriptObject>`.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-----------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`JavaClass<class_JavaClass>` | :ref:`get_java_class<class_JavaObject_method_get_java_class>`\ (\ ) |const|                                                 |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`has_java_method<class_JavaObject_method_has_java_method>`\ (\ method\: :ref:`StringName<class_StringName>`\ ) |const| |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_JavaObject_method_get_java_class:

.. rst-class:: classref-method

:ref:`JavaClass<class_JavaClass>` **get_java_class**\ (\ ) |const| :ref:`🔗<class_JavaObject_method_get_java_class>`

Devuelve la :ref:`JavaClass<class_JavaClass>` de la que este objeto es una instancia.

.. rst-class:: classref-item-separator

----

.. _class_JavaObject_method_has_java_method:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_java_method**\ (\ method\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_JavaObject_method_has_java_method>`

Devuelve ``true`` si el nombre del ``method`` dado existe en los métodos Java del objeto.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
