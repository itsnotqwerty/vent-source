.class final Lio/intercom/a/b/a/b/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/b/a/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/b/a/b/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/intercom/a/b/a/e;Lio/intercom/a/b/a/c/a;)Lio/intercom/a/b/a/r;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/intercom/a/b/a/e;",
            "Lio/intercom/a/b/a/c/a",
            "<TT;>;)",
            "Lio/intercom/a/b/a/r",
            "<TT;>;"
        }
    .end annotation

    iget-object v1, p2, Lio/intercom/a/b/a/c/a;->biJ:Ljava/lang/reflect/Type;

    instance-of v0, v1, Ljava/lang/reflect/GenericArrayType;

    if-nez v0, :cond_1

    instance-of v0, v1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {v1}, Lio/intercom/a/b/a/b/b;->c(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lio/intercom/a/b/a/c/a;->f(Ljava/lang/reflect/Type;)Lio/intercom/a/b/a/c/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/intercom/a/b/a/e;->a(Lio/intercom/a/b/a/c/a;)Lio/intercom/a/b/a/r;

    move-result-object v2

    new-instance v0, Lio/intercom/a/b/a/b/a/a;

    invoke-static {v1}, Lio/intercom/a/b/a/b/b;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v2, v1}, Lio/intercom/a/b/a/b/a/a;-><init>(Lio/intercom/a/b/a/e;Lio/intercom/a/b/a/r;Ljava/lang/Class;)V

    goto :goto_0
.end method
