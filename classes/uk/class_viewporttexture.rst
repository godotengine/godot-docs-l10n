:github_url: hide

.. _class_ViewportTexture:

ViewportTexture
===============

**Успадковує:** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Забезпечує вміст ``Перегляд`` як динамічної текстури.

.. rst-class:: classref-introduction-group

Опис
--------

**ViewportTexture** надає вміст :ref:`Viewport<class_Viewport>` як динамічний :ref:`Texture2D<class_Texture2D>`. Це можна використовувати для поєднання рендерингу вузлів :ref:`Control<class_Control>`, :ref:`Node2D<class_Node2D>` та :ref:`Node3D<class_Node3D>`. Наприклад, ви можете використовувати цю текстуру для відображення 3D-сцени всередині :ref:`TextureRect<class_TextureRect>` або 2D-накладання в :ref:`Sprite3D<class_Sprite3D>`.

Щоб отримати **ViewportTexture** в коді, використовуйте метод :ref:`Viewport.get_texture()<class_Viewport_method_get_texture>` на цільовому вікні перегляду.

\ **Примітка:** **ViewportTexture** завжди є локальним для своєї сцени (див. :ref:`Resource.resource_local_to_scene<class_Resource_property_resource_local_to_scene>`). Якщо корінь сцени не готовий, він може повертати неправильні дані (див. :ref:`Node.ready<class_Node_signal_ready>`).

\ **Примітка:** Створення екземплярів сцен, що містять **ViewportTexture** з високою роздільною здатністю, може спричинити помітне заїкання.

 **Примітка:** Під час використання :ref:`Viewport<class_Viewport>` зі значенням :ref:`Viewport.use_hdr_2d<class_Viewport_property_use_hdr_2d>`, встановленим на ``true``, повернена текстура буде HDR-зображенням, яке використовує лінійне кодування. Воно може виглядати темнішим, ніж зазвичай, коли відображається безпосередньо на екрані. Щоб перетворити на нелінійне кодування sRGB, ви можете зробити наступне:

::

    img.convert(Image.FORMAT_RGBA8)
    img.linear_to_srgb()

\ **Примітка:** Деякі вузли, такі як :ref:`Decal<class_Decal>`, :ref:`Light3D<class_Light3D>` та :ref:`PointLight2D<class_PointLight2D>`, не підтримують безпосереднє використання **ViewportTexture**. Щоб використовувати дані текстури з **ViewportTexture** у цих вузлах, вам потрібно створити :ref:`ImageTexture<class_ImageTexture>`, викликавши :ref:`Texture2D.get_image()<class_Texture2D_method_get_image>` на **ViewportTexture** та передавши результат до :ref:`ImageTexture.create_from_image()<class_ImageTexture_method_create_from_image>`. Це перетворення є повільною операцією, тому його не слід виконувати кожного кадру.

.. rst-class:: classref-introduction-group

Посібники
------------------

- `Графічний інтерфейс у 3D Viewport Demo <https://godotengine.org/asset-library/asset/2807>`__

- `3D в 2D Viewport Демо <https://godotengine.org/asset-library/asset/2804>`__

- `2D в 3D Viewport Demo <https://godotengine.org/asset-library/asset/2803>`__

- `3D дозвіл Scaling демо <https://godotengine.org/asset-library/asset/2805>`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------------+--------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`viewport_path<class_ViewportTexture_property_viewport_path>` | ``NodePath("")`` |
   +---------------------------------+--------------------------------------------------------------------+------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_ViewportTexture_property_viewport_path:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **viewport_path** = ``NodePath("")`` :ref:`🔗<class_ViewportTexture_property_viewport_path>`

.. rst-class:: classref-property-setget

- |void| **set_viewport_path_in_scene**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_viewport_path_in_scene**\ (\ )

Шлях до вершини :ref:`Viewport<class_Viewport>` для відображення. Це відносно кореня локальної сцени (див. :ref:`Resource.get_local_scene()<class_Resource_method_get_local_scene>`), **not** до вузлів, які використовують цю текстуру.

\ **Примітка:** У редакторі цей шлях автоматично оновлюється, коли цільовий порт або один з його предків перейменований або переміщений. У режимі runtime цей шлях не може автоматично оновлюватися, якщо корінь сцени не знайдено.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
