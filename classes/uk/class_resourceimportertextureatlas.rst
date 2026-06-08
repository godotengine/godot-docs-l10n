:github_url: hide

.. _class_ResourceImporterTextureAtlas:

ResourceImporterTextureAtlas
============================

**Успадковує:** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Імпортування текстур з зображення PNG в оптимізований :ref:`AtlasTexture<class_AtlasTexture>` для 2D-відтворювання.

.. rst-class:: classref-introduction-group

Опис
--------

Цей імпорт текстур з зображення PNG в :ref:`AtlasTexture<class_AtlasTexture>` або 2D :ref:`ArrayMesh<class_ArrayMesh>`. Це може бути використана для збереження пам'яті при імпорті 2D анімацій з spritesheets. Текстура застібається тільки в 2D рендерингу, не 3D. Дивитися також :ref:`ResourceImporterTexture<class_ResourceImporterTexture>` і :ref:`ResourceImporterLayeredTexture<class_ResourceImporterLayeredTexture>`.

\ **Примітка:** **ResourceImporterTextureAtlas** не ручить імпорт :ref:`TileSetAtlasSource<class_TileSetAtlasSource>`, який створюється за допомогою редактора :ref:`TileSet<class_TileSet>`.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>` | :ref:`atlas_file<class_ResourceImporterTextureAtlas_property_atlas_file>`                                       | ``""``    |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`crop_to_region<class_ResourceImporterTextureAtlas_property_crop_to_region>`                               | ``false`` |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`import_mode<class_ResourceImporterTextureAtlas_property_import_mode>`                                     | ``0``     |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`trim_alpha_border_from_region<class_ResourceImporterTextureAtlas_property_trim_alpha_border_from_region>` | ``true``  |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_ResourceImporterTextureAtlas_property_atlas_file:

.. rst-class:: classref-property

:ref:`String<class_String>` **atlas_file** = ``""`` :ref:`🔗<class_ResourceImporterTextureAtlas_property_atlas_file>`

Шлях до атласного листа. Ця *must* встановлюється на дійсний шлях до зображення PNG. В іншому випадку атлас не буде імпортувати.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTextureAtlas_property_crop_to_region:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **crop_to_region** = ``false`` :ref:`🔗<class_ResourceImporterTextureAtlas_property_crop_to_region>`

Якщо ``true``, відкидає порожні області з атласу. Це впливає лише на кінцеве позиціонування спрайта, а не на сховище. Див. також :ref:`trim_alpha_border_from_region<class_ResourceImporterTextureAtlas_property_trim_alpha_border_from_region>`.

\ **Примітка:** Діє лише якщо :ref:`import_mode<class_ResourceImporterTextureAtlas_property_import_mode>` має значення **Region**.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTextureAtlas_property_import_mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **import_mode** = ``0`` :ref:`🔗<class_ResourceImporterTextureAtlas_property_import_mode>`

**Region:** Імпорт атласу в ресурсі :ref:`AtlasTexture<class_AtlasTexture>`, що надається як прямокутник. Це швидко рендерити, але прозорі райони все ще повинні бути рендеровані, якщо вони не можуть бути оброблені ефективно за допомогою :ref:`trim_alpha_border_from_region<class_ResourceImporterTextureAtlas_property_trim_alpha_border_from_region>`. Це може зменшити продуктивність при рендерингу великих спрайтів на екрані.

\ **Меш:** Імпорт атласу як ресурс :ref:`ArrayMesh<class_ArrayMesh>`, зберігаючи оригінальну бітмаму видимим (але відображається як полігон). Це може бути використаний для зменшення частоти заповнення при рендерингу великих прозорих спрайтів, за вартістю повільного рендерингу, якщо є мало прозорих зон в спрайті.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTextureAtlas_property_trim_alpha_border_from_region:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **trim_alpha_border_from_region** = ``true`` :ref:`🔗<class_ResourceImporterTextureAtlas_property_trim_alpha_border_from_region>`

Якщо ``true``, обрізає область, виключаючи повністю прозорі пікселі, використовуючи прямокутник відсікання (який ніколи не повертається). Це можна використовувати для економії пам'яті. Див. також :ref:`crop_to_region<class_ResourceImporterTextureAtlas_property_crop_to_region>`.

\ **Примітка:** Діє лише тоді, коли :ref:`import_mode<class_ResourceImporterTextureAtlas_property_import_mode>` має значення **Region**.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
