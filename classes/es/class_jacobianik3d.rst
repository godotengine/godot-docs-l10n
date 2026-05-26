:github_url: hide

.. _class_JacobianIK3D:

JacobianIK3D
============

**Hereda:** :ref:`IterateIK3D<class_IterateIK3D>` **<** :ref:`ChainIK3D<class_ChainIK3D>` **<** :ref:`IKModifier3D<class_IKModifier3D>` **<** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Solucionador de cinemática inversa basado en la transpuesta jacobiana.

.. rst-class:: classref-introduction-group

Descripción
----------------------

**JacobianIK3D** calcula las rotaciones para todas las articulaciones simultáneamente, produciendo movimientos naturales y suaves. Es particularmente adecuado para animaciones biológicas.

El giro resultante alrededor del vector hacia adelante siempre se mantendrá a partir de la pose anterior.

\ **Nota:** Converge más lentamente que otros solucionadores IK, lo que lleva a un seguimiento de objetivos más suave y menos inmediato.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
