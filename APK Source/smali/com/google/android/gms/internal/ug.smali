.class public final Lcom/google/android/gms/internal/ug;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/mediation/i;


# instance fields
.field private final ayH:Ljava/util/Date;

.field private final ayJ:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final ayK:Z

.field private final ayL:Landroid/location/Location;

.field private final bbF:Z

.field private final bbv:I

.field private final bcT:I

.field private final bdc:Lcom/google/android/gms/internal/rd;

.field private final bdd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final bde:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZILcom/google/android/gms/internal/rd;Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/location/Location;",
            "ZI",
            "Lcom/google/android/gms/internal/rd;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ug;->ayH:Ljava/util/Date;

    iput p2, p0, Lcom/google/android/gms/internal/ug;->bbv:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ug;->ayJ:Ljava/util/Set;

    iput-object p4, p0, Lcom/google/android/gms/internal/ug;->ayL:Landroid/location/Location;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ug;->ayK:Z

    iput p6, p0, Lcom/google/android/gms/internal/ug;->bcT:I

    iput-object p7, p0, Lcom/google/android/gms/internal/ug;->bdc:Lcom/google/android/gms/internal/rd;

    iput-boolean p9, p0, Lcom/google/android/gms/internal/ug;->bbF:Z

    const-string v1, "custom:"

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ug;->bdd:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ug;->bde:Ljava/util/Map;

    if-eqz p8, :cond_3

    invoke-interface {p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, ":"

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    const-string v3, "true"

    const/4 v4, 0x2

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/ug;->bde:Ljava/util/Map;

    const/4 v4, 0x1

    aget-object v0, v0, v4

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v3, "false"

    const/4 v4, 0x2

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/ug;->bde:Ljava/util/Map;

    const/4 v4, 0x1

    aget-object v0, v0, v4

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/internal/ug;->bdd:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public final getKeywords()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ug;->ayJ:Ljava/util/Set;

    return-object v0
.end method

.method public final lW()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ug;->ayH:Ljava/util/Date;

    return-object v0
.end method

.method public final lX()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ug;->bbv:I

    return v0
.end method

.method public final lY()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ug;->ayL:Landroid/location/Location;

    return-object v0
.end method

.method public final lZ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ug;->bcT:I

    return v0
.end method

.method public final mA()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ug;->bdd:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ug;->bdd:Ljava/util/List;

    const-string v1, "3"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final mB()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ug;->bde:Ljava/util/Map;

    return-object v0
.end method

.method public final ma()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ug;->ayK:Z

    return v0
.end method

.method public final mb()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ug;->bbF:Z

    return v0
.end method

.method public final mw()Lcom/google/android/gms/ads/b/d;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ug;->bdc:Lcom/google/android/gms/internal/rd;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/google/android/gms/ads/b/d$a;

    invoke-direct {v1}, Lcom/google/android/gms/ads/b/d$a;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ug;->bdc:Lcom/google/android/gms/internal/rd;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/rd;->bct:Z

    iput-boolean v0, v1, Lcom/google/android/gms/ads/b/d$a;->azw:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ug;->bdc:Lcom/google/android/gms/internal/rd;

    iget v0, v0, Lcom/google/android/gms/internal/rd;->bcu:I

    iput v0, v1, Lcom/google/android/gms/ads/b/d$a;->azx:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ug;->bdc:Lcom/google/android/gms/internal/rd;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/rd;->bcv:Z

    iput-boolean v0, v1, Lcom/google/android/gms/ads/b/d$a;->azy:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ug;->bdc:Lcom/google/android/gms/internal/rd;

    iget v0, v0, Lcom/google/android/gms/internal/rd;->versionCode:I

    const/4 v2, 0x2

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ug;->bdc:Lcom/google/android/gms/internal/rd;

    iget v0, v0, Lcom/google/android/gms/internal/rd;->bcw:I

    iput v0, v1, Lcom/google/android/gms/ads/b/d$a;->azz:I

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ug;->bdc:Lcom/google/android/gms/internal/rd;

    iget v0, v0, Lcom/google/android/gms/internal/rd;->versionCode:I

    const/4 v2, 0x3

    if-lt v0, v2, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ug;->bdc:Lcom/google/android/gms/internal/rd;

    iget-object v0, v0, Lcom/google/android/gms/internal/rd;->bcx:Lcom/google/android/gms/internal/qq;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/gms/ads/j;

    iget-object v2, p0, Lcom/google/android/gms/internal/ug;->bdc:Lcom/google/android/gms/internal/rd;

    iget-object v2, v2, Lcom/google/android/gms/internal/rd;->bcx:Lcom/google/android/gms/internal/qq;

    invoke-direct {v0, v2}, Lcom/google/android/gms/ads/j;-><init>(Lcom/google/android/gms/internal/qq;)V

    iput-object v0, v1, Lcom/google/android/gms/ads/b/d$a;->azA:Lcom/google/android/gms/ads/j;

    :cond_2
    new-instance v0, Lcom/google/android/gms/ads/b/d;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/b/d;-><init>(Lcom/google/android/gms/ads/b/d$a;B)V

    goto :goto_0
.end method

.method public final mx()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ug;->bdd:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ug;->bdd:Ljava/util/List;

    const-string v1, "2"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final my()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ug;->bdd:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ug;->bdd:Ljava/util/List;

    const-string v1, "6"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final mz()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ug;->bdd:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ug;->bdd:Ljava/util/List;

    const-string v1, "1"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
