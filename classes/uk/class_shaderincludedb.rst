:github_url: hide

.. _class_ShaderIncludeDB:

ShaderIncludeDB
===============

**Успадковує:** :ref:`Object<class_Object>`

Внутрішня база даних вбудованого шейдера включає файли.

.. rst-class:: classref-introduction-group

Опис
--------

Цей об’єкт містить фрагменти шейдерів із внутрішніх шейдерів Godot. Їх можна використовувати, коли потрібен доступ до внутрішніх уніфікованих буферів і/або внутрішніх функцій, наприклад, під час компонування ефектів композитора або обчислювальних шейдерів. Завантажуються лише фрагменти для поточного пристрою відтворення.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`get_built_in_include_file<class_ShaderIncludeDB_method_get_built_in_include_file>`\ (\ filename\: :ref:`String<class_String>`\ ) |static| |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`has_built_in_include_file<class_ShaderIncludeDB_method_has_built_in_include_file>`\ (\ filename\: :ref:`String<class_String>`\ ) |static| |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`list_built_in_include_files<class_ShaderIncludeDB_method_list_built_in_include_files>`\ (\ ) |static|                                     |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_ShaderIncludeDB_method_get_built_in_include_file:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_built_in_include_file**\ (\ filename\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_ShaderIncludeDB_method_get_built_in_include_file>`

Повертає код для вбудованого фрагмента шейдера. Ви також можете отримати доступ до цього в коді шейдера за допомогою ``#include "filename"``.

.. rst-class:: classref-item-separator

----

.. _class_ShaderIncludeDB_method_has_built_in_include_file:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_built_in_include_file**\ (\ filename\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_ShaderIncludeDB_method_has_built_in_include_file>`

Повертає ``true``, якщо файл включення з такою назвою існує.

.. rst-class:: classref-item-separator

----

.. _class_ShaderIncludeDB_method_list_built_in_include_files:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **list_built_in_include_files**\ (\ ) |static| :ref:`🔗<class_ShaderIncludeDB_method_list_built_in_include_files>`

Повертає список вбудованих файлів включення, які наразі зареєстровані.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
