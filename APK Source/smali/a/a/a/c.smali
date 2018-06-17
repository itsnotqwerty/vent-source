.class public La/a/a/c;
.super La/a/a/a;


# static fields
.field static final coS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "La/a/a/b/d;",
            ">;"
        }
    .end annotation
.end field

.field static final coT:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/net/Inet4Address;",
            ">;"
        }
    .end annotation
.end field

.field static final coU:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/net/Inet6Address;",
            ">;"
        }
    .end annotation
.end field

.field private static final coV:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final coW:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private coX:Z

.field private coY:Z

.field private coZ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, La/a/a/c;->coS:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, La/a/a/c;->coT:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, La/a/a/c;->coU:Ljava/util/Set;

    sget-object v0, La/a/a/b/b;->csX:La/a/a/b/d;

    invoke-static {v0}, La/a/a/c;->a(La/a/a/b/d;)V

    sget-object v0, La/a/a/b/c;->csX:La/a/a/b/d;

    invoke-static {v0}, La/a/a/c;->a(La/a/a/b/d;)V

    sget-object v0, La/a/a/b/e;->csX:La/a/a/b/d;

    invoke-static {v0}, La/a/a/c;->a(La/a/a/b/d;)V

    :try_start_0
    const-string v0, "8.8.8.8"

    invoke-static {v0}, La/a/a/i/e;->w(Ljava/lang/CharSequence;)Ljava/net/Inet4Address;

    move-result-object v0

    sget-object v1, La/a/a/c;->coT:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    const-string v0, "[2001:4860:4860::8888]"

    invoke-static {v0}, La/a/a/i/e;->x(Ljava/lang/CharSequence;)Ljava/net/Inet6Address;

    move-result-object v0

    sget-object v1, La/a/a/c;->coU:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, La/a/a/c;->coV:Ljava/util/Set;

    return-void

    :catch_0
    move-exception v0

    sget-object v1, La/a/a/c;->coH:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Could not add static IPv4 DNS Server"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, La/a/a/c;->coH:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Could not add static IPv6 DNS Server"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public constructor <init>(La/a/a/b;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, La/a/a/a;-><init>(La/a/a/b;)V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, La/a/a/c;->coW:Ljava/util/Set;

    iput-boolean v2, p0, La/a/a/c;->coX:Z

    iput-boolean v2, p0, La/a/a/c;->coY:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/a/c;->coZ:Z

    return-void
.end method

.method private static declared-synchronized FI()[Ljava/lang/String;
    .locals 10

    const-class v3, La/a/a/c;

    monitor-enter v3

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, La/a/a/c;->coS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/b/d;

    invoke-interface {v0}, La/a/a/b/d;->FX()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v7, La/a/a/c;->coV:Ljava/util/Set;

    invoke-interface {v7, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, La/a/a/c;->coH:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "The DNS server lookup mechanism \'"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, La/a/a/b/d;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' returned a blacklisted result: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "\'"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_1
    :try_start_1
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit v3

    return-object v0

    :cond_3
    move-object v0, v2

    goto :goto_0

    :cond_4
    move-object v0, v2

    goto :goto_0
.end method

.method private FJ()Ljava/net/InetAddress;
    .locals 2

    sget-object v0, La/a/a/c;->coT:Ljava/util/Set;

    iget-object v1, p0, La/a/a/c;->coI:Ljava/util/Random;

    invoke-static {v0, v1}, La/a/a/i/c;->a(Ljava/util/Set;Ljava/util/Random;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    return-object v0
.end method

.method private FK()Ljava/net/InetAddress;
    .locals 2

    sget-object v0, La/a/a/c;->coU:Ljava/util/Set;

    iget-object v1, p0, La/a/a/c;->coI:Ljava/util/Random;

    invoke-static {v0, v1}, La/a/a/i/c;->a(Ljava/util/Set;Ljava/util/Random;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    return-object v0
.end method

.method private static declared-synchronized a(La/a/a/b/d;)V
    .locals 4

    const-class v1, La/a/a/c;

    monitor-enter v1

    :try_start_0
    invoke-interface {p0}, La/a/a/b/d;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, La/a/a/c;->coH:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Not adding "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, La/a/a/b/d;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as it is not available."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    sget-object v0, La/a/a/c;->coS:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, La/a/a/c;->coS:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(La/a/a/d$a;)La/a/a/d;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x2

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, La/a/a/c;->b(La/a/a/d$a;)La/a/a/d$a;

    move-result-object v0

    invoke-virtual {v0}, La/a/a/d$a;->FQ()La/a/a/d;

    move-result-object v4

    iget-object v0, p0, La/a/a/c;->coJ:La/a/a/b;

    if-nez v0, :cond_0

    move-object v0, v3

    :goto_0
    if-eqz v0, :cond_1

    move-object v3, v0

    :goto_1
    return-object v3

    :cond_0
    iget-object v0, p0, La/a/a/c;->coJ:La/a/a/b;

    invoke-virtual {v0, v4}, La/a/a/b;->a(La/a/a/d;)La/a/a/d;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, La/a/a/c;->FI()[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    new-array v2, v1, [Ljava/lang/String;

    move v0, v1

    :goto_2
    new-instance v5, Ljava/util/ArrayList;

    add-int/lit8 v0, v0, 0x2

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v6, v2

    move v0, v1

    :goto_3
    if-ge v0, v6, :cond_5

    aget-object v7, v2, v0

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_2
    sget-object v7, La/a/a/c;->coH:Ljava/util/logging/Logger;

    const-string v8, "findDns() returned null or empty string as dns server"

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    array-length v0, v2

    goto :goto_2

    :cond_4
    invoke-static {v7}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    new-array v6, v9, [Ljava/net/InetAddress;

    iget-boolean v0, p0, La/a/a/c;->coZ:Z

    if-eqz v0, :cond_6

    sget-object v0, La/a/a/c$1;->cpa:[I

    sget v2, La/a/a/c;->coL:I

    add-int/lit8 v2, v2, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    move-object v0, v3

    move-object v2, v3

    :goto_5
    aput-object v2, v6, v1

    const/4 v2, 0x1

    aput-object v0, v6, v2

    :cond_6
    :goto_6
    if-ge v1, v9, :cond_8

    aget-object v0, v6, v1

    if-eqz v0, :cond_7

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :pswitch_0
    invoke-direct {p0}, La/a/a/c;->FJ()Ljava/net/InetAddress;

    move-result-object v2

    invoke-direct {p0}, La/a/a/c;->FK()Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_5

    :pswitch_1
    invoke-direct {p0}, La/a/a/c;->FK()Ljava/net/InetAddress;

    move-result-object v2

    invoke-direct {p0}, La/a/a/c;->FJ()Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_5

    :pswitch_2
    invoke-direct {p0}, La/a/a/c;->FJ()Ljava/net/InetAddress;

    move-result-object v2

    move-object v0, v3

    goto :goto_5

    :pswitch_3
    invoke-direct {p0}, La/a/a/c;->FK()Ljava/net/InetAddress;

    move-result-object v2

    move-object v0, v3

    goto :goto_5

    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    iget-object v1, p0, La/a/a/c;->coW:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, La/a/a/c;->coH:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Skipping "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " because it was marked as \"recursion not available\""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto :goto_7

    :cond_a
    :try_start_0
    invoke-super {p0, v4, v0}, La/a/a/a;->a(La/a/a/d;Ljava/net/InetAddress;)La/a/a/d;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-boolean v6, v1, La/a/a/d;->cpi:Z

    if-nez v6, :cond_b

    iget-object v1, p0, La/a/a/c;->coW:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, La/a/a/c;->coH:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "The DNS server "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " returned a response without the \"recursion available\" (RA) flag set. This likely indicates a misconfiguration because the server is not suitable for DNS resolution"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_b
    :try_start_1
    iget-boolean v6, p0, La/a/a/c;->coY:Z

    if-eqz v6, :cond_c

    move-object v3, v1

    goto/16 :goto_1

    :cond_c
    sget-object v6, La/a/a/c$1;->cpb:[I

    iget-object v7, v1, La/a/a/d;->cpd:La/a/a/d$c;

    invoke-virtual {v7}, La/a/a/d$c;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Response from "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " asked for "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, La/a/a/d;->FM()La/a/a/j;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " with error code: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, v1, La/a/a/d;->cpd:La/a/a/d$c;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v6, 0x2e

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v6, La/a/a/c;->coH:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-nez v6, :cond_d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_d
    sget-object v1, La/a/a/c;->coH:Ljava/util/logging/Logger;

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_7

    :pswitch_4
    move-object v3, v1

    goto/16 :goto_1

    :cond_e
    invoke-static {v2}, La/a/a/i/f;->B(Ljava/util/List;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public b(La/a/a/d$a;)La/a/a/d$a;
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p1, La/a/a/d$a;->cph:Z

    invoke-virtual {p1}, La/a/a/d$a;->FP()La/a/a/g$a;

    move-result-object v0

    iget-object v1, p0, La/a/a/c;->coK:La/a/a/h/a;

    invoke-virtual {v1}, La/a/a/h/a;->Gn()I

    move-result v1

    invoke-virtual {v0, v1}, La/a/a/g$a;->eX(I)La/a/a/g$a;

    move-result-object v0

    iget-boolean v1, p0, La/a/a/c;->coX:Z

    iput-boolean v1, v0, La/a/a/g$a;->cqJ:Z

    return-object p1
.end method
