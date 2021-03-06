FROM ansibleplaybookbundle/apb-base

LABEL "com.redhat.apb.spec"=\
"dmVyc2lvbjogMS4wCm5hbWU6IHVuaWZpZWRwdXNoLWFwYgpkZXNjcmlwdGlvbjogQWVyb0dlYXIg\
VW5pZmllZFB1c2ggU2VydmVyCmJpbmRhYmxlOiBUcnVlCmFzeW5jOiBvcHRpb25hbAp0YWdzOiAK\
ICAtIG1vYmlsZS1zZXJ2aWNlCm1ldGFkYXRhOgogIGRpc3BsYXlOYW1lOiBBZXJvR2VhciBVUFMK\
ICBpbWFnZVVybDogImh0dHBzOi8vcGJzLnR3aW1nLmNvbS9wcm9maWxlX2ltYWdlcy8xNzk0NDQw\
MDA1L2Flcm9nZWFyX2ljb24tMV80MDB4NDAwLnBuZyIKICBkb2N1bWVudGF0aW9uVXJsOiAiaHR0\
cHM6Ly9hZXJvZ2Vhci5vcmcvcHVzaCIKICBwcm92aWRlckRpc3BsYXlOYW1lOiAiUmVkIEhhdCwg\
SW5jLiIKICBkZXBlbmRlbmNpZXM6IFsnTXlTUUw6NTUnXQogIHNlcnZpY2VOYW1lOiB1cHMKcGxh\
bnM6CiAgLSBuYW1lOiBkZWZhdWx0CiAgICBkZXNjcmlwdGlvbjogRGVwbG95IFVQUwogICAgZnJl\
ZTogVHJ1ZQogICAgbWV0YWRhdGE6IHt9CiAgICBwYXJhbWV0ZXJzOiAKICAgIC0gbmFtZTogTVlT\
UUxfVVNFUgogICAgICByZXF1aXJlZDogVHJ1ZQogICAgICBkZWZhdWx0OiB1bmlmaWVkcHVzaAog\
ICAgICB0eXBlOiBzdHJpbmcKICAgICAgdGl0bGU6IFVQUyBkYiB1c2VybmFtZQogICAgLSBuYW1l\
OiBNWVNRTF9QQVNTV09SRAogICAgICByZXF1aXJlZDogVHJ1ZQogICAgICBkZWZhdWx0OiB1bmlm\
aWVkcHVzaAogICAgICB0eXBlOiBzdHJpbmcKICAgICAgdGl0bGU6IFVQUyBkYiBwYXNzd29yZAog\
ICAgLSBuYW1lOiBNWVNRTF9ST09UX1BBU1NXT1JECiAgICAgIHJlcXVpcmVkOiBUcnVlCiAgICAg\
IGRlZmF1bHQ6IHN1cGVyc2VjcmV0CiAgICAgIHR5cGU6IHN0cmluZwogICAgICB0aXRsZTogVVBT\
IGRiIHJvb3QgcGFzc3dvcmQKICAgIC0gbmFtZTogTVlTUUxfREFUQUJBU0UKICAgICAgcmVxdWly\
ZWQ6IFRydWUKICAgICAgZGVmYXVsdDogdW5pZmllZHB1c2gKICAgICAgdHlwZTogc3RyaW5nCiAg\
ICAgIHRpdGxlOiBVUFMgZGF0YWJhc2UgbmFtZQogICAgLSBuYW1lOiBNWVNRTF9WRVJTSU9OCiAg\
ICAgIHJlcXVpcmVkOiBUcnVlCiAgICAgIGRlZmF1bHQ6ICI1NSIKICAgICAgZW51bTogWyc1NScs\
ICc1NiddCiAgICAgIHR5cGU6IGVudW0KICAgICAgdGl0bGU6IE15U1FMIHZlcnNpb24KICAgIGJp\
bmRfcGFyYW1ldGVyczoKICAgIC0gbmFtZTogc2VydmljZQogICAgICB0aXRsZTogVGhlIHNlcnZp\
Y2UgdGhlIGNsaWVudCBpcyBmb3IKICAgICAgdHlwZTogc3RyaW5nCg=="

COPY playbooks /opt/apb/actions
COPY roles /opt/ansible/roles
RUN chmod -R g=u /opt/{ansible,apb}
USER apb
