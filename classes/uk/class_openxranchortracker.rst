:github_url: hide

.. _class_OpenXRAnchorTracker:

OpenXRAnchorTracker
===================

**Експериментальний:** This class may be changed or removed in future versions.

**Успадковує:** :ref:`OpenXRSpatialEntityTracker<class_OpenXRSpatialEntityTracker>` **<** :ref:`XRPositionalTracker<class_XRPositionalTracker>` **<** :ref:`XRTracker<class_XRTracker>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Позиційний трекер для нашого розширення просторової сутності якоря.

.. rst-class:: classref-introduction-group

Опис
--------

Позиційний трекер для нашого розширення просторової прив'язки OpenXR, він відстежує визначене користувачем місцезнаходження в реальному просторі та відображає його у нашому віртуальному просторі.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------------+------------------------------------------------------+--------+
   | :ref:`String<class_String>` | :ref:`uuid<class_OpenXRAnchorTracker_property_uuid>` | ``""`` |
   +-----------------------------+------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`has_uuid<class_OpenXRAnchorTracker_method_has_uuid>`\ (\ ) |const| |
   +-------------------------+--------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигнали
--------------

.. _class_OpenXRAnchorTracker_signal_uuid_changed:

.. rst-class:: classref-signal

**uuid_changed**\ (\ ) :ref:`🔗<class_OpenXRAnchorTracker_signal_uuid_changed>`

Видається, коли UUID для цього якоря було змінено.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_OpenXRAnchorTracker_property_uuid:

.. rst-class:: classref-property

:ref:`String<class_String>` **uuid** = ``""`` :ref:`🔗<class_OpenXRAnchorTracker_property_uuid>`

.. rst-class:: classref-property-setget

- |void| **set_uuid**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_uuid**\ (\ )

UUID передбачав постійні якорі.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_OpenXRAnchorTracker_method_has_uuid:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_uuid**\ (\ ) |const| :ref:`🔗<class_OpenXRAnchorTracker_method_has_uuid>`

Повертає ``true``, якщо встановлено ненульовий UUID.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
