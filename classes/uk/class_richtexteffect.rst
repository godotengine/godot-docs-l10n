:github_url: hide

.. _class_RichTextEffect:

RichTextEffect
==============

**Успадковує:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Спеціальна дія для :ref:`RichTextLabel<class_RichTextLabel>`.

.. rst-class:: classref-introduction-group

Опис
--------

Власний ефект для :ref:`RichTextLabel<class_RichTextLabel>`, який можна завантажити в інспекторі :ref:`RichTextLabel<class_RichTextLabel>` або за допомогою :ref:`RichTextLabel.install_effect()<class_RichTextLabel_method_install_effect>`.

\ **Примітка:** Щоб **RichTextEffect** був придатним для використання, тег BBCode має бути визначений як змінна-член з назвою ``bbcode`` у скрипті.


.. tabs::

 .. code-tab:: gdscript

    # RichTextEffect можна буде використовувати так: `[example]Деякий текст[/example]`
    var bbcode = "example"

 .. code-tab:: csharp

    // RichTextEffect можна буде використовувати так: `[example]Деякий текст[/example]`
    string bbcode = "example";



\ **Примітка:** Щойно :ref:`RichTextLabel<class_RichTextLabel>` містить хоча б один **RichTextEffect**, ефект оброблятиметься безперервно, якщо проєкт не буде призупинено. Це може негативно вплинути на час роботи від батареї.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`BBCode Ів RichTextLabel <../tutorials/ui/bbcode_in_richtextlabel>`

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`_process_custom_fx<class_RichTextEffect_private_method__process_custom_fx>`\ (\ char_fx\: :ref:`CharFXTransform<class_CharFXTransform>`\ ) |virtual| |const| |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_RichTextEffect_private_method__process_custom_fx:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_process_custom_fx**\ (\ char_fx\: :ref:`CharFXTransform<class_CharFXTransform>`\ ) |virtual| |const| :ref:`🔗<class_RichTextEffect_private_method__process_custom_fx>`

Зазначте цей метод для зміни властивостей ``char_fx``. Метод повинен повернутися ``true``, якщо символ може бути успішно перетворений. Якщо метод повертає ``false``, він пропускає перетворення, щоб уникнути відображення порушеного тексту.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
