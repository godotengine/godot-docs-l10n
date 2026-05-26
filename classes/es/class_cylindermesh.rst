:github_url: hide

.. _class_CylinderMesh:

CylinderMesh
============

**Hereda:** :ref:`PrimitiveMesh<class_PrimitiveMesh>` **<** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Clase que representa un cilindro :ref:`PrimitiveMesh<class_PrimitiveMesh>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Clase que representa un :ref:`PrimitiveMesh<class_PrimitiveMesh>` cilíndrico. Esta clase se puede utilizar para crear conos estableciendo las propiedades :ref:`top_radius<class_CylinderMesh_property_top_radius>` o :ref:`bottom_radius<class_CylinderMesh_property_bottom_radius>` en ``0.0``.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`bottom_radius<class_CylinderMesh_property_bottom_radius>`     | ``0.5``  |
   +---------------------------+---------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`   | :ref:`cap_bottom<class_CylinderMesh_property_cap_bottom>`           | ``true`` |
   +---------------------------+---------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`   | :ref:`cap_top<class_CylinderMesh_property_cap_top>`                 | ``true`` |
   +---------------------------+---------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`height<class_CylinderMesh_property_height>`                   | ``2.0``  |
   +---------------------------+---------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`     | :ref:`radial_segments<class_CylinderMesh_property_radial_segments>` | ``64``   |
   +---------------------------+---------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`     | :ref:`rings<class_CylinderMesh_property_rings>`                     | ``4``    |
   +---------------------------+---------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`top_radius<class_CylinderMesh_property_top_radius>`           | ``0.5``  |
   +---------------------------+---------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_CylinderMesh_property_bottom_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **bottom_radius** = ``0.5`` :ref:`🔗<class_CylinderMesh_property_bottom_radius>`

.. rst-class:: classref-property-setget

- |void| **set_bottom_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bottom_radius**\ (\ )

Radio inferior del cilindro. Si se establece en ``0.0``, no se generarán las caras inferiores, lo que dará lugar a una forma cónica. Ver también :ref:`cap_bottom<class_CylinderMesh_property_cap_bottom>`.

.. rst-class:: classref-item-separator

----

.. _class_CylinderMesh_property_cap_bottom:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **cap_bottom** = ``true`` :ref:`🔗<class_CylinderMesh_property_cap_bottom>`

.. rst-class:: classref-property-setget

- |void| **set_cap_bottom**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_cap_bottom**\ (\ )

Si es ``true``, genera una tapa en la parte inferior del cilindro. Esto se puede establecer en ``false`` para agilizar la generación y el renderizado cuando la tapa nunca es visible para la cámara. Ver también :ref:`bottom_radius<class_CylinderMesh_property_bottom_radius>`.

\ **Nota:** Si :ref:`bottom_radius<class_CylinderMesh_property_bottom_radius>` es ``0.0``, la generación de la tapa siempre se omite, incluso si :ref:`cap_bottom<class_CylinderMesh_property_cap_bottom>` es ``true``.

.. rst-class:: classref-item-separator

----

.. _class_CylinderMesh_property_cap_top:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **cap_top** = ``true`` :ref:`🔗<class_CylinderMesh_property_cap_top>`

.. rst-class:: classref-property-setget

- |void| **set_cap_top**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_cap_top**\ (\ )

Si es ``true``, genera una tapa en la parte superior del cilindro. Esto se puede establecer en ``false`` para agilizar la generación y el renderizado cuando la tapa nunca es visible para la cámara. Ver también :ref:`top_radius<class_CylinderMesh_property_top_radius>`.

\ **Nota:** Si :ref:`top_radius<class_CylinderMesh_property_top_radius>` es ``0.0``, la generación de la tapa siempre se omite, incluso si :ref:`cap_top<class_CylinderMesh_property_cap_top>` es ``true``.

.. rst-class:: classref-item-separator

----

.. _class_CylinderMesh_property_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **height** = ``2.0`` :ref:`🔗<class_CylinderMesh_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_height**\ (\ )

La altura total del cilindro.

.. rst-class:: classref-item-separator

----

.. _class_CylinderMesh_property_radial_segments:

.. rst-class:: classref-property

:ref:`int<class_int>` **radial_segments** = ``64`` :ref:`🔗<class_CylinderMesh_property_radial_segments>`

.. rst-class:: classref-property-setget

- |void| **set_radial_segments**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_radial_segments**\ (\ )

Número de segmentos radiales del cilindro. Valores más altos dan como resultado un cilindro/cono más detallado, a costa del rendimiento.

.. rst-class:: classref-item-separator

----

.. _class_CylinderMesh_property_rings:

.. rst-class:: classref-property

:ref:`int<class_int>` **rings** = ``4`` :ref:`🔗<class_CylinderMesh_property_rings>`

.. rst-class:: classref-property-setget

- |void| **set_rings**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_rings**\ (\ )

Número de anillos de arista a lo largo de la altura del cilindro. Cambiar :ref:`rings<class_CylinderMesh_property_rings>` no tiene ningún impacto visual a menos que se utilice un shader o una herramienta de malla procedural para modificar los datos de los vértices. Valores más altos dan como resultado más subdivisiones, que pueden usarse para crear efectos de apariencia más suave con shaders o herramientas de malla procedural (a costa del rendimiento). Cuando no se modifiquen los datos de los vértices mediante un shader o una herramienta de malla procedural, :ref:`rings<class_CylinderMesh_property_rings>` debe mantenerse en su valor predeterminado.

.. rst-class:: classref-item-separator

----

.. _class_CylinderMesh_property_top_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **top_radius** = ``0.5`` :ref:`🔗<class_CylinderMesh_property_top_radius>`

.. rst-class:: classref-property-setget

- |void| **set_top_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_top_radius**\ (\ )

Radio superior del cilindro. Si se establece en ``0.0``, no se generarán las caras superiores, lo que dará lugar a una forma cónica. Ver también :ref:`cap_top<class_CylinderMesh_property_cap_top>`.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
