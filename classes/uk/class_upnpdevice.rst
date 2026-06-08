:github_url: hide

.. _class_UPNPDevice:

UPNPDevice
==========

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Універсальний пристрій Plug і Play (UPnP).

.. rst-class:: classref-introduction-group

Опис
--------

Універсальний пристрій Plug і Play (UPnP) Див. :ref:`UPNP<class_UPNP>` для UPnP відкриття та утиліти функцій. Забезпечує низький рівень доступу до команд керування UPNP. Дозволяє керувати відображеннями портів (експедиція портів) та переглядати мережеву інформацію пристрою (наприклад, локальної та зовнішньої IP-адреси та статусу). Зауважте, що методи на цьому класі синхронні і блокують викличну нитку.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------------------------+---------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                 | :ref:`description_url<class_UPNPDevice_property_description_url>`   | ``""`` |
   +---------------------------------------------+---------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                 | :ref:`igd_control_url<class_UPNPDevice_property_igd_control_url>`   | ``""`` |
   +---------------------------------------------+---------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                 | :ref:`igd_our_addr<class_UPNPDevice_property_igd_our_addr>`         | ``""`` |
   +---------------------------------------------+---------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                 | :ref:`igd_service_type<class_UPNPDevice_property_igd_service_type>` | ``""`` |
   +---------------------------------------------+---------------------------------------------------------------------+--------+
   | :ref:`IGDStatus<enum_UPNPDevice_IGDStatus>` | :ref:`igd_status<class_UPNPDevice_property_igd_status>`             | ``9``  |
   +---------------------------------------------+---------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                 | :ref:`service_type<class_UPNPDevice_property_service_type>`         | ``""`` |
   +---------------------------------------------+---------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`add_port_mapping<class_UPNPDevice_method_add_port_mapping>`\ (\ port\: :ref:`int<class_int>`, port_internal\: :ref:`int<class_int>` = 0, desc\: :ref:`String<class_String>` = "", proto\: :ref:`String<class_String>` = "UDP", duration\: :ref:`int<class_int>` = 0\ ) |const| |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`delete_port_mapping<class_UPNPDevice_method_delete_port_mapping>`\ (\ port\: :ref:`int<class_int>`, proto\: :ref:`String<class_String>` = "UDP"\ ) |const|                                                                                                                     |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`is_valid_gateway<class_UPNPDevice_method_is_valid_gateway>`\ (\ ) |const|                                                                                                                                                                                                      |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`query_external_address<class_UPNPDevice_method_query_external_address>`\ (\ ) |const|                                                                                                                                                                                          |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_UPNPDevice_IGDStatus:

.. rst-class:: classref-enumeration

enum **IGDStatus**: :ref:`🔗<enum_UPNPDevice_IGDStatus>`

.. _class_UPNPDevice_constant_IGD_STATUS_OK:

.. rst-class:: classref-enumeration-constant

:ref:`IGDStatus<enum_UPNPDevice_IGDStatus>` **IGD_STATUS_OK** = ``0``

OK.

.. _class_UPNPDevice_constant_IGD_STATUS_HTTP_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`IGDStatus<enum_UPNPDevice_IGDStatus>` **IGD_STATUS_HTTP_ERROR** = ``1``

Помилка HTTP.

.. _class_UPNPDevice_constant_IGD_STATUS_HTTP_EMPTY:

.. rst-class:: classref-enumeration-constant

:ref:`IGDStatus<enum_UPNPDevice_IGDStatus>` **IGD_STATUS_HTTP_EMPTY** = ``2``

Empty HTTP відповідь.

.. _class_UPNPDevice_constant_IGD_STATUS_NO_URLS:

.. rst-class:: classref-enumeration-constant

:ref:`IGDStatus<enum_UPNPDevice_IGDStatus>` **IGD_STATUS_NO_URLS** = ``3``

**Застаріло:** This value is no longer used.

Повернути відповідь, що не містять URL.

.. _class_UPNPDevice_constant_IGD_STATUS_NO_IGD:

.. rst-class:: classref-enumeration-constant

:ref:`IGDStatus<enum_UPNPDevice_IGDStatus>` **IGD_STATUS_NO_IGD** = ``4``

Не дійсний IGD.

.. _class_UPNPDevice_constant_IGD_STATUS_DISCONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`IGDStatus<enum_UPNPDevice_IGDStatus>` **IGD_STATUS_DISCONNECTED** = ``5``

Роз'єднано.

.. _class_UPNPDevice_constant_IGD_STATUS_UNKNOWN_DEVICE:

.. rst-class:: classref-enumeration-constant

:ref:`IGDStatus<enum_UPNPDevice_IGDStatus>` **IGD_STATUS_UNKNOWN_DEVICE** = ``6``

Невідомий пристрій.

.. _class_UPNPDevice_constant_IGD_STATUS_INVALID_CONTROL:

.. rst-class:: classref-enumeration-constant

:ref:`IGDStatus<enum_UPNPDevice_IGDStatus>` **IGD_STATUS_INVALID_CONTROL** = ``7``

Інвалідний контроль.

