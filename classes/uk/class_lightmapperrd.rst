:github_url: hide

.. _class_LightmapperRD:

LightmapperRD
=============

**Успадковує:** :ref:`Lightmapper<class_Lightmapper>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Вбудований графічний процесор на основі GPU для використання з :ref:`LightmapGI<class_LightmapGI>`.

.. rst-class:: classref-introduction-group

Опис
--------

LightmapperRD («RD» розшифровується як :ref:`RenderingDevice<class_RenderingDevice>`) — це вбудований графічний процесор для створення карт світла, що використовується з :ref:`LightmapGI<class_LightmapGI>`. На більшості спеціалізованих графічних процесорів він може створювати карти світла набагато швидше, ніж більшість графічних процесорів на базі процесора. LightmapperRD використовує обчислювальні шейдери для створення карт світла, тому для використання не потрібно встановлювати бібліотеки CUDA або OpenCL.

\ **Примітка:** Цей графічний процесор повинен підтримувати серверну частину :ref:`RenderingDevice<class_RenderingDevice>` (рендерери Forward+ та мобільні рендерери). Під час використання рендерера сумісності для створення карт світла використовуватиметься тимчасовий :ref:`RenderingDevice<class_RenderingDevice>`. Підтримка :ref:`RenderingDevice<class_RenderingDevice>` не потрібна для *рендерингу* карт світла, які вже були запечені раніше.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
