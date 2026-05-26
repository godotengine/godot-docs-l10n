:github_url: hide

.. _class_AnimationNodeAdd3:

AnimationNodeAdd3
=================

**Наследует:** :ref:`AnimationNodeSync<class_AnimationNodeSync>` **<** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Смешивает две из трех анимаций аддитивно внутри :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`.

.. rst-class:: classref-introduction-group

Описание
----------------

A resource to add to an :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`. Blends two animations out of three additively out of three based on the amount value.

This animation node has three inputs:

- The base animation to add to

- A "-add" animation to blend with when the blend amount is negative

- A "+add" animation to blend with when the blend amount is positive

If the absolute value of the amount is greater than ``1.0``, the animation connected to "in" port is blended with the amplified animation connected to "-add"/"+add" port.

\ **Note:** The signs are only used to distinguish ports, and additive blending occurs based on absolute values always, meaning the animation of a "-add" port does not subtract from the animation of an "in" port.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Использование дерева анимации <../tutorials/animation/animation_tree>`

- `Демонстрация шутера от третьего лица (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
