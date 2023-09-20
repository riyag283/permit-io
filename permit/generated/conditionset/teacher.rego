package permit.generated.conditionset

import future.keywords.in

import data.permit.generated.abac.utils.attributes

default resourceset_teacher = false

resourceset_teacher {
	attributes.resource.teacher_id == 0
	attributes.resource.type == "Class"
}
