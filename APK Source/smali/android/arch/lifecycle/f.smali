.class public final Landroid/arch/lifecycle/f;
.super Landroid/arch/lifecycle/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/lifecycle/f$a;
    }
.end annotation


# instance fields
.field private aG:Landroid/arch/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/a/b/a",
            "<",
            "Landroid/arch/lifecycle/d;",
            "Landroid/arch/lifecycle/f$a;",
            ">;"
        }
    .end annotation
.end field

.field private aH:Landroid/arch/lifecycle/c$b;

.field private final aI:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/arch/lifecycle/e;",
            ">;"
        }
    .end annotation
.end field

.field private aJ:I

.field private aK:Z

.field private aL:Z

.field private aM:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/arch/lifecycle/c$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/arch/lifecycle/e;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/arch/lifecycle/c;-><init>()V

    new-instance v0, Landroid/arch/a/b/a;

    invoke-direct {v0}, Landroid/arch/a/b/a;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/f;->aG:Landroid/arch/a/b/a;

    iput v1, p0, Landroid/arch/lifecycle/f;->aJ:I

    iput-boolean v1, p0, Landroid/arch/lifecycle/f;->aK:Z

    iput-boolean v1, p0, Landroid/arch/lifecycle/f;->aL:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/f;->aM:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/arch/lifecycle/f;->aI:Ljava/lang/ref/WeakReference;

    sget-object v0, Landroid/arch/lifecycle/c$b;->aB:Landroid/arch/lifecycle/c$b;

    iput-object v0, p0, Landroid/arch/lifecycle/f;->aH:Landroid/arch/lifecycle/c$b;

    return-void
.end method

.method private Z()V
    .locals 2

    iget-object v0, p0, Landroid/arch/lifecycle/f;->aM:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/arch/lifecycle/f;->aM:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method static a(Landroid/arch/lifecycle/c$b;Landroid/arch/lifecycle/c$b;)Landroid/arch/lifecycle/c$b;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/arch/lifecycle/c$b;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    move-object p1, p0

    goto :goto_0
.end method

