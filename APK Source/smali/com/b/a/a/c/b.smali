.class public final Lcom/b/a/a/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# static fields
.field private static final b:Ljava/util/regex/Pattern;

.field public static final bLJ:Lcom/b/a/a/c/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/b/a/a/c/b;

    invoke-direct {v0}, Lcom/b/a/a/c/b;-><init>()V

    sput-object v0, Lcom/b/a/a/c/b;->bLJ:Lcom/b/a/a/c/b;

    const-string v0, "([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/c/b;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/security/cert/X509Certificate;I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x2

    if-lt v1, v4, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_1

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v6, -0x1

    const/16 v5, 0x2e

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ".."

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ".."

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_4
    const-string v3, "*."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x2a

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-ne v3, v6, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_0

    const-string v3, "*."

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v2, v3, v2

    if-lez v2, :cond_5

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    if-ne v2, v6, :cond_0

    :cond_5
    move v0, v1

    goto/16 :goto_0
.end method

.method public static b(Ljava/security/cert/X509Certificate;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x7

    invoke-static {p0, v0}, Lcom/b/a/a/c/b;->a(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/b/a/a/c/b;->a(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v2
.end method


# virtual methods
.method public final verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 11

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {p2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/security/cert/X509Certificate;

    sget-object v1, Lcom/b/a/a/c/b;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/b/a/a/c/b;->a(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v1, v3

    :goto_0
    if-ge v1, v5, :cond_1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/b/a/a/c/b;->a(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    move v5, v3

    move v6, v3

    :goto_2
    if-ge v5, v9, :cond_4

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v7, v1}, Lcom/b/a/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v6, v2

    goto :goto_2

    :cond_4
    if-nez v6, :cond_e

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    new-instance v2, Lcom/b/a/a/c/a;

    invoke-direct {v2, v0}, Lcom/b/a/a/c/a;-><init>(Ljavax/security/auth/x500/X500Principal;)V

    const-string v5, "cn"

    const/4 v0, 0x0

    iput v0, v2, Lcom/b/a/a/c/a;->c:I

    const/4 v0, 0x0

    iput v0, v2, Lcom/b/a/a/c/a;->d:I

    const/4 v0, 0x0

    iput v0, v2, Lcom/b/a/a/c/a;->bpD:I

    const/4 v0, 0x0

    iput v0, v2, Lcom/b/a/a/c/a;->f:I

    iget-object v0, v2, Lcom/b/a/a/c/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, v2, Lcom/b/a/a/c/a;->bLI:[C

    invoke-virtual {v2}, Lcom/b/a/a/c/a;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    move-object v0, v4

    :cond_5
    :goto_3
    if-eqz v0, :cond_e

    invoke-static {v7, v0}, Lcom/b/a/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :cond_6
    move-object v1, v0

    :goto_4
    const-string v0, ""

    iget v6, v2, Lcom/b/a/a/c/a;->c:I

    iget v8, v2, Lcom/b/a/a/c/a;->b:I

    if-ne v6, v8, :cond_7

    move-object v0, v4

    goto :goto_3

    :cond_7
    iget-object v6, v2, Lcom/b/a/a/c/a;->bLI:[C

    iget v8, v2, Lcom/b/a/a/c/a;->c:I

    aget-char v6, v6, v8

    sparse-switch v6, :sswitch_data_0

    invoke-virtual {v2}, Lcom/b/a/a/c/a;->d()Ljava/lang/String;

    move-result-object v0

    :goto_5
    :sswitch_0
    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    iget v0, v2, Lcom/b/a/a/c/a;->c:I

    iget v1, v2, Lcom/b/a/a/c/a;->b:I

    if-lt v0, v1, :cond_c

    move-object v0, v4

    goto :goto_3

    :sswitch_1
    iget v0, v2, Lcom/b/a/a/c/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lcom/b/a/a/c/a;->c:I

    iget v0, v2, Lcom/b/a/a/c/a;->c:I

    iput v0, v2, Lcom/b/a/a/c/a;->d:I

    iget v0, v2, Lcom/b/a/a/c/a;->d:I

    iput v0, v2, Lcom/b/a/a/c/a;->bpD:I

    :goto_6
    iget v0, v2, Lcom/b/a/a/c/a;->c:I

    iget v6, v2, Lcom/b/a/a/c/a;->b:I

    if-ne v0, v6, :cond_8

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected end of DN: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/b/a/a/c/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    move v0, v3

    goto/16 :goto_1

    :cond_8
    iget-object v0, v2, Lcom/b/a/a/c/a;->bLI:[C

    iget v6, v2, Lcom/b/a/a/c/a;->c:I

    aget-char v0, v0, v6

    const/16 v6, 0x22

    if-ne v0, v6, :cond_9

    iget v0, v2, Lcom/b/a/a/c/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lcom/b/a/a/c/a;->c:I

    :goto_7
    iget v0, v2, Lcom/b/a/a/c/a;->c:I

    iget v6, v2, Lcom/b/a/a/c/a;->b:I

    if-ge v0, v6, :cond_b

    iget-object v0, v2, Lcom/b/a/a/c/a;->bLI:[C

    iget v6, v2, Lcom/b/a/a/c/a;->c:I

    aget-char v0, v0, v6

    const/16 v6, 0x20

    if-ne v0, v6, :cond_b

    iget v0, v2, Lcom/b/a/a/c/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lcom/b/a/a/c/a;->c:I

    goto :goto_7

    :cond_9
    iget-object v0, v2, Lcom/b/a/a/c/a;->bLI:[C

    iget v6, v2, Lcom/b/a/a/c/a;->c:I

    aget-char v0, v0, v6

    const/16 v6, 0x5c

    if-ne v0, v6, :cond_a

    iget-object v0, v2, Lcom/b/a/a/c/a;->bLI:[C

    iget v6, v2, Lcom/b/a/a/c/a;->bpD:I

    invoke-virtual {v2}, Lcom/b/a/a/c/a;->zW()C

    move-result v8

    aput-char v8, v0, v6

    :goto_8
    iget v0, v2, Lcom/b/a/a/c/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lcom/b/a/a/c/a;->c:I

    iget v0, v2, Lcom/b/a/a/c/a;->bpD:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lcom/b/a/a/c/a;->bpD:I

    goto :goto_6

    :cond_a
    iget-object v0, v2, Lcom/b/a/a/c/a;->bLI:[C

    iget v6, v2, Lcom/b/a/a/c/a;->bpD:I

    iget-object v8, v2, Lcom/b/a/a/c/a;->bLI:[C

    iget v9, v2, Lcom/b/a/a/c/a;->c:I

    aget-char v8, v8, v9

    aput-char v8, v0, v6

    goto :goto_8

    :cond_b
    new-instance v0, Ljava/lang/String;

    iget-object v6, v2, Lcom/b/a/a/c/a;->bLI:[C

    iget v8, v2, Lcom/b/a/a/c/a;->d:I

    iget v9, v2, Lcom/b/a/a/c/a;->bpD:I

    iget v10, v2, Lcom/b/a/a/c/a;->d:I

    sub-int/2addr v9, v10

    invoke-direct {v0, v6, v8, v9}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_5

    :sswitch_2
    invoke-virtual {v2}, Lcom/b/a/a/c/a;->c()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :cond_c
    iget-object v0, v2, Lcom/b/a/a/c/a;->bLI:[C

    iget v1, v2, Lcom/b/a/a/c/a;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_d

    iget-object v0, v2, Lcom/b/a/a/c/a;->bLI:[C

    iget v1, v2, Lcom/b/a/a/c/a;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_d

    iget-object v0, v2, Lcom/b/a/a/c/a;->bLI:[C

    iget v1, v2, Lcom/b/a/a/c/a;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Malformed DN: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/b/a/a/c/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget v0, v2, Lcom/b/a/a/c/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lcom/b/a/a/c/a;->c:I

    invoke-virtual {v2}, Lcom/b/a/a/c/a;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Malformed DN: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/b/a/a/c/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_e
    move v0, v3

    goto/16 :goto_1

    :cond_f
    move-object v1, v0

    goto/16 :goto_4

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_1
        0x23 -> :sswitch_2
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
    .end sparse-switch
.end method
