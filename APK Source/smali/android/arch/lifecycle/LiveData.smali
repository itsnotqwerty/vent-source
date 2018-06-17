.class public abstract Landroid/arch/lifecycle/LiveData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/lifecycle/LiveData$a;,
        Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final aR:Ljava/lang/Object;


# instance fields
.field protected aS:Landroid/arch/a/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/a/b/b",
            "<",
            "Landroid/arch/lifecycle/k",
            "<TT;>;",
            "Landroid/arch/lifecycle/LiveData",
            "<TT;>.a;>;"
        }
    .end annotation
.end field

.field public aT:I

.field public volatile aU:Ljava/lang/Object;

.field private aV:I

.field private aW:Z

.field private aX:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/arch/lifecycle/LiveData;->aR:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Landroid/arch/lifecycle/LiveData;)I
    .locals 1

    iget v0, p0, Landroid/arch/lifecycle/LiveData;->aT:I

    return v0
.end method

.method static synthetic a(Landroid/arch/lifecycle/LiveData;I)I
    .locals 0

    iput p1, p0, Landroid/arch/lifecycle/LiveData;->aT:I

    return p1
.end method

.method private a(Landroid/arch/lifecycle/LiveData$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/lifecycle/LiveData",
            "<TT;>.a;)V"
        }
    .end annotation

    iget-boolean v0, p1, Landroid/arch/lifecycle/LiveData$a;->mActive:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/arch/lifecycle/LiveData$a;->ac()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/LiveData$a;->g(Z)V

    goto :goto_0

    :cond_2
    iget v0, p1, Landroid/arch/lifecycle/LiveData$a;->bb:I

    iget v1, p0, Landroid/arch/lifecycle/LiveData;->aV:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/arch/lifecycle/LiveData;->aV:I

    iput v0, p1, Landroid/arch/lifecycle/LiveData$a;->bb:I

    iget-object v0, p1, Landroid/arch/lifecycle/LiveData$a;->ba:Landroid/arch/lifecycle/k;

    iget-object v1, p0, Landroid/arch/lifecycle/LiveData;->aU:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/arch/lifecycle/k;->g(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic a(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/LiveData$a;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Landroid/arch/lifecycle/LiveData;->aW:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Landroid/arch/lifecycle/LiveData;->aX:Z

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Landroid/arch/lifecycle/LiveData;->aW:Z

    :cond_1
    iput-boolean v2, p0, Landroid/arch/lifecycle/LiveData;->aX:Z

    if-eqz p1, :cond_3

    invoke-direct {p0, p1}, Landroid/arch/lifecycle/LiveData;->a(Landroid/arch/lifecycle/LiveData$a;)V

    const/4 p1, 0x0

    :cond_2
    :goto_1
    iget-boolean v0, p0, Landroid/arch/lifecycle/LiveData;->aX:Z

    if-nez v0, :cond_1

    iput-boolean v2, p0, Landroid/arch/lifecycle/LiveData;->aW:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/arch/lifecycle/LiveData;->aS:Landroid/arch/a/b/b;

    invoke-virtual {v0}, Landroid/arch/a/b/b;->W()Landroid/arch/a/b/b$d;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/LiveData$a;

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/LiveData;->a(Landroid/arch/lifecycle/LiveData$a;)V

    iget-boolean v0, p0, Landroid/arch/lifecycle/LiveData;->aX:Z

    if-eqz v0, :cond_4

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/arch/lifecycle/k;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/lifecycle/k",
            "<TT;>;)V"
        }
    .end annotation

    const-string v0, "removeObserver"

    invoke-static {}, Landroid/arch/a/a/a;->F()Landroid/arch/a/a/a;

    move-result-object v1

    iget-object v1, v1, Landroid/arch/a/a/a;->Y:Landroid/arch/a/a/c;

    invoke-virtual {v1}, Landroid/arch/a/a/c;->V()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot invoke "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " on a background thread"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v0, p0, Landroid/arch/lifecycle/LiveData;->aS:Landroid/arch/a/b/b;

    invoke-virtual {v0, p1}, Landroid/arch/a/b/b;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/LiveData$a;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/arch/lifecycle/LiveData$a;->ad()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/LiveData$a;->g(Z)V

    goto :goto_0
.end method

.method public ab()V
    .locals 0

    return-void
.end method

.method public onActive()V
    .locals 0

    return-void
.end method
