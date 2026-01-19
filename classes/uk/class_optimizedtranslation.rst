:github_url: hide

.. _class_OptimizedTranslation:

OptimizedTranslation
====================

**Успадковує:** :ref:`Translation<class_Translation>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Оптимізований переклад.

.. rst-class:: classref-introduction-group

Опис
--------

Оптимізований переклад. Використовує стиснуті переклади в реальному часі, що призводить до дуже малих словників.

Цей клас не зберігає неперекладені рядки для цілей оптимізації. Тому метод :ref:`Translation.get_message_list()<class_Translation_method_get_message_list>` завжди повертає порожній масив, а метод :ref:`Translation.get_message_count()<class_Translation_method_get_message_count>` завжди повертає ``0``.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +--------+-----------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`generate<class_OptimizedTranslation_method_generate>`\ (\ from\: :ref:`Translation<class_Translation>`\ ) |
   +--------+-----------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_OptimizedTranslation_method_generate:

.. rst-class:: classref-method

|void| **generate**\ (\ from\: :ref:`Translation<class_Translation>`\ ) :ref:`🔗<class_OptimizedTranslation_method_generate>`

Генерує та встановлює оптимізований переклад з заданого ресурсу :ref:`Translation<class_Translation>`.

\ **Примітка:** Повідомлення в ``from`` не повинні використовувати контекстні або множинні форми.

\ **Примітка:** Цей метод призначений для використання в редакторі. Він нічого не робить, коли викликається з експортованого проекту.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
