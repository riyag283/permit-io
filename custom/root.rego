package package permit.custom

import future.keywords.in
import data.permit.policies
import data.permit.rbac

default allow := false

allow {
    attributes.resource.type == "countries"
    print(policies.__allow_sources)
}