:github_url: hide

.. _class_BoxContainer:

BoxContainer
============

**Hereda:** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`HBoxContainer<class_HBoxContainer>`, :ref:`VBoxContainer<class_VBoxContainer>`

Un contenedor que organiza sus controles secundarios horizontal o verticalmente.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Un contenedor que organiza sus controles hijos horizontal o verticalmente, reorganizándolos automáticamente cuando cambia su tamaño mínimo.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Usar Contenedores <../tutorials/ui/gui_containers>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------------------------------------+---------------------------------------------------------------+-----------+
   | :ref:`AlignmentMode<enum_BoxContainer_AlignmentMode>` | :ref:`alignment<class_BoxContainer_property_alignment>`       | ``0``     |
   +-------------------------------------------------------+---------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                               | :ref:`reverse_sort<class_BoxContainer_property_reverse_sort>` | ``false`` |
   +-------------------------------------------------------+---------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                               | :ref:`vertical<class_BoxContainer_property_vertical>`         | ``false`` |
   +-------------------------------------------------------+---------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------------+------------------------------------------------------------------------------------------------+
   | :ref:`Control<class_Control>` | :ref:`add_spacer<class_BoxContainer_method_add_spacer>`\ (\ begin\: :ref:`bool<class_bool>`\ ) |
   +-------------------------------+------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Propiedades del Tema
----------------------------------------

.. table::
   :widths: auto

   +-----------------------+-----------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`separation<class_BoxContainer_theme_constant_separation>` | ``4`` |
   +-----------------------+-----------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_BoxContainer_AlignmentMode:

.. rst-class:: classref-enumeration

enum **AlignmentMode**: :ref:`🔗<enum_BoxContainer_AlignmentMode>`

.. _class_BoxContainer_constant_ALIGNMENT_BEGIN:

.. rst-class:: classref-enumeration-constant

:ref:`AlignmentMode<enum_BoxContainer_AlignmentMode>` **ALIGNMENT_BEGIN** = ``0``

Los controles secundarios se organizarán al principio del contenedor, es decir, en la parte superior si la orientación es vertical, a la izquierda si la orientación es horizontal (a la derecha para el diseño RTL).

.. _class_BoxContainer_constant_ALIGNMENT_CENTER:

.. rst-class:: classref-enumeration-constant

:ref:`AlignmentMode<enum_BoxContainer_AlignmentMode>` **ALIGNMENT_CENTER** = ``1``

Los controles hijos se centrarán en el contenedor.

.. _class_BoxContainer_constant_ALIGNMENT_END:

.. rst-class:: classref-enumeration-constant

:ref:`AlignmentMode<enum_BoxContainer_AlignmentMode>` **ALIGNMENT_END** = ``2``

Los controles secundarios se organizarán al final del contenedor, es decir, en la parte inferior si la orientación es vertical, a la derecha si la orientación es horizontal (a la izquierda para el diseño RTL).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_BoxContainer_property_alignment:

.. rst-class:: classref-property

:ref:`AlignmentMode<enum_BoxContainer_AlignmentMode>` **alignment** = ``0`` :ref:`🔗<class_BoxContainer_property_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_alignment**\ (\ value\: :ref:`AlignmentMode<enum_BoxContainer_AlignmentMode>`\ )
- :ref:`AlignmentMode<enum_BoxContainer_AlignmentMode>` **get_alignment**\ (\ )

La alineación de los hijos del contenedor (debe ser uno de :ref:`ALIGNMENT_BEGIN<class_BoxContainer_constant_ALIGNMENT_BEGIN>`, :ref:`ALIGNMENT_CENTER<class_BoxContainer_constant_ALIGNMENT_CENTER>`, o :ref:`ALIGNMENT_END<class_BoxContainer_constant_ALIGNMENT_END>`).

.. rst-class:: classref-item-separator

----

.. _class_BoxContainer_property_reverse_sort:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **reverse_sort** = ``false`` :ref:`🔗<class_BoxContainer_property_reverse_sort>`

.. rst-class:: classref-property-setget

- |void| **set_reverse_sort**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_reverse_sort**\ (\ )

If ``true``, the **BoxContainer** will arrange its children in reverse order.

.. rst-class:: classref-item-separator

----

.. _class_BoxContainer_property_vertical:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **vertical** = ``false`` :ref:`🔗<class_BoxContainer_property_vertical>`

.. rst-class:: classref-property-setget

- |void| **set_vertical**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_vertical**\ (\ )

Si es ``true``, el **BoxContainer** organizará sus hijos verticalmente, en lugar de horizontalmente.

No se puede cambiar cuando se usan :ref:`HBoxContainer<class_HBoxContainer>` y :ref:`VBoxContainer<class_VBoxContainer>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_BoxContainer_method_add_spacer:

.. rst-class:: classref-method

:ref:`Control<class_Control>` **add_spacer**\ (\ begin\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_BoxContainer_method_add_spacer>`

Añade un nodo :ref:`Control<class_Control>` al cuadro como un espaciador. Si ``begin`` es ``true``, insertará el nodo :ref:`Control<class_Control>` delante de todos los demás hijos.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de las propiedades del tema
----------------------------------------------------------------------------------

.. _class_BoxContainer_theme_constant_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **separation** = ``4`` :ref:`🔗<class_BoxContainer_theme_constant_separation>`

El espacio entre los elementos del **BoxContainer**, en píxeles.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
