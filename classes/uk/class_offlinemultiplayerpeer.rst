:github_url: hide

.. _class_OfflineMultiplayerPeer:

OfflineMultiplayerPeer
======================

**Успадковує:** :ref:`MultiplayerPeer<class_MultiplayerPeer>` **<** :ref:`PacketPeer<class_PacketPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

:ref:`MultiplayerPeer<class_MultiplayerPeer>` який завжди підключений і діє як сервер.

.. rst-class:: classref-introduction-group

Опис
--------

Це за замовчуванням :ref:`MultiplayerAPI.multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` для :ref:`Node.multiplayer<class_Node_property_multiplayer>`. Поведінка сервера не підключена.

Це означає, що :ref:`SceneTree<class_SceneTree>` буде діяти як багатокористувацька влада за замовчуванням. Дзвінки до :ref:`MultiplayerAPI.is_server()<class_MultiplayerAPI_method_is_server>` повернеться ``true``, і дзвінки до :ref:`MultiplayerAPI.get_unique_id<class_MultiplayerAPI_property_get_unique_id>` :ref:`MultiplayerPeer. TARGET_PEER_SERVER<class_MultiplayerPeer_constant_ TARGET_PEER_SERVER>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
