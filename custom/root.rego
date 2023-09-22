package package permit.custom

import future.keywords.in
import data.permit.policies
import data.permit.rbac

default allow := false

allow {
   "teacher" in rbac.allowing_roles
}