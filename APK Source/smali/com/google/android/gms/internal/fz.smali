.class final Lcom/google/android/gms/internal/fz;
.super Lcom/google/android/gms/internal/iy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/hz;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/iy;-><init>(Lcom/google/android/gms/internal/hz;)V

    return-void
.end method

.method private static a(DLcom/google/android/gms/internal/lk;)Ljava/lang/Boolean;
    .locals 4

    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-static {p0, p1}, Ljava/lang/Math;->ulp(D)D

    move-result-wide v2

    invoke-static {v0, p2, v2, v3}, Lcom/google/android/gms/internal/fz;->a(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/lk;D)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(JLcom/google/android/gms/internal/lk;)Ljava/lang/Boolean;
    .locals 4

    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1}, Ljava/math/BigDecimal;-><init>(J)V

    const-wide/16 v2, 0x0

    invoke-static {v0, p2, v2, v3}, Lcom/google/android/gms/internal/fz;->a(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/lk;D)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final a(Lcom/google/android/gms/internal/li;Ljava/lang/String;[Lcom/google/android/gms/internal/ls;J)Ljava/lang/Boolean;
    .locals 10

    iget-object v0, p1, Lcom/google/android/gms/internal/li;->aXA:Lcom/google/android/gms/internal/lk;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/li;->aXA:Lcom/google/android/gms/internal/lk;

    invoke-static {p4, p5, v0}, Lcom/google/android/gms/internal/fz;->a(JLcom/google/android/gms/internal/lk;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v2, p1, Lcom/google/android/gms/internal/li;->aXy:[Lcom/google/android/gms/internal/lj;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_3

    aget-object v4, v2, v0

    iget-object v5, v4, Lcom/google/android/gms/internal/lj;->aXF:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v1, "null or empty param name in filter. event"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qK()Lcom/google/android/gms/internal/gz;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/gz;->ch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v4, v4, Lcom/google/android/gms/internal/lj;->aXF:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    new-instance v3, Landroid/support/v4/g/a;

    invoke-direct {v3}, Landroid/support/v4/g/a;-><init>()V

    array-length v2, p3

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_8

    aget-object v4, p3, v0

    iget-object v5, v4, Lcom/google/android/gms/internal/ls;->name:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v4, Lcom/google/android/gms/internal/ls;->aYl:Ljava/lang/Long;

    if-eqz v5, :cond_5

    iget-object v5, v4, Lcom/google/android/gms/internal/ls;->name:Ljava/lang/String;

    iget-object v4, v4, Lcom/google/android/gms/internal/ls;->aYl:Ljava/lang/Long;

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iget-object v5, v4, Lcom/google/android/gms/internal/ls;->aXk:Ljava/lang/Double;

    if-eqz v5, :cond_6

    iget-object v5, v4, Lcom/google/android/gms/internal/ls;->name:Ljava/lang/String;

    iget-object v4, v4, Lcom/google/android/gms/internal/ls;->aXk:Ljava/lang/Double;

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    iget-object v5, v4, Lcom/google/android/gms/internal/ls;->aTr:Ljava/lang/String;

    if-eqz v5, :cond_7

    iget-object v5, v4, Lcom/google/android/gms/internal/ls;->name:Ljava/lang/String;

    iget-object v4, v4, Lcom/google/android/gms/internal/ls;->aTr:Ljava/lang/String;

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v1, "Unknown value for param. event, param"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qK()Lcom/google/android/gms/internal/gz;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/gz;->ch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qK()Lcom/google/android/gms/internal/gz;

    move-result-object v3

    iget-object v4, v4, Lcom/google/android/gms/internal/ls;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/gz;->ci(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_8
    iget-object v4, p1, Lcom/google/android/gms/internal/li;->aXy:[Lcom/google/android/gms/internal/lj;

    array-length v5, v4

    const/4 v0, 0x0

    move v2, v0

    :goto_4
    if-ge v2, v5, :cond_1a

    aget-object v6, v4, v2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, v6, Lcom/google/android/gms/internal/lj;->aXE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v7

    iget-object v8, v6, Lcom/google/android/gms/internal/lj;->aXF:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v1, "Event has empty param name. event"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qK()Lcom/google/android/gms/internal/gz;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/gz;->ch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_9
    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_d

    iget-object v1, v6, Lcom/google/android/gms/internal/lj;->aXD:Lcom/google/android/gms/internal/lk;

    if-nez v1, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v1, "No number filter for long param. event, param"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qK()Lcom/google/android/gms/internal/gz;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/gz;->ch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qK()Lcom/google/android/gms/internal/gz;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/gz;->ci(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_a
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v6, v6, Lcom/google/android/gms/internal/lj;->aXD:Lcom/google/android/gms/internal/lk;

    invoke-static {v0, v1, v6}, Lcom/google/android/gms/internal/fz;->a(JLcom/google/android/gms/internal/lk;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_b

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_5
    xor-int/2addr v0, v7

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    :cond_c
    const/4 v0, 0x0

    goto :goto_5

    :cond_d
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_11

    iget-object v1, v6, Lcom/google/android/gms/internal/lj;->aXD:Lcom/google/android/gms/internal/lk;

    if-nez v1, :cond_e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v1, "No number filter for double param. event, param"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qK()Lcom/google/android/gms/internal/gz;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/gz;->ch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qK()Lcom/google/android/gms/internal/gz;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/gz;->ci(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_e
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-object v6, v6, Lcom/google/android/gms/internal/lj;->aXD:Lcom/google/android/gms/internal/lk;

    invoke-static {v0, v1, v6}, Lcom/google/android/gms/internal/fz;->a(DLcom/google/android/gms/internal/lk;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_f

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_f
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_6
    xor-int/2addr v0, v7

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    :cond_10
    const/4 v0, 0x0

    goto :goto_6

    :cond_11
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_17

    iget-object v1, v6, Lcom/google/android/gms/internal/lj;->aXC:Lcom/google/android/gms/internal/lm;

    if-eqz v1, :cond_12

    check-cast v0, Ljava/lang/String;

    iget-object v1, v6, Lcom/google/android/gms/internal/lj;->aXC:Lcom/google/android/gms/internal/lm;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/fz;->a(Ljava/lang/String;Lcom/google/android/gms/internal/lm;)Ljava/lang/Boolean;

    move-result-object v0

    :goto_7
    if-nez v0, :cond_15

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_12
    iget-object v1, v6, Lcom/google/android/gms/internal/lj;->aXD:Lcom/google/android/gms/internal/lk;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/le;->cF(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    check-cast v0, Ljava/lang/String;

    iget-object v1, v6, Lcom/google/android/gms/internal/lj;->aXD:Lcom/google/android/gms/internal/lk;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->a(Ljava/lang/String;Lcom/google/android/gms/internal/lk;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_7

    :cond_13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v1, "Invalid param value for number filter. event, param"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qK()Lcom/google/android/gms/internal/gz;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/gz;->ch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qK()Lcom/google/android/gms/internal/gz;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/gz;->ci(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v1, "No filter for String param. event, param"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qK()Lcom/google/android/gms/internal/gz;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/gz;->ch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qK()Lcom/google/android/gms/internal/gz;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/gz;->ci(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_15
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    :goto_8
    xor-int/2addr v0, v7

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    :cond_16
    const/4 v0, 0x0

    goto :goto_8

    :cond_17
    if-nez v0, :cond_18

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v1, "Missing param for filter. event, param"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qK()Lcom/google/android/gms/internal/gz;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/gz;->ch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qK()Lcom/google/android/gms/internal/gz;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/gz;->ci(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    :cond_18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v1, "Unknown param type. event, param"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qK()Lcom/google/android/gms/internal/gz;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/gz;->ch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qK()Lcom/google/android/gms/internal/gz;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/gz;->ci(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_19
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_4

    :cond_1a
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private static a(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private final a(Ljava/lang/String;IZLjava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x6

    if-ne p2, v0, :cond_2

    if-eqz p5, :cond_1

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    if-nez p4, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    if-nez p3, :cond_4

    const/4 v0, 0x1

    if-ne p2, v0, :cond_5

    :cond_4
    :goto_1
    packed-switch p2, :pswitch_data_0

    move-object v0, v1

    goto :goto_0

    :cond_5
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :pswitch_0
    if-eqz p3, :cond_6

    const/4 v0, 0x0

    :goto_2
    :try_start_0
    invoke-static {p6, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :cond_6
    const/16 v0, 0x42

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v2, "Invalid regular expression in REGEXP audience filter. expression"

    invoke-virtual {v0, v2, p6}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1, p4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-interface {p5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;Lcom/google/android/gms/internal/lk;)Ljava/lang/Boolean;
    .locals 4

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/google/android/gms/internal/le;->cF(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-static {v1, p1, v2, v3}, Lcom/google/android/gms/internal/fz;->a(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/lk;D)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final a(Ljava/lang/String;Lcom/google/android/gms/internal/lm;)Ljava/lang/Boolean;
    .locals 11

    const/4 v4, 0x6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v6, 0x0

    invoke-static {p2}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    iget-object v2, p2, Lcom/google/android/gms/internal/lm;->aXO:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v2, p2, Lcom/google/android/gms/internal/lm;->aXO:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p2, Lcom/google/android/gms/internal/lm;->aXO:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v4, :cond_6

    iget-object v2, p2, Lcom/google/android/gms/internal/lm;->aXR:[Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p2, Lcom/google/android/gms/internal/lm;->aXR:[Ljava/lang/String;

    array-length v2, v2

    if-eqz v2, :cond_0

    :cond_2
    iget-object v2, p2, Lcom/google/android/gms/internal/lm;->aXO:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p2, Lcom/google/android/gms/internal/lm;->aXQ:Ljava/lang/Boolean;

    if-eqz v3, :cond_7

    iget-object v3, p2, Lcom/google/android/gms/internal/lm;->aXQ:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v1

    :goto_1
    if-nez v3, :cond_3

    if-eq v2, v1, :cond_3

    if-ne v2, v4, :cond_8

    :cond_3
    iget-object v4, p2, Lcom/google/android/gms/internal/lm;->aXP:Ljava/lang/String;

    :goto_2
    iget-object v5, p2, Lcom/google/android/gms/internal/lm;->aXR:[Ljava/lang/String;

    if-nez v5, :cond_9

    move-object v5, v6

    :cond_4
    :goto_3
    if-ne v2, v1, :cond_5

    move-object v6, v4

    :cond_5
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/fz;->a(Ljava/lang/String;IZLjava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_0

    :cond_6
    iget-object v2, p2, Lcom/google/android/gms/internal/lm;->aXP:Ljava/lang/String;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_7
    move v3, v0

    goto :goto_1

    :cond_8
    iget-object v4, p2, Lcom/google/android/gms/internal/lm;->aXP:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_9
    iget-object v7, p2, Lcom/google/android/gms/internal/lm;->aXR:[Ljava/lang/String;

    if-eqz v3, :cond_a

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    goto :goto_3

    :cond_a
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    array-length v8, v7

    :goto_4
    if-ge v0, v8, :cond_4

    aget-object v9, v7, v0

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method private static a(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/lk;D)Ljava/lang/Boolean;
    .locals 10

    const/4 v8, 0x4

    const/4 v7, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/android/gms/internal/lk;->aXG:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/google/android/gms/internal/lk;->aXG:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    iget-object v3, p1, Lcom/google/android/gms/internal/lk;->aXG:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v8, :cond_3

    iget-object v3, p1, Lcom/google/android/gms/internal/lk;->aXJ:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/google/android/gms/internal/lk;->aXK:Ljava/lang/String;

    if-nez v3, :cond_4

    :cond_2
    move-object v0, v2

    goto :goto_0

    :cond_3
    iget-object v3, p1, Lcom/google/android/gms/internal/lk;->aXI:Ljava/lang/String;

    if-nez v3, :cond_4

    move-object v0, v2

    goto :goto_0

    :cond_4
    iget-object v3, p1, Lcom/google/android/gms/internal/lk;->aXG:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v3, p1, Lcom/google/android/gms/internal/lk;->aXG:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v8, :cond_7

    iget-object v3, p1, Lcom/google/android/gms/internal/lk;->aXJ:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/le;->cF(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcom/google/android/gms/internal/lk;->aXK:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/le;->cF(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    move-object v0, v2

    goto :goto_0

    :cond_6
    :try_start_0
    new-instance v4, Ljava/math/BigDecimal;

    iget-object v3, p1, Lcom/google/android/gms/internal/lk;->aXJ:Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/math/BigDecimal;

    iget-object v5, p1, Lcom/google/android/gms/internal/lk;->aXK:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v2

    :goto_1
    if-ne v6, v8, :cond_9

    if-nez v4, :cond_a

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_0

    :cond_7
    iget-object v3, p1, Lcom/google/android/gms/internal/lk;->aXI:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/le;->cF(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    move-object v0, v2

    goto :goto_0

    :cond_8
    :try_start_1
    new-instance v5, Ljava/math/BigDecimal;

    iget-object v3, p1, Lcom/google/android/gms/internal/lk;->aXI:Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v2

    move-object v4, v2

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v2

    goto :goto_0

    :cond_9
    if-eqz v5, :cond_b

    :cond_a
    packed-switch v6, :pswitch_data_0

    :cond_b
    move-object v0, v2

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v5}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v2

    if-ne v2, v7, :cond_c

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_c
    move v0, v1

    goto :goto_2

    :pswitch_1
    invoke-virtual {p0, v5}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v2

    if-ne v2, v0, :cond_d

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    :cond_d
    move v0, v1

    goto :goto_3

    :pswitch_2
    const-wide/16 v2, 0x0

    cmpl-double v2, p2, v2

    if-eqz v2, :cond_f

    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, p2, p3}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance v3, Ljava/math/BigDecimal;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v2

    if-ne v2, v0, :cond_e

    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, p2, p3}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance v3, Ljava/math/BigDecimal;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v2

    if-ne v2, v7, :cond_e

    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    :cond_e
    move v0, v1

    goto :goto_4

    :cond_f
    invoke-virtual {p0, v5}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v2

    if-nez v2, :cond_10

    :goto_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    :cond_10
    move v0, v1

    goto :goto_5

    :pswitch_3
    invoke-virtual {p0, v4}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v2

    if-eq v2, v7, :cond_11

    invoke-virtual {p0, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v2

    if-eq v2, v0, :cond_11

    :goto_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    :cond_11
    move v0, v1

    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method final a(Ljava/lang/String;[Lcom/google/android/gms/internal/lr;[Lcom/google/android/gms/internal/lw;)[Lcom/google/android/gms/internal/lq;
    .locals 30

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/ae;->bf(Ljava/lang/String;)Ljava/lang/String;

    new-instance v24, Ljava/util/HashSet;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashSet;-><init>()V

    new-instance v25, Landroid/support/v4/g/a;

    invoke-direct/range {v25 .. v25}, Landroid/support/v4/g/a;-><init>()V

    new-instance v26, Landroid/support/v4/g/a;

    invoke-direct/range {v26 .. v26}, Landroid/support/v4/g/a;-><init>()V

    new-instance v27, Landroid/support/v4/g/a;

    invoke-direct/range {v27 .. v27}, Landroid/support/v4/g/a;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ix;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/gd;->ce(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/lv;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/BitSet;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/BitSet;

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/BitSet;

    invoke-direct {v3}, Ljava/util/BitSet;-><init>()V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/util/BitSet;

    invoke-direct {v4}, Ljava/util/BitSet;-><init>()V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v5, 0x0

    :goto_1
    iget-object v9, v2, Lcom/google/android/gms/internal/lv;->aYP:[J

    array-length v9, v9

    shl-int/lit8 v9, v9, 0x6

    if-ge v5, v9, :cond_2

    iget-object v9, v2, Lcom/google/android/gms/internal/lv;->aYP:[J

    invoke-static {v9, v5}, Lcom/google/android/gms/internal/le;->a([JI)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v9

    iget-object v9, v9, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v10, "Filter already evaluated. audience ID, filter ID"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    iget-object v9, v2, Lcom/google/android/gms/internal/lv;->aYQ:[J

    invoke-static {v9, v5}, Lcom/google/android/gms/internal/le;->a([JI)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->set(I)V

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    new-instance v5, Lcom/google/android/gms/internal/lq;

    invoke-direct {v5}, Lcom/google/android/gms/internal/lq;-><init>()V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v25

    invoke-interface {v0, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, v5, Lcom/google/android/gms/internal/lq;->aYf:Ljava/lang/Boolean;

    iput-object v2, v5, Lcom/google/android/gms/internal/lq;->aYe:Lcom/google/android/gms/internal/lv;

    new-instance v2, Lcom/google/android/gms/internal/lv;

    invoke-direct {v2}, Lcom/google/android/gms/internal/lv;-><init>()V

    iput-object v2, v5, Lcom/google/android/gms/internal/lq;->aYd:Lcom/google/android/gms/internal/lv;

    iget-object v2, v5, Lcom/google/android/gms/internal/lq;->aYd:Lcom/google/android/gms/internal/lv;

    invoke-static {v3}, Lcom/google/android/gms/internal/le;->a(Ljava/util/BitSet;)[J

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/lv;->aYQ:[J

    iget-object v2, v5, Lcom/google/android/gms/internal/lq;->aYd:Lcom/google/android/gms/internal/lv;

    invoke-static {v4}, Lcom/google/android/gms/internal/le;->a(Ljava/util/BitSet;)[J

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/lv;->aYP:[J

    goto/16 :goto_0

    :cond_3
    if-eqz p2, :cond_1d

    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    new-instance v28, Landroid/support/v4/g/a;

    invoke-direct/range {v28 .. v28}, Landroid/support/v4/g/a;-><init>()V

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v29, v0

    const/4 v2, 0x0

    move/from16 v23, v2

    :goto_2
    move/from16 v0, v23

    move/from16 v1, v29

    if-ge v0, v1, :cond_1d

    aget-object v12, p2, v23

    iget-object v9, v12, Lcom/google/android/gms/internal/lr;->name:Ljava/lang/String;

    iget-object v10, v12, Lcom/google/android/gms/internal/lr;->aYh:[Lcom/google/android/gms/internal/ls;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ix;->qR()Lcom/google/android/gms/internal/gc;

    move-result-object v2

    sget-object v4, Lcom/google/android/gms/internal/gr;->aSM:Lcom/google/android/gms/internal/gs;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v4}, Lcom/google/android/gms/internal/gc;->c(Ljava/lang/String;Lcom/google/android/gms/internal/gs;)Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ix;->qL()Lcom/google/android/gms/internal/le;

    const-string v2, "_eid"

    invoke-static {v12, v2}, Lcom/google/android/gms/internal/le;->b(Lcom/google/android/gms/internal/lr;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-eqz v5, :cond_4

    const/4 v2, 0x1

    move v4, v2

    :goto_3
    if-eqz v4, :cond_5

    const-string v2, "_ep"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    :goto_4
    if-eqz v2, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ix;->qL()Lcom/google/android/gms/internal/le;

    const-string v2, "_en"

    invoke-static {v12, v2}, Lcom/google/android/gms/internal/le;->b(Lcom/google/android/gms/internal/lr;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v4, "Extra parameter without an event name. eventId"

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_5
    add-int/lit8 v2, v23, 0x1

    move/from16 v23, v2

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    move v4, v2

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    goto :goto_4

    :cond_6
    if-eqz v8, :cond_7

    if-eqz v3, :cond_7

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    cmp-long v2, v14, v16

    if-eqz v2, :cond_3a

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ix;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v5}, Lcom/google/android/gms/internal/gd;->c(Ljava/lang/String;Ljava/lang/Long;)Landroid/util/Pair;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v2, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v2, :cond_9

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v4, "Extra parameter without existing main event. eventName, eventId"

    invoke-virtual {v2, v4, v9, v5}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    :cond_9
    iget-object v2, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/lr;

    iget-object v3, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ix;->qL()Lcom/google/android/gms/internal/le;

    const-string v3, "_eid"

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/le;->b(Lcom/google/android/gms/internal/lr;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    move-object v11, v3

    move-object v8, v2

    :goto_6
    const-wide/16 v2, 0x1

    sub-long/2addr v6, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-gtz v2, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ix;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v4, "Clearing complex main event info. appId"

    move-object/from16 v0, p1

    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {v3}, Lcom/google/android/gms/internal/gd;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v4, "delete from main_event_params where app_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object p1, v5, v13

    invoke-virtual {v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_7
    iget-object v2, v8, Lcom/google/android/gms/internal/lr;->aYh:[Lcom/google/android/gms/internal/ls;

    array-length v2, v2

    array-length v3, v10

    add-int/2addr v2, v3

    new-array v4, v2, [Lcom/google/android/gms/internal/ls;

    const/4 v3, 0x0

    iget-object v13, v8, Lcom/google/android/gms/internal/lr;->aYh:[Lcom/google/android/gms/internal/ls;

    array-length v14, v13

    const/4 v2, 0x0

    move v5, v2

    :goto_8
    if-ge v5, v14, :cond_b

    aget-object v15, v13, v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ix;->qL()Lcom/google/android/gms/internal/le;

    iget-object v2, v15, Lcom/google/android/gms/internal/ls;->name:Ljava/lang/String;

    invoke-static {v12, v2}, Lcom/google/android/gms/internal/le;->a(Lcom/google/android/gms/internal/lr;Ljava/lang/String;)Lcom/google/android/gms/internal/ls;

    move-result-object v2

    if-nez v2, :cond_3e

    add-int/lit8 v2, v3, 0x1

    aput-object v15, v4, v3

    :goto_9
    add-int/lit8 v5, v5, 0x1

    move v3, v2

    goto :goto_8

    :catch_0
    move-exception v2

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v4, "Error clearing complex main event"

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ix;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v3

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/gd;->a(Ljava/lang/String;Ljava/lang/Long;JLcom/google/android/gms/internal/lr;)Z

    goto :goto_7

    :cond_b
    if-lez v3, :cond_10

    array-length v13, v10

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v13, :cond_c

    aget-object v14, v10, v2

    add-int/lit8 v5, v3, 0x1

    aput-object v14, v4, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_a

    :cond_c
    array-length v2, v4

    if-ne v3, v2, :cond_f

    move-object v2, v4

    :goto_b
    move-object/from16 v17, v2

    move-object/from16 v18, v9

    move-object/from16 v19, v11

    move-wide/from16 v20, v6

    move-object/from16 v22, v8

    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ix;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v2

    iget-object v3, v12, Lcom/google/android/gms/internal/lr;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/gd;->t(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/gl;

    move-result-object v2

    if-nez v2, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v3, "Event aggregate wasn\'t created during raw event logging. appId, event"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ix;->qK()Lcom/google/android/gms/internal/gz;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/gz;->ch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/internal/gl;

    iget-object v5, v12, Lcom/google/android/gms/internal/lr;->name:Ljava/lang/String;

    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x1

    iget-object v2, v12, Lcom/google/android/gms/internal/lr;->aYi:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v16}, Lcom/google/android/gms/internal/gl;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ix;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/gd;->a(Lcom/google/android/gms/internal/gl;)V

    iget-wide v6, v3, Lcom/google/android/gms/internal/gl;->aRI:J

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_3d

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ix;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v2

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/gd;->y(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_d

    new-instance v2, Landroid/support/v4/g/a;

    invoke-direct {v2}, Landroid/support/v4/g/a;-><init>()V

    :cond_d
    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v2

    :goto_e
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_e
    :goto_f
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v3, "Skipping failed audience ID"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_f

    :cond_f
    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/gms/internal/ls;

    goto/16 :goto_b

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v3, "No unique parameters in main event. eventName"

    invoke-virtual {v2, v3, v9}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v17, v10

    move-object/from16 v18, v9

    move-object/from16 v19, v11

    move-wide/from16 v20, v6

    move-object/from16 v22, v8

    goto/16 :goto_c

    :cond_11
    if-eqz v4, :cond_39

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ix;->qL()Lcom/google/android/gms/internal/le;

    const-string v3, "_epc"

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v12, v3}, Lcom/google/android/gms/internal/le;->b(Lcom/google/android/gms/internal/lr;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_12

    :goto_10
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-gtz v2, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v3, "Complex event with zero extra param count. eventName"

    invoke-virtual {v2, v3, v9}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v17, v10

    move-object/from16 v18, v9

    move-object/from16 v19, v5

    move-wide/from16 v20, v6

    move-object/from16 v22, v12

    goto/16 :goto_c

    :cond_12
    move-object v2, v3

    goto :goto_10

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ix;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v3

    move-object/from16 v4, p1

    move-object v8, v12

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/gd;->a(Ljava/lang/String;Ljava/lang/Long;JLcom/google/android/gms/internal/lr;)Z

    move-object/from16 v17, v10

    move-object/from16 v18, v9

    move-object/from16 v19, v5

    move-wide/from16 v20, v6

    move-object/from16 v22, v12

    goto/16 :goto_c

    :cond_14
    invoke-virtual {v2}, Lcom/google/android/gms/internal/gl;->rA()Lcom/google/android/gms/internal/gl;

    move-result-object v3

    goto/16 :goto_d

    :cond_15
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/lq;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/BitSet;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/BitSet;

    if-nez v2, :cond_3b

    new-instance v2, Lcom/google/android/gms/internal/lq;

    invoke-direct {v2}, Lcom/google/android/gms/internal/lq;-><init>()V

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/lq;->aYf:Ljava/lang/Boolean;

    new-instance v3, Ljava/util/BitSet;

    invoke-direct {v3}, Ljava/util/BitSet;-><init>()V

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/util/BitSet;

    invoke-direct {v4}, Ljava/util/BitSet;-><init>()V

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v4

    move-object v10, v3

    :goto_11
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_16
    :goto_12
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/li;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/hb;->cQ(I)Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v4, "Evaluating filter. audience, filter, event"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v14, v3, Lcom/google/android/gms/internal/li;->aXw:Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ix;->qK()Lcom/google/android/gms/internal/gz;

    move-result-object v15

    iget-object v0, v3, Lcom/google/android/gms/internal/li;->aXx:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/gms/internal/gz;->ch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v4, v5, v14, v15}, Lcom/google/android/gms/internal/hd;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v4, "Filter definition"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ix;->qK()Lcom/google/android/gms/internal/gz;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/gz;->a(Lcom/google/android/gms/internal/li;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_17
    iget-object v2, v3, Lcom/google/android/gms/internal/li;->aXw:Ljava/lang/Integer;

    if-eqz v2, :cond_18

    iget-object v2, v3, Lcom/google/android/gms/internal/li;->aXw:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v4, 0x100

    if-le v2, v4, :cond_19

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v4, "Invalid event filter ID. appId, id"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    iget-object v3, v3, Lcom/google/android/gms/internal/li;->aXw:Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v5, v3}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_12

    :cond_19
    iget-object v2, v3, Lcom/google/android/gms/internal/li;->aXw:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v10, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v4, "Event filter already evaluated true. audience ID, filter ID"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v3, v3, Lcom/google/android/gms/internal/li;->aXw:Ljava/lang/Integer;

    invoke-virtual {v2, v4, v5, v3}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_12

    :cond_1a
    move-object/from16 v2, p0

    move-object/from16 v4, v18

    move-object/from16 v5, v17

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/fz;->a(Lcom/google/android/gms/internal/li;Ljava/lang/String;[Lcom/google/android/gms/internal/ls;J)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iget-object v5, v2, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v14, "Event filter result"

    if-nez v4, :cond_1b

    const-string v2, "null"

    :goto_13
    invoke-virtual {v5, v14, v2}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v4, :cond_1c

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_12

    :cond_1b
    move-object v2, v4

    goto :goto_13

    :cond_1c
    iget-object v2, v3, Lcom/google/android/gms/internal/li;->aXw:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v9, v2}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, v3, Lcom/google/android/gms/internal/li;->aXw:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v10, v2}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_12

    :cond_1d
    if-eqz p3, :cond_33

    new-instance v9, Landroid/support/v4/g/a;

    invoke-direct {v9}, Landroid/support/v4/g/a;-><init>()V

    move-object/from16 v0, p3

    array-length v10, v0

    const/4 v2, 0x0

    move v8, v2

    :goto_14
    if-ge v8, v10, :cond_33

    aget-object v11, p3, v8

    iget-object v2, v11, Lcom/google/android/gms/internal/lw;->name:Ljava/lang/String;

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_38

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ix;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v2

    iget-object v3, v11, Lcom/google/android/gms/internal/lw;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/gd;->z(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_1e

    new-instance v2, Landroid/support/v4/g/a;

    invoke-direct {v2}, Landroid/support/v4/g/a;-><init>()V

    :cond_1e
    iget-object v3, v11, Lcom/google/android/gms/internal/lw;->name:Ljava/lang/String;

    invoke-interface {v9, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v2

    :goto_15
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1f
    :goto_16
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v3, "Skipping failed audience ID"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_16

    :cond_20
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/lq;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/BitSet;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/BitSet;

    if-nez v2, :cond_21

    new-instance v2, Lcom/google/android/gms/internal/lq;

    invoke-direct {v2}, Lcom/google/android/gms/internal/lq;-><init>()V

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/lq;->aYf:Ljava/lang/Boolean;

    new-instance v3, Ljava/util/BitSet;

    invoke-direct {v3}, Ljava/util/BitSet;-><init>()V

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/util/BitSet;

    invoke-direct {v4}, Ljava/util/BitSet;-><init>()V

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_22
    :goto_17
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ll;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/hb;->cQ(I)Z

    move-result v6

    if-eqz v6, :cond_23

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v7, "Evaluating filter. audience, filter, property"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget-object v0, v2, Lcom/google/android/gms/internal/ll;->aXw:Ljava/lang/Integer;

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ix;->qK()Lcom/google/android/gms/internal/gz;

    move-result-object v17

    iget-object v0, v2, Lcom/google/android/gms/internal/ll;->aXM:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/google/android/gms/internal/gz;->cj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v7, v15, v0, v1}, Lcom/google/android/gms/internal/hd;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v7, "Filter definition"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ix;->qK()Lcom/google/android/gms/internal/gz;

    move-result-object v15

    invoke-virtual {v15, v2}, Lcom/google/android/gms/internal/gz;->a(Lcom/google/android/gms/internal/ll;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v7, v15}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_23
    iget-object v6, v2, Lcom/google/android/gms/internal/ll;->aXw:Ljava/lang/Integer;

    if-eqz v6, :cond_24

    iget-object v6, v2, Lcom/google/android/gms/internal/ll;->aXw:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x100

    if-le v6, v7, :cond_25

    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v4, "Invalid property filter ID. appId, id"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    iget-object v2, v2, Lcom/google/android/gms/internal/ll;->aXw:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v6, v2}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16

    :cond_25
    iget-object v6, v2, Lcom/google/android/gms/internal/ll;->aXw:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_26

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v7, "Property filter already evaluated true. audience ID, filter ID"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget-object v2, v2, Lcom/google/android/gms/internal/ll;->aXw:Ljava/lang/Integer;

    invoke-virtual {v6, v7, v15, v2}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_17

    :cond_26
    iget-object v6, v2, Lcom/google/android/gms/internal/ll;->aXN:Lcom/google/android/gms/internal/lj;

    if-nez v6, :cond_27

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v7, "Missing property filter. property"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ix;->qK()Lcom/google/android/gms/internal/gz;

    move-result-object v15

    iget-object v0, v11, Lcom/google/android/gms/internal/lw;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/gms/internal/gz;->cj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v7, v15}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v6, 0x0

    :goto_18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v7

    iget-object v15, v7, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v16, "Property filter result"

    if-nez v6, :cond_30

    const-string v7, "null"

    :goto_19
    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v7}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v6, :cond_31

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_17

    :cond_27
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v15, v6, Lcom/google/android/gms/internal/lj;->aXE:Ljava/lang/Boolean;

    invoke-virtual {v7, v15}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v7

    iget-object v15, v11, Lcom/google/android/gms/internal/lw;->aYl:Ljava/lang/Long;

    if-eqz v15, :cond_29

    iget-object v15, v6, Lcom/google/android/gms/internal/lj;->aXD:Lcom/google/android/gms/internal/lk;

    if-nez v15, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v7, "No number filter for long property. property"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ix;->qK()Lcom/google/android/gms/internal/gz;

    move-result-object v15

    iget-object v0, v11, Lcom/google/android/gms/internal/lw;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/gms/internal/gz;->cj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v7, v15}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v6, 0x0

    goto :goto_18

    :cond_28
    iget-object v15, v11, Lcom/google/android/gms/internal/lw;->aYl:Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    iget-object v6, v6, Lcom/google/android/gms/internal/lj;->aXD:Lcom/google/android/gms/internal/lk;

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v6}, Lcom/google/android/gms/internal/fz;->a(JLcom/google/android/gms/internal/lk;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/fz;->a(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_18

    :cond_29
    iget-object v15, v11, Lcom/google/android/gms/internal/lw;->aXk:Ljava/lang/Double;

    if-eqz v15, :cond_2b

    iget-object v15, v6, Lcom/google/android/gms/internal/lj;->aXD:Lcom/google/android/gms/internal/lk;

    if-nez v15, :cond_2a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v7, "No number filter for double property. property"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ix;->qK()Lcom/google/android/gms/internal/gz;

    move-result-object v15

    iget-object v0, v11, Lcom/google/android/gms/internal/lw;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/gms/internal/gz;->cj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v7, v15}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v6, 0x0

    goto :goto_18

    :cond_2a
    iget-object v15, v11, Lcom/google/android/gms/internal/lw;->aXk:Ljava/lang/Double;

    invoke-virtual {v15}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    iget-object v6, v6, Lcom/google/android/gms/internal/lj;->aXD:Lcom/google/android/gms/internal/lk;

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v6}, Lcom/google/android/gms/internal/fz;->a(DLcom/google/android/gms/internal/lk;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/fz;->a(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v6

    goto/16 :goto_18

    :cond_2b
    iget-object v15, v11, Lcom/google/android/gms/internal/lw;->aTr:Ljava/lang/String;

    if-eqz v15, :cond_2f

    iget-object v15, v6, Lcom/google/android/gms/internal/lj;->aXC:Lcom/google/android/gms/internal/lm;

    if-nez v15, :cond_2e

    iget-object v15, v6, Lcom/google/android/gms/internal/lj;->aXD:Lcom/google/android/gms/internal/lk;

    if-nez v15, :cond_2c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v7, "No string or number filter defined. property"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ix;->qK()Lcom/google/android/gms/internal/gz;

    move-result-object v15

    iget-object v0, v11, Lcom/google/android/gms/internal/lw;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/gms/internal/gz;->cj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v7, v15}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1a
    const/4 v6, 0x0

    goto/16 :goto_18

    :cond_2c
    iget-object v15, v11, Lcom/google/android/gms/internal/lw;->aTr:Ljava/lang/String;

    invoke-static {v15}, Lcom/google/android/gms/internal/le;->cF(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2d

    iget-object v15, v11, Lcom/google/android/gms/internal/lw;->aTr:Ljava/lang/String;

    iget-object v6, v6, Lcom/google/android/gms/internal/lj;->aXD:Lcom/google/android/gms/internal/lk;

    invoke-static {v15, v6}, Lcom/google/android/gms/internal/fz;->a(Ljava/lang/String;Lcom/google/android/gms/internal/lk;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/fz;->a(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v6

    goto/16 :goto_18

    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v7, "Invalid user property value for Numeric number filter. property, value"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ix;->qK()Lcom/google/android/gms/internal/gz;

    move-result-object v15

    iget-object v0, v11, Lcom/google/android/gms/internal/lw;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/gms/internal/gz;->cj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iget-object v0, v11, Lcom/google/android/gms/internal/lw;->aTr:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v6, v7, v15, v0}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1a

    :cond_2e
    iget-object v15, v11, Lcom/google/android/gms/internal/lw;->aTr:Ljava/lang/String;

    iget-object v6, v6, Lcom/google/android/gms/internal/lj;->aXC:Lcom/google/android/gms/internal/lm;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v6}, Lcom/google/android/gms/internal/fz;->a(Ljava/lang/String;Lcom/google/android/gms/internal/lm;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/fz;->a(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v6

    goto/16 :goto_18

    :cond_2f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v7, "User property has no value, property"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ix;->qK()Lcom/google/android/gms/internal/gz;

    move-result-object v15

    iget-object v0, v11, Lcom/google/android/gms/internal/lw;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/gms/internal/gz;->cj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v7, v15}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v6, 0x0

    goto/16 :goto_18

    :cond_30
    move-object v7, v6

    goto/16 :goto_19

    :cond_31
    iget-object v7, v2, Lcom/google/android/gms/internal/ll;->aXw:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_22

    iget-object v2, v2, Lcom/google/android/gms/internal/ll;->aXw:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_17

    :cond_32
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto/16 :goto_14

    :cond_33
    invoke-interface/range {v26 .. v26}, Ljava/util/Map;->size()I

    move-result v2

    new-array v6, v2, [Lcom/google/android/gms/internal/lq;

    const/4 v2, 0x0

    invoke-interface/range {v26 .. v26}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v3, v2

    :cond_34
    :goto_1b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/lq;

    if-nez v2, :cond_37

    new-instance v2, Lcom/google/android/gms/internal/lq;

    invoke-direct {v2}, Lcom/google/android/gms/internal/lq;-><init>()V

    move-object v5, v2

    :goto_1c
    add-int/lit8 v4, v3, 0x1

    aput-object v5, v6, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v5, Lcom/google/android/gms/internal/lq;->aXs:Ljava/lang/Integer;

    new-instance v2, Lcom/google/android/gms/internal/lv;

    invoke-direct {v2}, Lcom/google/android/gms/internal/lv;-><init>()V

    iput-object v2, v5, Lcom/google/android/gms/internal/lq;->aYd:Lcom/google/android/gms/internal/lv;

    iget-object v3, v5, Lcom/google/android/gms/internal/lq;->aYd:Lcom/google/android/gms/internal/lv;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/BitSet;

    invoke-static {v2}, Lcom/google/android/gms/internal/le;->a(Ljava/util/BitSet;)[J

    move-result-object v2

    iput-object v2, v3, Lcom/google/android/gms/internal/lv;->aYQ:[J

    iget-object v3, v5, Lcom/google/android/gms/internal/lq;->aYd:Lcom/google/android/gms/internal/lv;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/BitSet;

    invoke-static {v2}, Lcom/google/android/gms/internal/le;->a(Ljava/util/BitSet;)[J

    move-result-object v2

    iput-object v2, v3, Lcom/google/android/gms/internal/lv;->aYP:[J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ix;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v3

    iget-object v2, v5, Lcom/google/android/gms/internal/lq;->aYd:Lcom/google/android/gms/internal/lv;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/iy;->pf()V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/ae;->bf(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/nd;->sZ()I

    move-result v5

    new-array v5, v5, [B

    array-length v9, v5

    invoke-static {v5, v9}, Lcom/google/android/gms/internal/mv;->b([BI)Lcom/google/android/gms/internal/mv;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/nd;->a(Lcom/google/android/gms/internal/mv;)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/mv;->sR()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v9, "app_id"

    move-object/from16 v0, p1

    invoke-virtual {v2, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "audience_id"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "current_results"

    invoke-virtual {v2, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :try_start_2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/gd;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v8, "audience_filter_values"

    const/4 v9, 0x0

    const/4 v10, 0x5

    invoke-virtual {v5, v8, v9, v2, v10}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v2, v8, v10

    if-nez v2, :cond_35

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v5, "Failed to insert filter results (got -1). appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v5, v8}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_35
    move v3, v4

    goto/16 :goto_1b

    :catch_1
    move-exception v2

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v5, "Configuration loss. Failed to serialize filter results. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v5, v8, v2}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move v3, v4

    goto/16 :goto_1b

    :catch_2
    move-exception v2

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v5, "Error storing filter results. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v5, v8, v2}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move v3, v4

    goto/16 :goto_1b

    :cond_36
    invoke-static {v6, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/gms/internal/lq;

    return-object v2

    :cond_37
    move-object v5, v2

    goto/16 :goto_1c

    :cond_38
    move-object v5, v2

    goto/16 :goto_15

    :cond_39
    move-object/from16 v17, v10

    move-object/from16 v18, v9

    move-object/from16 v19, v3

    move-wide/from16 v20, v6

    move-object/from16 v22, v8

    goto/16 :goto_c

    :cond_3a
    move-object v11, v3

    goto/16 :goto_6

    :cond_3b
    move-object v9, v4

    move-object v10, v3

    goto/16 :goto_11

    :cond_3c
    move-object/from16 v3, v19

    move-wide/from16 v6, v20

    move-object/from16 v8, v22

    goto/16 :goto_5

    :cond_3d
    move-object v8, v2

    goto/16 :goto_e

    :cond_3e
    move v2, v3

    goto/16 :goto_9
.end method

.method protected final ri()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
