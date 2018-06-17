.class public final Lcom/vent/b/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vent/b/a$a;,
        Lcom/vent/b/a$b;
    }
.end annotation


# static fields
.field public static cld:Z

.field public static cle:Z

.field public static clf:Z

.field static clg:Z

.field public static final clh:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/vent/b/f;",
            ">;"
        }
    .end annotation
.end field

.field public static cli:Z

.field public static clj:Z

.field private static clk:I


# instance fields
.field public cll:Lcom/vent/b/c;

.field private clm:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vent/b/a$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/vent/b/a;->clh:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Fo()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/vent/bb;->Es()Z

    const-string v0, "production_unlockall"

    return-object v0
.end method

.method public static Fp()Z
    .locals 1

    sget-boolean v0, Lcom/vent/b/a;->cle:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/vent/b/a;->cld:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static Fq()V
    .locals 3

    sget-object v0, Lcom/vent/bb;->ciY:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/vent/bb;->chQ:Ljava/lang/String;

    sget-boolean v2, Lcom/vent/b/a;->cld:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/vent/bb;->chQ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/vent/b/a;->cle:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static Fr()I
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Lcom/vent/b/a;->clh:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/b/f;

    iget-object v3, v0, Lcom/vent/b/f;->cmg:Ljava/lang/String;

    const-string v4, "inapp"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v0, v0, Lcom/vent/b/f;->cmi:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "gift"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "_ec_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "production_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "prod_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static Fs()V
    .locals 1

    sget v0, Lcom/vent/b/a;->clk:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/vent/b/a;->clk:I

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/vent/d/c$b;)V
    .locals 4

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/vent/bb;->Es()Z

    const-string v1, "production_unlockall"

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/vent/MyApplication;

    iget-object v0, v0, Lcom/vent/MyApplication;->cgB:Lcom/vent/b/a;

    const/4 v2, 0x0

    new-instance v3, Lcom/vent/b/a$2;

    invoke-direct {v3, p0, p1}, Lcom/vent/b/a$2;-><init>(Landroid/app/Activity;Lcom/vent/d/c$b;)V

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/vent/b/a;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/vent/a/x;Lcom/vent/b/a$a;)V

    :cond_0
    return-void
.end method

.method public static e(Landroid/app/Application;)V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/vent/b/a;->clh:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    sput-boolean v1, Lcom/vent/b/a;->cld:Z

    sput-boolean v1, Lcom/vent/b/a;->cle:Z

    sput-boolean v1, Lcom/vent/b/a;->clj:Z

    invoke-static {p0}, Lcom/vent/MyApplication;->c(Landroid/app/Application;)V

    invoke-static {}, Lcom/vent/b/a;->Fq()V

    return-void
.end method

.method static f(Landroid/app/Application;)V
    .locals 2

    sget-object v0, Lcom/vent/b/a;->clh:Ljava/util/Map;

    invoke-static {}, Lcom/vent/bb;->Es()Z

    const-string v1, "prod_noads"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/vent/b/a;->cld:Z

    sget-object v0, Lcom/vent/b/a;->clh:Ljava/util/Map;

    invoke-static {}, Lcom/vent/bb;->Es()Z

    const-string v1, "production_unlockall"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/vent/b/a;->cle:Z

    invoke-static {}, Lcom/vent/b/a;->Fr()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/vent/b/a;->cld:Z

    :cond_0
    invoke-static {p0}, Lcom/vent/MyApplication;->c(Landroid/app/Application;)V

    invoke-static {}, Lcom/vent/b/a;->Fq()V

    return-void
.end method

