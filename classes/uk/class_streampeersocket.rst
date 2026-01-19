:github_url: hide

.. _class_StreamPeerSocket:

StreamPeerSocket
================

**Успадковує:** :ref:`StreamPeer<class_StreamPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`StreamPeerTCP<class_StreamPeerTCP>`, :ref:`StreamPeerUDS<class_StreamPeerUDS>`

Абстрактний базовий клас для взаємодії з потоками сокетів.

.. rst-class:: classref-introduction-group

Опис
--------

StreamPeerSocket — це абстрактний базовий клас, який визначає загальну поведінку для потоків на основі сокетів.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +---------------------------------------------+---------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`disconnect_from_host<class_StreamPeerSocket_method_disconnect_from_host>`\ (\ ) |
   +---------------------------------------------+---------------------------------------------------------------------------------------+
   | :ref:`Status<enum_StreamPeerSocket_Status>` | :ref:`get_status<class_StreamPeerSocket_method_get_status>`\ (\ ) |const|             |
   +---------------------------------------------+---------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`       | :ref:`poll<class_StreamPeerSocket_method_poll>`\ (\ )                                 |
   +---------------------------------------------+---------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_StreamPeerSocket_Status:

.. rst-class:: classref-enumeration

enum **Status**: :ref:`🔗<enum_StreamPeerSocket_Status>`

.. _class_StreamPeerSocket_constant_STATUS_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_StreamPeerSocket_Status>` **STATUS_NONE** = ``0``

Початковий стан **StreamPeerSocket**. Це також стан після відключення.

.. _class_StreamPeerSocket_constant_STATUS_CONNECTING:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_StreamPeerSocket_Status>` **STATUS_CONNECTING** = ``1``

Стан, що представляє **StreamPeerSocket**, який підключається до хоста.

.. _class_StreamPeerSocket_constant_STATUS_CONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_StreamPeerSocket_Status>` **STATUS_CONNECTED** = ``2``

Стан, що представляє **StreamPeerSocket**, підключений до хоста.

.. _class_StreamPeerSocket_constant_STATUS_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_StreamPeerSocket_Status>` **STATUS_ERROR** = ``3``

Стан, що представляє **StreamPeerSocket** у стані помилки.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_StreamPeerSocket_method_disconnect_from_host:

.. rst-class:: classref-method

|void| **disconnect_from_host**\ (\ ) :ref:`🔗<class_StreamPeerSocket_method_disconnect_from_host>`

Відключення від господаря.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerSocket_method_get_status:

.. rst-class:: classref-method

:ref:`Status<enum_StreamPeerSocket_Status>` **get_status**\ (\ ) |const| :ref:`🔗<class_StreamPeerSocket_method_get_status>`

Повертає стан з'єднання.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerSocket_method_poll:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **poll**\ (\ ) :ref:`🔗<class_StreamPeerSocket_method_poll>`

Опитує сокет, оновлюючи його стан. Див. :ref:`get_status()<class_StreamPeerSocket_method_get_status>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
