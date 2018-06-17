.class public La/a/a/b/c;
.super La/a/a/b/a;


# static fields
.field public static final csX:La/a/a/b/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La/a/a/b/c;

    invoke-direct {v0}, La/a/a/b/c;-><init>()V

    sput-object v0, La/a/a/b/c;->csX:La/a/a/b/d;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    const-class v0, La/a/a/b/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-direct {p0, v0, v1}, La/a/a/b/a;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final FX()[Ljava/lang/String;
    .locals 10

    const/4 v1, 0x0

    const/4 v9, 0x4

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "android.os.SystemProperties"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "get"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x4

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "net.dns1"

    aput-object v6, v5, v2

    const/4 v2, 0x1

    const-string v6, "net.dns2"

    aput-object v6, v5, v2

    const/4 v2, 0x2

    const-string v6, "net.dns3"

    aput-object v6, v5, v2

    const/4 v2, 0x3

    const-string v6, "net.dns4"

    aput-object v6, v5, v2

    move v2, v0

    :goto_0
    if-ge v2, v9, :cond_1

    aget-object v0, v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    sget-object v2, La/a/a/b/c;->coH:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Exception in findDNSByReflection"

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public final isAvailable()Z
    .locals 1

    invoke-static {}, La/a/a/i/g;->Go()Z

    move-result v0

    return v0
.end method
