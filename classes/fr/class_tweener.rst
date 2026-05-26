:github_url: hide

.. _class_Tweener:

Tweener
=======

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`AwaitTweener<class_AwaitTweener>`, :ref:`CallbackTweener<class_CallbackTweener>`, :ref:`IntervalTweener<class_IntervalTweener>`, :ref:`MethodTweener<class_MethodTweener>`, :ref:`PropertyTweener<class_PropertyTweener>`, :ref:`SubtweenTweener<class_SubtweenTweener>`

Classe abstraite pour tous les Tweeners utilisés par :ref:`Tween<class_Tween>`.

.. rst-class:: classref-introduction-group

Description
-----------

Les tweeners sont des objets qui effectuent une tâche d'animation spécifique, par exemple interpoler une propriété ou appeler une méthode à un moment donné. Un **Tweener** ne peut pas être créé manuellement, vous devez utiliser une méthode dédiée de :ref:`Tween<class_Tween>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_Tweener_signal_finished:

.. rst-class:: classref-signal

**finished**\ (\ ) :ref:`🔗<class_Tweener_signal_finished>`

Émis quand le **Tweener** a terminé son travail ou est devenu invalide (par ex. à cause d'un objet libéré).

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
