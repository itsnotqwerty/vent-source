.class public final Lme/leolin/shortcutbadger/c;
.super Ljava/lang/Object;


# static fields
.field private static final cVM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lme/leolin/shortcutbadger/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile cVN:Ljava/lang/Boolean;

.field private static final cVO:Ljava/lang/Object;

.field private static cVP:Lme/leolin/shortcutbadger/a;

.field private static cVQ:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lme/leolin/shortcutbadger/c;->cVM:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lme/leolin/shortcutbadger/c;->cVO:Ljava/lang/Object;

    sget-object v0, Lme/leolin/shortcutbadger/c;->cVM:Ljava/util/List;

    const-class v1, Lme/leolin/shortcutbadger/impl/AdwHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lme/leolin/shortcutbadger/c;->cVM:Ljava/util/List;

    const-class v1, Lme/leolin/shortcutbadger/impl/ApexHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lme/leolin/shortcutbadger/c;->cVM:Ljava/util/List;

    const-class v1, Lme/leolin/shortcutbadger/impl/DefaultBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lme/leolin/shortcutbadger/c;->cVM:Ljava/util/List;

    const-class v1, Lme/leolin/shortcutbadger/impl/NewHtcHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lme/leolin/shortcutbadger/c;->cVM:Ljava/util/List;

    const-class v1, Lme/leolin/shortcutbadger/impl/NovaHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lme/leolin/shortcutbadger/c;->cVM:Ljava/util/List;

    const-class v1, Lme/leolin/shortcutbadger/impl/SonyHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lme/leolin/shortcutbadger/c;->cVM:Ljava/util/List;

    const-class v1, Lme/leolin/shortcutbadger/impl/a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lme/leolin/shortcutbadger/c;->cVM:Ljava/util/List;

    const-class v1, Lme/leolin/shortcutbadger/impl/c;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lme/leolin/shortcutbadger/c;->cVM:Ljava/util/List;

    const-class v1, Lme/leolin/shortcutbadger/impl/d;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lme/leolin/shortcutbadger/c;->cVM:Ljava/util/List;

    const-class v1, Lme/leolin/shortcutbadger/impl/e;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lme/leolin/shortcutbadger/c;->cVM:Ljava/util/List;

    const-class v1, Lme/leolin/shortcutbadger/impl/h;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lme/leolin/shortcutbadger/c;->cVM:Ljava/util/List;

    const-class v1, Lme/leolin/shortcutbadger/impl/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lme/leolin/shortcutbadger/c;->cVM:Ljava/util/List;

    const-class v1, Lme/leolin/shortcutbadger/impl/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lme/leolin/shortcutbadger/c;->cVM:Ljava/util/List;

    const-class v1, Lme/leolin/shortcutbadger/impl/b;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static ce(Landroid/content/Context;)Z
    .locals 10

    const/4 v9, 0x3

    const/4 v0, 0x0

    sget-object v1, Lme/leolin/shortcutbadger/c;->cVN:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    sget-object v3, Lme/leolin/shortcutbadger/c;->cVO:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v1, Lme/leolin/shortcutbadger/c;->cVN:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    const/4 v2, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v9, :cond_0

    :try_start_1
    const-string v0, "ShortcutBadger"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Checking if platform supports badge counters, attempt "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "%d/%d."

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    add-int/lit8 v8, v1, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lme/leolin/shortcutbadger/c;->cf(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lme/leolin/shortcutbadger/c;->cVP:Lme/leolin/shortcutbadger/a;

    sget-object v4, Lme/leolin/shortcutbadger/c;->cVQ:Landroid/content/ComponentName;

    const/4 v5, 0x0

    invoke-interface {v0, p0, v4, v5}, Lme/leolin/shortcutbadger/a;->a(Landroid/content/Context;Landroid/content/ComponentName;I)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lme/leolin/shortcutbadger/c;->cVN:Ljava/lang/Boolean;

    const-string v0, "ShortcutBadger"

    const-string v4, "Badge counter is supported in this platform."

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    sget-object v0, Lme/leolin/shortcutbadger/c;->cVN:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    const-string v0, "ShortcutBadger"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Badge counter seems not supported for this platform: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lme/leolin/shortcutbadger/c;->cVN:Ljava/lang/Boolean;

    :cond_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    sget-object v0, Lme/leolin/shortcutbadger/c;->cVN:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_3
    :try_start_3
    const-string v0, "Failed to initialize the badge counter."

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move-object v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private static cf(Landroid/content/Context;)Z
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "ShortcutBadger"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to find launch intent for package "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lme/leolin/shortcutbadger/c;->cVQ:Landroid/content/ComponentName;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    sget-object v0, Lme/leolin/shortcutbadger/c;->cVM:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/leolin/shortcutbadger/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lme/leolin/shortcutbadger/a;->LU()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sput-object v0, Lme/leolin/shortcutbadger/c;->cVP:Lme/leolin/shortcutbadger/a;

    :cond_3
    sget-object v0, Lme/leolin/shortcutbadger/c;->cVP:Lme/leolin/shortcutbadger/a;

    if-eqz v0, :cond_1

    :cond_4
    sget-object v0, Lme/leolin/shortcutbadger/c;->cVP:Lme/leolin/shortcutbadger/a;

    if-nez v0, :cond_5

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "ZUK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lme/leolin/shortcutbadger/impl/h;

    invoke-direct {v0}, Lme/leolin/shortcutbadger/impl/h;-><init>()V

    sput-object v0, Lme/leolin/shortcutbadger/c;->cVP:Lme/leolin/shortcutbadger/a;

    :cond_5
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :cond_6
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "OPPO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lme/leolin/shortcutbadger/impl/d;

    invoke-direct {v0}, Lme/leolin/shortcutbadger/impl/d;-><init>()V

    sput-object v0, Lme/leolin/shortcutbadger/c;->cVP:Lme/leolin/shortcutbadger/a;

    goto :goto_2

    :cond_7
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "VIVO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lme/leolin/shortcutbadger/impl/f;

    invoke-direct {v0}, Lme/leolin/shortcutbadger/impl/f;-><init>()V

    sput-object v0, Lme/leolin/shortcutbadger/c;->cVP:Lme/leolin/shortcutbadger/a;

    goto :goto_2

    :cond_8
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "ZTE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lme/leolin/shortcutbadger/impl/g;

    invoke-direct {v0}, Lme/leolin/shortcutbadger/impl/g;-><init>()V

    sput-object v0, Lme/leolin/shortcutbadger/c;->cVP:Lme/leolin/shortcutbadger/a;

    goto :goto_2

    :cond_9
    new-instance v0, Lme/leolin/shortcutbadger/impl/DefaultBadger;

    invoke-direct {v0}, Lme/leolin/shortcutbadger/impl/DefaultBadger;-><init>()V

    sput-object v0, Lme/leolin/shortcutbadger/c;->cVP:Lme/leolin/shortcutbadger/a;

    goto :goto_2
.end method

.method public static w(Landroid/content/Context;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lme/leolin/shortcutbadger/b;
        }
    .end annotation

    sget-object v0, Lme/leolin/shortcutbadger/c;->cVP:Lme/leolin/shortcutbadger/a;

    if-nez v0, :cond_0

    invoke-static {p0}, Lme/leolin/shortcutbadger/c;->cf(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lme/leolin/shortcutbadger/b;

    const-string v1, "No default launcher available"

    invoke-direct {v0, v1}, Lme/leolin/shortcutbadger/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    sget-object v0, Lme/leolin/shortcutbadger/c;->cVP:Lme/leolin/shortcutbadger/a;

    sget-object v1, Lme/leolin/shortcutbadger/c;->cVQ:Landroid/content/ComponentName;

    invoke-interface {v0, p0, v1, p1}, Lme/leolin/shortcutbadger/a;->a(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lme/leolin/shortcutbadger/b;

    const-string v2, "Unable to execute badge"

    invoke-direct {v1, v2, v0}, Lme/leolin/shortcutbadger/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method
