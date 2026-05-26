:github_url: hide

.. _class_AnimationNodeAdd3:

AnimationNodeAdd3
=================

**Hereda:** :ref:`AnimationNodeSync<class_AnimationNodeSync>` **<** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Mezcla dos de tres animaciones sumandolas dentro de un :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

A resource to add to an :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`. Blends two animations out of three additively out of three based on the amount value.

This animation node has three inputs:

- The base animation to add to

- A "-add" animation to blend with when the blend amount is negative

- A "+add" animation to blend with when the blend amount is positive

If the absolute value of the amount is greater than ``1.0``, the animation connected to "in" port is blended with the amplified animation connected to "-add"/"+add" port.

\ **Note:** The signs are only used to distinguish ports, and additive blending occurs based on absolute values always, meaning the animation of a "-add" port does not subtract from the animation of an "in" port.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Usando AnimationTree <../tutorials/animation/animation_tree>`

- `Demo de Shooter en Tercera Persona (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
