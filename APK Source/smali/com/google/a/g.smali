.class public final Lcom/google/a/g;
.super Ljava/lang/Object;


# instance fields
.field private bgA:Z

.field private bgB:Z

.field private bgD:Z

.field private bgE:Z

.field private bgF:Z

.field public bgG:Ljava/lang/String;

.field private bgH:I

.field private bgI:I

.field private bgJ:Lcom/google/a/t;

.field public bgP:Lcom/google/a/e;

.field private final bgQ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/a/v;",
            ">;"
        }
    .end annotation
.end field

.field public bgR:Z

.field private final bgv:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/a/v;",
            ">;"
        }
    .end annotation
.end field

.field private bgw:Lcom/google/a/b/d;

.field private final bgy:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/a/h",
            "<*>;>;"
        }
    .end annotation
.end field

.field public bgz:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/a/b/d;->bhi:Lcom/google/a/b/d;

    iput-object v0, p0, Lcom/google/a/g;->bgw:Lcom/google/a/b/d;

    sget-object v0, Lcom/google/a/t;->bgW:Lcom/google/a/t;

    iput-object v0, p0, Lcom/google/a/g;->bgJ:Lcom/google/a/t;

    sget-object v0, Lcom/google/a/d;->bgj:Lcom/google/a/d;

    iput-object v0, p0, Lcom/google/a/g;->bgP:Lcom/google/a/e;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/a/g;->bgy:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/a/g;->bgv:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/a/g;->bgQ:Ljava/util/List;

    iput-boolean v1, p0, Lcom/google/a/g;->bgz:Z

    iput v2, p0, Lcom/google/a/g;->bgH:I

    iput v2, p0, Lcom/google/a/g;->bgI:I

    iput-boolean v1, p0, Lcom/google/a/g;->bgA:Z

    iput-boolean v1, p0, Lcom/google/a/g;->bgF:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/a/g;->bgR:Z

    iput-boolean v1, p0, Lcom/google/a/g;->bgD:Z

    iput-boolean v1, p0, Lcom/google/a/g;->bgB:Z

    iput-boolean v1, p0, Lcom/google/a/g;->bgE:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/a/g;
    .locals 5

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/google/a/b/a;->au(Z)V

    instance-of v0, p2, Lcom/google/a/h;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/a/g;->bgy:Ljava/util/Map;

    move-object v0, p2

    check-cast v0, Lcom/google/a/h;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p1}, Lcom/google/a/c/a;->e(Ljava/lang/reflect/Type;)Lcom/google/a/c/a;

    move-result-object v2

    iget-object v3, p0, Lcom/google/a/g;->bgv:Ljava/util/List;

    iget-object v0, v2, Lcom/google/a/c/a;->biJ:Ljava/lang/reflect/Type;

    iget-object v4, v2, Lcom/google/a/c/a;->bkb:Ljava/lang/Class;

    if-ne v0, v4, :cond_2

    move v0, v1

    :goto_0
    new-instance v1, Lcom/google/a/b/a/l$b;

    invoke-direct {v1, p2, v2, v0}, Lcom/google/a/b/a/l$b;-><init>(Ljava/lang/Object;Lcom/google/a/c/a;Z)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    instance-of v0, p2, Lcom/google/a/u;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/a/g;->bgv:Ljava/util/List;

    invoke-static {p1}, Lcom/google/a/c/a;->e(Ljava/lang/reflect/Type;)Lcom/google/a/c/a;

    move-result-object v1

    check-cast p2, Lcom/google/a/u;

    invoke-static {v1, p2}, Lcom/google/a/b/a/n;->a(Lcom/google/a/c/a;Lcom/google/a/u;)Lcom/google/a/v;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final vc()Lcom/google/a/f;
    .locals 19

    new-instance v18, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/a/g;->bgv:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/a/g;->bgQ:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x3

    move-object/from16 v0, v18

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/a/g;->bgv:Ljava/util/List;

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static/range {v18 .. v18}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/a/g;->bgQ:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/a/g;->bgG:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/a/g;->bgH:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/a/g;->bgI:I

    if-eqz v4, :cond_1

    const-string v1, ""

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v2, Lcom/google/a/a;

    const-class v1, Ljava/util/Date;

    invoke-direct {v2, v1, v4}, Lcom/google/a/a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    new-instance v1, Lcom/google/a/a;

    const-class v3, Ljava/sql/Timestamp;

    invoke-direct {v1, v3, v4}, Lcom/google/a/a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    new-instance v3, Lcom/google/a/a;

    const-class v5, Ljava/sql/Date;

    invoke-direct {v3, v5, v4}, Lcom/google/a/a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    :goto_0
    const-class v4, Ljava/util/Date;

    invoke-static {v4, v2}, Lcom/google/a/b/a/n;->a(Ljava/lang/Class;Lcom/google/a/u;)Lcom/google/a/v;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v2, Ljava/sql/Timestamp;

    invoke-static {v2, v1}, Lcom/google/a/b/a/n;->a(Ljava/lang/Class;Lcom/google/a/u;)Lcom/google/a/v;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Ljava/sql/Date;

    invoke-static {v1, v3}, Lcom/google/a/b/a/n;->a(Ljava/lang/Class;Lcom/google/a/u;)Lcom/google/a/v;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v1, Lcom/google/a/f;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/a/g;->bgw:Lcom/google/a/b/d;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/a/g;->bgP:Lcom/google/a/e;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/a/g;->bgy:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/a/g;->bgz:Z

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/google/a/g;->bgA:Z

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/google/a/g;->bgB:Z

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/google/a/g;->bgR:Z

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/google/a/g;->bgD:Z

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/google/a/g;->bgE:Z

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/google/a/g;->bgF:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/a/g;->bgJ:Lcom/google/a/t;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/a/g;->bgG:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/a/g;->bgH:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/a/g;->bgI:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/a/g;->bgv:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/a/g;->bgQ:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-direct/range {v1 .. v18}, Lcom/google/a/f;-><init>(Lcom/google/a/b/d;Lcom/google/a/e;Ljava/util/Map;ZZZZZZZLcom/google/a/t;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v1

    :cond_1
    const/4 v1, 0x2

    if-eq v5, v1, :cond_0

    const/4 v1, 0x2

    if-eq v6, v1, :cond_0

    new-instance v2, Lcom/google/a/a;

    const-class v1, Ljava/util/Date;

    invoke-direct {v2, v1, v5, v6}, Lcom/google/a/a;-><init>(Ljava/lang/Class;II)V

    new-instance v1, Lcom/google/a/a;

    const-class v3, Ljava/sql/Timestamp;

    invoke-direct {v1, v3, v5, v6}, Lcom/google/a/a;-><init>(Ljava/lang/Class;II)V

    new-instance v3, Lcom/google/a/a;

    const-class v4, Ljava/sql/Date;

    invoke-direct {v3, v4, v5, v6}, Lcom/google/a/a;-><init>(Ljava/lang/Class;II)V

    goto/16 :goto_0
.end method
