.class public final Lcom/google/android/gms/internal/ht;
.super Lcom/google/android/gms/internal/iy;


# static fields
.field private static aUn:I

.field private static aUo:I


# instance fields
.field private final aUp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final aUq:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final aUr:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field final aUs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/lo;",
            ">;"
        }
    .end annotation
.end field

.field private final aUt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field final aUu:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0xffff

    sput v0, Lcom/google/android/gms/internal/ht;->aUn:I

    const/4 v0, 0x2

    sput v0, Lcom/google/android/gms/internal/ht;->aUo:I

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/hz;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/iy;-><init>(Lcom/google/android/gms/internal/hz;)V

    new-instance v0, Landroid/support/v4/g/a;

    invoke-direct {v0}, Landroid/support/v4/g/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ht;->aUp:Ljava/util/Map;

    new-instance v0, Landroid/support/v4/g/a;

    invoke-direct {v0}, Landroid/support/v4/g/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ht;->aUq:Ljava/util/Map;

    new-instance v0, Landroid/support/v4/g/a;

    invoke-direct {v0}, Landroid/support/v4/g/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ht;->aUr:Ljava/util/Map;

    new-instance v0, Landroid/support/v4/g/a;

    invoke-direct {v0}, Landroid/support/v4/g/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ht;->aUs:Ljava/util/Map;

    new-instance v0, Landroid/support/v4/g/a;

    invoke-direct {v0}, Landroid/support/v4/g/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ht;->aUu:Ljava/util/Map;

    new-instance v0, Landroid/support/v4/g/a;

    invoke-direct {v0}, Landroid/support/v4/g/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ht;->aUt:Ljava/util/Map;

    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/lo;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/lo;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Landroid/support/v4/g/a;

    invoke-direct {v1}, Landroid/support/v4/g/a;-><init>()V

    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/lo;->aXY:[Lcom/google/android/gms/internal/lp;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/lo;->aXY:[Lcom/google/android/gms/internal/lp;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    if-eqz v4, :cond_0

    iget-object v5, v4, Lcom/google/android/gms/internal/lp;->key:Ljava/lang/String;

    iget-object v4, v4, Lcom/google/android/gms/internal/lp;->value:Ljava/lang/String;

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private final a(Ljava/lang/String;Lcom/google/android/gms/internal/lo;)V
    .locals 10

    new-instance v1, Landroid/support/v4/g/a;

    invoke-direct {v1}, Landroid/support/v4/g/a;-><init>()V

    new-instance v2, Landroid/support/v4/g/a;

    invoke-direct {v2}, Landroid/support/v4/g/a;-><init>()V

    new-instance v3, Landroid/support/v4/g/a;

    invoke-direct {v3}, Landroid/support/v4/g/a;-><init>()V

    if-eqz p2, :cond_5

    iget-object v0, p2, Lcom/google/android/gms/internal/lo;->aXZ:[Lcom/google/android/gms/internal/ln;

    if-eqz v0, :cond_5

    iget-object v4, p2, Lcom/google/android/gms/internal/lo;->aXZ:[Lcom/google/android/gms/internal/ln;

    array-length v5, v4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_5

    aget-object v6, v4, v0

    iget-object v7, v6, Lcom/google/android/gms/internal/ln;->name:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v7, "EventConfig contained null event name"

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v7, v6, Lcom/google/android/gms/internal/ln;->name:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/measurement/AppMeasurement$a;->cY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    iput-object v7, v6, Lcom/google/android/gms/internal/ln;->name:Ljava/lang/String;

    :cond_2
    iget-object v7, v6, Lcom/google/android/gms/internal/ln;->name:Ljava/lang/String;

    iget-object v8, v6, Lcom/google/android/gms/internal/ln;->aXT:Ljava/lang/Boolean;

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v6, Lcom/google/android/gms/internal/ln;->name:Ljava/lang/String;

    iget-object v8, v6, Lcom/google/android/gms/internal/ln;->aXU:Ljava/lang/Boolean;

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v6, Lcom/google/android/gms/internal/ln;->aXV:Ljava/lang/Integer;

    if-eqz v7, :cond_0

    iget-object v7, v6, Lcom/google/android/gms/internal/ln;->aXV:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget v8, Lcom/google/android/gms/internal/ht;->aUo:I

    if-lt v7, v8, :cond_3

    iget-object v7, v6, Lcom/google/android/gms/internal/ln;->aXV:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget v8, Lcom/google/android/gms/internal/ht;->aUn:I

    if-le v7, v8, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v8, "Invalid sampling rate. Event name, sample rate"

    iget-object v9, v6, Lcom/google/android/gms/internal/ln;->name:Ljava/lang/String;

    iget-object v6, v6, Lcom/google/android/gms/internal/ln;->aXV:Ljava/lang/Integer;

    invoke-virtual {v7, v8, v9, v6}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    iget-object v7, v6, Lcom/google/android/gms/internal/ln;->name:Ljava/lang/String;

    iget-object v6, v6, Lcom/google/android/gms/internal/ln;->aXV:Ljava/lang/Integer;

    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ht;->aUq:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ht;->aUr:Ljava/util/Map;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ht;->aUt:Ljava/util/Map;

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final c(Ljava/lang/String;[B)Lcom/google/android/gms/internal/lo;
    .locals 5

    if-nez p2, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/lo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/lo;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p2

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/mu;->a([BI)Lcom/google/android/gms/internal/mu;

    move-result-object v1

    new-instance v0, Lcom/google/android/gms/internal/lo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/lo;-><init>()V

    :try_start_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/nd;->a(Lcom/google/android/gms/internal/mu;)Lcom/google/android/gms/internal/nd;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v2, "Parsed config. version, gmp_app_id"

    iget-object v3, v0, Lcom/google/android/gms/internal/lo;->aXW:Ljava/lang/Long;

    iget-object v4, v0, Lcom/google/android/gms/internal/lo;->aQz:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v2, "Unable to merge remote config. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/lo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/lo;-><init>()V

    goto :goto_0
.end method

.method private final cq(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/iy;->pf()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ae;->bf(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ht;->aUs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gd;->cd(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ht;->aUp:Ljava/util/Map;

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ht;->aUq:Ljava/util/Map;

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ht;->aUr:Ljava/util/Map;

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ht;->aUs:Ljava/util/Map;

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ht;->aUu:Ljava/util/Map;

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ht;->aUt:Ljava/util/Map;

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ht;->c(Ljava/lang/String;[B)Lcom/google/android/gms/internal/lo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ht;->aUp:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/android/gms/internal/ht;->a(Lcom/google/android/gms/internal/lo;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ht;->a(Ljava/lang/String;Lcom/google/android/gms/internal/lo;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ht;->aUs:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ht;->aUu:Ljava/util/Map;

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method final B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ht;->cq(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ht;->aUp:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final C(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ht;->cq(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qL()Lcom/google/android/gms/internal/le;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/le;->cG(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p2}, Lcom/google/android/gms/internal/le;->cD(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qL()Lcom/google/android/gms/internal/le;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/le;->cH(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p2}, Lcom/google/android/gms/internal/le;->cw(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ht;->aUq:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_4

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method final D(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ht;->cq(Ljava/lang/String;)V

    const-string v0, "ecommerce_purchase"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ht;->aUr:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method final E(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ht;->cq(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ht;->aUt:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected final a(Ljava/lang/String;[BLjava/lang/String;)Z
    .locals 16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/iy;->pf()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/ae;->bf(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct/range {p0 .. p2}, Lcom/google/android/gms/internal/ht;->c(Ljava/lang/String;[B)Lcom/google/android/gms/internal/lo;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/internal/ht;->a(Ljava/lang/String;Lcom/google/android/gms/internal/lo;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ht;->aUs:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ht;->aUu:Ljava/util/Map;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ht;->aUp:Ljava/util/Map;

    invoke-static {v5}, Lcom/google/android/gms/internal/ht;->a(Lcom/google/android/gms/internal/lo;)Ljava/util/Map;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ix;->qB()Lcom/google/android/gms/internal/fz;

    move-result-object v6

    iget-object v7, v5, Lcom/google/android/gms/internal/lo;->aYa:[Lcom/google/android/gms/internal/lh;

    invoke-static {v7}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v8, v7

    const/4 v2, 0x0

    move v4, v2

    :goto_0
    if-ge v4, v8, :cond_6

    aget-object v9, v7, v4

    iget-object v10, v9, Lcom/google/android/gms/internal/lh;->aXu:[Lcom/google/android/gms/internal/li;

    array-length v11, v10

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v11, :cond_3

    aget-object v2, v10, v3

    iget-object v12, v2, Lcom/google/android/gms/internal/li;->aXx:Ljava/lang/String;

    invoke-static {v12}, Lcom/google/android/gms/measurement/AppMeasurement$a;->cY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_0

    iput-object v12, v2, Lcom/google/android/gms/internal/li;->aXx:Ljava/lang/String;

    :cond_0
    iget-object v12, v2, Lcom/google/android/gms/internal/li;->aXy:[Lcom/google/android/gms/internal/lj;

    array-length v13, v12

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v13, :cond_2

    aget-object v14, v12, v2

    iget-object v15, v14, Lcom/google/android/gms/internal/lj;->aXF:Ljava/lang/String;

    invoke-static {v15}, Lcom/google/android/gms/measurement/AppMeasurement$d;->cY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_1

    iput-object v15, v14, Lcom/google/android/gms/internal/lj;->aXF:Ljava/lang/String;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_3
    iget-object v3, v9, Lcom/google/android/gms/internal/lh;->aXt:[Lcom/google/android/gms/internal/ll;

    array-length v9, v3

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v9, :cond_5

    aget-object v10, v3, v2

    iget-object v11, v10, Lcom/google/android/gms/internal/ll;->aXM:Ljava/lang/String;

    invoke-static {v11}, Lcom/google/android/gms/measurement/AppMeasurement$e;->cY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_4

    iput-object v11, v10, Lcom/google/android/gms/internal/ll;->aXM:Ljava/lang/String;

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    :cond_6
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ix;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v7}, Lcom/google/android/gms/internal/gd;->a(Ljava/lang/String;[Lcom/google/android/gms/internal/lh;)V

    const/4 v2, 0x0

    :try_start_0
    iput-object v2, v5, Lcom/google/android/gms/internal/lo;->aYa:[Lcom/google/android/gms/internal/lh;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/nd;->sZ()I

    move-result v2

    new-array v2, v2, [B

    array-length v3, v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mv;->b([BI)Lcom/google/android/gms/internal/mv;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/nd;->a(Lcom/google/android/gms/internal/mv;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 p2, v2

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ix;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/ae;->bf(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/iy;->pf()V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "remote_config"

    move-object/from16 v0, p2

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :try_start_1
    invoke-virtual {v3}, Lcom/google/android/gms/internal/gd;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "apps"

    const-string v6, "app_id = ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {v4, v5, v2, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    int-to-long v4, v2

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_7

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v4, "Failed to update remote config (got 0). appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_7
    :goto_5
    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v4, "Unable to serialize reduced-size config. Storing full config instead. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :catch_1
    move-exception v2

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v4, "Error storing remote config. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5
.end method

.method protected final cr(Ljava/lang/String;)Lcom/google/android/gms/internal/lo;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/iy;->pf()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ae;->bf(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ht;->cq(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ht;->aUs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/lo;

    return-object v0
.end method

.method public final bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mN()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->mN()V

    return-void
.end method

.method public final bridge synthetic qA()Lcom/google/android/gms/internal/fs;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qA()Lcom/google/android/gms/internal/fs;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qB()Lcom/google/android/gms/internal/fz;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qB()Lcom/google/android/gms/internal/fz;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qC()Lcom/google/android/gms/internal/ja;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qC()Lcom/google/android/gms/internal/ja;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qD()Lcom/google/android/gms/internal/gw;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qD()Lcom/google/android/gms/internal/gw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qE()Lcom/google/android/gms/internal/gj;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qE()Lcom/google/android/gms/internal/gj;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qF()Lcom/google/android/gms/internal/ju;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qF()Lcom/google/android/gms/internal/ju;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qG()Lcom/google/android/gms/internal/jq;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qG()Lcom/google/android/gms/internal/jq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qH()Lcom/google/android/gms/common/util/e;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qH()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qI()Lcom/google/android/gms/internal/gx;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qI()Lcom/google/android/gms/internal/gx;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qJ()Lcom/google/android/gms/internal/gd;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qK()Lcom/google/android/gms/internal/gz;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qK()Lcom/google/android/gms/internal/gz;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qL()Lcom/google/android/gms/internal/le;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qL()Lcom/google/android/gms/internal/le;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qM()Lcom/google/android/gms/internal/ht;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qM()Lcom/google/android/gms/internal/ht;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qN()Lcom/google/android/gms/internal/kt;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qN()Lcom/google/android/gms/internal/kt;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qO()Lcom/google/android/gms/internal/hu;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qP()Lcom/google/android/gms/internal/hb;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qQ()Lcom/google/android/gms/internal/hl;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qQ()Lcom/google/android/gms/internal/hl;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qR()Lcom/google/android/gms/internal/gc;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qR()Lcom/google/android/gms/internal/gc;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qy()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qy()V

    return-void
.end method

.method public final bridge synthetic qz()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qz()V

    return-void
.end method

.method protected final ri()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
