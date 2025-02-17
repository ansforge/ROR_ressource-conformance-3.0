<!-- ## Signalement d’anomalie
<code><span style="background-color: #58D68D;color:white;font-weight:bold;font-size: x-large;">ROR 2.3</span></code> -->

### Construction de la requête de base

<table>
<tbody>
<tr>
<td width="226">
<p><strong>Interaction FHIR</strong></p>
</td>
<td width="453">
<p>Create<a href="#_ftn1" name="_ftnref1"><sup>[1]</sup></a></p>
</td>
</tr>
<tr>
<td width="226">
<p><strong>M&eacute;thode http associ&eacute;e</strong></p>
</td>
<td width="453">
<p>POST</p>
</td>
</tr>
<tr>
<td width="226">
<p><strong>Ressource recherch&eacute;e</strong></p>
</td>
<td width="453">
<p>Task</p>
</td>
</tr>
<tr>
<td width="226">
<p><strong>Construction requ&ecirc;te de base</strong></p>
</td>
<td width="453">
<p><code>POST [base]/Task{?_format=[mime-type]}</code></p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<p><a href="#_ftnref1" name="_ftn1">[1]</a> <a href="https://www.hl7.org/fhir/R4/http.html#create">https://www.hl7.org/fhir/R4/http.html#create</a> et <a href="https://www.hl7.org/fhir/R4/http.html#general">https://www.hl7.org/fhir/R4/http.html#general</a></p>

### Construction de la réponse de base

#### Réponse de base -- Succès

Lien vers la spécification FHIR : <https://www.hl7.org/fhir/R4/http.html >

Si la création est un succès, le serveur répond en renvoyant a minima:
-	Un header avec un code 201 Created HTTP.
-	Un header Location contenant le nouvel identifiant technique et l’identifiant de version de la ressource créée.
-	L’identifiant fonctionnel de la ressouce créée.


#### Réponse de base -- Echec

