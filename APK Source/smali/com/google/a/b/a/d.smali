.class public final Lcom/google/a/b/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/a/v;


# instance fields
.field private final bgt:Lcom/google/a/b/c;


# direct methods
.method public constructor <init>(Lcom/google/a/b/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/a/b/a/d;->bgt:Lcom/google/a/b/c;

    return-void
.end method

.method static a(Lcom/google/a/b/c;Lcom/google/a/f;Lcom/google/a/c/a;Lcom/google/a/a/b;)Lcom/google/a/u;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/b/c;",
            "Lcom/google/a/f;",
            "Lcom/google/a/c/a",
            "<*>;",
            "Lcom/google/a/a/b;",
            ")",
            "Lcom/google/a/u",
            "<*>;"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-interface {p3}, Lcom/google/a/a/b;->value()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/c/a;->t(Ljava/lang/Class;)Lcom/google/a/c/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/a/b/c;->b(Lcom/google/a/c/a;)Lcom/google/a/b/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/a/b/i;->vo()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/google/a/u;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/a/u;

    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {p3}, Lcom/google/a/a/b;->vl()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/a/u;->vi()Lcom/google/a/u;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    instance-of v1, v0, Lcom/google/a/v;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/google/a/v;

    invoke-interface {v0, p1, p2}, Lcom/google/a/v;->a(Lcom/google/a/f;Lcom/google/a/c/a;)Lcom/google/a/u;

    move-result-object v0

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lcom/google/a/r;

    if-nez v1, :cond_3

    instance-of v1, v0, Lcom/google/a/j;

    if-eqz v1, :cond_6

    :cond_3
    instance-of v1, v0, Lcom/google/a/r;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Lcom/google/a/r;

    :goto_1
    instance-of v2, v0, Lcom/google/a/j;

    if-eqz v2, :cond_5

    check-cast v0, Lcom/google/a/j;

    move-object v2, v0

    :goto_2
    new-instance v0, Lcom/google/a/b/a/l;

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/a/b/a/l;-><init>(Lcom/google/a/r;Lcom/google/a/j;Lcom/google/a/f;Lcom/google/a/c/a;Lcom/google/a/v;)V

    goto :goto_0

    :cond_4
    move-object v1, v5

    goto :goto_1

    :cond_5
    move-object v2, v5

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

    invoke-virtual {p2}, Lcom/google/a/c/a;->toString()Ljava/lang/String;

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
.method public final a(Lcom/google/a/f;Lcom/google/a/c/a;)Lcom/google/a/u;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/a/f;",
            "Lcom/google/a/c/a",
            "<TT;>;)",
            "Lcom/google/a/u",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p2, Lcom/google/a/c/a;->bkb:Ljava/lang/Class;

    const-class v1, Lcom/google/a/a/b;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/a/a/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/a/b/a/d;->bgt:Lcom/google/a/b/c;

    invoke-static {v1, p1, p2, v0}, Lcom/google/a/b/a/d;->a(Lcom/google/a/b/c;Lcom/google/a/f;Lcom/google/a/c/a;Lcom/google/a/a/b;)Lcom/google/a/u;

    move-result-object v0

    goto :goto_0
.end method