.. _class_UPNPDevice_constant_IGD_STATUS_MALLOC_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`IGDStatus<enum_UPNPDevice_IGDStatus>` **IGD_STATUS_MALLOC_ERROR** = ``8``

**Застаріло:** This value is no longer used.

Похибка розміщення пам'яті.

.. _class_UPNPDevice_constant_IGD_STATUS_UNKNOWN_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`IGDStatus<enum_UPNPDevice_IGDStatus>` **IGD_STATUS_UNKNOWN_ERROR** = ``9``

Невідома помилка.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_UPNPDevice_property_description_url:

.. rst-class:: classref-property

:ref:`String<class_String>` **description_url** = ``""`` :ref:`🔗<class_UPNPDevice_property_description_url>`

.. rst-class:: classref-property-setget

- |void| **set_description_url**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_description_url**\ (\ )

URL на опис пристрою.

.. rst-class:: classref-item-separator

----

.. _class_UPNPDevice_property_igd_control_url:

.. rst-class:: classref-property

:ref:`String<class_String>` **igd_control_url** = ``""`` :ref:`🔗<class_UPNPDevice_property_igd_control_url>`

.. rst-class:: classref-property-setget

- |void| **set_igd_control_url**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_igd_control_url**\ (\ )

URL-адреса керування IDG.

.. rst-class:: classref-item-separator

----

.. _class_UPNPDevice_property_igd_our_addr:

.. rst-class:: classref-property

:ref:`String<class_String>` **igd_our_addr** = ``""`` :ref:`🔗<class_UPNPDevice_property_igd_our_addr>`

.. rst-class:: classref-property-setget

- |void| **set_igd_our_addr**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_igd_our_addr**\ (\ )

Адреса локальної машини в мережі, що з'єднує її до цього **UPNPDevice**.

.. rst-class:: classref-item-separator

----

.. _class_UPNPDevice_property_igd_service_type:

.. rst-class:: classref-property

:ref:`String<class_String>` **igd_service_type** = ``""`` :ref:`🔗<class_UPNPDevice_property_igd_service_type>`

.. rst-class:: classref-property-setget

- |void| **set_igd_service_type**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_igd_service_type**\ (\ )

Тип сервісу IGD.

.. rst-class:: classref-item-separator

----

.. _class_UPNPDevice_property_igd_status:

.. rst-class:: classref-property

:ref:`IGDStatus<enum_UPNPDevice_IGDStatus>` **igd_status** = ``9`` :ref:`🔗<class_UPNPDevice_property_igd_status>`

.. rst-class:: classref-property-setget

- |void| **set_igd_status**\ (\ value\: :ref:`IGDStatus<enum_UPNPDevice_IGDStatus>`\ )
- :ref:`IGDStatus<enum_UPNPDevice_IGDStatus>` **get_igd_status**\ (\ )

Статус IGD.

.. rst-class:: classref-item-separator

----

.. _class_UPNPDevice_property_service_type:

.. rst-class:: classref-property

:ref:`String<class_String>` **service_type** = ``""`` :ref:`🔗<class_UPNPDevice_property_service_type>`

.. rst-class:: classref-property-setget

- |void| **set_service_type**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_service_type**\ (\ )

Тип обслуговування.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_UPNPDevice_method_add_port_mapping:

.. rst-class:: classref-method

:ref:`int<class_int>` **add_port_mapping**\ (\ port\: :ref:`int<class_int>`, port_internal\: :ref:`int<class_int>` = 0, desc\: :ref:`String<class_String>` = "", proto\: :ref:`String<class_String>` = "UDP", duration\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_UPNPDevice_method_add_port_mapping>`

Додає переадресацію порту для переадресації заданого зовнішнього порту **UPNPDevice** для даного протоколу до локальної машини. :ref:`UPNP.add_port_mapping()<class_UPNP_method_add_port_mapping>`.

.. rst-class:: classref-item-separator

----

.. _class_UPNPDevice_method_delete_port_mapping:

.. rst-class:: classref-method

:ref:`int<class_int>` **delete_port_mapping**\ (\ port\: :ref:`int<class_int>`, proto\: :ref:`String<class_String>` = "UDP"\ ) |const| :ref:`🔗<class_UPNPDevice_method_delete_port_mapping>`

Видаляє портову картографію, визначену заданим портом та комбінацією протоколів на цьому пристрої. Подивитися :ref:`UPNP.delete_port_mapping()<class_UPNP_method_delete_port_mapping>`.

.. rst-class:: classref-item-separator

----

.. _class_UPNPDevice_method_is_valid_gateway:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_valid_gateway**\ (\ ) |const| :ref:`🔗<class_UPNPDevice_method_is_valid_gateway>`

Повертає ``true``, якщо це дійсний IGD (InternetGatewayDevice), який потенційно підтримує переадресацію порту.

.. rst-class:: classref-item-separator

----

.. _class_UPNPDevice_method_query_external_address:

.. rst-class:: classref-method

:ref:`String<class_String>` **query_external_address**\ (\ ) |const| :ref:`🔗<class_UPNPDevice_method_query_external_address>`

Повертає зовнішній IP-адресу цього **UPNPDevice** або порожній рядок.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
