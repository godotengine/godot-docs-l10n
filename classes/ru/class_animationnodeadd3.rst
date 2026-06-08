:github_url: hide

.. _class_AnimationNodeAdd3:

AnimationNodeAdd3
=================

**Наследует:** :ref:`AnimationNodeSync<class_AnimationNodeSync>` **<** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Смешивает две из трех анимаций аддитивно внутри :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`.

.. rst-class:: classref-introduction-group

Описание
----------------

Ресурс для добавления в :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`. Выполняет аддитивное смешивание двух из трёх анимаций в зависимости от значения параметра amount.

Данный узел анимации имеет три входа:

- Базовая анимация, к которой применяется смешивание

- Анимация "-add", смешиваемая при отрицательном значении amount

- Анимация "+add", смешиваемая при положительном значении amount

Если абсолютное значение amount превышает ``1.0``, анимация, подключённая к порту "in", смешивается с усиленной анимацией, подключённой к порту "-add"/"+add".

\ **Примечание:** Знаки используются только для различения портов, а аддитивное смешивание всегда происходит на основе абсолютных значений, поэтому анимация с порта "-add" не вычитается из анимации порта "in".

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
