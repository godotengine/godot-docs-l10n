:github_url: hide

.. _class_AnimationNodeBlend3:

AnimationNodeBlend3
===================

**Hereda:** :ref:`AnimationNodeSync<class_AnimationNodeSync>` **<** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Mezcla dos de tres animaciones linealmente dentro de un :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Un recurso para añadir a un :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`. Mezcla linealmente dos animaciones de un total de tres según el valor de amount.

Este nodo de animación tiene tres entradas:

- La animación base con la que mezclar.

- Una animación "-blend" para mezclar cuando el valor de blend es negativo.

- Una animación "+blend" para mezclar cuando el valor de blend es positivo.

En general, el valor de mezcla (blend) debería estar en el rango ``[-1.0, 1.0]``. Valores fuera de este rango pueden mezclar animaciones amplificadas; sin embargo, :ref:`AnimationNodeAdd3<class_AnimationNodeAdd3>` funciona mejor para este propósito.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Usando AnimationTree <../tutorials/animation/animation_tree>`

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
