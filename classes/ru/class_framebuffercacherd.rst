:github_url: hide

.. _class_FramebufferCacheRD:

FramebufferCacheRD
==================

**Наследует:** :ref:`Object<class_Object>`

Менеджер кэша кадрового буфера для рендереров на базе устройств рендеринга.

.. rst-class:: classref-introduction-group

Описание
----------------

Менеджер кэша кадрового буфера для рендереров на основе :ref:`RenderingDevice<class_RenderingDevice>`. Предоставляет способ создания кадрового буфера (framebuffer) и его повторного использования в последующих вызовах до тех пор, пока существуют используемые текстуры. Кадровые буферы будут автоматически очищаться при освобождении зависимых объектов.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-----------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>` | :ref:`get_cache_multipass<class_FramebufferCacheRD_method_get_cache_multipass>`\ (\ textures\: :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\], passes\: :ref:`Array<class_Array>`\[:ref:`RDFramebufferPass<class_RDFramebufferPass>`\], views\: :ref:`int<class_int>`\ ) |static| |
   +-----------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_FramebufferCacheRD_method_get_cache_multipass:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_cache_multipass**\ (\ textures\: :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\], passes\: :ref:`Array<class_Array>`\[:ref:`RDFramebufferPass<class_RDFramebufferPass>`\], views\: :ref:`int<class_int>`\ ) |static| :ref:`🔗<class_FramebufferCacheRD_method_get_cache_multipass>`

Создает или получает кэшированный буфер кадров. ``textures`` перечисляет доступные текстуры. ``passages`` определяет подпроходы и распределение текстур. Если оставить пустым, создается один проход, а текстуры распределяются в зависимости от их флагов использования. ``views`` определяет количество видов, используемых при рендеринге.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
