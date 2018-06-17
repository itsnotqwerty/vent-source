.class public final Lcom/google/android/gms/internal/px;
.super Ljava/lang/Object;


# instance fields
.field final ayH:Ljava/util/Date;

.field final ayJ:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final ayL:Landroid/location/Location;

.field final azG:Z

.field final bbA:Lcom/google/android/gms/ads/d/a;

.field final bbB:I

.field final bbC:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final bbD:Landroid/os/Bundle;

.field final bbE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final bbF:Z

.field final bbu:Ljava/lang/String;

.field final bbv:I

.field final bbw:Landroid/os/Bundle;

.field public final bbx:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final bby:Ljava/lang/String;

.field final bbz:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/py;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/px;-><init>(Lcom/google/android/gms/internal/py;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/py;B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/internal/py;->ayH:Ljava/util/Date;

    iput-object v0, p0, Lcom/google/android/gms/internal/px;->ayH:Ljava/util/Date;

    iget-object v0, p1, Lcom/google/android/gms/internal/py;->bbu:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/px;->bbu:Ljava/lang/String;

    iget v0, p1, Lcom/google/android/gms/internal/py;->bbv:I

    iput v0, p0, Lcom/google/android/gms/internal/px;->bbv:I

    iget-object v0, p1, Lcom/google/android/gms/internal/py;->bbG:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/px;->ayJ:Ljava/util/Set;

    iget-object v0, p1, Lcom/google/android/gms/internal/py;->ayL:Landroid/location/Location;

    iput-object v0, p0, Lcom/google/android/gms/internal/px;->ayL:Landroid/location/Location;

    iget-boolean v0, p1, Lcom/google/android/gms/internal/py;->azG:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/px;->azG:Z

    iget-object v0, p1, Lcom/google/android/gms/internal/py;->bbw:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/gms/internal/px;->bbw:Landroid/os/Bundle;

    iget-object v0, p1, Lcom/google/android/gms/internal/py;->bbH:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/px;->bbx:Ljava/util/Map;

    iget-object v0, p1, Lcom/google/android/gms/internal/py;->bby:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/px;->bby:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/py;->bbz:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/px;->bbz:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/px;->bbA:Lcom/google/android/gms/ads/d/a;

    iget v0, p1, Lcom/google/android/gms/internal/py;->bbB:I

    iput v0, p0, Lcom/google/android/gms/internal/px;->bbB:I

    iget-object v0, p1, Lcom/google/android/gms/internal/py;->bbI:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/px;->bbC:Ljava/util/Set;

    iget-object v0, p1, Lcom/google/android/gms/internal/py;->bbD:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/gms/internal/px;->bbD:Landroid/os/Bundle;

    iget-object v0, p1, Lcom/google/android/gms/internal/py;->bbJ:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/px;->bbE:Ljava/util/Set;

    iget-boolean v0, p1, Lcom/google/android/gms/internal/py;->bbF:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/px;->bbF:Z

    return-void
.end method