Lien vers la spécification FHIR :
[https://www.hl7.org/fhir/R4/operationoutcome.html](https://www.hl7.org/fhir/R4/operationoutcome.html)

Si la création échoue, le serveur doit répondre :

Un header avec un un code erreur HTTP 4XX ou 5XX

Un body contenant une ressource OperationOutcome qui donne les
détails sur la raison de l'échec

Remarque : l'échec d'une recherche est la non-possibilité d'exécuter la
requête, ce qui est différent d'aucune correspondance à la recherche.
Plus de précision sur la spécification FHIR :
[https://www.hl7.org/fhir/R4/http.html](https://www.hl7.org/fhir/R4/http.html)

### Exemple de requêtes

#### Scénario 1 : Un responsable qualité souhaite signaler une anomalie sur un élément.

**Description du scénario :** Un responsable qualité souhaite signaler une anomalie sur un élément.

**Exemple :** Signalement d’une anomalie sur la catégorie d’établissement pour un établissement spécifique.

**Requête :**

N.B.: Exemple de ressource fictif pour illustration, ces ressources ne sont pas validées par le guide d'implémentation et sont donc sujettes aux erreurs. Pour l'implémentation se baser sur les profils.


```json

Requête Postman : POST https://rortest.esante.gouv.fr/anomalies/Task

Body :
{
    "resourceType": "Task",
    "id": "ror-task-exemple",
    "meta": {
        "profile": [
            "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-task"
        ]
    },
    "text": {
        "status": "generated",
        "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p class=\"res-header-id\"><b>Generated Narrative: Task ror-task-exemple</b></p><a name=\"ror-task-exemple\"> </a><a name=\"hcror-task-exemple\"> </a><a name=\"ror-task-exemple-fr-FR\"> </a><p><b>status</b>: In Progress</p><p><b>businessStatus</b>: <span title=\"Codes:{https://mos.esante.gouv.fr/NOS/TRE_R352-StatutMetierAnomalie/FHIR/TRE-R352-StatutMetierAnomalie 02}\">À traiter</span></p><p><b>intent</b>: order</p><p><b>code</b>: <span title=\"Codes:{https://mos.esante.gouv.fr/NOS/TRE_R350-ThematiqueAnomalie/FHIR/TRE-R350-ThematiqueAnomalie 06}\">Exactitude</span></p><p><b>description</b>: Ici la catégorie d'établissement n'est pas la bonne</p><p><b>focus</b>: Identifier: 1910800002</p><p><b>authoredOn</b>: 2024-01-03</p><p><b>lastModified</b>: 2024-01-04</p><p><b>reasonCode</b>: <span title=\"Codes:{https://mos.esante.gouv.fr/NOS/TRE_R349-ActionAnomalie/FHIR/TRE-R349-ActionAnomalie COR}\">Correction</span></p><blockquote><p><b>input</b></p><p><b>type</b>: <span title=\"Codes:{https://interop.esante.gouv.fr/ig/fhir/ror/CodeSystem/input-task-ror-codesystem systemRequester}\">systemRequester</span></p><p><b>value</b>: IHM</p></blockquote><blockquote><p><b>input</b></p><p><b>type</b>: <span title=\"Codes:{https://interop.esante.gouv.fr/ig/fhir/ror/CodeSystem/input-task-ror-codesystem pathElementError}\">pathElementError</span></p><p><b>value</b>: <span title=\"text/fhirpath\"><code>Organization.type.coding.where(system='https://mos.esante.gouv.fr/NOS/TRE_R66-CategorieEtablissement/FHIR/TRE-R66-CategorieEtablissement')</code></span></p></blockquote></div>"
    },
    "status": "in-progress",
    "businessStatus": {
        "coding": [
            {
                "system": "https://mos.esante.gouv.fr/NOS/TRE_R352-StatutMetierAnomalie/FHIR/TRE-R352-StatutMetierAnomalie",
                "code": "02",
                "display": "À traiter"
            }
        ]
    },
    "intent": "order",
    "code": {
        "coding": [
            {
                "system": "https://mos.esante.gouv.fr/NOS/TRE_R350-ThematiqueAnomalie/FHIR/TRE-R350-ThematiqueAnomalie",
                "code": "06",
                "display": "Exactitude"
            }
        ]
    },
    "description": "Ici la catégorie d'établissement n'est pas la bonne",
    "focus": {
        "type": "Organization",
        "identifier": {
            "value": "1910800002"
        }
    },
    "authoredOn": "2024-01-03",
    "lastModified": "2024-01-04",
    "reasonCode": {
        "coding": [
            {
                "system": "https://mos.esante.gouv.fr/NOS/TRE_R349-ActionAnomalie/FHIR/TRE-R349-ActionAnomalie",
                "code": "COR",
                "display": "Correction"
            }
        ]
    },
    "input": [
        {
            "type": {
                "coding": [
                    {
                        "system": "https://interop.esante.gouv.fr/ig/fhir/ror/CodeSystem/input-task-ror-codesystem",
                        "code": "systemRequester"
                    }
                ]
            },
            "valueString": "IHM"
        },
        {
            "type": {
                "coding": [
                    {
                        "system": "https://interop.esante.gouv.fr/ig/fhir/ror/CodeSystem/input-task-ror-codesystem",
                        "code": "pathElementError"
                    }
                ]
            },
            "valueExpression": {
                "language": "text/fhirpath",
                "expression": "Organization.type.coding.where(system='https://mos.esante.gouv.fr/NOS/TRE_R66-CategorieEtablissement/FHIR/TRE-R66-CategorieEtablissement')"
            }
        }
    ]
}
```

<!-- suppression scenario à la demande du ROR cf issue https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/207 
#### Scénario 2 : Signalement de plusieurs anomalies

**Description du scénario :** Le moteur de règle crée automatiquement une ou plusieurs anomalies sur un ou plusieurs éléments.

**Requête :**

```json
POST [BASE]/Bundle
{
  "resourceType": "Bundle",
	"type":"collection",
	"entry" : [
		{	
			"resource": {
				"resourceType": "Task",
				"businessStatus": [ { "system": "JDV XX", "value": "12345" } ],
				"code": [ { "system": "JDV XXX", "value": "12345" } ],
				"description": "description de notre ano",
				"focus": "URL HealthcareService"
			}
		},
			{
			"resource": {
				"resourceType": "Task",
				"businessStatus": [ { "system": "JDV XX", "value": "12345" } ],
				"code": [ { "system": "JDV XXX", "value": "12345" } ],
				"description": "description de notre ano",
				"focus": "URL Location"
			}
	
	
		}
				
	]
}
```
-->