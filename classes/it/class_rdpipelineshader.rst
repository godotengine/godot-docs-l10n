:github_url: hide

.. _class_RDPipelineShader:

RDPipelineShader
================

**Sperimentale:** This class may be changed or removed in future versions.

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Pipeline shader (used by :ref:`RenderingDevice<class_RenderingDevice>`).

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Wraps a shader resource and allows specialization constants to be applied at pipeline creation time.

Used by :ref:`RenderingDevice.raytracing_pipeline_create()<class_RenderingDevice_method_raytracing_pipeline_create>` for ray generation, miss, and hit shaders. The pipeline selects the required shader stage automatically.

.. rst-class:: classref-reftable-group

Proprietà
------------------

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

Descrizioni delle proprietà
------------------------------------------------------

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

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
