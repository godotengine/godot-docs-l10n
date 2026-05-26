:github_url: hide

.. _class_RDFramebufferPass:

RDFramebufferPass
=================

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Framebuffer pass attachment description (used by :ref:`RenderingDevice<class_RenderingDevice>`).

.. rst-class:: classref-introduction-group

Descripción
----------------------

This class contains the list of attachment descriptions for a framebuffer pass. Each points with an index to a previously supplied list of texture attachments.

Multipass framebuffers can optimize some configurations in mobile. On desktop, they provide little to no advantage.

This object is used by :ref:`RenderingDevice<class_RenderingDevice>`.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------------------------------+------------------------------------------------------------------------------------+------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`color_attachments<class_RDFramebufferPass_property_color_attachments>`       | ``PackedInt32Array()`` |
   +-------------------------------------------------+------------------------------------------------------------------------------------+------------------------+
   | :ref:`int<class_int>`                           | :ref:`depth_attachment<class_RDFramebufferPass_property_depth_attachment>`         | ``-1``                 |
   +-------------------------------------------------+------------------------------------------------------------------------------------+------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`input_attachments<class_RDFramebufferPass_property_input_attachments>`       | ``PackedInt32Array()`` |
   +-------------------------------------------------+------------------------------------------------------------------------------------+------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`preserve_attachments<class_RDFramebufferPass_property_preserve_attachments>` | ``PackedInt32Array()`` |
   +-------------------------------------------------+------------------------------------------------------------------------------------+------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`resolve_attachments<class_RDFramebufferPass_property_resolve_attachments>`   | ``PackedInt32Array()`` |
   +-------------------------------------------------+------------------------------------------------------------------------------------+------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Constantes
--------------------

.. _class_RDFramebufferPass_constant_ATTACHMENT_UNUSED:

.. rst-class:: classref-constant

**ATTACHMENT_UNUSED** = ``-1`` :ref:`🔗<class_RDFramebufferPass_constant_ATTACHMENT_UNUSED>`

El adjunto no se utiliza.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_RDFramebufferPass_property_color_attachments:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **color_attachments** = ``PackedInt32Array()`` :ref:`🔗<class_RDFramebufferPass_property_color_attachments>`

.. rst-class:: classref-property-setget

- |void| **set_color_attachments**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_color_attachments**\ (\ )

Adjuntos de color en orden a partir de 0. Si este adjunto no es utilizado por el shader, pasa ATTACHMENT_UNUSED para omitir.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt32Array<class_PackedInt32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_RDFramebufferPass_property_depth_attachment:

.. rst-class:: classref-property

:ref:`int<class_int>` **depth_attachment** = ``-1`` :ref:`🔗<class_RDFramebufferPass_property_depth_attachment>`

.. rst-class:: classref-property-setget

- |void| **set_depth_attachment**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_depth_attachment**\ (\ )

Adjunto de profundidad. ATTACHMENT_UNUSED debe ser usado si no se requiere ningún búfer de profundidad para este pase.

.. rst-class:: classref-item-separator

----

.. _class_RDFramebufferPass_property_input_attachments:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **input_attachments** = ``PackedInt32Array()`` :ref:`🔗<class_RDFramebufferPass_property_input_attachments>`

.. rst-class:: classref-property-setget

- |void| **set_input_attachments**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_input_attachments**\ (\ )

Utilizado para búferes de fotogramas multipase (más de un pase de renderizado). Convierte un adjunto en una entrada. Asegúrate de suministrarlo también correctamente en el :ref:`RDUniform<class_RDUniform>` para el conjunto de variables uniformes.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt32Array<class_PackedInt32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_RDFramebufferPass_property_preserve_attachments:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **preserve_attachments** = ``PackedInt32Array()`` :ref:`🔗<class_RDFramebufferPass_property_preserve_attachments>`

.. rst-class:: classref-property-setget

- |void| **set_preserve_attachments**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_preserve_attachments**\ (\ )

Adjuntos a preservar en este pase (de lo contrario, se borran).

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt32Array<class_PackedInt32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_RDFramebufferPass_property_resolve_attachments:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **resolve_attachments** = ``PackedInt32Array()`` :ref:`🔗<class_RDFramebufferPass_property_resolve_attachments>`

.. rst-class:: classref-property-setget

- |void| **set_resolve_attachments**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_resolve_attachments**\ (\ )

If the color attachments are multisampled, non-multisampled resolve attachments can be provided.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt32Array<class_PackedInt32Array>` for more details.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
