.class public final Lcom/google/android/gms/internal/nt;
.super Ljava/lang/Object;


# static fields
.field public static final baR:Lcom/google/android/gms/internal/nt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/nt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/nt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/nt;->baR:Lcom/google/android/gms/internal/nt;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/px;)Lcom/google/android/gms/internal/nr;
    .locals 22

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/px;->ayH:Ljava/util/Date;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    :goto_0
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/google/android/gms/internal/px;->bbu:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v7, v0, Lcom/google/android/gms/internal/px;->bbv:I

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/px;->ayJ:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    :goto_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/px;->bbC:Ljava/util/Set;

    invoke-static {}, Lcom/google/android/gms/internal/of;->tj()Lcom/google/android/gms/internal/w;

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/w;->U(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    move-object/from16 v0, p1

    iget v10, v0, Lcom/google/android/gms/internal/px;->bbB:I

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/google/android/gms/internal/px;->ayL:Landroid/location/Location;

    const-class v2, Lcom/google/ads/mediation/admob/AdMobAdapter;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gms/internal/px;->bbw:Landroid/os/Bundle;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    move-object/from16 v0, p1

    iget-boolean v11, v0, Lcom/google/android/gms/internal/px;->azG:Z

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/google/android/gms/internal/px;->bby:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/px;->bbA:Lcom/google/android/gms/ads/d/a;

    if-eqz v2, :cond_3

    new-instance v13, Lcom/google/android/gms/internal/qn;

    invoke-direct {v13, v2}, Lcom/google/android/gms/internal/qn;-><init>(Lcom/google/android/gms/ads/d/a;)V

    :goto_2
    const/16 v20, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/of;->tj()Lcom/google/android/gms/internal/w;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/w;->a([Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    :cond_0
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/google/android/gms/internal/px;->bbF:Z

    move/from16 v21, v0

    new-instance v2, Lcom/google/android/gms/internal/nr;

    const/4 v3, 0x7

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/internal/px;->bbw:Landroid/os/Bundle;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/internal/px;->bbD:Landroid/os/Bundle;

    move-object/from16 v17, v0

    new-instance v18, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/internal/px;->bbE:Ljava/util/Set;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static/range {v18 .. v18}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/internal/px;->bbz:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-direct/range {v2 .. v21}, Lcom/google/android/gms/internal/nr;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/qn;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v2

    :cond_1
    const-wide/16 v4, -0x1

    goto/16 :goto_0

    :cond_2
    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_3
    const/4 v13, 0x0

    goto :goto_2
.end method
