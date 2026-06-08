:github_url: hide

.. _class_RenderSceneDataExtension:

RenderSceneDataExtension
========================

**Успадковує:** :ref:`RenderSceneData<class_RenderSceneData>` **<** :ref:`Object<class_Object>`

Цей клас дозволяє здійснювати реалізацію RenderSceneData в GDExtension.

.. rst-class:: classref-introduction-group

Опис
--------

Цей клас дозволяє здійснювати реалізацію RenderSceneData в GDExtension.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>`   | :ref:`_get_cam_projection<class_RenderSceneDataExtension_private_method__get_cam_projection>`\ (\ ) |virtual| |const|                                 |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`_get_cam_transform<class_RenderSceneDataExtension_private_method__get_cam_transform>`\ (\ ) |virtual| |const|                                   |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                 | :ref:`_get_uniform_buffer<class_RenderSceneDataExtension_private_method__get_uniform_buffer>`\ (\ ) |virtual| |const|                                 |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`_get_view_count<class_RenderSceneDataExtension_private_method__get_view_count>`\ (\ ) |virtual| |const|                                         |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`         | :ref:`_get_view_eye_offset<class_RenderSceneDataExtension_private_method__get_view_eye_offset>`\ (\ view\: :ref:`int<class_int>`\ ) |virtual| |const| |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>`   | :ref:`_get_view_projection<class_RenderSceneDataExtension_private_method__get_view_projection>`\ (\ view\: :ref:`int<class_int>`\ ) |virtual| |const| |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_RenderSceneDataExtension_private_method__get_cam_projection:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **_get_cam_projection**\ (\ ) |virtual| |const| :ref:`🔗<class_RenderSceneDataExtension_private_method__get_cam_projection>`

Впровадити це в GDExtension для повернення камери :ref:`Projection<class_Projection>`.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneDataExtension_private_method__get_cam_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **_get_cam_transform**\ (\ ) |virtual| |const| :ref:`🔗<class_RenderSceneDataExtension_private_method__get_cam_transform>`

Впровадити це в GDExtension для повернення камери :ref:`Transform3D<class_Transform3D>`.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneDataExtension_private_method__get_uniform_buffer:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **_get_uniform_buffer**\ (\ ) |virtual| |const| :ref:`🔗<class_RenderSceneDataExtension_private_method__get_uniform_buffer>`

Впровадити це в GDExtension, щоб повернути :ref:`RID<class_RID>` однорідного буфера, що містить дані сцени як UBO.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneDataExtension_private_method__get_view_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_view_count**\ (\ ) |virtual| |const| :ref:`🔗<class_RenderSceneDataExtension_private_method__get_view_count>`

Впровадити це в GDExtension, щоб повернути кількість переглядів.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneDataExtension_private_method__get_view_eye_offset:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **_get_view_eye_offset**\ (\ view\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_RenderSceneDataExtension_private_method__get_view_eye_offset>`

Впроваджуйте це в GDExtension, щоб повернути офсет очей для вказаного ``view``.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneDataExtension_private_method__get_view_projection:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **_get_view_projection**\ (\ view\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_RenderSceneDataExtension_private_method__get_view_projection>`

Впровадити це в GDExtension, щоб повернути вид :ref:`Projection<class_Projection>` для вказаного ``view``.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
