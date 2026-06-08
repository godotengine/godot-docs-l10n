:github_url: hide

.. _class_PlaceholderTexture2DArray:

PlaceholderTexture2DArray
=========================

**Успадковує:** :ref:`PlaceholderTextureLayered<class_PlaceholderTextureLayered>` **<** :ref:`TextureLayered<class_TextureLayered>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Розміщений клас 2-вимірного фактурного масиву.

.. rst-class:: classref-introduction-group

Опис
--------

Цей клас використовується при завантаженні проекту, який використовує підклас :ref:`Texture2D<class_Texture2D>` в 2 умовах:

- При запуску проекту, що експортується в виділеному режимі сервера, зберігаються лише розміри текстури (як вони можуть бути використані для цілей гри або позиціонування інших елементів). Це дозволяє значно скоротити експортований розмір PCK.

- Коли цей підклас відсутній через використання різних версій двигуна або збірки (наприклад, модулі вимкнено).

\ **Примітка:** Це не призначене для використання як фактичної текстури для рендерингу. Не гарантовано працювати як один в шейдерах або матеріалах (наприклад, при розрахунку УФ).

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
