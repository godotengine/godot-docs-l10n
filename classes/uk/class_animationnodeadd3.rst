:github_url: hide

.. _class_AnimationNodeAdd3:

AnimationNodeAdd3
=================

**Успадковує:** :ref:`AnimationNodeSync<class_AnimationNodeSync>` **<** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Змішує дві з трьох анімацій в :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`.

.. rst-class:: classref-introduction-group

Опис
--------

Ресурс для додавання до :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`. Змішує дві анімації з трьох за принципом додавання на основі значення коефіцієнта змішування.

Цей вузол анімації має три входи:

- Базова анімація, до якої потрібно додати

- Анімація «-add» для змішування, коли значення змішування є від’ємним

- Анімація «+add» для змішування, коли значення змішування є додатним

Якщо абсолютне значення величини перевищує ``1.0``, анімація, підключена до порту «in», змішується з посиленою анімацією, підключеною до порту «-add»/«+add».

\ **Примітка:** Знаки використовуються лише для розрізнення портів, а адитивне змішування завжди відбувається на основі абсолютних значень, що означає, що анімація порту «-add» не віднімається від анімації порту «in».

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Використання Дерева анімації <../tutorials/animation/animation_tree>`

- `Демо-версія шутера від третьої особи (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
