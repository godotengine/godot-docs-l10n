:github_url: hide

.. _class_XRControllerTracker:

XRControllerTracker
===================

**Успадковує:** :ref:`XRPositionalTracker<class_XRPositionalTracker>` **<** :ref:`XRTracker<class_XRTracker>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Відстежений контролер.

.. rst-class:: classref-introduction-group

Опис
--------

Приклад цього об'єкта являє собою контролер, який відстежується.

Як контролери перетворюються і :ref:`XRInterface<class_XRInterface>` виявляє їх, екземпляри цього об'єкта автоматично додаються до цього списку активних елементів відстеження, доступних через :ref:`XRServer<class_XRServer>`.

\ :ref:`XRController3D<class_XRController3D>` споживає об'єкти цього типу і слід використовувати в проекті.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Індекс документації XR <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------+------+-------------------------------------------------------------------+
   | :ref:`TrackerType<enum_XRServer_TrackerType>` | type | ``2`` (overrides :ref:`XRTracker<class_XRTracker_property_type>`) |
   +-----------------------------------------------+------+-------------------------------------------------------------------+

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
