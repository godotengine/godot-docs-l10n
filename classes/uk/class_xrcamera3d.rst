:github_url: hide

.. _class_XRCamera3D:

XRCamera3D
==========

**Успадковує:** :ref:`Camera3D<class_Camera3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Камерний вузол, який автоматично змінює своє положення на основі даних відстеження XR.

.. rst-class:: classref-introduction-group

Опис
--------

Вузол камери, який автоматично позиціонується на основі даних відстеження XR.

На відміну від :ref:`XRController3D<class_XRController3D>`, потік рендерингу має доступ до більш актуальних даних відстеження, тому положення вузла **XRCamera3D** може відставати на кілька мілісекунд від даних, що використовуються для рендерингу.

\ **Примітка:** Якщо :ref:`Viewport.use_xr<class_Viewport_property_use_xr>` дорівнює ``true``, більшість властивостей камери замінюються активним :ref:`XRInterface<class_XRInterface>`. Єдиними властивостями, яким можна довіряти, є ближня та далека площини.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Індекс документації XR <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------+
   | :ref:`PhysicsInterpolationMode<enum_Node_PhysicsInterpolationMode>` | physics_interpolation_mode | ``2`` (overrides :ref:`Node<class_Node_property_physics_interpolation_mode>`) |
   +---------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------+

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
