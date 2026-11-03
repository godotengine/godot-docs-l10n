:github_url: hide

.. _class_Semaphore:

Semaphore
=========

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A synchronization mechanism used to control access to a shared resource by :ref:`Thread<class_Thread>`\ s.

.. rst-class:: classref-introduction-group

Description
-----------

A synchronization semaphore that can be used to synchronize multiple :ref:`Thread<class_Thread>`\ s. Initialized to zero on creation. For a binary version, see :ref:`Mutex<class_Mutex>`.

\ **Warning:** Semaphores must be used carefully to avoid deadlocks.

\ **Warning:** To guarantee that the operating system is able to perform proper cleanup (no crashes, no deadlocks), these conditions must be met:

- When a **Semaphore**'s reference count reaches zero and it is therefore destroyed, no threads must be waiting on it.

- When a :ref:`Thread<class_Thread>`'s reference count reaches zero and it is therefore destroyed, it must not be waiting on any semaphore.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Utiliser plusieurs fils d'exécution <../tutorials/performance/using_multiple_threads>`

- :doc:`Les API sûres pour plusieurs fils d'exécution <../tutorials/performance/thread_safe_apis>`

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------+-----------------------------------------------------------------------------------+
   | |void|                  | :ref:`post<class_Semaphore_method_post>`\ (\ count\: :ref:`int<class_int>` = 1\ ) |
   +-------------------------+-----------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`try_wait<class_Semaphore_method_try_wait>`\ (\ )                            |
   +-------------------------+-----------------------------------------------------------------------------------+
   | |void|                  | :ref:`wait<class_Semaphore_method_wait>`\ (\ )                                    |
   +-------------------------+-----------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_Semaphore_method_post:

.. rst-class:: classref-method

|void| **post**\ (\ count\: :ref:`int<class_int>` = 1\ ) :ref:`🔗<class_Semaphore_method_post>`

Lowers the **Semaphore**, allowing one thread in, or more if ``count`` is specified.

.. rst-class:: classref-item-separator

----

.. _class_Semaphore_method_try_wait:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **try_wait**\ (\ ) :ref:`🔗<class_Semaphore_method_try_wait>`

Comme :ref:`wait()<class_Semaphore_method_wait>`, mais ne bloque pas, donc si la valeur vaut zéro, échoue immédiatement et renvoie ``false``. Si différent de zéro, renvoie ``true`` pour signaler le succès.

.. rst-class:: classref-item-separator

----

.. _class_Semaphore_method_wait:

.. rst-class:: classref-method

|void| **wait**\ (\ ) :ref:`🔗<class_Semaphore_method_wait>`

Waits for the **Semaphore**, if its value is zero, blocks until non-zero.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
