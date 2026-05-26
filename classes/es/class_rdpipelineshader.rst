:github_url: hide

.. _class_RDPipelineShader:

RDPipelineShader
================

**Experimental:** This class may be changed or removed in future versions.

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Pipeline shader (used by :ref:`RenderingDevice<class_RenderingDevice>`).

.. rst-class:: classref-introduction-group

Descripción
----------------------

Wraps a shader resource and allows specialization constants to be applied at pipeline creation time.

Used by :ref:`RenderingDevice.raytracing_pipeline_create()<class_RenderingDevice_method_raytracing_pipeline_create>` for ray generation, miss, and hit shaders. The pipeline selects the required shader stage automatically.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +--------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------+-----------+
   | :ref:`RID<class_RID>`                                                                                        | :ref:`shader<class_RDPipelineShader_property_shader>`                                     | ``RID()`` |
   +--------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------+-----------+
   | :ref:`Array<class_Array>`\[:ref:`RDPipelineSpecializationConstant<class_RDPipelineSpecializationConstant>`\] | :ref:`specialization_constants<class_RDPipelineShader_property_specialization_constants>` | ``[]``    |
   +--------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_RDPipelineShader_property_shader:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **shader** = ``RID()`` :ref:`🔗<class_RDPipelineShader_property_shader>`

.. rst-class:: classref-property-setget

- |void| **set_shader**\ (\ value\: :ref:`RID<class_RID>`\ )
- :ref:`RID<class_RID>` **get_shader**\ (\ )

Shader resource. The required stage is selected by the pipeline.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineShader_property_specialization_constants:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`RDPipelineSpecializationConstant<class_RDPipelineSpecializationConstant>`\] **specialization_constants** = ``[]`` :ref:`🔗<class_RDPipelineShader_property_specialization_constants>`

.. rst-class:: classref-property-setget

- |void| **set_specialization_constants**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`RDPipelineSpecializationConstant<class_RDPipelineSpecializationConstant>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`RDPipelineSpecializationConstant<class_RDPipelineSpecializationConstant>`\] **get_specialization_constants**\ (\ )

Specialization constants applied to the selected shader stage at pipeline creation time.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
