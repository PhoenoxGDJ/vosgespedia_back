# vosgespedia

cette api est une api concue pour la webapp vosgespedia.

endpoints :

http://vosgespedia.sc3zeep6040.universe.wf/api/traces : permets de récupérer la liste des traces, sans classement particulier.
http://vosgespedia.sc3zeep6040.universe.wf/api/traces?id={$id} : permets de récupérer la trace d'id {$id}
http://vosgespedia.sc3zeep6040.universe.wf/api/traces?name={$name} : permets de récupérer les traces avec un nom similaire à {$name}

http://vosgespedia.sc3zeep6040.universe.wf/api/animals : permets de récupérer la liste des animaux, sans classement particulier.
http://vosgespedia.sc3zeep6040.universe.wf/api/animals?id={$id} : permets de récupérer l'animal d'id {$id}
http://vosgespedia.sc3zeep6040.universe.wf/api/animals?name={$name} : permets de récupérer les animaux avec un nom similaire à {$name}

http://vosgespedia.sc3zeep6040.universe.wf/api/categories : permets de récuperer la liste des catégories de traces, sans classement particulier.
http://vosgespedia.sc3zeep6040.universe.wf/api/categories?id={$id} : permets de récupérer la categorie d'id {$id}
http://vosgespedia.sc3zeep6040.universe.wf/api/categories?name={$name} : permets de récupérer les categories avec un nom similaire à {$name}

http://vosgespedia.sc3zeep6040.universe.wf/api/cattr?id={$id} : permets de récupérer les traces de la catégorie d'id {$id}