:github_url: hide

.. _class_TLSOptions:

TLSOptions
==========

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Налаштування TLS для клієнтів і серверів.

.. rst-class:: classref-introduction-group

Опис
--------

TLSOptions абстрагує параметри конфігурації для класів :ref:`StreamPeerTLS<class_StreamPeerTLS>` і :ref:`PacketPeerDTLS<class_PacketPeerDTLS>`. 

Об’єкти цього класу не можуть бути створені безпосередньо, замість них слід використовувати один із статичних методів :ref:`client()<class_TLSOptions_method_client>`, :ref:`client_unsafe()<class_TLSOptions_method_client_unsafe>` або :ref:`server()<class_TLSOptions_method_server>`. 


.. tabs:: 

 .. code-tab:: gdscript
 
    # Створіть конфігурацію TLS-клієнта, яка використовує наш настроюваний довірений ланцюжок ЦС. 
    var client_trusted_cas = load("res://my_trusted_cas.crt") 
    var client_tls_options = TLSOptions.client(client_trusted_cas) 

    # Створення конфігурації сервера TLS. 
    var server_certs = load("res://my_server_cas.crt") 
    var server_key = load("res://my_server_key.key") 
    var server_tls_options = TLSOptions.server(server_key, server_certs)  



.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TLSOptions<class_TLSOptions>`           | :ref:`client<class_TLSOptions_method_client>`\ (\ trusted_chain\: :ref:`X509Certificate<class_X509Certificate>` = null, common_name_override\: :ref:`String<class_String>` = ""\ ) |static| |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TLSOptions<class_TLSOptions>`           | :ref:`client_unsafe<class_TLSOptions_method_client_unsafe>`\ (\ trusted_chain\: :ref:`X509Certificate<class_X509Certificate>` = null\ ) |static|                                            |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                   | :ref:`get_common_name_override<class_TLSOptions_method_get_common_name_override>`\ (\ ) |const|                                                                                             |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`X509Certificate<class_X509Certificate>` | :ref:`get_own_certificate<class_TLSOptions_method_get_own_certificate>`\ (\ ) |const|                                                                                                       |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`CryptoKey<class_CryptoKey>`             | :ref:`get_private_key<class_TLSOptions_method_get_private_key>`\ (\ ) |const|                                                                                                               |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`X509Certificate<class_X509Certificate>` | :ref:`get_trusted_ca_chain<class_TLSOptions_method_get_trusted_ca_chain>`\ (\ ) |const|                                                                                                     |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                       | :ref:`is_server<class_TLSOptions_method_is_server>`\ (\ ) |const|                                                                                                                           |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                       | :ref:`is_unsafe_client<class_TLSOptions_method_is_unsafe_client>`\ (\ ) |const|                                                                                                             |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TLSOptions<class_TLSOptions>`           | :ref:`server<class_TLSOptions_method_server>`\ (\ key\: :ref:`CryptoKey<class_CryptoKey>`, certificate\: :ref:`X509Certificate<class_X509Certificate>`\ ) |static|                          |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_TLSOptions_method_client:

.. rst-class:: classref-method

:ref:`TLSOptions<class_TLSOptions>` **client**\ (\ trusted_chain\: :ref:`X509Certificate<class_X509Certificate>` = null, common_name_override\: :ref:`String<class_String>` = ""\ ) |static| :ref:`🔗<class_TLSOptions_method_client>`

Створює клієнтську конфігурацію TLS, яка перевіряє сертифікати та їх загальні імена (повно кваліфіковані доменні імена).

Ви можете вказати на користувача ``Trusted_chain`` органів з сертифікації (список за замовчуванням CA буде використовуватися, якщо ``null``), а також додатково надати ``common_name_override``, якщо ви очікуєте сертифікат, щоб мати загальне ім'я, крім сервера FQDN.

\ **Примітка:** На веб-платформі, перевірка TLS завжди здійснюється на веб-переглядачі. Це функція безпеки.

.. rst-class:: classref-item-separator

----

.. _class_TLSOptions_method_client_unsafe:

.. rst-class:: classref-method

:ref:`TLSOptions<class_TLSOptions>` **client_unsafe**\ (\ trusted_chain\: :ref:`X509Certificate<class_X509Certificate>` = null\ ) |static| :ref:`🔗<class_TLSOptions_method_client_unsafe>`

Створює параметр **unsafe** Налаштування клієнтів TLS, де перевірка сертифіката є обов'язковим. Ви можете додатково надати дійсну ``trusted_chain``, але загальна назва сертифікатів ніколи не буде перевірятися. Використання цієї конфігурації для цілей, крім тестування ** не рекомендується **.

\ **Примітка:** На веб-платформі, перевірка TLS завжди здійснюється на веб-переглядачі. Це функція безпеки.

.. rst-class:: classref-item-separator

----

.. _class_TLSOptions_method_get_common_name_override:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_common_name_override**\ (\ ) |const| :ref:`🔗<class_TLSOptions_method_get_common_name_override>`

Повертає перевизначення загального імені (доменного імені), вказане під час створення за допомогою :ref:`client()<class_TLSOptions_method_client>`.

.. rst-class:: classref-item-separator

----

.. _class_TLSOptions_method_get_own_certificate:

.. rst-class:: classref-method

:ref:`X509Certificate<class_X509Certificate>` **get_own_certificate**\ (\ ) |const| :ref:`🔗<class_TLSOptions_method_get_own_certificate>`

Повертає :ref:`X509Certificate<class_X509Certificate>`, вказаний під час створення за допомогою :ref:`server()<class_TLSOptions_method_server>`.

.. rst-class:: classref-item-separator

----

.. _class_TLSOptions_method_get_private_key:

.. rst-class:: classref-method

:ref:`CryptoKey<class_CryptoKey>` **get_private_key**\ (\ ) |const| :ref:`🔗<class_TLSOptions_method_get_private_key>`

Повертає :ref:`CryptoKey<class_CryptoKey>`, вказаний під час створення за допомогою :ref:`server()<class_TLSOptions_method_server>`.

.. rst-class:: classref-item-separator

----

.. _class_TLSOptions_method_get_trusted_ca_chain:

.. rst-class:: classref-method

:ref:`X509Certificate<class_X509Certificate>` **get_trusted_ca_chain**\ (\ ) |const| :ref:`🔗<class_TLSOptions_method_get_trusted_ca_chain>`

Повертає ланцюжок CA :ref:`X509Certificate<class_X509Certificate>`, вказаний під час створення за допомогою :ref:`client()<class_TLSOptions_method_client>` або :ref:`client_unsafe()<class_TLSOptions_method_client_unsafe>`.

.. rst-class:: classref-item-separator

----

.. _class_TLSOptions_method_is_server:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_server**\ (\ ) |const| :ref:`🔗<class_TLSOptions_method_is_server>`

Повертає ``true``, якщо створено за допомогою методу :ref:`server()<class_TLSOptions_method_server>`, в іншому випадку ``false``.

.. rst-class:: classref-item-separator

----

.. _class_TLSOptions_method_is_unsafe_client:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_unsafe_client**\ (\ ) |const| :ref:`🔗<class_TLSOptions_method_is_unsafe_client>`

Повертає ``true``, якщо створено за допомогою методу :ref:`client_unsafe()<class_TLSOptions_method_client_unsafe>`, в іншому випадку ``false``.

.. rst-class:: classref-item-separator

----

.. _class_TLSOptions_method_server:

.. rst-class:: classref-method

:ref:`TLSOptions<class_TLSOptions>` **server**\ (\ key\: :ref:`CryptoKey<class_CryptoKey>`, certificate\: :ref:`X509Certificate<class_X509Certificate>`\ ) |static| :ref:`🔗<class_TLSOptions_method_server>`

Створює конфігурацію сервера TLS, використовуючи надані параметри ``key`` та ``certificate``.

\ **Примітка:** Параметр ``certificate`` має містити повний ланцюжок сертифікатів аж до ЦС, що підписує (файл сертифікатів можна об'єднати за допомогою текстового редактора загального призначення).

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
