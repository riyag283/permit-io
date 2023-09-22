package package permit.custom

import future.keywords.in
import data.permit.policies
import data.permit.rbac

default allow := false

allow {
    not "rbac" in policies.__allow_sources
    print(policies.__allow_sources)
}