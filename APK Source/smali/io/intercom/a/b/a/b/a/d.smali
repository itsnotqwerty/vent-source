.class public final Lio/intercom/a/b/a/b/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/b/a/s;


# instance fields
.field private final cRm:Lio/intercom/a/b/a/b/c;


# direct methods
.method public constructor <init>(Lio/intercom/a/b/a/b/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/a/b/a/b/a/d;->cRm:Lio/intercom/a/b/a/b/c;

    return-void
.end method

.method static a(Lio/intercom/a/b/a/b/c;Lio/intercom/a/b/a/e;Lio/intercom/a/b/a/c/a;Lio/intercom/a/b/a/a/b;)Lio/intercom/a/b/a/r;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/b/a/b/c;",
            "Lio/intercom/a/b/a/e;",
            "Lio/intercom/a/b/a/c/a",
            "<*>;",
            "Lio/intercom/a/b/a/a/b;",
            ")",
            "Lio/intercom/a/b/a/r",
            "<*>;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p3}, Lio/intercom/a/b/a/a/b;->value()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lio/intercom/a/b/a/c/a;->N(Ljava/lang/Class;)Lio/intercom/a/b/a/c/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/intercom/a/b/a/b/c;->b(Lio/intercom/a/b/a/c/a;)Lio/intercom/a/b/a/b/h;

    move-result-object v0

    invoke-interface {v0}, Lio/intercom/a/b/a/b/h;->vo()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lio/intercom/a/b/a/r;

    if-eqz v1, :cond_1

    check-cast v0, Lio/intercom/a/b/a/r;

    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {p3}, Lio/intercom/a/b/a/a/b;->vl()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lio/intercom/a/b/a/r;->Kc()Lio/intercom/a/b/a/r;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    instance-of v1, v0, Lio/intercom/a/b/a/s;

    if-eqz v1, :cond_2

    check-cast v0, Lio/intercom/a/b/a/s;

    invoke-interface {v0, p1, p2}, Lio/intercom/a/b/a/s;->a(Lio/intercom/a/b/a/e;Lio/intercom/a/b/a/c/a;)Lio/intercom/a/b/a/r;

    move-result-object v0

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lio/intercom/a/b/a/o;

    if-nez v1, :cond_3

    instance-of v1, v0, Lio/intercom/a/b/a/h;

    if-eqz v1, :cond_6

    :cond_3
    instance-of v1, v0, Lio/intercom/a/b/a/o;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Lio/intercom/a/b/a/o;

    :goto_1
    instance-of v3, v0, Lio/intercom/a/b/a/h;

    if-eqz v3, :cond_5

    check-cast v0, Lio/intercom/a/b/a/h;

    :goto_2
    new-instance v2, Lio/intercom/a/b/a/b/a/l;

    invoke-direct {v2, v1, v0, p1, p2}, Lio/intercom/a/b/a/b/a/l;-><init>(Lio/intercom/a/b/a/o;Lio/intercom/a/b/a/h;Lio/intercom/a/b/a/e;Lio/intercom/a/b/a/c/a;)V

    move-object v0, v2

    goto :goto_0

    :cond_4
    move-object v1, v2

    goto :goto_1

    :cond_5
    move-object v0, v2

    goto :goto_2

    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid attempt to bind an instance of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " as a @JsonAdapter for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lio/intercom/a/b/a/c/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final a(Lio/intercom/a/b/a/e;Lio/intercom/a/b/a/c/a;)Lio/intercom/a/b/a/r;
    .locals 2
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

    iget-object v0, p2, Lio/intercom/a/b/a/c/a;->bkb:Ljava/lang/Class;

    const-class v1, Lio/intercom/a/b/a/a/b;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lio/intercom/a/b/a/a/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lio/intercom/a/b/a/b/a/d;->cRm:Lio/intercom/a/b/a/b/c;

    invoke-static {v1, p1, p2, v0}, Lio/intercom/a/b/a/b/a/d;->a(Lio/intercom/a/b/a/b/c;Lio/intercom/a/b/a/e;Lio/intercom/a/b/a/c/a;Lio/intercom/a/b/a/a/b;)Lio/intercom/a/b/a/r;

    move-result-object v0

    goto :goto_0
.end method
