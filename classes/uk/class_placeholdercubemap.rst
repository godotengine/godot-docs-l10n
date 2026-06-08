:github_url: hide

.. _class_PlaceholderCubemap:

PlaceholderCubemap
==================

**Успадковує:** :ref:`PlaceholderTextureLayered<class_PlaceholderTextureLayered>` **<** :ref:`TextureLayered<class_TextureLayered>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

:ref:`Cubemap<class_Cubemap>` без даних зображень.

.. rst-class:: classref-introduction-group

Опис
--------

Цей клас замінює :ref:`Cubemap<class_Cubemap>` або :ref:`Cubemap<class_Cubemap>`-derived class в 2 умовах:

до У виділеному режимі сервера, де дані зображень не впливають на логіку ігор. Це дозволяє значно скоротити експортований розмір PCK.

- Коли відсутній клас :ref:`Cubemap<class_Cubemap>`, наприклад, при використанні іншої версії двигуна.

\ **Примітка:** Цей клас не призначений для рендерингу або для використання в тіні. Операції, такі як розрахунок УФ не гарантовано працюють.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
