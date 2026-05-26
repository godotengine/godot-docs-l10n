:github_url: hide

.. _class_CCDIK3D:

CCDIK3D
=======

**Hereda:** :ref:`IterateIK3D<class_IterateIK3D>` **<** :ref:`ChainIK3D<class_ChainIK3D>` **<** :ref:`IKModifier3D<class_IKModifier3D>` **<** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Solver de cinemática inversa de descenso cíclico de coordenadas basado en rotación.

.. rst-class:: classref-introduction-group

Descripción
----------------------

**CCDIK3D** es una IK basada en rotación que permite un seguimiento rápido y eficaz, incluso con grandes rotaciones de articulaciones. Es especialmente adecuado para cadenas con limitaciones, ofreciendo un seguimiento del objetivo más suave y estable en comparación con :ref:`FABRIK3D<class_FABRIK3D>`.

La torsión resultante alrededor del vector frontal siempre se conservará a partir de la pose anterior.

\ **Nota:** Cuando el objetivo está cerca de la raíz, puede provocar movimientos antinaturales, incluyendo volteos de articulaciones y oscilaciones.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
