package permit.generated.conditionset.rules

import future.keywords.in

import data.permit.generated.abac.utils.attributes
import data.permit.generated.abac.utils.condition_set_permissions
import data.permit.generated.conditionset

default _5f5f_5f5fautogen_5f5fdemo_5fon_5fClass_5fteacher = false

_5f5f_5f5fautogen_5f5fdemo_5fon_5fClass_5fteacher {
	conditionset.userset__5f_5fautogen_5fdemo
	conditionset.resourceset_teacher
	input.action in condition_set_permissions.__autogen_demo.teacher[input.resource.type]
}
