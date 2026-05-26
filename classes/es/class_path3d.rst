:github_url: hide

.. _class_Path3D:

Path3D
======

**Hereda:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Contiene un camino :ref:`Curve3D<class_Curve3D>` para que los nodos :ref:`PathFollow3D<class_PathFollow3D>` lo sigan.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Puede tener nodos hijos :ref:`PathFollow3D<class_PathFollow3D>` moviéndose a lo largo de la :ref:`Curve3D<class_Curve3D>`. Véase :ref:`PathFollow3D<class_PathFollow3D>` para más información sobre el uso.

Ten en cuenta que la ruta se considera relativa a los nodos movidos (hijos de :ref:`PathFollow3D<class_PathFollow3D>`). Como tal, la curva debería comenzar normalmente con un vector cero ``(0, 0, 0)``.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------------------------------------+-----------------------+
   | :ref:`Curve3D<class_Curve3D>` | :ref:`curve<class_Path3D_property_curve>`                           |                       |
   +-------------------------------+---------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`     | :ref:`debug_custom_color<class_Path3D_property_debug_custom_color>` | ``Color(0, 0, 0, 1)`` |
   +-------------------------------+---------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Señales
--------------

.. _class_Path3D_signal_curve_changed:

.. rst-class:: classref-signal

**curve_changed**\ (\ ) :ref:`🔗<class_Path3D_signal_curve_changed>`

Emitida cuando la :ref:`curve<class_Path3D_property_curve>` cambia.

.. rst-class:: classref-item-separator

----

.. _class_Path3D_signal_debug_color_changed:

.. rst-class:: classref-signal

**debug_color_changed**\ (\ ) :ref:`🔗<class_Path3D_signal_debug_color_changed>`

Emitida cuando la :ref:`debug_custom_color<class_Path3D_property_debug_custom_color>` cambia.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_Path3D_property_curve:

.. rst-class:: classref-property

:ref:`Curve3D<class_Curve3D>` **curve** :ref:`🔗<class_Path3D_property_curve>`

.. rst-class:: classref-property-setget

- |void| **set_curve**\ (\ value\: :ref:`Curve3D<class_Curve3D>`\ )
- :ref:`Curve3D<class_Curve3D>` **get_curve**\ (\ )

Una :ref:`Curve3D<class_Curve3D>` que describe el camino.

.. rst-class:: classref-item-separator

----

.. _class_Path3D_property_debug_custom_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **debug_custom_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_Path3D_property_debug_custom_color>`

.. rst-class:: classref-property-setget

- |void| **set_debug_custom_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_debug_custom_color**\ (\ )

El color personalizado que se usa para dibujar la ruta en el editor. Si se establece en :ref:`Color.BLACK<class_Color_constant_BLACK>` (como por defecto), se usa el color establecido en :ref:`ProjectSettings.debug/shapes/paths/geometry_color<class_ProjectSettings_property_debug/shapes/paths/geometry_color>`.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
