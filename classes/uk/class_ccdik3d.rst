:github_url: hide

.. _class_CCDIK3D:

CCDIK3D
=======

**Успадковує:** :ref:`IterateIK3D<class_IterateIK3D>` **<** :ref:`ChainIK3D<class_ChainIK3D>` **<** :ref:`IKModifier3D<class_IKModifier3D>` **<** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Розв'язувач оберненої кінематики циклічного координатного спуску на основі обертання.

.. rst-class:: classref-introduction-group

Опис
--------

**CCDIK3D** — це IK на основі обертання, що забезпечує швидке та ефективне відстеження навіть при великих обертаннях суглобів. Він особливо підходить для ланцюгів з обмеженнями, забезпечуючи плавніше та стабільніше відстеження цілі порівняно з :ref:`FABRIK3D<class_FABRIK3D>`.

Результуючий поворот навколо вектора вперед завжди буде збережений з попередньої пози.

\ **Примітка:** Коли ціль знаходиться близько до кореня, це може спричинити неприродний рух, включаючи перевертання суглобів та коливання.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
