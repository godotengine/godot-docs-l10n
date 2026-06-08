:github_url: hide

.. _class_TextServerFallback:

TextServerFallback
==================

**Успадковує:** :ref:`TextServerExtension<class_TextServerExtension>` **<** :ref:`TextServer<class_TextServer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A fallback implementation of Godot's text server, without support for BiDi and complex text layout.

.. rst-class:: classref-introduction-group

Опис
--------

A fallback implementation of Godot's text server. This fallback is faster than :ref:`TextServerAdvanced<class_TextServerAdvanced>` for processing a lot of text, but it does not support BiDi and complex text layout.

\ **Note:** This text server is not part of official Godot binaries. If you want to use it, compile the engine with the option ``module_text_server_fb_enabled=yes``. When building with **TextServerFallback**, consider also disabling :ref:`TextServerAdvanced<class_TextServerAdvanced>` with ``module_text_server_adv_enabled=no`` to reduce binary size.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
