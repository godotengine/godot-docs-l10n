:github_url: hide

.. _class_RenderSceneBuffersExtension:

RenderSceneBuffersExtension
===========================

**Успадковує:** :ref:`RenderSceneBuffers<class_RenderSceneBuffers>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Даний клас дозволяє здійснювати виконання RenderSceneBuffer в GDExtension.

.. rst-class:: classref-introduction-group

Опис
--------

Даний клас дозволяє здійснювати виконання RenderSceneBuffer в GDExtension.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_configure<class_RenderSceneBuffersExtension_private_method__configure>`\ (\ config\: :ref:`RenderSceneBuffersConfiguration<class_RenderSceneBuffersConfiguration>`\ ) |virtual|          |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_set_anisotropic_filtering_level<class_RenderSceneBuffersExtension_private_method__set_anisotropic_filtering_level>`\ (\ anisotropic_filtering_level\: :ref:`int<class_int>`\ ) |virtual| |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_set_fsr_sharpness<class_RenderSceneBuffersExtension_private_method__set_fsr_sharpness>`\ (\ fsr_sharpness\: :ref:`float<class_float>`\ ) |virtual|                                       |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_set_texture_mipmap_bias<class_RenderSceneBuffersExtension_private_method__set_texture_mipmap_bias>`\ (\ texture_mipmap_bias\: :ref:`float<class_float>`\ ) |virtual|                     |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_set_use_debanding<class_RenderSceneBuffersExtension_private_method__set_use_debanding>`\ (\ use_debanding\: :ref:`bool<class_bool>`\ ) |virtual|                                         |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_RenderSceneBuffersExtension_private_method__configure:

.. rst-class:: classref-method

|void| **_configure**\ (\ config\: :ref:`RenderSceneBuffersConfiguration<class_RenderSceneBuffersConfiguration>`\ ) |virtual| :ref:`🔗<class_RenderSceneBuffersExtension_private_method__configure>`

Впровадити це в GDExtension для обробки (re).

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersExtension_private_method__set_anisotropic_filtering_level:

.. rst-class:: classref-method

|void| **_set_anisotropic_filtering_level**\ (\ anisotropic_filtering_level\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_RenderSceneBuffersExtension_private_method__set_anisotropic_filtering_level>`

Застосуйте це в GDExtension, щоб змінити рівень анізотропної фільтрації.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersExtension_private_method__set_fsr_sharpness:

.. rst-class:: classref-method

|void| **_set_fsr_sharpness**\ (\ fsr_sharpness\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_RenderSceneBuffersExtension_private_method__set_fsr_sharpness>`

Впроваджувати це в GDExtension для запису значення гостроти FSR.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersExtension_private_method__set_texture_mipmap_bias:

.. rst-class:: classref-method

|void| **_set_texture_mipmap_bias**\ (\ texture_mipmap_bias\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_RenderSceneBuffersExtension_private_method__set_texture_mipmap_bias>`

Реалізувати це в GDExtension для зміни текстури mipmap bias.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersExtension_private_method__set_use_debanding:

.. rst-class:: classref-method

|void| **_set_use_debanding**\ (\ use_debanding\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_RenderSceneBuffersExtension_private_method__set_use_debanding>`

Впровадити це в GDExtension, щоб реагувати на зміни прапора розбиття.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
