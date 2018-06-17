.class public Lcom/google/android/gms/common/api/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/a$a;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final aCA:Lcom/google/android/gms/common/api/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field public final aCB:Lcom/google/android/gms/common/api/internal/cb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/cb",
            "<TO;>;"
        }
    .end annotation
.end field

.field public final aCC:Landroid/os/Looper;

.field private final aCD:Lcom/google/android/gms/common/api/f;

.field private final aCE:Lcom/google/android/gms/common/api/internal/bq;

.field protected final aCF:Lcom/google/android/gms/common/api/internal/ah;

.field public final aCz:Lcom/google/android/gms/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a",
            "<TO;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field public final yo:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Landroid/os/Looper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/a",
            "<TO;>;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null context is not permitted."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/ae;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Api must not be null."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/ae;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Looper must not be null."

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/ae;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/e;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/common/api/e;->aCz:Lcom/google/android/gms/common/api/a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/e;->aCA:Lcom/google/android/gms/common/api/a$a;

    iput-object p3, p0, Lcom/google/android/gms/common/api/e;->aCC:Landroid/os/Looper;

    new-instance v0, Lcom/google/android/gms/common/api/internal/cb;

    invoke-direct {v0, p2}, Lcom/google/android/gms/common/api/internal/cb;-><init>(Lcom/google/android/gms/common/api/a;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/e;->aCB:Lcom/google/android/gms/common/api/internal/cb;

    new-instance v0, Lcom/google/android/gms/common/api/internal/ar;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/ar;-><init>(Lcom/google/android/gms/common/api/e;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/e;->aCD:Lcom/google/android/gms/common/api/f;

    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/ah;->y(Landroid/content/Context;)Lcom/google/android/gms/common/api/internal/ah;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/e;->aCF:Lcom/google/android/gms/common/api/internal/ah;

    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->aCF:Lcom/google/android/gms/common/api/internal/ah;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/ah;->aFe:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/api/e;->yo:I

    new-instance v0, Lcom/google/android/gms/common/api/internal/ca;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/internal/ca;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/e;->aCE:Lcom/google/android/gms/common/api/internal/bq;

    return-void
.end method

.method private final na()Lcom/google/android/gms/common/internal/az;
    .locals 4

    new-instance v1, Lcom/google/android/gms/common/internal/az;

    invoke-direct {v1}, Lcom/google/android/gms/common/internal/az;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->aCA:Lcom/google/android/gms/common/api/a$a;

    instance-of v0, v0, Lcom/google/android/gms/common/api/a$a$b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->aCA:Lcom/google/android/gms/common/api/a$a;

    check-cast v0, Lcom/google/android/gms/common/api/a$a$b;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$a$b;->mW()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v0, v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->aBT:Ljava/lang/String;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/accounts/Account;

    iget-object v2, v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->aBT:Ljava/lang/String;

    const-string v3, "com.google"

    invoke-direct {v0, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iput-object v0, v1, Lcom/google/android/gms/common/internal/az;->aCI:Landroid/accounts/Account;

    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->aCA:Lcom/google/android/gms/common/api/a$a;

    instance-of v0, v0, Lcom/google/android/gms/common/api/a$a$b;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->aCA:Lcom/google/android/gms/common/api/a$a;

    check-cast v0, Lcom/google/android/gms/common/api/a$a$b;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$a$b;->mW()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->mO()Ljava/util/Set;

    move-result-object v0

    :goto_1
    iget-object v2, v1, Lcom/google/android/gms/common/internal/az;->aIA:Landroid/support/v4/g/b;

    if-nez v2, :cond_0

    new-instance v2, Landroid/support/v4/g/b;

    invoke-direct {v2}, Landroid/support/v4/g/b;-><init>()V

    iput-object v2, v1, Lcom/google/android/gms/common/internal/az;->aIA:Landroid/support/v4/g/b;

    :cond_0
    iget-object v2, v1, Lcom/google/android/gms/common/internal/az;->aIA:Landroid/support/v4/g/b;

    invoke-virtual {v2, v0}, Landroid/support/v4/g/b;->addAll(Ljava/util/Collection;)Z

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->aCA:Lcom/google/android/gms/common/api/a$a;

    instance-of v0, v0, Lcom/google/android/gms/common/api/a$a$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->aCA:Lcom/google/android/gms/common/api/a$a;

    check-cast v0, Lcom/google/android/gms/common/api/a$a$a;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$a$a;->mV()Landroid/accounts/Account;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/os/Looper;Lcom/google/android/gms/common/api/internal/aj;)Lcom/google/android/gms/common/api/a$f;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/api/internal/aj",
            "<TO;>;)",
            "Lcom/google/android/gms/common/api/a$f;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/api/e;->na()Lcom/google/android/gms/common/internal/az;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/e;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/common/internal/az;->aCN:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/common/api/e;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/common/internal/az;->aCO:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/az;->ov()Lcom/google/android/gms/common/internal/ay;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->aCz:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a;->mT()Lcom/google/android/gms/common/api/a$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/e;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/common/api/e;->aCA:Lcom/google/android/gms/common/api/a$a;

    move-object v2, p1

    move-object v5, p2

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/common/api/a$b;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ay;Ljava/lang/Object;Lcom/google/android/gms/common/api/f$b;Lcom/google/android/gms/common/api/f$c;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Landroid/os/Handler;)Lcom/google/android/gms/common/api/internal/bm;
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/api/internal/bm;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/e;->na()Lcom/google/android/gms/common/internal/az;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/az;->ov()Lcom/google/android/gms/common/internal/ay;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/common/api/internal/bm;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/ay;)V

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/api/internal/cg;)Lcom/google/android/gms/common/api/internal/cg;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$c;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/cg",
            "<+",
            "Lcom/google/android/gms/common/api/i;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->ni()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->aCF:Lcom/google/android/gms/common/api/internal/ah;

    new-instance v1, Lcom/google/android/gms/common/api/internal/av;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/api/internal/av;-><init>(Lcom/google/android/gms/common/api/internal/cg;)V

    iget-object v2, v0, Lcom/google/android/gms/common/api/internal/ah;->mHandler:Landroid/os/Handler;

    iget-object v3, v0, Lcom/google/android/gms/common/api/internal/ah;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    new-instance v5, Lcom/google/android/gms/common/api/internal/bh;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/ah;->aFf:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-direct {v5, v1, v0, p0}, Lcom/google/android/gms/common/api/internal/bh;-><init>(Lcom/google/android/gms/common/api/internal/a;ILcom/google/android/gms/common/api/e;)V

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-object p1
.end method
