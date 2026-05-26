:github_url: hide

.. _class_AnimationNodeSub2:

AnimationNodeSub2
=================

**Hereda:** :ref:`AnimationNodeSync<class_AnimationNodeSync>` **<** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Combina dos animaciones de forma sustractiva dentro de un :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Es un recurso que se puede añadir a un :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`. Combina dos animaciones de forma sustractiva en función del valor de cantidad.

Este nodo de animación se suele utilizar para realizar cálculos previos con el objetivo de cancelar cualquier pose extra de la animación para el recurso "añadir" en :ref:`AnimationNodeAdd2<class_AnimationNodeAdd2>` o :ref:`AnimationNodeAdd3<class_AnimationNodeAdd3>`.

En general, el valor de mezcla debe estar en el rango de ``[0.0, 1.0]``, pero se pueden usar valores fuera de este rango para amplificar o invertir animaciones.

\ **Nota: ** Este cálculo es diferente a utilizar un valor negativo en :ref:`AnimationNodeAdd2<class_AnimationNodeAdd2>`, ya que la transformación de matrices no cumple la ley conmutativa. **AnimationNodeSub2** multiplica la matriz transformada de la animación invertida desde el lado izquierdo, mientras que el :ref:`AnimationNodeAdd2<class_AnimationNodeAdd2>` negativo lo multiplica del lado derecho.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Árbol de Animación <../tutorials/animation/animation_tree>`

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
