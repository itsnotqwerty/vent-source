.class public final Lcom/b/a/p$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field a:Z

.field bIH:[Ljava/lang/String;

.field bIZ:[Ljava/lang/String;

.field d:Z


# direct methods
.method public constructor <init>(Lcom/b/a/p;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lcom/b/a/p;->d:Z

    iput-boolean v0, p0, Lcom/b/a/p$a;->a:Z

    invoke-static {p1}, Lcom/b/a/p;->a(Lcom/b/a/p;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/p$a;->bIH:[Ljava/lang/String;

    invoke-static {p1}, Lcom/b/a/p;->b(Lcom/b/a/p;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/p$a;->bIZ:[Ljava/lang/String;

    iget-boolean v0, p1, Lcom/b/a/p;->e:Z

    iput-boolean v0, p0, Lcom/b/a/p$a;->d:Z

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/b/a/p$a;->a:Z

    return-void
.end method


# virtual methods
.method public final varargs a([Lcom/b/a/d;)Lcom/b/a/p$a;
    .locals 3

    iget-boolean v0, p0, Lcom/b/a/p$a;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no TLS versions for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one TlsVersion is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    array-length v0, p1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    aget-object v2, p1, v0

    iget-object v2, v2, Lcom/b/a/d;->e:Ljava/lang/String;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iput-object v1, p0, Lcom/b/a/p$a;->bIZ:[Ljava/lang/String;

    return-object p0
.end method

.method public final varargs e([Ljava/lang/String;)Lcom/b/a/p$a;
    .locals 2

    iget-boolean v0, p0, Lcom/b/a/p$a;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no cipher suites for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/p$a;->bIH:[Ljava/lang/String;

    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/b/a/p$a;->bIH:[Ljava/lang/String;

    goto :goto_0
.end method

.method public final varargs f([Ljava/lang/String;)Lcom/b/a/p$a;
    .locals 2

    iget-boolean v0, p0, Lcom/b/a/p$a;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no TLS versions for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/p$a;->bIZ:[Ljava/lang/String;

    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/b/a/p$a;->bIZ:[Ljava/lang/String;

    goto :goto_0
.end method

.method public final zY()Lcom/b/a/p$a;
    .locals 2

    iget-boolean v0, p0, Lcom/b/a/p$a;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no TLS extensions for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/p$a;->d:Z

    return-object p0
.end method

.method public final zZ()Lcom/b/a/p;
    .locals 2

    new-instance v0, Lcom/b/a/p;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/b/a/p;-><init>(Lcom/b/a/p$a;B)V

    return-object v0
.end method
