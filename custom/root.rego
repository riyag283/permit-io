package package permit.custom

import future.keywords.in
import data.permit.policies
import data.permit.rbac

default allow := false

allow {
    print(policies.__allow_sources)
    not "rbac" in policies.__allow_sources
} else {
   not "teacher" in rbac.allowing_roles
} else {
   time.now_ns() >= time.parse_rfc3339_ns("2023-01-01T00:00:00+02:00")
   time.now_ns() <= time.parse_rfc3339_ns("2024-01-01T00:00:00+02:00")
}