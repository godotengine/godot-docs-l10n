:github_url: hide

.. meta::
	:keywords: batch

.. _class_MultiMeshInstance2D:

MultiMeshInstance2D
===================

**Успадковує:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Вузол, що створює екземпляр :ref:`MultiMesh<class_MultiMesh>` у 2D.

.. rst-class:: classref-introduction-group

Опис
--------

**MultiMeshInstance2D** – це спеціалізований вузол для створення екземпляра ресурсу :ref:`MultiMesh<class_MultiMesh>` у 2D. Його рендеринг може бути швидшим порівняно з відображенням багатьох вузлів :ref:`Sprite2D<class_Sprite2D>` з великими прозорими областями, особливо якщо вузли займають багато місця на екрані з високою роздільною здатністю області перегляду. Це пояснюється тим, що використання сітки, розробленої для розміщення в непрозорих областях спрайтів, зменшить швидкість заповнення графічного процесора (ціною збільшення використання обробки вершин).

Використання таке ж, як і у :ref:`MultiMeshInstance3D<class_MultiMeshInstance3D>`.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------------------+----------------------------------------------------------------+
   | :ref:`MultiMesh<class_MultiMesh>` | :ref:`multimesh<class_MultiMeshInstance2D_property_multimesh>` |
   +-----------------------------------+----------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`texture<class_MultiMeshInstance2D_property_texture>`     |
   +-----------------------------------+----------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигнали
--------------

.. _class_MultiMeshInstance2D_signal_texture_changed:

.. rst-class:: classref-signal

**texture_changed**\ (\ ) :ref:`🔗<class_MultiMeshInstance2D_signal_texture_changed>`

Увімкнено, коли змінена текстура :ref:`texture<class_MultiMeshInstance2D_property_texture>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_MultiMeshInstance2D_property_multimesh:

.. rst-class:: classref-property

:ref:`MultiMesh<class_MultiMesh>` **multimesh** :ref:`🔗<class_MultiMeshInstance2D_property_multimesh>`

.. rst-class:: classref-property-setget

- |void| **set_multimesh**\ (\ value\: :ref:`MultiMesh<class_MultiMesh>`\ )
- :ref:`MultiMesh<class_MultiMesh>` **get_multimesh**\ (\ )

:ref:`MultiMesh<class_MultiMesh>`, який буде намальовано за допомогою **MultiMeshInstance2D**.

.. rst-class:: classref-item-separator

----

.. _class_MultiMeshInstance2D_property_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture** :ref:`🔗<class_MultiMeshInstance2D_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ )

:ref:`Texture2D<class_Texture2D>`, який буде використовуватися при використанні за замовчуванням :ref:`CanvasItemMaterial<class_CanvasItemMaterial>`. ``TEXTURE`` в полотно Пункт шейдера.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
