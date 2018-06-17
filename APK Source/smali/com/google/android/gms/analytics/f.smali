.class public final Lcom/google/android/gms/analytics/f;
.super Lcom/google/android/gms/internal/ba;

# interfaces
.implements Lcom/google/android/gms/analytics/q;


# static fields
.field private static aBf:Ljava/text/DecimalFormat;


# instance fields
.field private final aBd:Lcom/google/android/gms/internal/bd;

.field private final aBg:Ljava/lang/String;

.field private final aBh:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/bd;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/analytics/f;-><init>(Lcom/google/android/gms/internal/bd;Ljava/lang/String;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/bd;Ljava/lang/String;B)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ba;-><init>(Lcom/google/android/gms/internal/bd;)V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/ae;->bf(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/analytics/f;->aBd:Lcom/google/android/gms/internal/bd;

    iput-object p2, p0, Lcom/google/android/gms/analytics/f;->aBg:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/analytics/f;->aBg:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/analytics/f;->aZ(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/f;->aBh:Landroid/net/Uri;

    return-void
.end method

.method private static a(D)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/google/android/gms/analytics/f;->aBf:Ljava/text/DecimalFormat;

    if-nez v0, :cond_0

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.######"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/analytics/f;->aBf:Ljava/text/DecimalFormat;

    :cond_0
    sget-object v0, Lcom/google/android/gms/analytics/f;->aBf:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;D)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "D)V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Lcom/google/android/gms/analytics/f;->a(D)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    if-lez p2, :cond_0

    if-lez p3, :cond_0

    const/16 v0, 0x17

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    const-string v0, "1"

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method static aZ(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/ae;->bf(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "uri"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "google-analytics.com"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static c(Lcom/google/android/gms/analytics/k;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/analytics/k;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-class v0, Lcom/google/android/gms/internal/al;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/k;->h(Ljava/lang/Class;)Lcom/google/android/gms/analytics/l;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/al;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lcom/google/android/gms/internal/al;->aAV:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    move-object v1, v2

    :cond_1
    :goto_1
    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    instance-of v5, v1, Ljava/lang/String;

    if-eqz v5, :cond_3

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_3
    instance-of v5, v1, Ljava/lang/Double;

    if-eqz v5, :cond_5

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v5, v8, v10

    if-eqz v5, :cond_4

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/android/gms/analytics/f;->a(D)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    move-object v1, v2

    goto :goto_1

    :cond_5
    instance-of v5, v1, Ljava/lang/Boolean;

    if-eqz v5, :cond_7

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v5, :cond_6

    const-string v1, "1"

    goto :goto_1

    :cond_6
    move-object v1, v2

    goto :goto_1

    :cond_7
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_8
    const-class v0, Lcom/google/android/gms/internal/aq;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/k;->h(Ljava/lang/Class;)Lcom/google/android/gms/analytics/l;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aq;

    if-eqz v0, :cond_9

    const-string v1, "t"

    iget-object v2, v0, Lcom/google/android/gms/internal/aq;->aLK:Ljava/lang/String;

    invoke-static {v6, v1, v2}, Lcom/google/android/gms/analytics/f;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cid"

    iget-object v2, v0, Lcom/google/android/gms/internal/aq;->aLL:Ljava/lang/String;

    invoke-static {v6, v1, v2}, Lcom/google/android/gms/analytics/f;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "uid"

    iget-object v2, v0, Lcom/google/android/gms/internal/aq;->aLM:Ljava/lang/String;

    invoke-static {v6, v1, v2}, Lcom/google/android/gms/analytics/f;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sc"

    iget-object v2, v0, Lcom/google/android/gms/internal/aq;->aLP:Ljava/lang/String;

    invoke-static {v6, v1, v2}, Lcom/google/android/gms/analytics/f;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sf"

    iget-wide v4, v0, Lcom/google/android/gms/internal/aq;->aLR:D

    invoke-static {v6, v1, v4, v5}, Lcom/google/android/gms/analytics/f;->a(Ljava/util/Map;Ljava/lang/String;D)V

    const-string v1, "ni"

    iget-boolean v2, v0, Lcom/google/android/gms/internal/aq;->aLQ:Z

    invoke-static {v6, v1, v2}, Lcom/google/android/gms/analytics/f;->a(Ljava/util/Map;Ljava/lang/String;Z)V

    const-string v1, "adid"

    iget-object v2, v0, Lcom/google/android/gms/internal/aq;->aLN:Ljava/lang/String;

    invoke-static {v6, v1, v2}, Lcom/google/android/gms/analytics/f;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ate"

    iget-boolean v0, v0, Lcom/google/android/gms/internal/aq;->aLO:Z

    invoke-static {v6, v1, v0}, Lcom/google/android/gms/analytics/f;->a(Ljava/util/Map;Ljava/lang/String;Z)V

    :cond_9
    const-class v0, Lcom/google/android/gms/internal/ar;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/k;->h(Ljava/lang/Class;)Lcom/google/android/gms/analytics/l;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ar;

    if-eqz v0, :cond_a

    const-string v1, "cd"

    iget-object v2, v0, Lcom/google/android/gms/internal/ar;->aLS:Ljava/lang/String;

    invoke-static {v6, v1, v2}, Lcom/google/android/gms/analytics/f;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "a"

    iget v2, v0, Lcom/google/android/gms/internal/ar;->aLT:I

    int-to-double v4, v2

    invoke-static {v6, v1, v4, v5}, Lcom/google/android/gms/analytics/f;->a(Ljava/util/Map;Ljava/lang/String;D)V

    const-string v1, "dr"

    iget-object v0, v0, Lcom/google/android/gms/internal/ar;->aLW:Ljava/lang/String;

    invoke-static {v6, v1, v0}, Lcom/google/android/gms/analytics/f;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    const-class v0, Lcom/google/android/gms/internal/ao;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/k;->h(Ljava/lang/Class;)Lcom/google/android/gms/analytics/l;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ao;

    if-eqz v0, :cond_b

    const-string v1, "ec"

    iget-object v2, v0, Lcom/google/android/gms/internal/ao;->zS:Ljava/lang/String;

    invoke-static {v6, v1, v2}, Lcom/google/android/gms/analytics/f;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ea"

    iget-object v2, v0, Lcom/google/android/gms/internal/ao;->aHq:Ljava/lang/String;

    invoke-static {v6, v1, v2}, Lcom/google/android/gms/analytics/f;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "el"

    iget-object v2, v0, Lcom/google/android/gms/internal/ao;->aLG:Ljava/lang/String;

    invoke-static {v6, v1, v2}, Lcom/google/android/gms/analytics/f;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ev"

    iget-wide v4, v0, Lcom/google/android/gms/internal/ao;->aLH:J

    long-to-double v4, v4

    invoke-static {v6, v1, v4, v5}, Lcom/google/android/gms/analytics/f;->a(Ljava/util/Map;Ljava/lang/String;D)V

    :cond_b
    const-class v0, Lcom/google/android/gms/internal/ai;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/k;->h(Ljava/lang/Class;)Lcom/google/android/gms/analytics/l;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ai;

    if-eqz v0, :cond_c

    const-string v1, "cn"

    iget-object v2, v0, Lcom/google/android/gms/internal/ai;->mName:Ljava/lang/String;

    invoke-static {v6, v1, v2}, Lcom/google/android/gms/analytics/f;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cs"

    iget-object v2, v0, Lcom/google/android/gms/internal/ai;->aLq:Ljava/lang/String;

    invoke-static {v6, v1, v2}, Lcom/google/android/gms/analytics/f;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cm"

    iget-object v2, v0, Lcom/google/android/gms/internal/ai;->aLr:Ljava/lang/String;

    invoke-static {v6, v1, v2}, Lcom/google/android/gms/analytics/f;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ck"

    iget-object v2, v0, Lcom/google/android/gms/internal/ai;->aLs:Ljava/lang/String;

    invoke-static {v6, v1, v2}, Lcom/google/android/gms/analytics/f;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cc"

    iget-object v2, v0, Lcom/google/android/gms/internal/ai;->aLt:Ljava/lang/String;

    invoke-static {v6, v1, v2}, Lcom/google/android/gms/analytics/f;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ci"

    iget-object v2, v0, Lcom/google/android/gms/internal/ai;->aBR:Ljava/lang/String;

    invoke-static {v6, v1, v2}, Lcom/google/android/gms/analytics/f;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "anid"

    iget-object v2, v0, Lcom/google/android/gms/internal/ai;->aLu:Ljava/lang/String;

    invoke-static {v6, v1, v2}, Lcom/google/android/gms/analytics/f;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "gclid"

    iget-object v2, v0, Lcom/google/android/gms/internal/ai;->aLv:Ljava/lang/String;

    invoke-static {v6, v1, v2}, Lcom/google/android/gms/analytics/f;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "dclid"

    iget-object v2, v0, Lcom/google/android/gms/internal/ai;->aLw:Ljava/lang/String;

    invoke-static {v6, v1, v2}, Lcom/google/android/gms/analytics/f;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "aclid"

    iget-object v0, v0, Lcom/google/android/gms/internal/ai;->aLx:Ljava/lang/String;

    invoke-static {v6, v1, v0}, Lcom/google/android/gms/analytics/f;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    const-class v0, Lcom/google/android/gms/internal/ap;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/k;->h(Ljava/lang/Class;)Lcom/google/android/gms/analytics/l;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ap;

    if-eqz v0, :cond_d

    const-string v1, "exd"

    iget-object v2, v0, Lcom/google/android/gms/internal/ap;->aLI:Ljava/lang/String;

    invoke-static {v6, v1, v2}, Lcom/google/android/gms/analytics/f;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "exf"

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ap;->aLJ:Z

    invoke-static {v6, v1, v0}, Lcom/google/android/gms/analytics/f;->a(Ljava/util/Map;Ljava/lang/String;Z)V

    :cond_d
    const-class v0, Lcom/google/android/gms/internal/as;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/k;->h(Ljava/lang/Class;)Lcom/google/android/gms/analytics/l;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/as;

    if-eqz v0, :cond_e

    const-string v1, "sn"

    iget-object v2, v0, Lcom/google/android/gms/internal/as;->aLZ:Ljava/lang/String;

    invoke-static {v6, v1, v2}, Lcom/google/android/gms/analytics/f;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sa"

    iget-object v2, v0, Lcom/google/android/gms/internal/as;->aHq:Ljava/lang/String;

    invoke-static {v6, v1, v2}, Lcom/google/android/gms/analytics/f;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "st"

    iget-object v0, v0, Lcom/google/android/gms/internal/as;->aMa:Ljava/lang/String;

    invoke-static {v6, v1, v0}, Lcom/google/android/gms/analytics/f;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    const-class v0, Lcom/google/android/gms/internal/at;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/k;->h(Ljava/lang/Class;)Lcom/google/android/gms/analytics/l;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/at;

    if-eqz v0, :cond_f

    const-string v1, "utv"

    iget-object v2, v0, Lcom/google/android/gms/internal/at;->aMb:Ljava/lang/String;

    invoke-static {v6, v1, v2}, Lcom/google/android/gms/analytics/f;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "utt"

    iget-wide v4, v0, Lcom/google/android/gms/internal/at;->aMc:J

    long-to-double v4, v4

    invoke-static {v6, v1, v4, v5}, Lcom/google/android/gms/analytics/f;->a(Ljava/util/Map;Ljava/lang/String;D)V

    const-string v1, "utc"

    iget-object v2, v0, Lcom/google/android/gms/internal/at;->zS:Ljava/lang/String;

    invoke-static {v6, v1, v2}, Lcom/google/android/gms/analytics/f;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "utl"

    iget-object v0, v0, Lcom/google/android/gms/internal/at;->aLG:Ljava/lang/String;

    invoke-static {v6, v1, v0}, Lcom/google/android/gms/analytics/f;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    const-class v0, Lcom/google/android/gms/internal/aj;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/k;->h(Ljava/lang/Class;)Lcom/google/android/gms/analytics/l;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aj;

    if-eqz v0, :cond_11

    iget-object v0, v0, Lcom/google/android/gms/internal/aj;->aLy:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v4, "cd"

    invoke-static {v4, v1}, Lcom/google/android/gms/analytics/h;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_11
    const-class v0, Lcom/google/android/gms/internal/ak;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/k;->h(Ljava/lang/Class;)Lcom/google/android/gms/analytics/l;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ak;

    if-eqz v0, :cond_13

    iget-object v0, v0, Lcom/google/android/gms/internal/ak;->aLz:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v4, "cm"

    invoke-static {v4, v1}, Lcom/google/android/gms/analytics/h;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_12

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/analytics/f;->a(D)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_13
    const-class v0, Lcom/google/android/gms/internal/an;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/k;->h(Ljava/lang/Class;)Lcom/google/android/gms/analytics/l;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/an;

    if-eqz v0, :cond_1c

    iget-object v1, v0, Lcom/google/android/gms/internal/an;->aAQ:Lcom/google/android/gms/analytics/a/b;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/a/b;->mF()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v5, "&"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v6, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_14
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v6, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_15
    iget-object v1, v0, Lcom/google/android/gms/internal/an;->aAS:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v3

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/analytics/a/c;

    const-string v5, "promo"

    invoke-static {v5, v2}, Lcom/google/android/gms/analytics/h;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/google/android/gms/analytics/a/c;->aX(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_5

    :cond_16
    iget-object v1, v0, Lcom/google/android/gms/internal/an;->aAT:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v3

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/analytics/a/a;

    const-string v5, "pr"

    invoke-static {v5, v2}, Lcom/google/android/gms/analytics/h;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/google/android/gms/analytics/a/a;->aX(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_6

    :cond_17
    iget-object v0, v0, Lcom/google/android/gms/internal/an;->aAR:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v5, v3

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v2, "il"

    invoke-static {v2, v5}, Lcom/google/android/gms/analytics/h;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v2, v3

    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/a/a;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string v4, "pi"

    invoke-static {v4, v2}, Lcom/google/android/gms/analytics/h;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_18

    invoke-virtual {v10, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_9
    invoke-virtual {v0, v4}, Lcom/google/android/gms/analytics/a/a;->aX(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8

    :cond_18
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :cond_19
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "nm"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1b

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_a
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v6, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_7

    :cond_1b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    goto :goto_a

    :cond_1c
    const-class v0, Lcom/google/android/gms/internal/am;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/k;->h(Ljava/lang/Class;)Lcom/google/android/gms/analytics/l;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/am;

    if-eqz v0, :cond_1d

    const-string v1, "ul"

    iget-object v2, v0, Lcom/google/android/gms/internal/am;->aLA:Ljava/lang/String;

    invoke-static {v6, v1, v2}, Lcom/google/android/gms/analytics/f;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sd"

    iget v2, v0, Lcom/google/android/gms/internal/am;->aLB:I

    int-to-double v2, v2

    invoke-static {v6, v1, v2, v3}, Lcom/google/android/gms/analytics/f;->a(Ljava/util/Map;Ljava/lang/String;D)V

    const-string v1, "sr"

    iget v2, v0, Lcom/google/android/gms/internal/am;->aLC:I

    iget v3, v0, Lcom/google/android/gms/internal/am;->aLD:I

    invoke-static {v6, v1, v2, v3}, Lcom/google/android/gms/analytics/f;->a(Ljava/util/Map;Ljava/lang/String;II)V

    const-string v1, "vp"

    iget v2, v0, Lcom/google/android/gms/internal/am;->aLE:I

    iget v0, v0, Lcom/google/android/gms/internal/am;->aLF:I

    invoke-static {v6, v1, v2, v0}, Lcom/google/android/gms/analytics/f;->a(Ljava/util/Map;Ljava/lang/String;II)V

    :cond_1d
    const-class v0, Lcom/google/android/gms/internal/ah;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/k;->h(Ljava/lang/Class;)Lcom/google/android/gms/analytics/l;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ah;

    if-eqz v0, :cond_1e

    const-string v1, "an"

    iget-object v2, v0, Lcom/google/android/gms/internal/ah;->aLn:Ljava/lang/String;

    invoke-static {v6, v1, v2}, Lcom/google/android/gms/analytics/f;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "aid"

    iget-object v2, v0, Lcom/google/android/gms/internal/ah;->mAppId:Ljava/lang/String;

    invoke-static {v6, v1, v2}, Lcom/google/android/gms/analytics/f;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "aiid"

    iget-object v2, v0, Lcom/google/android/gms/internal/ah;->aLp:Ljava/lang/String;

    invoke-static {v6, v1, v2}, Lcom/google/android/gms/analytics/f;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "av"

    iget-object v0, v0, Lcom/google/android/gms/internal/ah;->aLo:Ljava/lang/String;

    invoke-static {v6, v1, v0}, Lcom/google/android/gms/analytics/f;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    return-object v6
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/analytics/k;)V
    .locals 9

    const/4 v7, 0x1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p1, Lcom/google/android/gms/analytics/k;->aBn:Z

    const-string v1, "Can\'t deliver not submitted measurement"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/ae;->b(ZLjava/lang/Object;)V

    const-string v0, "deliver should be called on worker thread"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ae;->bh(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/k;->mK()Lcom/google/android/gms/analytics/k;

    move-result-object v1

    const-class v0, Lcom/google/android/gms/internal/aq;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/k;->i(Ljava/lang/Class;)Lcom/google/android/gms/analytics/l;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/aq;

    iget-object v0, v3, Lcom/google/android/gms/internal/aq;->aLK:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ba;->aMq:Lcom/google/android/gms/internal/bd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bd;->pg()Lcom/google/android/gms/internal/cw;

    move-result-object v0

    invoke-static {v1}, Lcom/google/android/gms/analytics/f;->c(Lcom/google/android/gms/analytics/k;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "Ignoring measurement without type"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/cw;->a(Ljava/util/Map;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, v3, Lcom/google/android/gms/internal/aq;->aLL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ba;->aMq:Lcom/google/android/gms/internal/bd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bd;->pg()Lcom/google/android/gms/internal/cw;

    move-result-object v0

    invoke-static {v1}, Lcom/google/android/gms/analytics/f;->c(Lcom/google/android/gms/analytics/k;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "Ignoring measurement without client id"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/cw;->a(Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/analytics/f;->aBd:Lcom/google/android/gms/internal/bd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bd;->pj()Lcom/google/android/gms/analytics/a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/analytics/a;->aAO:Z

    if-nez v0, :cond_0

    iget-wide v4, v3, Lcom/google/android/gms/internal/aq;->aLR:D

    iget-object v0, v3, Lcom/google/android/gms/internal/aq;->aLL:Ljava/lang/String;

    invoke-static {v4, v5, v0}, Lcom/google/android/gms/internal/di;->a(DLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Sampling enabled. Hit sampled out. sampling rate"

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ba;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lcom/google/android/gms/analytics/f;->c(Lcom/google/android/gms/analytics/k;)Ljava/util/Map;

    move-result-object v8

    const-string v0, "v"

    const-string v1, "1"

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "_v"

    sget-object v1, Lcom/google/android/gms/internal/bc;->aMr:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tid"

    iget-object v1, p0, Lcom/google/android/gms/analytics/f;->aBg:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/analytics/f;->aBd:Lcom/google/android/gms/internal/bd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bd;->pj()Lcom/google/android/gms/analytics/a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/analytics/a;->aAN:Z

    if-eqz v0, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Dry run is enabled. GoogleAnalytics would have sent"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ba;->f(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "uid"

    iget-object v1, v3, Lcom/google/android/gms/internal/aq;->aLM:Ljava/lang/String;

    invoke-static {v6, v0, v1}, Lcom/google/android/gms/internal/di;->c(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/google/android/gms/internal/ah;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/k;->h(Ljava/lang/Class;)Lcom/google/android/gms/analytics/l;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ah;

    if-eqz v0, :cond_7

    const-string v1, "an"

    iget-object v2, v0, Lcom/google/android/gms/internal/ah;->aLn:Ljava/lang/String;

    invoke-static {v6, v1, v2}, Lcom/google/android/gms/internal/di;->c(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "aid"

    iget-object v2, v0, Lcom/google/android/gms/internal/ah;->mAppId:Ljava/lang/String;

    invoke-static {v6, v1, v2}, Lcom/google/android/gms/internal/di;->c(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "av"

    iget-object v2, v0, Lcom/google/android/gms/internal/ah;->aLo:Ljava/lang/String;

    invoke-static {v6, v1, v2}, Lcom/google/android/gms/internal/di;->c(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "aiid"

    iget-object v0, v0, Lcom/google/android/gms/internal/ah;->aLp:Ljava/lang/String;

    invoke-static {v6, v1, v0}, Lcom/google/android/gms/internal/di;->c(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    new-instance v0, Lcom/google/android/gms/internal/bg;

    iget-object v1, v3, Lcom/google/android/gms/internal/aq;->aLL:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/analytics/f;->aBg:Ljava/lang/String;

    iget-object v3, v3, Lcom/google/android/gms/internal/aq;->aLN:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    move v3, v7

    :goto_2
    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/bg;-><init>(Ljava/lang/String;Ljava/lang/String;ZJLjava/util/Map;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ba;->aMq:Lcom/google/android/gms/internal/bd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/bd;->pi()Lcom/google/android/gms/internal/av;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/av;->a(Lcom/google/android/gms/internal/bg;)J

    move-result-wide v0

    const-string v2, "_s"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/cr;

    iget-object v0, p0, Lcom/google/android/gms/internal/ba;->aMq:Lcom/google/android/gms/internal/bd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bd;->pg()Lcom/google/android/gms/internal/cw;

    move-result-object v2

    iget-wide v4, p1, Lcom/google/android/gms/analytics/k;->aBo:J

    move-object v3, v8

    move v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/cr;-><init>(Lcom/google/android/gms/internal/ba;Ljava/util/Map;JZ)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ba;->aMq:Lcom/google/android/gms/internal/bd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bd;->pi()Lcom/google/android/gms/internal/av;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/av;->a(Lcom/google/android/gms/internal/cr;)V

    goto/16 :goto_0

    :cond_8
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public final mJ()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/f;->aBh:Landroid/net/Uri;

    return-object v0
.end method
