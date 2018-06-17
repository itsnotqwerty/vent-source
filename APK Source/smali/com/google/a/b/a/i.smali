.class public final Lcom/google/a/b/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/a/v;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/a/b/a/i$a;,
        Lcom/google/a/b/a/i$b;
    }
.end annotation


# instance fields
.field private final bgP:Lcom/google/a/e;

.field private final bgt:Lcom/google/a/b/c;

.field private final bgu:Lcom/google/a/b/a/d;

.field private final bgw:Lcom/google/a/b/d;

.field private final bha:Lcom/google/a/b/b/b;


# direct methods
.method public constructor <init>(Lcom/google/a/b/c;Lcom/google/a/e;Lcom/google/a/b/d;Lcom/google/a/b/a/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/a/b/b/b;->vG()Lcom/google/a/b/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/b/a/i;->bha:Lcom/google/a/b/b/b;

    iput-object p1, p0, Lcom/google/a/b/a/i;->bgt:Lcom/google/a/b/c;

    iput-object p2, p0, Lcom/google/a/b/a/i;->bgP:Lcom/google/a/e;

    iput-object p3, p0, Lcom/google/a/b/a/i;->bgw:Lcom/google/a/b/d;

    iput-object p4, p0, Lcom/google/a/b/a/i;->bgu:Lcom/google/a/b/a/d;

    return-void
.end method

.method private a(Lcom/google/a/f;Lcom/google/a/c/a;Ljava/lang/Class;)Ljava/util/Map;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/f;",
            "Lcom/google/a/c/a",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/a/b/a/i$b;",
            ">;"
        }
    .end annotation

    new-instance v13, Ljava/util/LinkedHashMap;

    invoke-direct {v13}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v13

    :goto_0
    return-object v1

    :cond_0
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/google/a/c/a;->biJ:Ljava/lang/reflect/Type;

    move-object/from16 v16, v0

    :goto_1
    const-class v1, Ljava/lang/Object;

    move-object/from16 v0, p3

    if-eq v0, v1, :cond_9

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    const/4 v1, 0x0

    move v15, v1

    :goto_2
    move/from16 v0, v18

    if-ge v15, v0, :cond_8

    aget-object v6, v17, v15

    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v1}, Lcom/google/a/b/a/i;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v4

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v1}, Lcom/google/a/b/a/i;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v5

    if-nez v4, :cond_1

    if-eqz v5, :cond_7

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/a/b/a/i;->bha:Lcom/google/a/b/b/b;

    invoke-virtual {v1, v6}, Lcom/google/a/b/b/b;->a(Ljava/lang/reflect/AccessibleObject;)V

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/google/a/c/a;->biJ:Ljava/lang/reflect/Type;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-static {v1, v0, v2}, Lcom/google/a/b/b;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v19

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/google/a/b/a/i;->b(Ljava/lang/reflect/Field;)Ljava/util/List;

    move-result-object v20

    const/4 v12, 0x0

    const/4 v1, 0x0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v21

    move v14, v1

    :goto_3
    move/from16 v0, v21

    if-ge v14, v0, :cond_6

    move-object/from16 v0, v20

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v14, :cond_2

    const/4 v4, 0x0

    :cond_2
    invoke-static/range {v19 .. v19}, Lcom/google/a/c/a;->e(Ljava/lang/reflect/Type;)Lcom/google/a/c/a;

    move-result-object v10

    iget-object v1, v10, Lcom/google/a/c/a;->bkb:Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/a/b/k;->d(Ljava/lang/reflect/Type;)Z

    move-result v11

    const-class v1, Lcom/google/a/a/b;

    invoke-virtual {v6, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/google/a/a/b;

    const/4 v8, 0x0

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/a/b/a/i;->bgt:Lcom/google/a/b/c;

    move-object/from16 v0, p1

    invoke-static {v2, v0, v10, v1}, Lcom/google/a/b/a/d;->a(Lcom/google/a/b/c;Lcom/google/a/f;Lcom/google/a/c/a;Lcom/google/a/a/b;)Lcom/google/a/u;

    move-result-object v8

    :cond_3
    if-eqz v8, :cond_5

    const/4 v7, 0x1

    :goto_4
    if-nez v8, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/google/a/f;->a(Lcom/google/a/c/a;)Lcom/google/a/u;

    move-result-object v8

    :cond_4
    new-instance v1, Lcom/google/a/b/a/i$1;

    move-object/from16 v2, p0

    move-object/from16 v9, p1

    invoke-direct/range {v1 .. v11}, Lcom/google/a/b/a/i$1;-><init>(Lcom/google/a/b/a/i;Ljava/lang/String;ZZLjava/lang/reflect/Field;ZLcom/google/a/u;Lcom/google/a/f;Lcom/google/a/c/a;Z)V

    invoke-interface {v13, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/a/b/a/i$b;

    if-nez v12, :cond_a

    :goto_5
    add-int/lit8 v2, v14, 0x1

    move v14, v2

    move-object v12, v1

    goto :goto_3

    :cond_5
    const/4 v7, 0x0

    goto :goto_4

    :cond_6
    if-eqz v12, :cond_7

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " declares multiple JSON fields named "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v12, Lcom/google/a/b/a/i$b;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    add-int/lit8 v1, v15, 0x1

    move v15, v1

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/google/a/c/a;->biJ:Ljava/lang/reflect/Type;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-static {v1, v0, v2}, Lcom/google/a/b/b;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lcom/google/a/c/a;->e(Ljava/lang/reflect/Type;)Lcom/google/a/c/a;

    move-result-object p2

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/google/a/c/a;->bkb:Ljava/lang/Class;

    move-object/from16 p3, v0

    goto/16 :goto_1

    :cond_9
    move-object v1, v13

    goto/16 :goto_0

    :cond_a
    move-object v1, v12

    goto :goto_5
.end method

.method private a(Ljava/lang/reflect/Field;Z)Z
    .locals 8

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/google/a/b/a/i;->bgw:Lcom/google/a/b/d;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/a/b/d;->n(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v4, p2}, Lcom/google/a/b/d;->aF(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_d

    iget v0, v4, Lcom/google/a/b/d;->bhk:I

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    move v0, v2

    :goto_1
    if-nez v0, :cond_d

    move v0, v2

    :goto_2
    return v0

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    iget-wide v0, v4, Lcom/google/a/b/d;->bhj:D

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    cmpl-double v0, v0, v6

    if-eqz v0, :cond_3

    const-class v0, Lcom/google/a/a/d;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/a/a/d;

    const-class v1, Lcom/google/a/a/e;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/google/a/a/e;

    invoke-virtual {v4, v0, v1}, Lcom/google/a/b/d;->a(Lcom/google/a/a/d;Lcom/google/a/a/e;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    iget-boolean v0, v4, Lcom/google/a/b/d;->bhm:Z

    if-eqz v0, :cond_7

    const-class v0, Lcom/google/a/a/a;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/a/a/a;

    if-eqz v0, :cond_5

    if-eqz p2, :cond_6

    invoke-interface {v0}, Lcom/google/a/a/a;->vj()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    invoke-interface {v0}, Lcom/google/a/a/a;->vk()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_7
    iget-boolean v0, v4, Lcom/google/a/b/d;->bhl:Z

    if-nez v0, :cond_8

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/b/d;->p(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_1

    :cond_8
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/b/d;->o(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    goto :goto_1

    :cond_9
    if-eqz p2, :cond_b

    iget-object v0, v4, Lcom/google/a/b/d;->bhn:Ljava/util/List;

    :goto_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    new-instance v1, Lcom/google/a/c;

    invoke-direct {v1, p1}, Lcom/google/a/c;-><init>(Ljava/lang/reflect/Field;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/b;

    invoke-interface {v0}, Lcom/google/a/b;->va()Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v2

    goto/16 :goto_1

    :cond_b
    iget-object v0, v4, Lcom/google/a/b/d;->bho:Ljava/util/List;

    goto :goto_3

    :cond_c
    move v0, v3

    goto/16 :goto_1

    :cond_d
    move v0, v3

    goto/16 :goto_2
.end method

.method private b(Ljava/lang/reflect/Field;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/google/a/a/c;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/a/a/c;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/a/b/a/i;->bgP:Lcom/google/a/e;

    invoke-interface {v0, p1}, Lcom/google/a/e;->a(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v0}, Lcom/google/a/a/c;->value()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/a/a/c;->vm()[Ljava/lang/String;

    move-result-object v2

    array-length v0, v2

    if-nez v0, :cond_2

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/google/a/f;Lcom/google/a/c/a;)Lcom/google/a/u;
    .locals 3
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

    iget-object v1, p2, Lcom/google/a/c/a;->bkb:Ljava/lang/Class;

    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/a/b/a/i;->bgt:Lcom/google/a/b/c;

    invoke-virtual {v0, p2}, Lcom/google/a/b/c;->b(Lcom/google/a/c/a;)Lcom/google/a/b/i;

    move-result-object v2

    new-instance v0, Lcom/google/a/b/a/i$a;

    invoke-direct {p0, p1, p2, v1}, Lcom/google/a/b/a/i;->a(Lcom/google/a/f;Lcom/google/a/c/a;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/google/a/b/a/i$a;-><init>(Lcom/google/a/b/i;Ljava/util/Map;)V

    goto :goto_0
.end method
