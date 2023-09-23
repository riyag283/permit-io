package permit.custom

import data.permit.policies
import permit.rbac

default allow := false

allow {
    not "rbac" in policies.__allow_sources
} else {
   not "demo" in rbac.allowing_roles
} else {
    input.user.key == "test@permit.io"
}

# You can find the official Rego tutorial at:
# https://www.openpolicyagent.org/docs/latest/policy-language/
# Example rule - you can replace this with something of your own
# allow {
# 	input.user.key == "test@permit.io"
# }
# Also, you can add more allow blocks here to get an OR effect
# allow {
#     # i.e if you add my_custom_rule here - the policy will allow
#     # if my_custom_rule is true, EVEN IF policies.allow is false.
#     my_custom_rule
# }
