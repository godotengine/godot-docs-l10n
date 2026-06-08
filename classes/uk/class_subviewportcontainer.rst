:github_url: hide

.. _class_SubViewportContainer:

SubViewportContainer
====================

**Успадковує:** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Контейнер, який використовується для відображення вмісту :ref:`SubViewport<class_SubViewport>`.

.. rst-class:: classref-introduction-group

Опис
--------

Контейнер, що відображає вміст основних вузлів :ref:`SubViewport<class_SubViewport>`. Використовується комбінований розмір :ref:`SubViewport<class_SubViewport>` як мінімальний розмір, якщо увімкнено :ref:`stretch<class_SubViewportContainer_property_stretch>`.

\ **Примітка:** Changing a **SubViewportContainer** :ref:`Control.scale<class_Control_property_scale>` призведе до його вмісту, щоб з'являтися спотворені. Щоб змінити свій візуальний розмір, не викликаючи спотворення, відрегулюйте запаси вузла замість (якщо це вже не в контейнері).

\ **Примітка:** The **SubViewportContainer** пересилає миш-ентер і миш-exit повідомлення на його підвидання.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +------------------------------------------+---------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`FocusMode<enum_Control_FocusMode>` | focus_mode                                                                | ``1`` (overrides :ref:`Control<class_Control_property_focus_mode>`) |
   +------------------------------------------+---------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                  | :ref:`mouse_target<class_SubViewportContainer_property_mouse_target>`     | ``false``                                                           |
   +------------------------------------------+---------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                  | :ref:`stretch<class_SubViewportContainer_property_stretch>`               | ``false``                                                           |
   +------------------------------------------+---------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`int<class_int>`                    | :ref:`stretch_shrink<class_SubViewportContainer_property_stretch_shrink>` | ``1``                                                               |
   +------------------------------------------+---------------------------------------------------------------------------+---------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`_propagate_input_event<class_SubViewportContainer_private_method__propagate_input_event>`\ (\ event\: :ref:`InputEvent<class_InputEvent>`\ ) |virtual| |const| |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_SubViewportContainer_property_mouse_target:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **mouse_target** = ``false`` :ref:`🔗<class_SubViewportContainer_property_mouse_target>`

.. rst-class:: classref-property-setget

- |void| **set_mouse_target**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_mouse_target_enabled**\ (\ )

Налаштуйте, якщо вузли **SubViewportContainer** або альтернативно вузли :ref:`Control<class_Control>` його дочірніх елементів :ref:`SubViewport<class_SubViewport>` мають бути доступними як цілі функцій, пов’язаних із мишею, як-от визначення цілі скидання в операціях перетягування або форми курсора вузла :ref:`Control<class_Control>`, на який наведено курсор. 

Якщо ``false``, вузли :ref:`Control<class_Control>` всередині дочірніх елементів :ref:`SubViewport<class_SubViewport>` вважаються цільовими. 

Якщо ``true``, сам **SubViewportContainer** вважатиметься цільовим.

.. rst-class:: classref-item-separator

----

.. _class_SubViewportContainer_property_stretch:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **stretch** = ``false`` :ref:`🔗<class_SubViewportContainer_property_stretch>`

.. rst-class:: classref-property-setget

- |void| **set_stretch**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_stretch_enabled**\ (\ )

Якщо ``true``, суб-оглядовий портал буде автоматично занижено до розміру управління.

\ **Примітка:** Якщо ``true``, це буде заборонена зміна :ref:`SubViewport.size<class_SubViewport_property_size>` своїх дітей вручну.

.. rst-class:: classref-item-separator

----

.. _class_SubViewportContainer_property_stretch_shrink:

.. rst-class:: classref-property

:ref:`int<class_int>` **stretch_shrink** = ``1`` :ref:`🔗<class_SubViewportContainer_property_stretch_shrink>`

.. rst-class:: classref-property-setget

- |void| **set_stretch_shrink**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_stretch_shrink**\ (\ )

Під час збереження його масштабу використовується ефективна роздільна здатність субвізового порту. Це може бути використаний для прискорення рендерингу.

Наприклад, до ``2`` буде надано 640 × 360 при одночасному зайнятні однакового розміру в контейнері.

\ **Примітка:** :ref:`stretch<class_SubViewportContainer_property_stretch>` повинен бути ``true`` для цього майна для роботи.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_SubViewportContainer_private_method__propagate_input_event:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_propagate_input_event**\ (\ event\: :ref:`InputEvent<class_InputEvent>`\ ) |virtual| |const| :ref:`🔗<class_SubViewportContainer_private_method__propagate_input_event>`

**Експериментальний:** Цей метод може бути змінений або усунутий у наступних версіях.

Віртуальний метод для реалізації користувача. Якщо це повертається ``true``, то ``event`` пропаговано дітям :ref:`SubViewport<class_SubViewport>`. Пропагація не відбувається, якщо вона повертає ``false``. Якщо функція не реалізована, всі події пропагуються на SubViewports.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
