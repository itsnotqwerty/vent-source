.class public final Landroid/support/v4/e/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/e/b$a;,
        Landroid/support/v4/e/b$b;,
        Landroid/support/v4/e/b$c;
    }
.end annotation


# static fields
.field private static final AT:Ljava/lang/Object;

.field private static final BJ:Landroid/support/v4/g/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/g",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static final Du:Landroid/support/v4/e/c;

.field private static final Dv:Landroid/support/v4/g/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/m",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/e/c$a",
            "<",
            "Landroid/support/v4/e/b$c;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static final Dw:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/support/v4/g/g;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/support/v4/g/g;-><init>(I)V

    sput-object v0, Landroid/support/v4/e/b;->BJ:Landroid/support/v4/g/g;

    new-instance v0, Landroid/support/v4/e/c;

    const-string v1, "fonts"

    invoke-direct {v0, v1}, Landroid/support/v4/e/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/v4/e/b;->Du:Landroid/support/v4/e/c;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/e/b;->AT:Ljava/lang/Object;

    new-instance v0, Landroid/support/v4/g/m;

    invoke-direct {v0}, Landroid/support/v4/g/m;-><init>()V

    sput-object v0, Landroid/support/v4/e/b;->Dv:Landroid/support/v4/g/m;

    new-instance v0, Landroid/support/v4/e/b$4;

    invoke-direct {v0}, Landroid/support/v4/e/b$4;-><init>()V

    sput-object v0, Landroid/support/v4/e/b;->Dw:Ljava/util/Comparator;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/support/v4/e/a;Landroid/support/v4/content/a/b$a;ZII)Landroid/graphics/Typeface;
    .locals 6

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Landroid/support/v4/e/a;->Dt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v0, Landroid/support/v4/e/b;->BJ:Landroid/support/v4/g/g;

    invoke-virtual {v0, v3}, Landroid/support/v4/g/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Landroid/support/v4/content/a/b$a;->b(Landroid/graphics/Typeface;)V

    :cond_0
    move-object v2, v0

    :goto_0
    return-object v2

    :cond_1
    if-eqz p3, :cond_4

    const/4 v0, -0x1

    if-ne p4, v0, :cond_4

    invoke-static {p0, p1, p5}, Landroid/support/v4/e/b;->a(Landroid/content/Context;Landroid/support/v4/e/a;I)Landroid/support/v4/e/b$c;

    move-result-object v0

    if-eqz p2, :cond_2

    iget v1, v0, Landroid/support/v4/e/b$c;->DF:I

    if-nez v1, :cond_3

    iget-object v1, v0, Landroid/support/v4/e/b$c;->pt:Landroid/graphics/Typeface;

    invoke-virtual {p2, v1, v2}, Landroid/support/v4/content/a/b$a;->a(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    :cond_2
    :goto_1
    iget-object v2, v0, Landroid/support/v4/e/b$c;->pt:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_3
    iget v1, v0, Landroid/support/v4/e/b$c;->DF:I

    invoke-virtual {p2, v1, v2}, Landroid/support/v4/content/a/b$a;->a(ILandroid/os/Handler;)V

    goto :goto_1

    :cond_4
    new-instance v4, Landroid/support/v4/e/b$1;

    invoke-direct {v4, p0, p1, p5, v3}, Landroid/support/v4/e/b$1;-><init>(Landroid/content/Context;Landroid/support/v4/e/a;ILjava/lang/String;)V

    if-eqz p3, :cond_5

    :try_start_0
    sget-object v0, Landroid/support/v4/e/b;->Du:Landroid/support/v4/e/c;

    invoke-virtual {v0, v4, p4}, Landroid/support/v4/e/c;->a(Ljava/util/concurrent/Callable;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/e/b$c;

    iget-object v2, v0, Landroid/support/v4/e/b$c;->pt:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_5
    if-nez p2, :cond_7

    move-object v1, v2

    :goto_2
    sget-object v5, Landroid/support/v4/e/b;->AT:Ljava/lang/Object;

    monitor-enter v5

    :try_start_1
    sget-object v0, Landroid/support/v4/e/b;->Dv:Landroid/support/v4/g/m;

    invoke-virtual {v0, v3}, Landroid/support/v4/g/m;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz v1, :cond_6

    sget-object v0, Landroid/support/v4/e/b;->Dv:Landroid/support/v4/g/m;

    invoke-virtual {v0, v3}, Landroid/support/v4/g/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_7
    new-instance v0, Landroid/support/v4/e/b$2;

    invoke-direct {v0, p2, v2}, Landroid/support/v4/e/b$2;-><init>(Landroid/support/v4/content/a/b$a;Landroid/os/Handler;)V

    move-object v1, v0

    goto :goto_2

    :cond_8
    if-eqz v1, :cond_9

    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/support/v4/e/b;->Dv:Landroid/support/v4/g/m;

    invoke-virtual {v1, v3, v0}, Landroid/support/v4/g/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object v0, Landroid/support/v4/e/b;->Du:Landroid/support/v4/e/c;

    new-instance v1, Landroid/support/v4/e/b$3;

    invoke-direct {v1, v3}, Landroid/support/v4/e/b$3;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v5, Landroid/support/v4/e/c$2;

    invoke-direct {v5, v0, v4, v3, v1}, Landroid/support/v4/e/c$2;-><init>(Landroid/support/v4/e/c;Ljava/util/concurrent/Callable;Landroid/os/Handler;Landroid/support/v4/e/c$a;)V

    invoke-virtual {v0, v5}, Landroid/support/v4/e/c;->g(Ljava/lang/Runnable;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Landroid/support/v4/e/a;I)Landroid/support/v4/e/b$c;
    .locals 10

    const/4 v9, 0x1

    const/4 v3, -0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v6, p1, Landroid/support/v4/e/a;->Do:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v6, v4}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No package found for authority: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v0, Landroid/support/v4/e/b$c;

    const/4 v1, -0x1

    invoke-direct {v0, v5, v1}, Landroid/support/v4/e/b$c;-><init>(Landroid/graphics/Typeface;I)V

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    iget-object v7, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v8, p1, Landroid/support/v4/e/a;->Dp:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Found content provider "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", but package was not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/support/v4/e/a;->Dp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v6, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const/16 v7, 0x40

    invoke-virtual {v0, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v0}, Landroid/support/v4/e/b;->a([Landroid/content/pm/Signature;)Ljava/util/List;

    move-result-object v7

    sget-object v0, Landroid/support/v4/e/b;->Dw:Ljava/util/Comparator;

    invoke-static {v7, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p1, Landroid/support/v4/e/a;->Dr:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/support/v4/e/a;->Dr:Ljava/util/List;

    move-object v1, v0

    :goto_1
    move v6, v2

    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_4

    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v0, Landroid/support/v4/e/b;->Dw:Ljava/util/Comparator;

    invoke-static {v8, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {v7, v8}, Landroid/support/v4/e/b;->d(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v4

    :goto_3
    if-nez v0, :cond_5

    new-instance v0, Landroid/support/v4/e/b$a;

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4}, Landroid/support/v4/e/b$a;-><init>(I[Landroid/support/v4/e/b$b;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_4
    iget v1, v0, Landroid/support/v4/e/b$a;->DB:I

    if-nez v1, :cond_7

    iget-object v0, v0, Landroid/support/v4/e/b$a;->DC:[Landroid/support/v4/e/b$b;

    invoke-static {p0, v0, p2}, Landroid/support/v4/a/c;->a(Landroid/content/Context;[Landroid/support/v4/e/b$b;I)Landroid/graphics/Typeface;

    move-result-object v4

    new-instance v1, Landroid/support/v4/e/b$c;

    if-eqz v4, :cond_6

    move v0, v2

    :goto_5
    invoke-direct {v1, v4, v0}, Landroid/support/v4/e/b$c;-><init>(Landroid/graphics/Typeface;I)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    :try_start_2
    iget v0, p1, Landroid/support/v4/e/a;->Ds:I

    invoke-static {v1, v0}, Landroid/support/v4/content/a/a;->a(Landroid/content/res/Resources;I)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2

    :cond_4
    move-object v0, v5

    goto :goto_3

    :cond_5
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Landroid/support/v4/e/b;->a(Landroid/content/Context;Landroid/support/v4/e/a;Ljava/lang/String;)[Landroid/support/v4/e/b$b;

    move-result-object v1

    new-instance v0, Landroid/support/v4/e/b$a;

    const/4 v4, 0x0

    invoke-direct {v0, v4, v1}, Landroid/support/v4/e/b$a;-><init>(I[Landroid/support/v4/e/b$b;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :cond_6
    move v0, v3

    goto :goto_5

    :cond_7
    iget v0, v0, Landroid/support/v4/e/b$a;->DB:I

    if-ne v0, v9, :cond_8

    const/4 v3, -0x2

    :cond_8
    new-instance v0, Landroid/support/v4/e/b$c;

    invoke-direct {v0, v5, v3}, Landroid/support/v4/e/b$c;-><init>(Landroid/graphics/Typeface;I)V

    goto/16 :goto_0
.end method

.method private static a([Landroid/content/pm/Signature;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            ")",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-object v2, p0, v0

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static a(Landroid/content/Context;[Landroid/support/v4/e/b$b;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Landroid/support/v4/e/b$b;",
            ")",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p1, v0

    iget v4, v3, Landroid/support/v4/e/b$b;->Dm:I

    if-nez v4, :cond_0

    iget-object v3, v3, Landroid/support/v4/e/b$b;->DD:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p0, v3}, Landroid/support/v4/a/h;->b(Landroid/content/Context;Landroid/net/Uri;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Landroid/support/v4/e/a;Ljava/lang/String;)[Landroid/support/v4/e/b$b;
    .locals 18

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "content"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v4, "content"

    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "file"

    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v12

    const/4 v9, 0x0

    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-le v2, v4, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "file_id"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "font_ttc_index"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "font_variation_settings"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "font_weight"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "font_italic"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "result_code"

    aput-object v6, v4, v5

    const-string v5, "query = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/support/v4/e/a;->Dq:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v10

    :goto_0
    if-eqz v10, :cond_7

    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_7

    const-string v2, "result_code"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "_id"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v4, "file_id"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const-string v4, "font_ttc_index"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    const-string v4, "font_weight"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    const-string v4, "font_italic"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, -0x1

    if-eq v11, v4, :cond_2

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    :goto_2
    const/4 v4, -0x1

    if-eq v15, v4, :cond_3

    invoke-interface {v10, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    :goto_3
    const/4 v4, -0x1

    if-ne v14, v4, :cond_4

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    :goto_4
    const/4 v4, -0x1

    move/from16 v0, v16

    if-eq v0, v4, :cond_5

    move/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    :goto_5
    const/4 v4, -0x1

    move/from16 v0, v17

    if-eq v0, v4, :cond_6

    move/from16 v0, v17

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v8, 0x1

    if-ne v4, v8, :cond_6

    const/4 v8, 0x1

    :goto_6
    new-instance v4, Landroid/support/v4/e/b$b;

    invoke-direct/range {v4 .. v9}, Landroid/support/v4/e/b$b;-><init>(Landroid/net/Uri;IIZI)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    move-object v3, v10

    :goto_7
    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v2

    :cond_1
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "file_id"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "font_ttc_index"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "font_variation_settings"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "font_weight"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "font_italic"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "result_code"

    aput-object v6, v4, v5

    const-string v5, "query = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/support/v4/e/a;->Dq:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v10

    goto/16 :goto_0

    :cond_2
    const/4 v9, 0x0

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    :cond_4
    :try_start_3
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v12, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    goto :goto_4

    :cond_5
    const/16 v7, 0x190

    goto :goto_5

    :cond_6
    const/4 v8, 0x0

    goto :goto_6

    :cond_7
    move-object v2, v11

    :cond_8
    if-eqz v10, :cond_9

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_9
    const/4 v3, 0x0

    new-array v3, v3, [Landroid/support/v4/e/b$b;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/support/v4/e/b$b;

    return-object v2

    :catchall_1
    move-exception v2

    move-object v3, v9

    goto :goto_7
.end method

.method static synthetic b(Landroid/content/Context;Landroid/support/v4/e/a;I)Landroid/support/v4/e/b$c;
    .locals 1

    invoke-static {p0, p1, p2}, Landroid/support/v4/e/b;->a(Landroid/content/Context;Landroid/support/v4/e/a;I)Landroid/support/v4/e/b$c;

    move-result-object v0

    return-object v0
.end method

.method private static d(Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/util/List",
            "<[B>;)Z"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    move v2, v3

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method static synthetic dA()Landroid/support/v4/g/m;
    .locals 1

    sget-object v0, Landroid/support/v4/e/b;->Dv:Landroid/support/v4/g/m;

    return-object v0
.end method

.method static synthetic dy()Landroid/support/v4/g/g;
    .locals 1

    sget-object v0, Landroid/support/v4/e/b;->BJ:Landroid/support/v4/g/g;

    return-object v0
.end method

.method static synthetic dz()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroid/support/v4/e/b;->AT:Ljava/lang/Object;

    return-object v0
.end method
