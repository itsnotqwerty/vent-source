.class public Lcom/layer/sdk/internal/lsdke/e;
.super Ljava/lang/Object;


# static fields
.field private static a:[Ljava/security/PublicKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/layer/sdk/internal/lsdke/e;->a:[Ljava/security/PublicKey;

    return-void
.end method

.method public static a(Lcom/layer/b/a/f;)[Ljava/security/PublicKey;
    .locals 1

    sget-object v0, Lcom/layer/sdk/internal/lsdke/e;->a:[Ljava/security/PublicKey;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/layer/sdk/internal/lsdke/e;->b(Lcom/layer/b/a/f;)[Ljava/security/PublicKey;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/lsdke/e;->a:[Ljava/security/PublicKey;

    :cond_0
    sget-object v0, Lcom/layer/sdk/internal/lsdke/e;->a:[Ljava/security/PublicKey;

    return-object v0
.end method

.method private static b(Lcom/layer/b/a/f;)[Ljava/security/PublicKey;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/security/PublicKey;

    const/4 v1, 0x0

    const-string v2, "-----BEGIN CERTIFICATE-----\nMIIFjDCCA3SgAwIBAgIJAKxXIhuGdyKsMA0GCSqGSIb3DQEBBQUAMGExCzAJBgNV\nBAYTAlVTMQswCQYDVQQIEwJDQTEWMBQGA1UEBxMNU2FuIEZyYW5jaXNjbzETMBEG\nA1UEChMKTGF5ZXIsIEluYzEYMBYGA1UEAxMPTGF5ZXIgU2VydmVyIENBMCAXDTE0\nMTAwMTAxNDkyMloYDzIwNTQwOTIxMDE0OTIyWjBhMQswCQYDVQQGEwJVUzELMAkG\nA1UECBMCQ0ExFjAUBgNVBAcTDVNhbiBGcmFuY2lzY28xEzARBgNVBAoTCkxheWVy\nLCBJbmMxGDAWBgNVBAMTD0xheWVyIFNlcnZlciBDQTCCAiIwDQYJKoZIhvcNAQEB\nBQADggIPADCCAgoCggIBAOmGjmG9RPrlxCaVh8uePYL/4AlPucbPxvmaTSNcUcIn\nES3TfFyucPHdlcKHJcQAF+2Wgw9EXwMIpMNRt6CRSK8/uB22h3dGY2MqFrptiXO2\nvK5Cwb94I8tj2lvpcQ7yNBiuDAdx+QfWYaD7vtU29jqJnK4gntLzIgpM2BEWtT8h\nygSlgSv9sosGAVwvnR/d9QezQysy8IQPo8Ut9ELgsjHU0PAsn0o1ISu9FS8vzTJh\nh98WInQXXnk1igMkaRRc34iiEO5cZyLAbqS0BhPmZhEm5ax3Af5X7QfMHaEWLvC4\nJ7aAT0GyEO0uNlRZtZL5aBWVSfLdQ+Feot7LzvUbcbtZaWbu5ZzDFuNUCoGQ58rx\n+VnR5zt9N1pS80dlH9Vj8UzAaUawYe4n/E3VdKlF5+OrjH6aKw+22Qe5luNoLMhX\n1Him57iwnQxNOcQqWnJlIOoBcBDSKEwPw/LATRW+//Z8Xt/9DA4ZDvo/XkFUiqxO\nlYc2H3AAWAletOTdFS6QEvaAMZ/Dn+Mf8xf5vSeJNa9VnAEnlc74SdyflDZTHX0Q\nUEWUhM9B6lzUDEt7k8TV/HWX9xRrPHItQjDoa4t6nEFm+wP/GW4SWSNKzxypE3ML\nTKkgB6lwILCuUcuj0E+5o5k7xKIteSpoczrIdRhYYZay+G68wITcsINWgG+MlwFp\nAgMBAAGjRTBDMBIGA1UdEwEB/wQIMAYBAf8CAQEwDgYDVR0PAQH/BAQDAgFGMB0G\nA1UdDgQWBBTDptDM/3QKCSoZcbFEN/jKHbQa6TANBgkqhkiG9w0BAQUFAAOCAgEA\nCw9mM8CUykM9BJl1worC1iTnrJksDFAYC+6DgLMB7767Qwpu1rGKPymEcwhw+scF\nGxDy51CnKyBvb+sN1UGkGkON/z0WpPhKYUI+0TiM36D6PJWFI3B/2RrNbt/CG4tH\nl59ce7SWZ2ybw2PO+D5HUgaC6g+V5Qr1vDK5oFZ/pv5r+iIt32ylJeSoO+AbyspH\nHwg54DeuMi3xct9U3GOXtk50jGczKrveAh8918OU/oW5Y84NCwLpZcRXyNpMdrt4\nNyyO02+fwRfN8VGilLeKxzpkLL+mGyvOn7dbeKuvm2L84G8PwbEoFFJsi5uHRaSr\nLU1AkkSGYeadV4pqOnVIGxufqc3xnN6K0q1SxDGraVpjqi5tjDDDc3itdYGtruv+\nKh5LMoaVtf423o/O27yCuARGHgFUcQVGIz8aO+0W/B5rqkXJWNcdRQP003AYjG32\nAJj5Fef3neKIdHyn+3gG17LRS4Brttqn3pxZGBlOpxsi8aLrNg5HazztG/QH90wK\nQN4a4HmlWH1k7IQ9AkX0pE4KCRhrLAIlQZ3aV1H3RK+9rOfAqH3NeyoSEomHuSj+\n0xrMMSF8HNm/CIP84uivLHlOmPJHmvca1p2GnzE8WHPB2suBPnkaPqFAU6X9q+QJ\nKh1I3sZaVZtBqivJ0lNOr/1sqFHgf7ML7bcq9+w/1WM=\n-----END CERTIFICATE-----"

    invoke-static {p0, v2}, Lcom/layer/b/a/e;->a(Lcom/layer/b/a/f;Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "-----BEGIN CERTIFICATE-----\nMIIE0DCCA7igAwIBAgIBBzANBgkqhkiG9w0BAQsFADCBgzELMAkGA1UEBhMCVVMx\nEDAOBgNVBAgTB0FyaXpvbmExEzARBgNVBAcTClNjb3R0c2RhbGUxGjAYBgNVBAoT\nEUdvRGFkZHkuY29tLCBJbmMuMTEwLwYDVQQDEyhHbyBEYWRkeSBSb290IENlcnRp\nZmljYXRlIEF1dGhvcml0eSAtIEcyMB4XDTExMDUwMzA3MDAwMFoXDTMxMDUwMzA3\nMDAwMFowgbQxCzAJBgNVBAYTAlVTMRAwDgYDVQQIEwdBcml6b25hMRMwEQYDVQQH\nEwpTY290dHNkYWxlMRowGAYDVQQKExFHb0RhZGR5LmNvbSwgSW5jLjEtMCsGA1UE\nCxMkaHR0cDovL2NlcnRzLmdvZGFkZHkuY29tL3JlcG9zaXRvcnkvMTMwMQYDVQQD\nEypHbyBEYWRkeSBTZWN1cmUgQ2VydGlmaWNhdGUgQXV0aG9yaXR5IC0gRzIwggEi\nMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQC54MsQ1K92vdSTYuswZLiBCGzD\nBNliF44v/z5lz4/OYuY8UhzaFkVLVat4a2ODYpDOD2lsmcgaFItMzEUz6ojcnqOv\nK/6AYZ15V8TPLvQ/MDxdR/yaFrzDN5ZBUY4RS1T4KL7QjL7wMDge87Am+GZHY23e\ncSZHjzhHU9FGHbTj3ADqRay9vHHZqm8A29vNMDp5T19MR/gd71vCxJ1gO7GyQ5HY\npDNO6rPWJ0+tJYqlxvTV0KaudAVkV4i1RFXULSo6Pvi4vekyCgKUZMQWOlDxSq7n\neTOvDCAHf+jfBDnCaQJsY1L6d8EbyHSHyLmTGFBUNUtpTrw700kuH9zB0lL7AgMB\nAAGjggEaMIIBFjAPBgNVHRMBAf8EBTADAQH/MA4GA1UdDwEB/wQEAwIBBjAdBgNV\nHQ4EFgQUQMK9J47MNIMwojPX+2yz8LQsgM4wHwYDVR0jBBgwFoAUOpqFBxBnKLbv\n9r0FQW4gwZTaD94wNAYIKwYBBQUHAQEEKDAmMCQGCCsGAQUFBzABhhhodHRwOi8v\nb2NzcC5nb2RhZGR5LmNvbS8wNQYDVR0fBC4wLDAqoCigJoYkaHR0cDovL2NybC5n\nb2RhZGR5LmNvbS9nZHJvb3QtZzIuY3JsMEYGA1UdIAQ/MD0wOwYEVR0gADAzMDEG\nCCsGAQUFBwIBFiVodHRwczovL2NlcnRzLmdvZGFkZHkuY29tL3JlcG9zaXRvcnkv\nMA0GCSqGSIb3DQEBCwUAA4IBAQAIfmyTEMg4uJapkEv/oV9PBO9sPpyIBslQj6Zz\n91cxG7685C/b+LrTW+C05+Z5Yg4MotdqY3MxtfWoSKQ7CC2iXZDXtHwlTxFWMMS2\nRJ17LJ3lXubvDGGqv+QqG+6EnriDfcFDzkSnE3ANkR/0yBOtg2DZ2HKocyQetawi\nDsoXiWJYRBuriSUBAA/NxBti21G00w9RKpv0vHP8ds42pM3Z2Czqrpv1KrKQ0U11\nGIo/ikGQI31bS/6kA1ibRrLDYGCD+H1QQc7CoZDDu+8CL9IVVO5EFdkKrqeKM+2x\nLXY2JtwE65/3YR8V3Idv7kaWKK2hJn0KCacuBKONvPi8BDAB\n-----END CERTIFICATE----"

    invoke-static {p0, v2}, Lcom/layer/b/a/e;->a(Lcom/layer/b/a/f;Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "-----BEGIN CERTIFICATE-----\nMIIFXTCCA0WgAwIBAgIBATANBgkqhkiG9w0BAQsFADBmMR0wGwYDVQQDDBRMYXll\nciBEZXZlbG9wbWVudCBDQTELMAkGA1UEBhMCVVMxFjAUBgNVBAcMDVNhbiBGcmFu\nY2lzY28xEzARBgNVBAoMCkxheWVyLCBJbmMxCzAJBgNVBAgMAkNBMB4XDTE1MTAx\nOTIyNTgyOVoXDTI1MDcxODIyNTgyOVowXjEVMBMGA1UEAwwMZGV2Lmx5cjgubmV0\nMQswCQYDVQQGEwJVUzEWMBQGA1UEBwwNU2FuIEZyYW5jaXNjbzETMBEGA1UECgwK\nTGF5ZXIsIEluYzELMAkGA1UECAwCQ0EwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAw\nggEKAoIBAQCoZtI0Psi3ybZ6Xp7rP7r5sbicvS+Fa/LI22oL0s3ony8CktrY11sE\n1orWvaQa4c9gU+UrJ5lC+0EzzNU79ZtXHpyL9ZuEmrVf0YaGXMEAau7v0+ajLHw0\nGs3uCj2LBWX294U8kaloGWpYyzYPctDX7Lyy9qNKbZloDoVm8HXzt7aZ7RVJp3cG\n6Onha/S8azLS3RWAX8zK+cudA4ObTf36qyGMA0UbcGzAYQ5lZi9s/ySMpGLQvNIP\nMT9YWKOCUTO4kP1tgOp8bHumNAL8K/ArO4J3/R9czoOtoRqe6pf8ex2jc0R22jVU\nDUgj58/r8qZDBI0Obu944WhxiRdcPoORAgMBAAGjggEcMIIBGDCBkAYDVR0jBIGI\nMIGFgBRd6Fgv+b8S8O10LXg8g2f7C5ZeH6FqpGgwZjELMAkGA1UEBhMCVVMxCzAJ\nBgNVBAgMAkNBMRYwFAYDVQQHDA1TYW4gRnJhbmNpc2NvMRMwEQYDVQQKDApMYXll\nciwgSW5jMR0wGwYDVQQDDBRMYXllciBEZXZlbG9wbWVudCBDQYIBATAMBgNVHRMB\nAf8EAjAAMB0GA1UdJQQWMBQGCCsGAQUFBwMCBggrBgEFBQcDATAOBgNVHQ8BAf8E\nBAMCBaAwJwYDVR0RBCAwHoIMZGV2Lmx5cjgubmV0gg4qLmRldi5seXI4Lm5ldDAd\nBgNVHQ4EFgQUmy2Ouv4umbpFBjumPksZzqXiwGkwDQYJKoZIhvcNAQELBQADggIB\nAFbQ3UZUGkS964fujOcDjSva8FJRnIGUuEC7kiTOgJg4EcdOETeQb+Kv1jdWNKkA\nRj51BT3t+oG6Q41EMvlSgLp8mGy2UC3q/verVuM+L8+oZ4SWOljv+5u5qRWuHt+d\nBkcviMhJdPEXtC3Yg9eYaFSXmAF9I5/1D4RC5fNi01d8VraY//xE+kJK+u3qkDhW\nvc9NGdyAkD+9F/PRA+kgbwGUKTFVBSnWnhncJ3BFfMmI0fDfa/CmoZm1SVkK2Ik/\nqIS9dsY0fwYGWCnJDd1yNQnAjt7OjaiPCG22Nf3dafSOz8eFHEzWoJW6zuz5mHY/\npVtvzlLcy0qMHPXXjw1LAahHfvSys9G1exyWYU0Gl5pf7TujCmAtGmIXJ04DXtCm\n1GJlK9BvanqW1JVMNrQOCCkjrOAeBSEtgj9LGfMzxvt57bj+2ibOIrEik5PfrnCf\nBRMOrMpZ6nPYTdyq3W95TCdse7vF8KOZQ9HKGZ8OLUMmBO5nIIyY0gHtrhBbOITH\nz8Jq43SexyMnqsA4Ptp6i++551+LZNUILh38/40ihTHfAu1BCRu2ctyculpCYv+I\nmsoqO4tQpnbO5gKtaJxwMLa6KMTvRAIlSXST9PVRWZWgqHXcA6XegN7jvHPKgRkl\nFmPFEWFAikKNWOe5aM1ewqUt/byzZQJofGlev9OcYkb6\n-----END CERTIFICATE-----"

    invoke-static {p0, v2}, Lcom/layer/b/a/e;->a(Lcom/layer/b/a/f;Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method
