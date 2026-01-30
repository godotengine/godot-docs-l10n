:github_url: hide

.. _class_FABRIK3D:

FABRIK3D
========

**Наследует:** :ref:`IterateIK3D<class_IterateIK3D>` **<** :ref:`ChainIK3D<class_ChainIK3D>` **<** :ref:`IKModifier3D<class_IKModifier3D>` **<** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Решатель обратной кинематики для достижения целей вперед и назад на основе положения.

.. rst-class:: classref-introduction-group

Описание
----------------

**FABRIK3D** — это обратная кинематика на основе положения, позволяющая точно и аккуратно отслеживать цели. Идеально подходит для простых цепочек без ограничений.

Результирующее вращение вокруг вектора движения всегда будет сохраняться из предыдущей позы.

\ **Примечание:** Когда цель находится близко к корню, она, как правило, создает зигзагообразные узоры, что приводит к неестественному визуальному движению.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- `Обратная кинематика возвращается в Godot 4.6 - IKModifier3D <https://godotengine.org/article/inverse-kinematics-returns-to-godot-4-6/#ikmodifier3d-and-7-child-classes>`__

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
