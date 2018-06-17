.class public final Lcom/google/android/gms/internal/pz;
.super Ljava/lang/Object;


# instance fields
.field public final aAc:Lcom/google/android/gms/ads/i;

.field private final ayW:Lcom/google/android/gms/internal/nt;

.field public azA:Lcom/google/android/gms/ads/j;

.field public azG:Z

.field public baA:Lcom/google/android/gms/ads/a;

.field public baY:Lcom/google/android/gms/ads/a/a;

.field public baz:Lcom/google/android/gms/internal/nm;

.field public final bbK:Lcom/google/android/gms/internal/ti;

.field private final bbL:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public bbM:Lcom/google/android/gms/internal/oh;

.field public bbN:[Lcom/google/android/gms/ads/d;

.field public bbO:Lcom/google/android/gms/ads/g;

.field public bbP:Lcom/google/android/gms/internal/ow;

.field public bbQ:Lcom/google/android/gms/ads/a/b;

.field public bbR:Ljava/lang/String;

.field public bbS:Landroid/view/ViewGroup;

.field public bbT:I


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/nt;->baR:Lcom/google/android/gms/internal/nt;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/pz;-><init>(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/nt;B)V

    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/nt;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ti;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ti;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/pz;->bbK:Lcom/google/android/gms/internal/ti;

    new-instance v0, Lcom/google/android/gms/ads/i;

    invoke-direct {v0}, Lcom/google/android/gms/ads/i;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/pz;->aAc:Lcom/google/android/gms/ads/i;

    new-instance v0, Lcom/google/android/gms/internal/qa;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/qa;-><init>(Lcom/google/android/gms/internal/pz;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/pz;->bbM:Lcom/google/android/gms/internal/oh;

    iput-object p1, p0, Lcom/google/android/gms/internal/pz;->bbS:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/google/android/gms/internal/pz;->ayW:Lcom/google/android/gms/internal/nt;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/pz;->bbP:Lcom/google/android/gms/internal/ow;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/pz;->bbL:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput v1, p0, Lcom/google/android/gms/internal/pz;->bbT:I

    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/nt;B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/pz;-><init>(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/nt;)V

    return-void
.end method

.method public static a(Landroid/content/Context;[Lcom/google/android/gms/ads/d;I)Lcom/google/android/gms/internal/nu;
    .locals 2

    const/4 v0, 0x1

    new-instance v1, Lcom/google/android/gms/internal/nu;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/nu;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/d;)V

    if-ne p2, v0, :cond_0

    :goto_0
    iput-boolean v0, v1, Lcom/google/android/gms/internal/nu;->baX:Z

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/nm;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/pz;->baz:Lcom/google/android/gms/internal/nm;

    iget-object v0, p0, Lcom/google/android/gms/internal/pz;->bbP:Lcom/google/android/gms/internal/ow;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/pz;->bbP:Lcom/google/android/gms/internal/ow;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/nn;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/nn;-><init>(Lcom/google/android/gms/internal/nm;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ow;->a(Lcom/google/android/gms/internal/oi;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the AdClickListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final varargs a([Lcom/google/android/gms/ads/d;)V
    .locals 4

    iput-object p1, p0, Lcom/google/android/gms/internal/pz;->bbN:[Lcom/google/android/gms/ads/d;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/pz;->bbP:Lcom/google/android/gms/internal/ow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/pz;->bbP:Lcom/google/android/gms/internal/ow;

    iget-object v1, p0, Lcom/google/android/gms/internal/pz;->bbS:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/pz;->bbN:[Lcom/google/android/gms/ads/d;

    iget v3, p0, Lcom/google/android/gms/internal/pz;->bbT:I

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/pz;->a(Landroid/content/Context;[Lcom/google/android/gms/ads/d;I)Lcom/google/android/gms/internal/nu;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ow;->a(Lcom/google/android/gms/internal/nu;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/pz;->bbS:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the ad size."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final getAdSize()Lcom/google/android/gms/ads/d;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/pz;->bbP:Lcom/google/android/gms/internal/ow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/pz;->bbP:Lcom/google/android/gms/internal/ow;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ow;->tp()Lcom/google/android/gms/internal/nu;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/google/android/gms/internal/nu;->width:I

    iget v2, v0, Lcom/google/android/gms/internal/nu;->height:I

    iget-object v0, v0, Lcom/google/android/gms/internal/nu;->baS:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/ads/k;->c(IILjava/lang/String;)Lcom/google/android/gms/ads/d;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get the current AdSize."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/pz;->bbN:[Lcom/google/android/gms/ads/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/pz;->bbN:[Lcom/google/android/gms/ads/d;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getAdUnitId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/pz;->bbR:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/pz;->bbP:Lcom/google/android/gms/internal/ow;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/pz;->bbP:Lcom/google/android/gms/internal/ow;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ow;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/pz;->bbR:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/pz;->bbR:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get ad unit id."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final getMediationAdapterClassName()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/pz;->bbP:Lcom/google/android/gms/internal/ow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/pz;->bbP:Lcom/google/android/gms/internal/ow;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ow;->tl()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get the mediation adapter class name."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final lz()Lcom/google/android/gms/internal/pp;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/pz;->bbP:Lcom/google/android/gms/internal/ow;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/pz;->bbP:Lcom/google/android/gms/internal/ow;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ow;->getVideoController()Lcom/google/android/gms/internal/pp;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Failed to retrieve VideoController."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final setAdListener(Lcom/google/android/gms/ads/a;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/pz;->baA:Lcom/google/android/gms/ads/a;

    iget-object v0, p0, Lcom/google/android/gms/internal/pz;->bbM:Lcom/google/android/gms/internal/oh;

    iget-object v1, v0, Lcom/google/android/gms/internal/oh;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, v0, Lcom/google/android/gms/internal/oh;->bbs:Lcom/google/android/gms/ads/a;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final varargs setAdSizes([Lcom/google/android/gms/ads/d;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/pz;->bbN:[Lcom/google/android/gms/ads/d;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ad size can only be set once on AdView."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/pz;->a([Lcom/google/android/gms/ads/d;)V

    return-void
.end method

.method public final setAdUnitId(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/pz;->bbR:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ad unit ID can only be set once on AdView."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/pz;->bbR:Ljava/lang/String;

    return-void
.end method

.method public final setAppEventListener(Lcom/google/android/gms/ads/a/a;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/pz;->baY:Lcom/google/android/gms/ads/a/a;

    iget-object v0, p0, Lcom/google/android/gms/internal/pz;->bbP:Lcom/google/android/gms/internal/ow;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/pz;->bbP:Lcom/google/android/gms/internal/ow;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/nw;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/nw;-><init>(Lcom/google/android/gms/ads/a/a;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ow;->a(Lcom/google/android/gms/internal/pb;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the AppEventListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