.method public static s(Landroid/app/Activity;)V
    .locals 4

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/vent/bb;->Es()Z

    const-string v1, "prod_noads"

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/vent/MyApplication;

    iget-object v0, v0, Lcom/vent/MyApplication;->cgB:Lcom/vent/b/a;

    const/4 v2, 0x0

    new-instance v3, Lcom/vent/b/a$1;

    invoke-direct {v3, p0}, Lcom/vent/b/a$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/vent/b/a;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/vent/a/x;Lcom/vent/b/a$a;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Ljava/lang/String;Lcom/vent/a/x;Lcom/vent/b/a$a;)V
    .locals 7

    const/4 v0, 0x1

    new-array v2, v0, [Landroid/support/v7/app/c;

    const/4 v0, 0x0

    const v1, 0x7f0f00e1

    invoke-static {p1, v1}, Lcom/vent/d/c;->v(Landroid/content/Context;I)Landroid/support/v7/app/c;

    move-result-object v1

    aput-object v1, v2, v0

    new-instance v0, Lcom/vent/b/a$5;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p4

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/vent/b/a$5;-><init>(Lcom/vent/b/a;[Landroid/support/v7/app/c;Landroid/app/Activity;Lcom/vent/b/a$a;Ljava/lang/String;Lcom/vent/a/x;)V

    invoke-virtual {p0, p1, v0}, Lcom/vent/b/a;->a(Landroid/content/Context;Lcom/vent/b/a$b;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/vent/b/a$b;)V
    .locals 6

    const/4 v5, 0x1

    sget-boolean v0, Lcom/vent/MyApplication;->cgy:Z

    if-nez v0, :cond_1

    sput-boolean v5, Lcom/vent/b/a;->clf:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/vent/b/a;->e(Landroid/app/Application;)V

    const v0, 0x7f0f01fa

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/vent/b/a$b;->bUL:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/vent/b/a$b;->run()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/vent/b/a;->clg:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p2, Lcom/vent/b/a$b;->bUL:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/vent/b/a$b;->run()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/vent/b/a;->clm:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vent/b/a;->clm:Ljava/util/ArrayList;

    :cond_3
    iget-object v0, p0, Lcom/vent/b/a;->clm:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/vent/b/a;->cll:Lcom/vent/b/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/vent/b/c;

    const-string v1, "ZVVOVwNAOtxduxvT9j0ONDRSNNBPND8NZVVOPtXPNDRNkb+m+s9M4376/i/nMp+4x9CB+dT5hWQMfjpTZwHGNYsLrqjs7qr19+dEqmb0L7W33A6KyVQxRUZXY2MItIoaREjcCAaufoZyD0daMQCrgtgSrHc5tUkeugl47Mul1Dov+Inw1PhRu8Oj6J97Qw06PxfcCcDBIEHiqr1I4ipa63QXo3zNMYD7Z8wEGGot7B3Czfix+P0fwyZ20TBJuuUt7vEskSJB+VnZLMxcm2TGPtPpSbIOnRR1s2l1eAeh2bZD7nex5b+CVQmYulzv7jeTfQto/j0sTbjDPR/S0BMz0s/9i4y3nvPV6TyS6U1wO3q8QJliE4jCle2PARvgN7nH3DVQNDNO"

    invoke-static {v1}, Lcom/vent/d/c;->eo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/vent/b/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vent/b/a;->cll:Lcom/vent/b/c;

    invoke-static {}, Lcom/vent/b/a;->Fs()V

    iget-object v0, p0, Lcom/vent/b/a;->cll:Lcom/vent/b/c;

    new-instance v1, Lcom/vent/b/a$4;

    invoke-direct {v1, p0, p1}, Lcom/vent/b/a$4;-><init>(Lcom/vent/b/a;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/vent/b/c;->Fv()V

    iget-boolean v2, v0, Lcom/vent/b/c;->clA:Z

    if-eqz v2, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IAB helper is already set up."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v2, Lcom/vent/b/c$1;

    invoke-direct {v2, v0, v1}, Lcom/vent/b/c$1;-><init>(Lcom/vent/b/c;Lcom/vent/b/c$e;)V

    iput-object v2, v0, Lcom/vent/b/c;->clJ:Landroid/content/ServiceConnection;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "pbz.naqebvq.iraqvat.ovyyvat.VaNccOvyyvatFreivpr.OVAQ"

    invoke-static {v3}, Lcom/vent/b/c;->eo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "pbz.naqebvq.iraqvat"

    invoke-static {v3}, Lcom/vent/b/c;->eo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, v0, Lcom/vent/b/c;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v1, v0, Lcom/vent/b/c;->mContext:Landroid/content/Context;

    iget-object v0, v0, Lcom/vent/b/c;->clJ:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2, v0, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/vent/b/d;

    const/4 v2, 0x3

    const-string v3, "Billing service unavailable on device."

    invoke-direct {v0, v2, v3}, Lcom/vent/b/d;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v0}, Lcom/vent/b/c$e;->b(Lcom/vent/b/d;)V

    goto/16 :goto_0
.end method

.method final ej(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/vent/b/a;->clm:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vent/b/a;->clm:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vent/b/a;->clm:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/b/a$b;

    iput-object p1, v0, Lcom/vent/b/a$b;->bUL:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/vent/b/a$b;->run()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final g(Landroid/app/Application;)V
    .locals 3

    iget-object v0, p0, Lcom/vent/b/a;->cll:Lcom/vent/b/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/b/a;->cll:Lcom/vent/b/c;

    iget-object v1, v0, Lcom/vent/b/c;->clG:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, v0, Lcom/vent/b/c;->clF:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/vent/b/c;->clC:Z

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vent/b/a;->cll:Lcom/vent/b/c;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/vent/b/a;->clg:Z

    const v0, 0x7f0f01f9

    invoke-virtual {p1, v0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vent/b/a;->ej(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/vent/b/c;->Fu()V
    :try_end_1
    .catch Lcom/vent/b/c$a; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final h(Landroid/app/Application;)V
    .locals 1

    sget v0, Lcom/vent/b/a;->clk:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/vent/b/a;->clk:I

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/vent/b/a;->g(Landroid/app/Application;)V

    :cond_0
    return-void
.end method
