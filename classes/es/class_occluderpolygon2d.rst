:github_url: hide

.. _class_OccluderPolygon2D:

OccluderPolygon2D
=================

**Hereda:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Define un polígono 2D para el LightOccluder2D.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Facilidad de edición que te ayuda a dibujar un polígono 2D usado como recurso para :ref:`LightOccluder2D<class_LightOccluder2D>`.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+--------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`closed<class_OccluderPolygon2D_property_closed>`       | ``true``                 |
   +-----------------------------------------------------+--------------------------------------------------------------+--------------------------+
   | :ref:`CullMode<enum_OccluderPolygon2D_CullMode>`    | :ref:`cull_mode<class_OccluderPolygon2D_property_cull_mode>` | ``0``                    |
   +-----------------------------------------------------+--------------------------------------------------------------+--------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`polygon<class_OccluderPolygon2D_property_polygon>`     | ``PackedVector2Array()`` |
   +-----------------------------------------------------+--------------------------------------------------------------+--------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_OccluderPolygon2D_CullMode:

.. rst-class:: classref-enumeration

enum **CullMode**: :ref:`🔗<enum_OccluderPolygon2D_CullMode>`

.. _class_OccluderPolygon2D_constant_CULL_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`CullMode<enum_OccluderPolygon2D_CullMode>` **CULL_DISABLED** = ``0``

La extracción está desactivada. Véase :ref:`cull_mode<class_OccluderPolygon2D_property_cull_mode>`.

.. _class_OccluderPolygon2D_constant_CULL_CLOCKWISE:

.. rst-class:: classref-enumeration-constant

:ref:`CullMode<enum_OccluderPolygon2D_CullMode>` **CULL_CLOCKWISE** = ``1``

La selección se realiza en el sentido de las agujas del reloj. Véase :ref:`cull_mode<class_OccluderPolygon2D_property_cull_mode>`.

.. _class_OccluderPolygon2D_constant_CULL_COUNTER_CLOCKWISE:

.. rst-class:: classref-enumeration-constant

:ref:`CullMode<enum_OccluderPolygon2D_CullMode>` **CULL_COUNTER_CLOCKWISE** = ``2``

La selección se realiza en sentido contrario a las agujas del reloj. Véase :ref:`cull_mode<class_OccluderPolygon2D_property_cull_mode>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_OccluderPolygon2D_property_closed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **closed** = ``true`` :ref:`🔗<class_OccluderPolygon2D_property_closed>`

.. rst-class:: classref-property-setget

- |void| **set_closed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_closed**\ (\ )

Si es ``true``, cierra el polígono. Un OccluderPolygon2D cerrado ocluye la luz que viene de cualquier dirección. Un OccluderPolygon2D abierto ocluye la luz sólo en la dirección de su contorno.

.. rst-class:: classref-item-separator

----

.. _class_OccluderPolygon2D_property_cull_mode:

.. rst-class:: classref-property

:ref:`CullMode<enum_OccluderPolygon2D_CullMode>` **cull_mode** = ``0`` :ref:`🔗<class_OccluderPolygon2D_property_cull_mode>`

.. rst-class:: classref-property-setget

- |void| **set_cull_mode**\ (\ value\: :ref:`CullMode<enum_OccluderPolygon2D_CullMode>`\ )
- :ref:`CullMode<enum_OccluderPolygon2D_CullMode>` **get_cull_mode**\ (\ )

El modo de selección a utilizar.

.. rst-class:: classref-item-separator

----

.. _class_OccluderPolygon2D_property_polygon:

.. rst-class:: classref-property

:ref:`PackedVector2Array<class_PackedVector2Array>` **polygon** = ``PackedVector2Array()`` :ref:`🔗<class_OccluderPolygon2D_property_polygon>`

.. rst-class:: classref-property-setget

- |void| **set_polygon**\ (\ value\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )
- :ref:`PackedVector2Array<class_PackedVector2Array>` **get_polygon**\ (\ )

A :ref:`Vector2<class_Vector2>` array with the index for polygon's vertices positions.



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector2Array<class_PackedVector2Array>` for more details.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
