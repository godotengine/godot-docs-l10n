:github_url: hide

.. meta::
	:keywords: background, sky

.. _class_WorldEnvironment:

WorldEnvironment
================

**Успадковує:** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

За замовчуванням властивості середовища для всієї сцени (попередньообробні ефекти, освітлення та налаштування фону).

.. rst-class:: classref-introduction-group

Опис
--------

**WorldEnvironment** node використовується для налаштування за замовчуванням :ref:`Environment<class_Environment>` для сцени.

Параметри, визначені в **WorldEnvironment**, можуть передаватися за допомогою вузла :ref:`Environment<class_Environment>` на поточний :ref:`Camera3D<class_Camera3D>`. Крім того, тільки один **WorldEnvironment** може бути миттєвий в даній сцені.

\ **WorldEnvironment** дозволяє користувачеві вказати параметри освітлення за замовчуванням (наприклад, освітлення навколишнього середовища), різні ефекти після обробки (наприклад, SSAO, DOF, Tonemapping), і як намалювати фон (наприклад, суцільний колір, skybox). Як правило, це додано для поліпшення реалістичності / балансу сцени.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Середовище та пост-обробка <../tutorials/3d/environment_and_post_processing>`

- `3D Матеріал Тестери Демо <https://godotengine.org/asset-library/asset/2742>`__

- `Демо-версія шутера від третьої особи (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------------------------------+-----------------------------------------------------------------------------+
   | :ref:`CameraAttributes<class_CameraAttributes>` | :ref:`camera_attributes<class_WorldEnvironment_property_camera_attributes>` |
   +-------------------------------------------------+-----------------------------------------------------------------------------+
   | :ref:`Compositor<class_Compositor>`             | :ref:`compositor<class_WorldEnvironment_property_compositor>`               |
   +-------------------------------------------------+-----------------------------------------------------------------------------+
   | :ref:`Environment<class_Environment>`           | :ref:`environment<class_WorldEnvironment_property_environment>`             |
   +-------------------------------------------------+-----------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_WorldEnvironment_property_camera_attributes:

.. rst-class:: classref-property

:ref:`CameraAttributes<class_CameraAttributes>` **camera_attributes** :ref:`🔗<class_WorldEnvironment_property_camera_attributes>`

.. rst-class:: classref-property-setget

- |void| **set_camera_attributes**\ (\ value\: :ref:`CameraAttributes<class_CameraAttributes>`\ )
- :ref:`CameraAttributes<class_CameraAttributes>` **get_camera_attributes**\ (\ )

За замовчуванням :ref:`CameraAttributes<class_CameraAttributes>` ресурс для використання, якщо не встановлено на :ref:`Camera3D<class_Camera3D>`.

.. rst-class:: classref-item-separator

----

.. _class_WorldEnvironment_property_compositor:

.. rst-class:: classref-property

:ref:`Compositor<class_Compositor>` **compositor** :ref:`🔗<class_WorldEnvironment_property_compositor>`

.. rst-class:: classref-property-setget

- |void| **set_compositor**\ (\ value\: :ref:`Compositor<class_Compositor>`\ )
- :ref:`Compositor<class_Compositor>` **get_compositor**\ (\ )

За замовчуванням :ref:`Compositor<class_Compositor>` ресурс для використання, якщо не встановлено на :ref:`Camera3D<class_Camera3D>`.

.. rst-class:: classref-item-separator

----

.. _class_WorldEnvironment_property_environment:

.. rst-class:: classref-property

:ref:`Environment<class_Environment>` **environment** :ref:`🔗<class_WorldEnvironment_property_environment>`

.. rst-class:: classref-property-setget

- |void| **set_environment**\ (\ value\: :ref:`Environment<class_Environment>`\ )
- :ref:`Environment<class_Environment>` **get_environment**\ (\ )

Ресурс ``Підвиток``, що використовується цим **WorldEnvironment**, визначаючи властивості за замовчуванням.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
