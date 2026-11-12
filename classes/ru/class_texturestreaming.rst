:github_url: hide

.. _class_TextureStreaming:

TextureStreaming
================

**Экспериментальное:** This class may be changed or removed in future versions.

**Наследует:** :ref:`Object<class_Object>`

Manages dynamic texture mipmap streaming to optimize VRAM usage.

.. rst-class:: classref-introduction-group

Описание
----------------

The TextureStreaming singleton manages dynamic loading and unloading of texture mipmap levels based on what is visible in the current frame. This allows projects with many large textures to significantly reduce VRAM usage while maintaining visual quality for visible textures.

Texture streaming works by analyzing shader feedback to determine which textures are actively being used and at what resolution they're being displayed. Textures that are far from the camera or not currently visible have their higher-resolution mipmap levels unloaded, while textures being displayed up close are loaded at higher resolutions.

The system includes a memory budget feature that automatically manages texture resolutions to stay within a specified VRAM limit. When the budget is exceeded, the system prioritizes textures based on how recently they were used and how much screen space they occupy.

\ **Note:** Texture streaming must be enabled in the Project Settings (:ref:`ProjectSettings.rendering/textures/streaming/enabled<class_ProjectSettings_property_rendering/textures/streaming/enabled>`) and textures must be imported with streaming support to use this feature.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------+---------------------------------------------------------------------------------------------+----------------+
   | :ref:`int<class_int>` | :ref:`max_lod_override<class_TextureStreaming_property_max_lod_override>`                   | ``-1``         |
   +-----------------------+---------------------------------------------------------------------------------------------+----------------+
   | :ref:`int<class_int>` | :ref:`memory_budget_mb_override<class_TextureStreaming_property_memory_budget_mb_override>` | ``4294967295`` |
   +-----------------------+---------------------------------------------------------------------------------------------+----------------+
   | :ref:`int<class_int>` | :ref:`min_lod_override<class_TextureStreaming_property_min_lod_override>`                   | ``-1``         |
   +-----------------------+---------------------------------------------------------------------------------------------+----------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-----------------------+-------------------------------------------------------------------------------------------------------+
   | |void|                | :ref:`flush_texture_streaming<class_TextureStreaming_method_flush_texture_streaming>`\ (\ )           |
   +-----------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`get_memory_budget_bytes_used<class_TextureStreaming_method_get_memory_budget_bytes_used>`\ (\ ) |
   +-----------------------+-------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
--------------

.. _class_TextureStreaming_signal_flush_completed:

.. rst-class:: classref-signal

**flush_completed**\ (\ ) :ref:`🔗<class_TextureStreaming_signal_flush_completed>`

Emitted when a texture streaming flush operation finishes, after :ref:`flush_texture_streaming()<class_TextureStreaming_method_flush_texture_streaming>` has been called and all managed textures have reached their target resolutions.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_TextureStreaming_property_max_lod_override:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_lod_override** = ``-1`` :ref:`🔗<class_TextureStreaming_property_max_lod_override>`

.. rst-class:: classref-property-setget

- |void| **set_max_lod_override**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_lod_override**\ (\ )

Overrides the maximum LOD (mipmap level) that can be loaded for streamed textures at runtime. Lower values allow higher resolution textures. Valid values are ``0`` (full resolution) to ``13`` (lowest resolution). Values outside that range clear the override and use the default from :ref:`ProjectSettings.rendering/textures/streaming/max_lod<class_ProjectSettings_property_rendering/textures/streaming/max_lod>`; when no override is active this property returns ``-1``.

.. rst-class:: classref-item-separator

----

.. _class_TextureStreaming_property_memory_budget_mb_override:

.. rst-class:: classref-property

:ref:`int<class_int>` **memory_budget_mb_override** = ``4294967295`` :ref:`🔗<class_TextureStreaming_property_memory_budget_mb_override>`

.. rst-class:: classref-property-setget

- |void| **set_memory_budget_mb_override**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_memory_budget_mb_override**\ (\ )

Overrides the memory budget for streamed textures at runtime (in megabytes). When the budget is exceeded, the system reduces texture resolution to stay within the limit. A value of ``UINT32_MAX`` (\ ``4294967295``, the maximum unsigned 32-bit integer) disables the override and uses the default from :ref:`ProjectSettings.rendering/textures/streaming/memory_budget_mb<class_ProjectSettings_property_rendering/textures/streaming/memory_budget_mb>`.

.. rst-class:: classref-item-separator

----

.. _class_TextureStreaming_property_min_lod_override:

.. rst-class:: classref-property

:ref:`int<class_int>` **min_lod_override** = ``-1`` :ref:`🔗<class_TextureStreaming_property_min_lod_override>`

.. rst-class:: classref-property-setget

- |void| **set_min_lod_override**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_min_lod_override**\ (\ )

Overrides the minimum LOD (mipmap level) that textures start at when loaded. Higher values result in lower initial resolution. Valid values are ``0`` (full resolution) to ``13`` (lowest resolution). Values outside that range clear the override and use the default from :ref:`ProjectSettings.rendering/textures/streaming/min_lod<class_ProjectSettings_property_rendering/textures/streaming/min_lod>`; when no override is active this property returns ``-1``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_TextureStreaming_method_flush_texture_streaming:

.. rst-class:: classref-method

|void| **flush_texture_streaming**\ (\ ) :ref:`🔗<class_TextureStreaming_method_flush_texture_streaming>`

Forces all currently queued texture streaming operations to complete immediately, bypassing the normal gradual transition and I/O throttling. This immediately loads or unloads mipmap levels to reach the target resolution for all managed textures, then emits the :ref:`flush_completed<class_TextureStreaming_signal_flush_completed>` signal. Useful during loading screens or when teleporting the player to ensure all textures are at their optimal resolution without a visible transition.

.. rst-class:: classref-item-separator

----

.. _class_TextureStreaming_method_get_memory_budget_bytes_used:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_memory_budget_bytes_used**\ (\ ) :ref:`🔗<class_TextureStreaming_method_get_memory_budget_bytes_used>`

Returns the current VRAM usage of streamed textures in bytes. This represents the total memory consumed by all streamed textures at their currently loaded mipmap levels.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
