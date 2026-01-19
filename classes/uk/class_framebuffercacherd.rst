:github_url: hide

.. _class_FramebufferCacheRD:

FramebufferCacheRD
==================

**Успадковує:** :ref:`Object<class_Object>`

Рендерингових пристроїв на основі рендерингових пристроїв.

.. rst-class:: classref-introduction-group

Опис
--------

Менеджер кешу фреймбуфера для рендерерів на основі :ref:`RenderingDevice<class_RenderingDevice>`. Надає спосіб створення фреймбуфера та його повторного використання в наступних викликах, поки існують використані текстури. Фреймбуфери автоматично очищаються після звільнення залежних об'єктів.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-----------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>` | :ref:`get_cache_multipass<class_FramebufferCacheRD_method_get_cache_multipass>`\ (\ textures\: :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\], passes\: :ref:`Array<class_Array>`\[:ref:`RDFramebufferPass<class_RDFramebufferPass>`\], views\: :ref:`int<class_int>`\ ) |static| |
   +-----------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_FramebufferCacheRD_method_get_cache_multipass:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_cache_multipass**\ (\ textures\: :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\], passes\: :ref:`Array<class_Array>`\[:ref:`RDFramebufferPass<class_RDFramebufferPass>`\], views\: :ref:`int<class_int>`\ ) |static| :ref:`🔗<class_FramebufferCacheRD_method_get_cache_multipass>`

Створює, або отримує кеш, каркас ``textures`` списки текстур доступу. ``pass`` визначає об'єкти та фактурне виділення, якщо створюється лівий порожній один прохід і фактури виділені в залежності від своїх прапорів використання. ``views`` визначає кількість переглядів, використовуваних при рендерингу.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
