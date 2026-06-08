:github_url: hide

.. _class_VisualShaderNodeFaceForward:

VisualShaderNodeFaceForward
===========================

**Успадковує:** :ref:`VisualShaderNodeVectorBase<class_VisualShaderNodeVectorBase>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Повертаємо вектор, який вказує на той же напрямок, як довідковий вектор в рамках візуального шейдера.

.. rst-class:: classref-introduction-group

Опис
--------

Переклади на ``faceforward(N, I, Nref)`` в тіні мови. Функція має три векторні параметри: ``N``, вектор на орієнтацію, ``I``, вектор інциденту і ``Nref``, вектор посилання. ``I`` і ``Nref`` менше нуля значення повернення ``N``. В іншому випадку ``-N`` повертається.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
