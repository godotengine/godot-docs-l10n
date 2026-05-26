:github_url: hide

.. _class_VisualShaderNodeInput:

VisualShaderNodeInput
=====================

**Hereda:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Representa el parámetro de shader de entrada dentro del gráfico de shader visual.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Da acceso a las variables de entrada (built-ins) disponibles para el shader. Véase la referencia del shader para ver la lista de built-ins disponibles para cada tipo de shader (consulta la sección ``Tutorials`` para el enlace).

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Índice de referencia de sombreado <../tutorials/shaders/shader_reference/index>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------+--------------------------------------------------------------------+--------------+
   | :ref:`String<class_String>` | :ref:`input_name<class_VisualShaderNodeInput_property_input_name>` | ``"[None]"`` |
   +-----------------------------+--------------------------------------------------------------------+--------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-----------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_input_real_name<class_VisualShaderNodeInput_method_get_input_real_name>`\ (\ ) |const| |
   +-----------------------------+--------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Señales
--------------

.. _class_VisualShaderNodeInput_signal_input_type_changed:

.. rst-class:: classref-signal

**input_type_changed**\ (\ ) :ref:`🔗<class_VisualShaderNodeInput_signal_input_type_changed>`

Emitida cuando se cambia la entrada a través de :ref:`input_name<class_VisualShaderNodeInput_property_input_name>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_VisualShaderNodeInput_property_input_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **input_name** = ``"[None]"`` :ref:`🔗<class_VisualShaderNodeInput_property_input_name>`

.. rst-class:: classref-property-setget

- |void| **set_input_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_input_name**\ (\ )

Una de las varias constantes de entrada en minúsculas como: "vertex" (``VERTEX``) o "point_size" (``POINT_SIZE``).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_VisualShaderNodeInput_method_get_input_real_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_input_real_name**\ (\ ) |const| :ref:`🔗<class_VisualShaderNodeInput_method_get_input_real_name>`

Devuelve un nombre traducido de la constante actual en el Lenguaje de Shaders de Godot. Por ejemplo, ``"ALBEDO"`` si :ref:`input_name<class_VisualShaderNodeInput_property_input_name>` es igual a ``"albedo"``.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
