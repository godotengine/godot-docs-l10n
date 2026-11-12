:github_url: hide

.. _class_VisualShaderNodeUVFunc:

VisualShaderNodeUVFunc
======================

**Hereda:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Contiene funciones para modificar las coordenadas de textura (\ ``uv``) que se utilizarán dentro del gráfico de shader visual.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Las funciones UV son similares a las funciones :ref:`Vector2<class_Vector2>`, pero el puerto de entrada de este nodo usa el valor UV del shader por defecto.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------------------------------------+-----------------------------------------------------------------+-------+
   | :ref:`Function<enum_VisualShaderNodeUVFunc_Function>` | :ref:`function<class_VisualShaderNodeUVFunc_property_function>` | ``0`` |
   +-------------------------------------------------------+-----------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_VisualShaderNodeUVFunc_Function:

.. rst-class:: classref-enumeration

enum **Function**: :ref:`🔗<enum_VisualShaderNodeUVFunc_Function>`

.. _class_VisualShaderNodeUVFunc_constant_FUNC_PANNING:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeUVFunc_Function>` **FUNC_PANNING** = ``0``

Traslada ``uv`` usando los valores ``scale`` y ``offset`` usando la siguiente fórmula: ``uv = uv + offset * scale``. El puerto ``uv`` está conectado a ``UV`` incorporado por defecto.

.. _class_VisualShaderNodeUVFunc_constant_FUNC_SCALING:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeUVFunc_Function>` **FUNC_SCALING** = ``1``

Escala ``uv`` usando los valores ``scale`` y ``pivot`` usando la siguiente fórmula: ``uv = (uv - pivot) * scale + pivot``. El puerto ``uv`` está conectado a ``UV`` incorporado por defecto.

.. _class_VisualShaderNodeUVFunc_constant_FUNC_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeUVFunc_Function>` **FUNC_MAX** = ``2``

Representa el tamaño del enum :ref:`Function<enum_VisualShaderNodeUVFunc_Function>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_VisualShaderNodeUVFunc_property_function:

.. rst-class:: classref-property

:ref:`Function<enum_VisualShaderNodeUVFunc_Function>` **function** = ``0`` :ref:`🔗<class_VisualShaderNodeUVFunc_property_function>`

.. rst-class:: classref-property-setget

- |void| **set_function**\ (\ value\: :ref:`Function<enum_VisualShaderNodeUVFunc_Function>`\ )
- :ref:`Function<enum_VisualShaderNodeUVFunc_Function>` **get_function**\ (\ )

Una función que se aplicará a las coordenadas de textura.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
