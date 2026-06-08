:github_url: hide

.. _class_VisibleOnScreenNotifier3D:

VisibleOnScreenNotifier3D
=========================

**Успадковує:** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`VisibleOnScreenEnabler3D<class_VisibleOnScreenEnabler3D>`

Коробка-подібна область 3D простору, що виявляє, чи видно на екрані.

.. rst-class:: classref-introduction-group

Опис
--------

**VisibleOnScreenNotifier3D** являє собою область тривимірного простору у формі прямокутника. Коли будь-яка частина цієї області стає видимою на екрані або в області перегляду :ref:`Camera3D<class_Camera3D>`, вона випромінює сигнал :ref:`screen_entered<class_VisibleOnScreenNotifier3D_signal_screen_entered>`, а також сигнал :ref:`screen_exited<class_VisibleOnScreenNotifier3D_signal_screen_exited>`, коли жодна її частина не залишається видимою.

Якщо ви хочете, щоб вузол автоматично вмикався, коли ця область видима на екрані, використовуйте :ref:`VisibleOnScreenEnabler3D<class_VisibleOnScreenEnabler3D>`.

\ **Примітка:** **VisibleOnScreenNotifier3D** використовує приблизну евристику, яка не враховує стіни та інші перекриття, якщо не використовується відсіювання перекриттів. Він також не працюватиме, якщо для :ref:`Node3D.visible<class_Node3D_property_visible>` не встановлено значення ``true``.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------+------------------------------------------------------------+-------------------------------+
   | :ref:`AABB<class_AABB>` | :ref:`aabb<class_VisibleOnScreenNotifier3D_property_aabb>` | ``AABB(-1, -1, -1, 2, 2, 2)`` |
   +-------------------------+------------------------------------------------------------+-------------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_on_screen<class_VisibleOnScreenNotifier3D_method_is_on_screen>`\ (\ ) |const| |
   +-------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигнали
--------------

.. _class_VisibleOnScreenNotifier3D_signal_screen_entered:

.. rst-class:: classref-signal

**screen_entered**\ (\ ) :ref:`🔗<class_VisibleOnScreenNotifier3D_signal_screen_entered>`

Увімкніть, коли **VisibleOnScreenNotifier3D** введіть екран.

.. rst-class:: classref-item-separator

----

.. _class_VisibleOnScreenNotifier3D_signal_screen_exited:

.. rst-class:: classref-signal

**screen_exited**\ (\ ) :ref:`🔗<class_VisibleOnScreenNotifier3D_signal_screen_exited>`

Увімкнено, коли **VisibleOnScreenNotifier3D** виходить на екран.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_VisibleOnScreenNotifier3D_property_aabb:

.. rst-class:: classref-property

:ref:`AABB<class_AABB>` **aabb** = ``AABB(-1, -1, -1, 2, 2, 2)`` :ref:`🔗<class_VisibleOnScreenNotifier3D_property_aabb>`

.. rst-class:: classref-property-setget

- |void| **set_aabb**\ (\ value\: :ref:`AABB<class_AABB>`\ )
- :ref:`AABB<class_AABB>` **get_aabb**\ (\ )

**VisibleOnScreenNotifier3D** з'єднана коробка.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_VisibleOnScreenNotifier3D_method_is_on_screen:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_on_screen**\ (\ ) |const| :ref:`🔗<class_VisibleOnScreenNotifier3D_method_is_on_screen>`

Повертаємо ``true``, якщо на екрані знаходиться обмежена коробка.

\ **Примітка:** Займається одним кадром для видимості **VisibleOnScreenNotifier3D**, щоб оцінити один раз, доданий до дерева сцени, тому цей метод завжди повернеться ``false`` прямо після того, як він миттєвий.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
