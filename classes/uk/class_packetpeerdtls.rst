:github_url: hide

.. _class_PacketPeerDTLS:

PacketPeerDTLS
==============

**Успадковує:** :ref:`PacketPeer<class_PacketPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Пакет DTLS одномісний.

.. rst-class:: classref-introduction-group

Опис
--------

Цей клас являє собою підключення DTLS. Ви можете використовувати для підключення до сервера DTLS і повертається :ref:`DTLSServer.take_connection()<class_DTLSServer_method_take_connection>`.

\ **Примітка:** При експорті до Android, переконайтеся, що ввімкнути ``INTERNET`` дозвіл на експорт Android перед експортуванням проекту або за допомогою однієї кнопки розгортання. Інакше, мережевий зв'язок будь-якого роду буде заблокований Android.

\ **На даний момент не підтримується:** TLS-відновлення сертифікатів та фіксування сертифікатів. Відкликані сертифікати приймаються до тих пір, поки вони не діють. Якщо це занепокоєння, ви можете використовувати автоматично керовані сертифікати за короткий термін дії.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`     | :ref:`connect_to_peer<class_PacketPeerDTLS_method_connect_to_peer>`\ (\ packet_peer\: :ref:`PacketPeerUDP<class_PacketPeerUDP>`, hostname\: :ref:`String<class_String>`, client_options\: :ref:`TLSOptions<class_TLSOptions>` = null\ ) |
   +-------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                    | :ref:`disconnect_from_peer<class_PacketPeerDTLS_method_disconnect_from_peer>`\ (\ )                                                                                                                                                     |
   +-------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Status<enum_PacketPeerDTLS_Status>` | :ref:`get_status<class_PacketPeerDTLS_method_get_status>`\ (\ ) |const|                                                                                                                                                                 |
   +-------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                    | :ref:`poll<class_PacketPeerDTLS_method_poll>`\ (\ )                                                                                                                                                                                     |
   +-------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_PacketPeerDTLS_Status:

.. rst-class:: classref-enumeration

enum **Status**: :ref:`🔗<enum_PacketPeerDTLS_Status>`

.. _class_PacketPeerDTLS_constant_STATUS_DISCONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_PacketPeerDTLS_Status>` **STATUS_DISCONNECTED** = ``0``

Відключено статус **PacketPeerDTLS**.

.. _class_PacketPeerDTLS_constant_STATUS_HANDSHAKING:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_PacketPeerDTLS_Status>` **STATUS_HANDSHAKING** = ``1``

Статус, що представляє **PacketPeerDTLS**, який в даний час виконує ручку з дистанційним з'єднанням.

.. _class_PacketPeerDTLS_constant_STATUS_CONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_PacketPeerDTLS_Status>` **STATUS_CONNECTED** = ``2``

Статус, що представляє **PacketPeerDTLS**, який підключений до пульта дистанційного керування.

.. _class_PacketPeerDTLS_constant_STATUS_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_PacketPeerDTLS_Status>` **STATUS_ERROR** = ``3``

Статус на сервери.

.. _class_PacketPeerDTLS_constant_STATUS_ERROR_HOSTNAME_MISMATCH:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_PacketPeerDTLS_Status>` **STATUS_ERROR_HOSTNAME_MISMATCH** = ``4``

Статус помилки, який показує невідповідність домену до сертифікату DTLS, представлений хостом та доменом, який вимагає перевірки.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_PacketPeerDTLS_method_connect_to_peer:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **connect_to_peer**\ (\ packet_peer\: :ref:`PacketPeerUDP<class_PacketPeerUDP>`, hostname\: :ref:`String<class_String>`, client_options\: :ref:`TLSOptions<class_TLSOptions>` = null\ ) :ref:`🔗<class_PacketPeerDTLS_method_connect_to_peer>`

Підключає ``packet_peer`` початок роботи DTLS за допомогою основного :ref:`PacketPeerUDP<class_PacketPeerUDP>`, який повинен бути підключений (див. :ref:`PacketPeerUDP.connect_to_host()<class_PacketPeerUDP_method_connect_to_host>`. Ви можете додатково вказати ``паративний клієнт_options`` для використання при перевірці підключень TLS. :ref:`TLSOptions.client()<class_TLSOptions_method_client>` і :ref:`TLSOptions.client_unsafe()<class_TLSOptions_method_client_unsafe>`.

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerDTLS_method_disconnect_from_peer:

.. rst-class:: classref-method

|void| **disconnect_from_peer**\ (\ ) :ref:`🔗<class_PacketPeerDTLS_method_disconnect_from_peer>`

Відключає цей одноліток, термінуючи сеанс DTLS.

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerDTLS_method_get_status:

.. rst-class:: classref-method

:ref:`Status<enum_PacketPeerDTLS_Status>` **get_status**\ (\ ) |const| :ref:`🔗<class_PacketPeerDTLS_method_get_status>`

Повертає стан з'єднання.

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerDTLS_method_poll:

.. rst-class:: classref-method

|void| **poll**\ (\ ) :ref:`🔗<class_PacketPeerDTLS_method_poll>`

З'єднання для перевірки вхідних пакетів. Зателефонуйте це часто, щоб оновити статус і зберегти робочі місця з'єднання.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
