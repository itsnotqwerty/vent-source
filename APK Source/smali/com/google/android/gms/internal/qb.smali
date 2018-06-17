.class public final Lcom/google/android/gms/internal/qb;
.super Ljava/lang/Object;


# instance fields
.field private final ayW:Lcom/google/android/gms/internal/nt;

.field public baA:Lcom/google/android/gms/ads/a;

.field public baY:Lcom/google/android/gms/ads/a/a;

.field public baz:Lcom/google/android/gms/internal/nm;

.field public final bbK:Lcom/google/android/gms/internal/ti;

.field public bbO:Lcom/google/android/gms/ads/g;

.field public bbP:Lcom/google/android/gms/internal/ow;

.field public bbQ:Lcom/google/android/gms/ads/a/b;

.field public bbR:Ljava/lang/String;

.field private bbV:Lcom/google/android/gms/ads/a/d;

.field public bbW:Z

.field public bbX:Z

.field public final mContext:Landroid/content/Context;

.field public zzgy:Lcom/google/android/gms/ads/reward/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/nt;->baR:Lcom/google/android/gms/internal/nt;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/qb;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/nt;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/nt;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ti;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ti;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/qb;->bbK:Lcom/google/android/gms/internal/ti;

    iput-object p1, p0, Lcom/google/android/gms/internal/qb;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/qb;->ayW:Lcom/google/android/gms/internal/nt;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/qb;->bbV:Lcom/google/android/gms/ads/a/d;

    return-void
.end method


# virtual methods
.method public final cO(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/qb;->bbP:Lcom/google/android/gms/internal/ow;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "The ad unit ID must be set on InterstitialAd before "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method
