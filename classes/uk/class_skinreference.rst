:github_url: hide

.. _class_SkinReference:

SkinReference
=============

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Об’єкт власника з підрахунком посилань для скелетного RID, що використовується в :ref:`RenderingServer<class_RenderingServer>`.

.. rst-class:: classref-introduction-group

Опис
--------

Внутрішній об’єкт, що містить відображення з :ref:`Skin<class_Skin>`, що використовується в контексті конкретного :ref:`MeshInstance3D<class_MeshInstance3D>` для посилання на :ref:`RID<class_RID>` скелета в RenderingServer.

Дивіться також :ref:`MeshInstance3D.get_skin_reference()<class_MeshInstance3D_method_get_skin_reference>` і :ref:`RenderingServer.instance_attach_skeleton()<class_RenderingServer_method_instance_attach_skeleton>`.

Зауважте, що незважаючи на подібне найменування, RID скелета, який використовується в :ref:`RenderingServer<class_RenderingServer>`, не має прямої однозначної відповідності до вузла :ref:`Skeleton3D<class_Skeleton3D>`.

Зокрема, вузол :ref:`Skeleton3D<class_Skeleton3D>` без дочірніх елементів :ref:`MeshInstance3D<class_MeshInstance3D>` може бути невідомий :ref:`RenderingServer<class_RenderingServer>`.

З іншого боку, :ref:`Skeleton3D<class_Skeleton3D>` із кількома вузлами :ref:`MeshInstance3D<class_MeshInstance3D>`, кожен з яких має різні об’єкти :ref:`MeshInstance3D.skin<class_MeshInstance3D_property_skin>`, може мати кілька екземплярів SkinReference (і, отже, кілька скелетів :ref:`RID<class_RID>`).

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`   | :ref:`get_skeleton<class_SkinReference_method_get_skeleton>`\ (\ ) |const| |
   +-------------------------+----------------------------------------------------------------------------+
   | :ref:`Skin<class_Skin>` | :ref:`get_skin<class_SkinReference_method_get_skin>`\ (\ ) |const|         |
   +-------------------------+----------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_SkinReference_method_get_skeleton:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_skeleton**\ (\ ) |const| :ref:`🔗<class_SkinReference_method_get_skeleton>`

Повертає :ref:`RID<class_RID>`, що належить цьому SkinReference, як повертає :ref:`RenderingServer.skeleton_create()<class_RenderingServer_method_skeleton_create>`.

.. rst-class:: classref-item-separator

----

.. _class_SkinReference_method_get_skin:

.. rst-class:: classref-method

:ref:`Skin<class_Skin>` **get_skin**\ (\ ) |const| :ref:`🔗<class_SkinReference_method_get_skin>`

Повертає :ref:`Skin<class_Skin>`, підключений до цього SkinReference. У випадку :ref:`MeshInstance3D<class_MeshInstance3D>` без призначеного :ref:`MeshInstance3D.skin<class_MeshInstance3D_property_skin>`, це посилатиметься на внутрішній :ref:`Skin<class_Skin>` за замовчуванням, який належить цьому :ref:`MeshInstance3D<class_MeshInstance3D>`.

Зауважте, що один :ref:`Skin<class_Skin>` може мати більше одного **SkinReference** у випадку, якщо він використовується сітками для кількох вузлів :ref:`Skeleton3D<class_Skeleton3D>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
