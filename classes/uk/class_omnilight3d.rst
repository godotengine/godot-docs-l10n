:github_url: hide

.. meta::
	:keywords: point

.. _class_OmniLight3D:

OmniLight3D
===========

**Успадковує:** :ref:`Light3D<class_Light3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Непряме світло, наприклад, лампочка або свічка.

.. rst-class:: classref-introduction-group

Опис
--------

Випромінює світло в усіх напрямках. Світло загартований на відстані і цей ослаблення можна налаштувати, змінивши його енергію, радіус і загартування параметрів.

\ **Примітка:** При використанні методу мобільного рендерингу можна відобразити лише 8 омнів. Припустимо, щоб відобразити більше 8 Omni вогнів на одному мережевому ресурсі призведе до омні світильники, що блимає, і ви, як камера рухається. При використанні методу Compatability може відображатися тільки 8 omni вогнів на кожному з мережевих ресурсів за замовчуванням, але це може бути збільшено, скоригуючи :ref:`ProjectSettings.rendering/limits/opengl/max_lights_per_object<class_ProjectSettings_property_rendering/limits/opengl/max_lights_per_object>`\ 

\ **Примітка:** При використанні мобільних або сумісних методів, омні світильники будуть тільки коректно впливати на сітки, видимість яких AABB взаємодіє з легким AABB. При використанні шейдера для деформування сітки таким чином, що робить його поза її AABB, :ref:`GeometryInstance3D.extra_cull_margin<class_GeometryInstance3D_property_extra_cull_margin>` необхідно збільшити на сітці. В іншому випадку світло не видно на сітці.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`3D світло та тіні <../tutorials/3d/lights_and_shadows>`

- :doc:`Захоплення глобального освітлення <../tutorials/3d/global_illumination/faking_global_illumination>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +------------------------------------------------+----------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                      | light_specular                                                       | ``0.5`` (overrides :ref:`Light3D<class_Light3D_property_light_specular>`)     |
   +------------------------------------------------+----------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                      | :ref:`omni_attenuation<class_OmniLight3D_property_omni_attenuation>` | ``1.0``                                                                       |
   +------------------------------------------------+----------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                      | :ref:`omni_range<class_OmniLight3D_property_omni_range>`             | ``5.0``                                                                       |
   +------------------------------------------------+----------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`ShadowMode<enum_OmniLight3D_ShadowMode>` | :ref:`omni_shadow_mode<class_OmniLight3D_property_omni_shadow_mode>` | ``1``                                                                         |
   +------------------------------------------------+----------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                      | shadow_normal_bias                                                   | ``1.0`` (overrides :ref:`Light3D<class_Light3D_property_shadow_normal_bias>`) |
   +------------------------------------------------+----------------------------------------------------------------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_OmniLight3D_ShadowMode:

.. rst-class:: classref-enumeration

enum **ShadowMode**: :ref:`🔗<enum_OmniLight3D_ShadowMode>`

.. _class_OmniLight3D_constant_SHADOW_DUAL_PARABOLOID:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowMode<enum_OmniLight3D_ShadowMode>` **SHADOW_DUAL_PARABOLOID** = ``0``

Тіні подаються до подвійної патогенної текстури. Швидше за те, що :ref:`SHADOW_CUBE<class_OmniLight3D_constant_SHADOW_CUBE>`, але неякісна.

.. _class_OmniLight3D_constant_SHADOW_CUBE:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowMode<enum_OmniLight3D_ShadowMode>` **SHADOW_CUBE** = ``1``

Тіні подаються на кубічну карту. Slower, ніж :ref:`SHADOW_DUAL_PARABOLOID<class_OmniLight3D_constant_SHADOW_DUAL_PARABOLOID>`, але вища якість.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_OmniLight3D_property_omni_attenuation:

.. rst-class:: classref-property

:ref:`float<class_float>` **omni_attenuation** = ``1.0`` :ref:`🔗<class_OmniLight3D_property_omni_attenuation>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

Контроль функції дистанційного зондування для omnilights.

Значення ``0.0`` буде підтримувати постійну яскравість через більшу частину діапазону, але плавно нахилити світло на краю діапазону. Використовуйте значення ``2.0`` для фізично точних світильників, як це призводить до належної інверсної квадратної загартування.

\ **Примітка:** Встановлення атетуації до ``2.0`` або вище може призвести до віддалених об'єктів, що отримують мінімальне освітлення, навіть в діапазоні. Наприклад, з діапазоном ``4096``, об'єкт на ``100`` юніти заміщено фактором ``0.0001``. За замовчуванням яскравість ``1``, світло не буде видно на цій відстані.

\ **Примітка:** Використання негативних або значень вище ``10.0`` може призвести до несподіваних результатів.

.. rst-class:: classref-item-separator

----

.. _class_OmniLight3D_property_omni_range:

.. rst-class:: classref-property

:ref:`float<class_float>` **omni_range** = ``5.0`` :ref:`🔗<class_OmniLight3D_property_omni_range>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

Легкий радіус. Зауважте, що ефективна освітлена зона може з'явитися меншою залежно від :ref:`omni_attenuation<class_OmniLight3D_property_omni_attenuation>` у використанні. Немає значення :ref:`omni_attenuation<class_OmniLight3D_property_omni_attenuation>` у використанні, світло ніколи не досягне нічого поза цим радіусом.

\ **Примітка:** :ref:`omni_range<class_OmniLight3D_property_omni_range>` не впливає :ref:`Node3D.scale<class_Node3D_property_scale>` (вага легкого або його батьківського масштабу).

.. rst-class:: classref-item-separator

----

.. _class_OmniLight3D_property_omni_shadow_mode:

.. rst-class:: classref-property

:ref:`ShadowMode<enum_OmniLight3D_ShadowMode>` **omni_shadow_mode** = ``1`` :ref:`🔗<class_OmniLight3D_property_omni_shadow_mode>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_mode**\ (\ value\: :ref:`ShadowMode<enum_OmniLight3D_ShadowMode>`\ )
- :ref:`ShadowMode<enum_OmniLight3D_ShadowMode>` **get_shadow_mode**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
