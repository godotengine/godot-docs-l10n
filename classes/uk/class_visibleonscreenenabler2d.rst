:github_url: hide

.. _class_VisibleOnScreenEnabler2D:

VisibleOnScreenEnabler2D
========================

**Успадковує:** :ref:`VisibleOnScreenNotifier2D<class_VisibleOnScreenNotifier2D>` **<** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Прямокутна область 2D простору, що при видимні на екрані, дозволяє цільовий вузол.

.. rst-class:: classref-introduction-group

Опис
--------

**VisibleOnScreenEnabler2D** містить прямокутну область простору 2D і цільовий вузол. Цільова вершина буде автоматично ввімкнено (через його :ref:`Node.process_mode<class_Node_property_process_mode>` майно), коли будь-яка частина даного регіону стає видимою на екрані, і автоматично відключається інакше. Це може бути використаний для активації ворогів тільки тоді, коли гравець підбирає їх.

Див. :ref:`VisibleOnScreenNotifier2D<class_VisibleOnScreenNotifier2D>` якщо ви хочете бути повідомлені, коли регіон видно на екрані.

\ **Примітка:** **VisibleOnScreenEnabler2D** використовує код рендерингу, щоб визначити, чи видно на екрані, тому він не буде функції, якщо :ref:`CanvasItem.pic<class_CanvasItem_property_pic>` встановлюється до ``true``.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+--------------------+
   | :ref:`EnableMode<enum_VisibleOnScreenEnabler2D_EnableMode>` | :ref:`enable_mode<class_VisibleOnScreenEnabler2D_property_enable_mode>`           | ``0``              |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+--------------------+
   | :ref:`NodePath<class_NodePath>`                             | :ref:`enable_node_path<class_VisibleOnScreenEnabler2D_property_enable_node_path>` | ``NodePath("..")`` |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+--------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_VisibleOnScreenEnabler2D_EnableMode:

.. rst-class:: classref-enumeration

enum **EnableMode**: :ref:`🔗<enum_VisibleOnScreenEnabler2D_EnableMode>`

.. _class_VisibleOnScreenEnabler2D_constant_ENABLE_MODE_INHERIT:

.. rst-class:: classref-enumeration-constant

:ref:`EnableMode<enum_VisibleOnScreenEnabler2D_EnableMode>` **ENABLE_MODE_INHERIT** = ``0``

Відповідає :ref:`Node.PROCESS_MODE_INHERIT<class_Node_constant_PROCESS_MODE_INHERIT>`.

.. _class_VisibleOnScreenEnabler2D_constant_ENABLE_MODE_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`EnableMode<enum_VisibleOnScreenEnabler2D_EnableMode>` **ENABLE_MODE_ALWAYS** = ``1``

Відповідає :ref:`Node.PROCESS_MODE_ALWAYS<class_Node_constant_PROCESS_MODE_ALWAYS>`.

.. _class_VisibleOnScreenEnabler2D_constant_ENABLE_MODE_WHEN_PAUSED:

.. rst-class:: classref-enumeration-constant

:ref:`EnableMode<enum_VisibleOnScreenEnabler2D_EnableMode>` **ENABLE_MODE_WHEN_PAUSED** = ``2``

Кореспонденти до :ref:`Node.PROCESS_MODE_WHEN_PAUSED<class_Node_constant_PROCESS_MODE_WHEN_PAUSED>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_VisibleOnScreenEnabler2D_property_enable_mode:

.. rst-class:: classref-property

:ref:`EnableMode<enum_VisibleOnScreenEnabler2D_EnableMode>` **enable_mode** = ``0`` :ref:`🔗<class_VisibleOnScreenEnabler2D_property_enable_mode>`

.. rst-class:: classref-property-setget

- |void| **set_enable_mode**\ (\ value\: :ref:`EnableMode<enum_VisibleOnScreenEnabler2D_EnableMode>`\ )
- :ref:`EnableMode<enum_VisibleOnScreenEnabler2D_EnableMode>` **get_enable_mode**\ (\ )

Визначає, як вводиться цільовий вузол. Кореспонденти до :ref:`ProcessMode<enum_Node_ProcessMode>`. Коли вузол вимкнено, він завжди використовує :ref:`Node.PROCESS_MODE_DISABLED<class_Node_constant_PROCESS_MODE_DISABLED>`.

.. rst-class:: classref-item-separator

----

.. _class_VisibleOnScreenEnabler2D_property_enable_node_path:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **enable_node_path** = ``NodePath("..")`` :ref:`🔗<class_VisibleOnScreenEnabler2D_property_enable_node_path>`

.. rst-class:: classref-property-setget

- |void| **set_enable_node_path**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_enable_node_path**\ (\ )

Шлях до цільового вузла, відносно **VisibleOnScreenEnabler2D**. Цільова вершина є окремою, вона призначена тільки при встановленні цього майна (якщо **VisibleOnScreenEnabler2D** знаходиться всередині дерева сцени) і кожен раз, коли **VisibleOnScreenEnabler2D** входить в дерево сцени. Якщо шлях порожній, не буде вражений вузол. Якщо шлях недійсний, також створюється помилка.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
