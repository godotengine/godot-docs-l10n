:github_url: hide

.. _class_bool:

bool
====

Вбудований логічний тип.

.. rst-class:: classref-introduction-group

Опис
--------

**bool** — це вбудований тип :ref:`Variant<class_Variant>`, який може зберігати лише одне з двох значень: ``true`` або ``false``. Ви можете уявити це як перемикач, який можна увімкнути або вимкнути, або як двійкову цифру, яка може бути 1 або 0.

 Логічні значення можна безпосередньо використовувати в ``if`` та інших умовних операторах:


.. tabs::

 .. code-tab:: gdscript

    var can_shoot = true
    if can_shoot:
         launch_bullet()

 .. code-tab:: csharp

    bool canShoot = true;
    if (canShoot)
     {
         LaunchBullet();
     }



 Усі оператори порівняння повертають логічні значення (``==``, ``>``, ``<=`` тощо). Таким чином, немає необхідності порівнювати самі логічні значення. Вам не потрібно додавати ``== true`` або ``== false``.

 Логічні значення можна комбінувати з логічними операторами ``і``, ``або``, ``не`` для створення складних умов:


.. tabs::

 .. code-tab:: gdscript

    if bullets > 0, а не is_reloading():
         launch_bullet()

     якщо bullets == 0 або is_reloading():
         play_clack_sound()

 .. code-tab:: csharp

    if (bullets > 0 && !IsReloading())
     {
         LaunchBullet();
     }

    if (bullets == 0 || IsReloading())
     {
         PlayClackSound();
     }



\ **Примітка:** У сучасних мовах програмування логічні оператори обчислюються в порядку. Усі інші умови пропускаються, якщо їх результат не вплине на остаточне значення. Ця концепція відома як `оцінка короткого замикання <https://en.wikipedia.org/wiki/Short-circuit_evaluation>`__ і може бути корисною, щоб уникнути оцінки дорогих умов у деяких критичних для продуктивності випадках.

\ **Примітка:** За домовленістю вбудовані методи та властивості, які повертають логічні значення, зазвичай визначаються як запитання «так-ні», окремі прикметники тощо (:ref:`String.is_empty()<class_String_method_is_empty>`, :ref:`Node.can_process()<class_Node_method_can_process>`, :ref:`Camera2D.enabled<class_Camera2D_property_enabled>` тощо).

.. rst-class:: classref-reftable-group

Конструктори
------------------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`bool<class_bool_constructor_bool>`\ (\ )                                   |
   +-------------------------+----------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`bool<class_bool_constructor_bool>`\ (\ from\: :ref:`bool<class_bool>`\ )   |
   +-------------------------+----------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`bool<class_bool_constructor_bool>`\ (\ from\: :ref:`float<class_float>`\ ) |
   +-------------------------+----------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`bool<class_bool_constructor_bool>`\ (\ from\: :ref:`int<class_int>`\ )     |
   +-------------------------+----------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Оператори
------------------

.. table::
   :widths: auto

   +-------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator !=<class_bool_operator_neq_bool>`\ (\ right\: :ref:`bool<class_bool>`\ ) |
   +-------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator \<<class_bool_operator_lt_bool>`\ (\ right\: :ref:`bool<class_bool>`\ )  |
   +-------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator ==<class_bool_operator_eq_bool>`\ (\ right\: :ref:`bool<class_bool>`\ )  |
   +-------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator ><class_bool_operator_gt_bool>`\ (\ right\: :ref:`bool<class_bool>`\ )   |
   +-------------------------+-----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи конструкторів
--------------------------------------

.. _class_bool_constructor_bool:

.. rst-class:: classref-constructor

:ref:`bool<class_bool>` **bool**\ (\ ) :ref:`🔗<class_bool_constructor_bool>`

Створює **bool** зі значенням ``false``.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`bool<class_bool>` **bool**\ (\ from\: :ref:`bool<class_bool>`\ )

Створює **bool** як копію заданого **bool**.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`bool<class_bool>` **bool**\ (\ from\: :ref:`float<class_float>`\ )

Перетворює значення типу :ref:`float<class_float>` у тип **bool**. Повертає ``false``, якщо ``from`` дорівнює ``0.0`` (включно з ``-0.0``), та ``true`` для всіх інших значень (включно з :ref:`@GDScript.INF<class_@GDScript_constant_INF>` та :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>`).

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`bool<class_bool>` **bool**\ (\ from\: :ref:`int<class_int>`\ )

Перетворює значення типу :ref:`int<class_int>` у тип **bool**. Повертає ``false``, якщо ``from`` дорівнює ``0``, та ``true`` для всіх інших значень.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи операторів
--------------------------------

.. _class_bool_operator_neq_bool:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_bool_operator_neq_bool>`

Повертає ``true``, якщо одне **bool** дорівнює ``true``, а інше **bool** дорівнює ``false``. Еквівалентно логічній операції XOR (NEQ).

.. rst-class:: classref-item-separator

----

.. _class_bool_operator_lt_bool:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <**\ (\ right\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_bool_operator_lt_bool>`

Повертає ``true``, якщо значення лівого аргументу **bool** дорівнює ``false``, а значення аргументу ``right`` дорівнює ``true``.

.. rst-class:: classref-item-separator

----

.. _class_bool_operator_eq_bool:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_bool_operator_eq_bool>`

Повертає ``true``, якщо обидва **bool** мають значення ``true``, або якщо обидва **bool** мають значення ``false``. Еквівалентно логічній операції XNOR (EQ).

.. rst-class:: classref-item-separator

----

.. _class_bool_operator_gt_bool:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >**\ (\ right\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_bool_operator_gt_bool>`

Повертає ``true``, якщо значення лівого **bool** дорівнює ``true``, а значення ``right`` дорівнює ``false``.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
