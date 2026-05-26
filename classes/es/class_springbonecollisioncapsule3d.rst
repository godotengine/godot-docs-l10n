:github_url: hide

.. _class_SpringBoneCollisionCapsule3D:

SpringBoneCollisionCapsule3D
============================

**Hereda:** :ref:`SpringBoneCollision3D<class_SpringBoneCollision3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Una colisión con forma de cápsula que interactúa con :ref:`SpringBoneSimulator3D<class_SpringBoneSimulator3D>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Una colisión con forma de cápsula que interactúa con :ref:`SpringBoneSimulator3D<class_SpringBoneSimulator3D>`.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`height<class_SpringBoneCollisionCapsule3D_property_height>`         | ``0.5``   |
   +---------------------------+---------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`inside<class_SpringBoneCollisionCapsule3D_property_inside>`         | ``false`` |
   +---------------------------+---------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`mid_height<class_SpringBoneCollisionCapsule3D_property_mid_height>` |           |
   +---------------------------+---------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`radius<class_SpringBoneCollisionCapsule3D_property_radius>`         | ``0.1``   |
   +---------------------------+---------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_SpringBoneCollisionCapsule3D_property_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **height** = ``0.5`` :ref:`🔗<class_SpringBoneCollisionCapsule3D_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_height**\ (\ )

Altura total de la capsule, incluidas las semiesferas.

\ **Nota:** El :ref:`height<class_SpringBoneCollisionCapsule3D_property_height>` de una capsule debe ser al menos el doble de su :ref:`radius<class_SpringBoneCollisionCapsule3D_property_radius>`. De lo contrario, la capsule se convierte en una esfera. Si el :ref:`height<class_SpringBoneCollisionCapsule3D_property_height>` es menor que el doble del :ref:`radius<class_SpringBoneCollisionCapsule3D_property_radius>`, las propiedades se ajustan a un value válido.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneCollisionCapsule3D_property_inside:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **inside** = ``false`` :ref:`🔗<class_SpringBoneCollisionCapsule3D_property_inside>`

.. rst-class:: classref-property-setget

- |void| **set_inside**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_inside**\ (\ )

Si es ``true``, la colisión actúa para atrapar la articulación dentro de la colisión.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneCollisionCapsule3D_property_mid_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **mid_height** :ref:`🔗<class_SpringBoneCollisionCapsule3D_property_mid_height>`

.. rst-class:: classref-property-setget

- |void| **set_mid_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_mid_height**\ (\ )

La altura de la cápsula, excluyendo los hemisferios. Esta es la altura de la parte cilíndrica central en el medio de la cápsula, y es la distancia entre los centros de los dos hemisferios. Esto es un envoltorio para :ref:`height<class_SpringBoneCollisionCapsule3D_property_height>`.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneCollisionCapsule3D_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``0.1`` :ref:`🔗<class_SpringBoneCollisionCapsule3D_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

Radio de la capsule.

\ **Nota:** El :ref:`radius<class_SpringBoneCollisionCapsule3D_property_radius>` de una capsule no puede ser mayor que la mitad de su :ref:`height<class_SpringBoneCollisionCapsule3D_property_height>`. De lo contrario, la capsule se convierte en una esfera. Si el :ref:`radius<class_SpringBoneCollisionCapsule3D_property_radius>` es mayor que la mitad del :ref:`height<class_SpringBoneCollisionCapsule3D_property_height>`, las propiedades se ajustan a un value válido.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
