{
	"contents": {
		"d0f9aaed-7b2e-48e5-ba5c-673816ed392c": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "po_approval",
			"subject": "PO_Approval ( ${context.PO_NO})",
			"businessKey": "${context.PO_NO}",
			"name": "PO_Approval",
			"documentation": "Approval process for Purchase Order",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "StartEvent1"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "EndEvent1"
				}
			},
			"activities": {
				"710b4956-ccef-4595-a2e1-be9d57242926": {
					"name": "UserTask1"
				},
				"7332c1fb-e95a-4755-9979-51badcd48201": {
					"name": "ScriptTask1"
				},
				"2f1dcf8d-200c-4d6d-82c4-81637ee017dc": {
					"name": "ExclusiveGateway1"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"901e614c-0d6e-46b0-a626-bb7f90dc3925": {
					"name": "SequenceFlow2"
				},
				"20f2c713-c4dd-4614-a83d-a9a46f3d679b": {
					"name": "SequenceFlow3"
				},
				"78c61146-03ae-405f-9dcf-1afaf9f074ba": {
					"name": "SequenceFlow4"
				},
				"2b165abc-1fdf-4205-ba8e-26a3282c3cab": {
					"name": "SequenceFlow5"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1",
			"sampleContextRefs": {
				"afa50a09-011a-4414-81f2-f8e04edd1fcb": {}
			}
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"710b4956-ccef-4595-a2e1-be9d57242926": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "主管簽核( 單號:${context.FORM_TYPE} ${context.PO_NO} )",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://UI5_Louis1.zsapcomapprovePo/z.sap.com.approvePo",
			"recipientUsers": "${context.manager}",
			"id": "usertask1",
			"name": "UserTask1"
		},
		"7332c1fb-e95a-4755-9979-51badcd48201": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/PO_Approval/InitProcess.js",
			"id": "scripttask1",
			"name": "ScriptTask1"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "7332c1fb-e95a-4755-9979-51badcd48201"
		},
		"901e614c-0d6e-46b0-a626-bb7f90dc3925": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "710b4956-ccef-4595-a2e1-be9d57242926",
			"targetRef": "2f1dcf8d-200c-4d6d-82c4-81637ee017dc"
		},
		"20f2c713-c4dd-4614-a83d-a9a46f3d679b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "7332c1fb-e95a-4755-9979-51badcd48201",
			"targetRef": "710b4956-ccef-4595-a2e1-be9d57242926"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"dc9b267f-acb5-44b8-82e7-2f91cc66fd81": {},
				"9bd83411-de16-4e05-906a-1755e5b78765": {},
				"7b0d286e-74ca-4ab2-b799-8ff3b6cd344f": {},
				"11a0c470-7e02-4c22-a1cf-f8ea8df39336": {},
				"4a9076fb-6d16-4baf-9821-262f6694eb0e": {},
				"3e824d83-44e3-409e-be1b-2126d663c54f": {},
				"4cbd0cd2-6e9e-4f3b-8de6-8b3e90d99a48": {}
			}
		},
		"afa50a09-011a-4414-81f2-f8e04edd1fcb": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/PO_Approval/InitProcess.json",
			"id": "default-start-context"
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 70,
			"y": 100,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 554,
			"y": 274,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "86,116 208,116",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "7b0d286e-74ca-4ab2-b799-8ff3b6cd344f",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"dc9b267f-acb5-44b8-82e7-2f91cc66fd81": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 373,
			"y": 86,
			"width": 100,
			"height": 60,
			"object": "710b4956-ccef-4595-a2e1-be9d57242926"
		},
		"9bd83411-de16-4e05-906a-1755e5b78765": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "423,116.5 572,116.5",
			"sourceSymbol": "dc9b267f-acb5-44b8-82e7-2f91cc66fd81",
			"targetSymbol": "4a9076fb-6d16-4baf-9821-262f6694eb0e",
			"object": "901e614c-0d6e-46b0-a626-bb7f90dc3925"
		},
		"7b0d286e-74ca-4ab2-b799-8ff3b6cd344f": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 158,
			"y": 86,
			"width": 100,
			"height": 60,
			"object": "7332c1fb-e95a-4755-9979-51badcd48201"
		},
		"11a0c470-7e02-4c22-a1cf-f8ea8df39336": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "208,116 423,116",
			"sourceSymbol": "7b0d286e-74ca-4ab2-b799-8ff3b6cd344f",
			"targetSymbol": "dc9b267f-acb5-44b8-82e7-2f91cc66fd81",
			"object": "20f2c713-c4dd-4614-a83d-a9a46f3d679b"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"sequenceflow": 5,
			"startevent": 1,
			"endevent": 1,
			"usertask": 1,
			"scripttask": 1,
			"exclusivegateway": 1
		},
		"2f1dcf8d-200c-4d6d-82c4-81637ee017dc": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "ExclusiveGateway1",
			"default": "78c61146-03ae-405f-9dcf-1afaf9f074ba"
		},
		"4a9076fb-6d16-4baf-9821-262f6694eb0e": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 551,
			"y": 96,
			"object": "2f1dcf8d-200c-4d6d-82c4-81637ee017dc"
		},
		"78c61146-03ae-405f-9dcf-1afaf9f074ba": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow4",
			"name": "SequenceFlow4",
			"sourceRef": "2f1dcf8d-200c-4d6d-82c4-81637ee017dc",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"3e824d83-44e3-409e-be1b-2126d663c54f": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "571.75,117.25 571.75,291.25",
			"sourceSymbol": "4a9076fb-6d16-4baf-9821-262f6694eb0e",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "78c61146-03ae-405f-9dcf-1afaf9f074ba"
		},
		"2b165abc-1fdf-4205-ba8e-26a3282c3cab": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.approvalResult.result== \"REJECT\"}",
			"id": "sequenceflow5",
			"name": "SequenceFlow5",
			"sourceRef": "2f1dcf8d-200c-4d6d-82c4-81637ee017dc",
			"targetRef": "7332c1fb-e95a-4755-9979-51badcd48201"
		},
		"4cbd0cd2-6e9e-4f3b-8de6-8b3e90d99a48": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "572,116.5 572,9 208,9 208,116.5",
			"sourceSymbol": "4a9076fb-6d16-4baf-9821-262f6694eb0e",
			"targetSymbol": "7b0d286e-74ca-4ab2-b799-8ff3b6cd344f",
			"object": "2b165abc-1fdf-4205-ba8e-26a3282c3cab"
		}
	}
}