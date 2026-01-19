:github_url: hide

.. _class_UniformSetCacheRD:

UniformSetCacheRD
=================

**Успадковує:** :ref:`Object<class_Object>`

Уніформа встановити кеш-менеджер для рендерингових пристроїв на основі рендерингу.

.. rst-class:: classref-introduction-group

Опис
--------

Менеджер кешу уніфікованого набору для рендерів на основі :ref:`RenderingDevice<class_RenderingDevice>`. Надає спосіб створення уніфікованого набору та його повторного використання в наступних викликах, поки існує уніфікований набір. Уніфікований набір буде автоматично очищено після звільнення залежних об'єктів.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-----------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>` | :ref:`get_cache<class_UniformSetCacheRD_method_get_cache>`\ (\ shader\: :ref:`RID<class_RID>`, set\: :ref:`int<class_int>`, uniforms\: :ref:`Array<class_Array>`\[:ref:`RDUniform<class_RDUniform>`\]\ ) |static| |
   +-----------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_UniformSetCacheRD_method_get_cache:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_cache**\ (\ shader\: :ref:`RID<class_RID>`, set\: :ref:`int<class_int>`, uniforms\: :ref:`Array<class_Array>`\[:ref:`RDUniform<class_RDUniform>`\]\ ) |static| :ref:`🔗<class_UniformSetCacheRD_method_get_cache>`

Створює / перевертає рівномірний набір, заснований на наданих формах для даної затіні.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