.method private a(Landroid/arch/lifecycle/e;)V
    .locals 5

    iget-object v0, p0, Landroid/arch/lifecycle/f;->aG:Landroid/arch/a/b/a;

    invoke-virtual {v0}, Landroid/arch/a/b/a;->W()Landroid/arch/a/b/b$d;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/arch/lifecycle/f;->aL:Z

    if-nez v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/lifecycle/f$a;

    :goto_0
    iget-object v3, v1, Landroid/arch/lifecycle/f$a;->aH:Landroid/arch/lifecycle/c$b;

    iget-object v4, p0, Landroid/arch/lifecycle/f;->aH:Landroid/arch/lifecycle/c$b;

    invoke-virtual {v3, v4}, Landroid/arch/lifecycle/c$b;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-gez v3, :cond_0

    iget-boolean v3, p0, Landroid/arch/lifecycle/f;->aL:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/arch/lifecycle/f;->aG:Landroid/arch/a/b/a;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/arch/a/b/a;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v1, Landroid/arch/lifecycle/f$a;->aH:Landroid/arch/lifecycle/c$b;

    invoke-direct {p0, v3}, Landroid/arch/lifecycle/f;->c(Landroid/arch/lifecycle/c$b;)V

    iget-object v3, v1, Landroid/arch/lifecycle/f$a;->aH:Landroid/arch/lifecycle/c$b;

    invoke-static {v3}, Landroid/arch/lifecycle/f;->d(Landroid/arch/lifecycle/c$b;)Landroid/arch/lifecycle/c$a;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Landroid/arch/lifecycle/f$a;->b(Landroid/arch/lifecycle/e;Landroid/arch/lifecycle/c$a;)V

    invoke-direct {p0}, Landroid/arch/lifecycle/f;->Z()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static b(Landroid/arch/lifecycle/c$a;)Landroid/arch/lifecycle/c$b;
    .locals 3

    sget-object v0, Landroid/arch/lifecycle/f$1;->az:[I

    invoke-virtual {p0}, Landroid/arch/lifecycle/c$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected event value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object v0, Landroid/arch/lifecycle/c$b;->aC:Landroid/arch/lifecycle/c$b;

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Landroid/arch/lifecycle/c$b;->aD:Landroid/arch/lifecycle/c$b;

    goto :goto_0

    :pswitch_2
    sget-object v0, Landroid/arch/lifecycle/c$b;->aE:Landroid/arch/lifecycle/c$b;

    goto :goto_0

    :pswitch_3
    sget-object v0, Landroid/arch/lifecycle/c$b;->aA:Landroid/arch/lifecycle/c$b;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private c(Landroid/arch/lifecycle/d;)Landroid/arch/lifecycle/c$b;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/arch/lifecycle/f;->aG:Landroid/arch/a/b/a;

    invoke-virtual {v0, p1}, Landroid/arch/a/b/a;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroid/arch/a/b/a;->ae:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/a/b/b$c;

    iget-object v0, v0, Landroid/arch/a/b/b$c;->al:Landroid/arch/a/b/b$c;

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/f$a;

    iget-object v0, v0, Landroid/arch/lifecycle/f$a;->aH:Landroid/arch/lifecycle/c$b;

    move-object v1, v0

    :goto_1
    iget-object v0, p0, Landroid/arch/lifecycle/f;->aM:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/arch/lifecycle/f;->aM:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/arch/lifecycle/f;->aM:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/c$b;

    :goto_2
    iget-object v2, p0, Landroid/arch/lifecycle/f;->aH:Landroid/arch/lifecycle/c$b;

    invoke-static {v2, v1}, Landroid/arch/lifecycle/f;->a(Landroid/arch/lifecycle/c$b;Landroid/arch/lifecycle/c$b;)Landroid/arch/lifecycle/c$b;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/arch/lifecycle/f;->a(Landroid/arch/lifecycle/c$b;Landroid/arch/lifecycle/c$b;)Landroid/arch/lifecycle/c$b;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v0, v2

    goto :goto_0

    :cond_1
    move-object v1, v2

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_2
.end method

.method private c(Landroid/arch/lifecycle/c$b;)V
    .locals 1

    iget-object v0, p0, Landroid/arch/lifecycle/f;->aM:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static d(Landroid/arch/lifecycle/c$b;)Landroid/arch/lifecycle/c$a;
    .locals 3

    sget-object v0, Landroid/arch/lifecycle/f$1;->aN:[I

    invoke-virtual {p0}, Landroid/arch/lifecycle/c$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected state value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object v0, Landroid/arch/lifecycle/c$a;->ON_CREATE:Landroid/arch/lifecycle/c$a;

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Landroid/arch/lifecycle/c$a;->ON_START:Landroid/arch/lifecycle/c$a;

    goto :goto_0

    :pswitch_2
    sget-object v0, Landroid/arch/lifecycle/c$a;->ON_RESUME:Landroid/arch/lifecycle/c$a;

    goto :goto_0

    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private sync()V
    .locals 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Landroid/arch/lifecycle/f;->aI:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/e;

    if-nez v0, :cond_1

    const-string v0, "LifecycleRegistry"

    const-string v1, "LifecycleOwner is garbage collected, you shouldn\'t try dispatch new events from it."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/arch/lifecycle/f;->aG:Landroid/arch/a/b/a;

    iget-object v1, v1, Landroid/arch/a/b/b;->ag:Landroid/arch/a/b/b$c;

    iget-boolean v2, p0, Landroid/arch/lifecycle/f;->aL:Z

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroid/arch/lifecycle/f;->aH:Landroid/arch/lifecycle/c$b;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/lifecycle/f$a;

    iget-object v1, v1, Landroid/arch/lifecycle/f$a;->aH:Landroid/arch/lifecycle/c$b;

    invoke-virtual {v2, v1}, Landroid/arch/lifecycle/c$b;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_1

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/f;->a(Landroid/arch/lifecycle/e;)V

    :cond_1
    iget-object v1, p0, Landroid/arch/lifecycle/f;->aG:Landroid/arch/a/b/a;

    iget v1, v1, Landroid/arch/a/b/b;->ai:I

    if-nez v1, :cond_3

    move v1, v4

    :goto_1
    if-nez v1, :cond_5

    iput-boolean v5, p0, Landroid/arch/lifecycle/f;->aL:Z

    iget-object v2, p0, Landroid/arch/lifecycle/f;->aH:Landroid/arch/lifecycle/c$b;

    iget-object v1, p0, Landroid/arch/lifecycle/f;->aG:Landroid/arch/a/b/a;

    iget-object v1, v1, Landroid/arch/a/b/b;->af:Landroid/arch/a/b/b$c;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/lifecycle/f$a;

    iget-object v1, v1, Landroid/arch/lifecycle/f$a;->aH:Landroid/arch/lifecycle/c$b;

    invoke-virtual {v2, v1}, Landroid/arch/lifecycle/c$b;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_0

    iget-object v1, p0, Landroid/arch/lifecycle/f;->aG:Landroid/arch/a/b/a;

    new-instance v6, Landroid/arch/a/b/b$b;

    iget-object v2, v1, Landroid/arch/a/b/b;->ag:Landroid/arch/a/b/b$c;

    iget-object v3, v1, Landroid/arch/a/b/b;->af:Landroid/arch/a/b/b$c;

    invoke-direct {v6, v2, v3}, Landroid/arch/a/b/b$b;-><init>(Landroid/arch/a/b/b$c;Landroid/arch/a/b/b$c;)V

    iget-object v1, v1, Landroid/arch/a/b/b;->ah:Ljava/util/WeakHashMap;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/arch/lifecycle/f;->aL:Z

    if-nez v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/lifecycle/f$a;

    :goto_2
    iget-object v3, v2, Landroid/arch/lifecycle/f$a;->aH:Landroid/arch/lifecycle/c$b;

    iget-object v7, p0, Landroid/arch/lifecycle/f;->aH:Landroid/arch/lifecycle/c$b;

    invoke-virtual {v3, v7}, Landroid/arch/lifecycle/c$b;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-lez v3, :cond_2

    iget-boolean v3, p0, Landroid/arch/lifecycle/f;->aL:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/arch/lifecycle/f;->aG:Landroid/arch/a/b/a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/arch/a/b/a;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/arch/lifecycle/f$a;->aH:Landroid/arch/lifecycle/c$b;

    sget-object v7, Landroid/arch/lifecycle/f$1;->aN:[I

    invoke-virtual {v3}, Landroid/arch/lifecycle/c$b;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected state value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v1, p0, Landroid/arch/lifecycle/f;->aG:Landroid/arch/a/b/a;

    iget-object v1, v1, Landroid/arch/a/b/b;->af:Landroid/arch/a/b/b$c;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/lifecycle/f$a;

    iget-object v2, v1, Landroid/arch/lifecycle/f$a;->aH:Landroid/arch/lifecycle/c$b;

    iget-object v1, p0, Landroid/arch/lifecycle/f;->aG:Landroid/arch/a/b/a;

    iget-object v1, v1, Landroid/arch/a/b/b;->ag:Landroid/arch/a/b/b$c;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/lifecycle/f$a;

    iget-object v1, v1, Landroid/arch/lifecycle/f$a;->aH:Landroid/arch/lifecycle/c$b;

    if-ne v2, v1, :cond_4

    iget-object v2, p0, Landroid/arch/lifecycle/f;->aH:Landroid/arch/lifecycle/c$b;

    if-ne v2, v1, :cond_4

    move v1, v4

    goto/16 :goto_1

    :cond_4
    move v1, v5

    goto/16 :goto_1

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_1
    sget-object v3, Landroid/arch/lifecycle/c$a;->ON_DESTROY:Landroid/arch/lifecycle/c$a;

    :goto_3
    invoke-static {v3}, Landroid/arch/lifecycle/f;->b(Landroid/arch/lifecycle/c$a;)Landroid/arch/lifecycle/c$b;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/arch/lifecycle/f;->c(Landroid/arch/lifecycle/c$b;)V

    invoke-virtual {v2, v0, v3}, Landroid/arch/lifecycle/f$a;->b(Landroid/arch/lifecycle/e;Landroid/arch/lifecycle/c$a;)V

    invoke-direct {p0}, Landroid/arch/lifecycle/f;->Z()V

    goto :goto_2

    :pswitch_2
    sget-object v3, Landroid/arch/lifecycle/c$a;->ON_STOP:Landroid/arch/lifecycle/c$a;

    goto :goto_3

    :pswitch_3
    sget-object v3, Landroid/arch/lifecycle/c$a;->ON_PAUSE:Landroid/arch/lifecycle/c$a;

    goto :goto_3

    :pswitch_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_5
    iput-boolean v5, p0, Landroid/arch/lifecycle/f;->aL:Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public final Y()Landroid/arch/lifecycle/c$b;
    .locals 1

    iget-object v0, p0, Landroid/arch/lifecycle/f;->aH:Landroid/arch/lifecycle/c$b;

    return-object v0
.end method

.method public final a(Landroid/arch/lifecycle/c$a;)V
    .locals 1

    invoke-static {p1}, Landroid/arch/lifecycle/f;->b(Landroid/arch/lifecycle/c$a;)Landroid/arch/lifecycle/c$b;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/arch/lifecycle/f;->b(Landroid/arch/lifecycle/c$b;)V

    return-void
.end method

.method public final a(Landroid/arch/lifecycle/d;)V
    .locals 5

    iget-object v0, p0, Landroid/arch/lifecycle/f;->aH:Landroid/arch/lifecycle/c$b;

    sget-object v1, Landroid/arch/lifecycle/c$b;->aA:Landroid/arch/lifecycle/c$b;

    if-ne v0, v1, :cond_1

    sget-object v0, Landroid/arch/lifecycle/c$b;->aA:Landroid/arch/lifecycle/c$b;

    :goto_0
    new-instance v3, Landroid/arch/lifecycle/f$a;

    invoke-direct {v3, p1, v0}, Landroid/arch/lifecycle/f$a;-><init>(Landroid/arch/lifecycle/d;Landroid/arch/lifecycle/c$b;)V

    iget-object v0, p0, Landroid/arch/lifecycle/f;->aG:Landroid/arch/a/b/a;

    invoke-virtual {v0, p1, v3}, Landroid/arch/a/b/a;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/f$a;

    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    sget-object v0, Landroid/arch/lifecycle/c$b;->aB:Landroid/arch/lifecycle/c$b;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/arch/lifecycle/f;->aI:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/e;

    if-eqz v0, :cond_0

    iget v1, p0, Landroid/arch/lifecycle/f;->aJ:I

    if-nez v1, :cond_3

    iget-boolean v1, p0, Landroid/arch/lifecycle/f;->aK:Z

    if-eqz v1, :cond_4

    :cond_3
    const/4 v1, 0x1

    :goto_2
    invoke-direct {p0, p1}, Landroid/arch/lifecycle/f;->c(Landroid/arch/lifecycle/d;)Landroid/arch/lifecycle/c$b;

    move-result-object v2

    iget v4, p0, Landroid/arch/lifecycle/f;->aJ:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/arch/lifecycle/f;->aJ:I

    :goto_3
    iget-object v4, v3, Landroid/arch/lifecycle/f$a;->aH:Landroid/arch/lifecycle/c$b;

    invoke-virtual {v4, v2}, Landroid/arch/lifecycle/c$b;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-gez v2, :cond_5

    iget-object v2, p0, Landroid/arch/lifecycle/f;->aG:Landroid/arch/a/b/a;

    invoke-virtual {v2, p1}, Landroid/arch/a/b/a;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v3, Landroid/arch/lifecycle/f$a;->aH:Landroid/arch/lifecycle/c$b;

    invoke-direct {p0, v2}, Landroid/arch/lifecycle/f;->c(Landroid/arch/lifecycle/c$b;)V

    iget-object v2, v3, Landroid/arch/lifecycle/f$a;->aH:Landroid/arch/lifecycle/c$b;

    invoke-static {v2}, Landroid/arch/lifecycle/f;->d(Landroid/arch/lifecycle/c$b;)Landroid/arch/lifecycle/c$a;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/arch/lifecycle/f$a;->b(Landroid/arch/lifecycle/e;Landroid/arch/lifecycle/c$a;)V

    invoke-direct {p0}, Landroid/arch/lifecycle/f;->Z()V

    invoke-direct {p0, p1}, Landroid/arch/lifecycle/f;->c(Landroid/arch/lifecycle/d;)Landroid/arch/lifecycle/c$b;

    move-result-object v2

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    :cond_5
    if-nez v1, :cond_6

    invoke-direct {p0}, Landroid/arch/lifecycle/f;->sync()V

    :cond_6
    iget v0, p0, Landroid/arch/lifecycle/f;->aJ:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/arch/lifecycle/f;->aJ:I

    goto :goto_1
.end method

.method public final b(Landroid/arch/lifecycle/c$b;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/arch/lifecycle/f;->aH:Landroid/arch/lifecycle/c$b;

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Landroid/arch/lifecycle/f;->aH:Landroid/arch/lifecycle/c$b;

    iget-boolean v0, p0, Landroid/arch/lifecycle/f;->aK:Z

    if-nez v0, :cond_1

    iget v0, p0, Landroid/arch/lifecycle/f;->aJ:I

    if-eqz v0, :cond_2

    :cond_1
    iput-boolean v1, p0, Landroid/arch/lifecycle/f;->aL:Z

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Landroid/arch/lifecycle/f;->aK:Z

    invoke-direct {p0}, Landroid/arch/lifecycle/f;->sync()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/arch/lifecycle/f;->aK:Z

    goto :goto_0
.end method

.method public final b(Landroid/arch/lifecycle/d;)V
    .locals 1

    iget-object v0, p0, Landroid/arch/lifecycle/f;->aG:Landroid/arch/a/b/a;

    invoke-virtual {v0, p1}, Landroid/arch/a/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
