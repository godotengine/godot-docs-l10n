:github_url: hide

.. _class_TextServerDummy:

TextServerDummy
===============

**Успадковує:** :ref:`TextServerExtension<class_TextServerExtension>` **<** :ref:`TextServer<class_TextServer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Увімкнути текстовий сервер, який не може передавати текст або керувати шрифтами.

.. rst-class:: classref-introduction-group

Опис
--------

Фіктивний інтерфейс :ref:`TextServer<class_TextServer>`, який нічого не робить. Корисно для звільнення пам'яті, коли рендеринг тексту не потрібен, оскільки текстові сервери є ресурсомісткими. Його також можна використовувати для порівняння продуктивності у складних графічних інтерфейсах, щоб перевірити вплив візуалізації тексту.

Сервер фіктивного тексту завжди доступний на початку проекту. Ось як отримати до нього доступ:

::

    var dummy_text_server = TextServerManager.find_interface("Dummy")
    if dummy_text_server != null:
        TextServerManager.set_primary_interface(dummy_text_server)
        # Якщо інші текстові сервери непотрібні, їх можна видалити:
        for i in TextServerManager.get_interface_count():
            var text_server = TextServerManager.get_interface(i)
            if text_server != dummy_text_server:
                TextServerManager.remove_interface(text_server)

Аргумент командного рядка ``--text-driver Dummy`` (з урахуванням регістру) можна використовувати для примусового використання "Dummy" :ref:`TextServer<class_TextServer>` у будь-якому проекті.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
