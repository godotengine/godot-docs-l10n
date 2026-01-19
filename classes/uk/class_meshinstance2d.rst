:github_url: hide

.. _class_MeshInstance2D:

MeshInstance2D
==============

**Успадковує:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Node використовується для відображення :ref:`Mesh<class_Mesh>` в 2D.

.. rst-class:: classref-introduction-group

Опис
--------

Вузол, що використовується для відображення :ref:`Mesh<class_Mesh>` у 2D. Це може бути швидшим для рендерингу порівняно з відображенням вузла :ref:`Sprite2D<class_Sprite2D>` з великими прозорими областями, особливо якщо вузол займає багато місця на екрані з високою роздільною здатністю області перегляду. Це пояснюється тим, що використання сітки, розробленої для розміщення в непрозорих областях спрайта, зменшить використання швидкості заповнення GPU (ціною збільшення використання обробки вершин).

Коли :ref:`Mesh<class_Mesh>` потрібно створювати екземпляри більше тисячі разів близько один до одного, розгляньте можливість використання :ref:`MultiMesh<class_MultiMesh>` в :ref:`MultiMeshInstance2D<class_MultiMeshInstance2D>`.

\ **MeshInstance2D** можна створити з існуючого :ref:`Sprite2D<class_Sprite2D>` за допомогою інструмента на панелі інструментів редактора. Виберіть вузол :ref:`Sprite2D<class_Sprite2D>`, потім виберіть **Sprite2D > Конвертувати в MeshInstance2D** у верхній частині області перегляду 2D-редактора.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`2D сітки <../tutorials/2d/2d_meshes>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------------------+-------------------------------------------------------+
   | :ref:`Mesh<class_Mesh>`           | :ref:`mesh<class_MeshInstance2D_property_mesh>`       |
   +-----------------------------------+-------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`texture<class_MeshInstance2D_property_texture>` |
   +-----------------------------------+-------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигнали
--------------

.. _class_MeshInstance2D_signal_texture_changed:

.. rst-class:: classref-signal

**texture_changed**\ (\ ) :ref:`🔗<class_MeshInstance2D_signal_texture_changed>`

Увімкнено, коли змінена текстура :ref:`texture<class_MeshInstance2D_property_texture>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_MeshInstance2D_property_mesh:

.. rst-class:: classref-property

:ref:`Mesh<class_Mesh>` **mesh** :ref:`🔗<class_MeshInstance2D_property_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_mesh**\ (\ value\: :ref:`Mesh<class_Mesh>`\ )
- :ref:`Mesh<class_Mesh>` **get_mesh**\ (\ )

:ref:`Mesh<class_Mesh>`, який буде намальовано **MeshInstance2D**.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance2D_property_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture** :ref:`🔗<class_MeshInstance2D_property_texture>`

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
