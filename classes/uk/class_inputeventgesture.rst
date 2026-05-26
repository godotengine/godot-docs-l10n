:github_url: hide

.. _class_InputEventGesture:

InputEventGesture
=================

**Успадковує:** :ref:`InputEventWithModifiers<class_InputEventWithModifiers>` **<** :ref:`InputEventFromWindow<class_InputEventFromWindow>` **<** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`InputEventMagnifyGesture<class_InputEventMagnifyGesture>`, :ref:`InputEventPanGesture<class_InputEventPanGesture>`

Абстрактний базовий клас для сенсорних жест.

.. rst-class:: classref-introduction-group

Опис
--------

InputEventGestures надсилаються, коли користувач виконує підтримуваний жест на сенсорному екрані. Не можна використовувати мишу, оскільки вони зазвичай вимагають багатоточних.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Використання Вхіду Події <../tutorials/inputs/inputevent>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------------+------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`int<class_int>`         | device                                                     | ``0`` (overrides :ref:`InputEvent<class_InputEvent_property_device>`) |
   +-------------------------------+------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`position<class_InputEventGesture_property_position>` | ``Vector2(0, 0)``                                                     |
   +-------------------------------+------------------------------------------------------------+-----------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_InputEventGesture_property_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **position** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventGesture_property_position>`

.. rst-class:: classref-property-setget

- |void| **set_position**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_position**\ (\ )

Локальна позиція жесту відносно :ref:`Viewport<class_Viewport>`. Якщо використовується в :ref:`Control._gui_input()<class_Control_private_method__gui_input>`, позиція залежить від поточного :ref:`Control<class_Control>`, який отримав цей жест.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
