:github_url: hide

.. _class_RenderDataExtension:

RenderDataExtension
===================

**Успадковує:** :ref:`RenderData<class_RenderData>` **<** :ref:`Object<class_Object>`

Даний клас дозволяє здійснювати виконання RenderData в GDExtension.

.. rst-class:: classref-introduction-group

Опис
--------

Даний клас дозволяє здійснювати виконання RenderData в GDExtension.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                               | :ref:`_get_camera_attributes<class_RenderDataExtension_private_method__get_camera_attributes>`\ (\ ) |virtual| |const|       |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                               | :ref:`_get_environment<class_RenderDataExtension_private_method__get_environment>`\ (\ ) |virtual| |const|                   |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RenderSceneBuffers<class_RenderSceneBuffers>` | :ref:`_get_render_scene_buffers<class_RenderDataExtension_private_method__get_render_scene_buffers>`\ (\ ) |virtual| |const| |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RenderSceneData<class_RenderSceneData>`       | :ref:`_get_render_scene_data<class_RenderDataExtension_private_method__get_render_scene_data>`\ (\ ) |virtual| |const|       |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_RenderDataExtension_private_method__get_camera_attributes:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **_get_camera_attributes**\ (\ ) |virtual| |const| :ref:`🔗<class_RenderDataExtension_private_method__get_camera_attributes>`

Реалізувати це в GDExtension, щоб повернути :ref:`RID<class_RID>` для об'єкта атрибутів камери.

.. rst-class:: classref-item-separator

----

.. _class_RenderDataExtension_private_method__get_environment:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **_get_environment**\ (\ ) |virtual| |const| :ref:`🔗<class_RenderDataExtension_private_method__get_environment>`

Впровадити це в GDExtension, щоб повернути :ref:`RID<class_RID>` об'єкту середовища реалізації.

.. rst-class:: classref-item-separator

----

.. _class_RenderDataExtension_private_method__get_render_scene_buffers:

.. rst-class:: classref-method

:ref:`RenderSceneBuffers<class_RenderSceneBuffers>` **_get_render_scene_buffers**\ (\ ) |virtual| |const| :ref:`🔗<class_RenderDataExtension_private_method__get_render_scene_buffers>`

Впровадити це в GDExtension для повернення об'єкта реалізації :ref:`RenderSceneBuffers<class_RenderSceneBuffers>`.

.. rst-class:: classref-item-separator

----

.. _class_RenderDataExtension_private_method__get_render_scene_data:

.. rst-class:: classref-method

:ref:`RenderSceneData<class_RenderSceneData>` **_get_render_scene_data**\ (\ ) |virtual| |const| :ref:`🔗<class_RenderDataExtension_private_method__get_render_scene_data>`

Впровадити це в GDExtension для повернення об'єкта реалізації :ref:`RenderSceneDataExtension<class_RenderSceneDataExtension>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
