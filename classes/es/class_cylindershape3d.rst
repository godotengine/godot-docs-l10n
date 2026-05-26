:github_url: hide

.. _class_CylinderShape3D:

CylinderShape3D
===============

**Hereda:** :ref:`Shape3D<class_Shape3D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una forma de cilindro 3D utilizada para colisiones físicas.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Una forma de cilindro 3D, destinada a su uso en físicas. Normalmente se usa para proporcionar una forma a un :ref:`CollisionShape3D<class_CollisionShape3D>`.

\ **Nota:** Existen varios errores conocidos con las formas de colisión de cilindro. Se recomienda usar :ref:`CapsuleShape3D<class_CapsuleShape3D>` o :ref:`BoxShape3D<class_BoxShape3D>` en su lugar.

\ **Rendimiento:** **CylinderShape3D** es rápido para comprobar colisiones, pero es más lento que :ref:`CapsuleShape3D<class_CapsuleShape3D>`, :ref:`BoxShape3D<class_BoxShape3D>` y :ref:`SphereShape3D<class_SphereShape3D>`.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- `Demo de Shooter en Tercera Persona (TPS) <https://godotengine.org/asset-library/asset/2710>`__

- `Demo de Pruebas de Física en 3D <https://godotengine.org/asset-library/asset/2747>`__

- `Demo de Vóxeles en 3D <https://godotengine.org/asset-library/asset/2755>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------+------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`height<class_CylinderShape3D_property_height>` | ``2.0`` |
   +---------------------------+------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`radius<class_CylinderShape3D_property_radius>` | ``0.5`` |
   +---------------------------+------------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_CylinderShape3D_property_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **height** = ``2.0`` :ref:`🔗<class_CylinderShape3D_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_height**\ (\ )

La altura del cilindro.

.. rst-class:: classref-item-separator

----

.. _class_CylinderShape3D_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``0.5`` :ref:`🔗<class_CylinderShape3D_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

El radio del cilindro.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
