.class public final Lorg/a/c;
.super Ljava/lang/Object;


# static fields
.field static volatile dco:I

.field static final dcp:Lorg/a/b/f;

.field static final dcq:Lorg/a/b/c;

.field static dcr:Z

.field private static final dcs:[Ljava/lang/String;

.field private static dct:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    sput v2, Lorg/a/c;->dco:I

    new-instance v0, Lorg/a/b/f;

    invoke-direct {v0}, Lorg/a/b/f;-><init>()V

    sput-object v0, Lorg/a/c;->dcp:Lorg/a/b/f;

    new-instance v0, Lorg/a/b/c;

    invoke-direct {v0}, Lorg/a/b/c;-><init>()V

    sput-object v0, Lorg/a/c;->dcq:Lorg/a/b/c;

    const-string v0, "slf4j.detectLoggerNameMismatch"

    invoke-static {v0}, Lorg/a/b/g;->fM(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/a/c;->dcr:Z

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "1.6"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "1.7"

    aput-object v2, v0, v1

    sput-object v0, Lorg/a/c;->dcs:[Ljava/lang/String;

    const-string v0, "org/slf4j/impl/StaticLoggerBinder.class"

    sput-object v0, Lorg/a/c;->dct:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static NA()Lorg/a/a;
    .locals 9

    const/4 v8, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget v0, Lorg/a/c;->dco:I

    if-nez v0, :cond_2

    const-class v4, Lorg/a/c;

    monitor-enter v4

    :try_start_0
    sget v0, Lorg/a/c;->dco:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    sput v0, Lorg/a/c;->dco:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :try_start_1
    const-string v3, "java.vendor.url"

    invoke-static {v3}, Lorg/a/b/g;->fL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    move v3, v2

    :goto_0
    if-nez v3, :cond_6

    invoke-static {}, Lorg/a/c;->Nz()Ljava/util/Set;

    move-result-object v3

    invoke-static {v3}, Lorg/a/c;->j(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Class path contains multiple SLF4J bindings."

    invoke-static {v0}, Lorg/a/b/g;->fN(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Found binding in ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "]"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/a/b/g;->fN(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    const-string v5, "org/slf4j/impl/StaticLoggerBinder"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_0
    :goto_2
    if-eqz v1, :cond_b

    const/4 v0, 0x4

    sput v0, Lorg/a/c;->dco:I

    const-string v0, "Failed to load class \"org.slf4j.impl.StaticLoggerBinder\"."

    invoke-static {v0}, Lorg/a/b/g;->fN(Ljava/lang/String;)V

    const-string v0, "Defaulting to no-operation (NOP) logger implementation"

    invoke-static {v0}, Lorg/a/b/g;->fN(Ljava/lang/String;)V

    const-string v0, "See http://www.slf4j.org/codes.html#StaticLoggerBinder for further details."

    invoke-static {v0}, Lorg/a/b/g;->fN(Ljava/lang/String;)V

    :goto_3
    sget v0, Lorg/a/c;->dco:I

    if-ne v0, v8, :cond_1

    invoke-static {}, Lorg/a/c;->Ny()V

    :cond_1
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    sget v0, Lorg/a/c;->dco:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unreachable code"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v5, "android"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    goto :goto_0

    :cond_4
    const-string v0, "See http://www.slf4j.org/codes.html#multiple_bindings for an explanation."

    invoke-static {v0}, Lorg/a/b/g;->fN(Ljava/lang/String;)V

    :cond_5
    move-object v0, v3

    :cond_6
    invoke-static {}, Lorg/a/c/a;->NC()Lorg/a/c/a;

    const/4 v3, 0x3

    sput v3, Lorg/a/c;->dco:I

    if-eqz v0, :cond_7

    invoke-static {v0}, Lorg/a/c;->j(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Actual binding is of type ["

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/a/c/a;->NC()Lorg/a/c/a;

    invoke-static {}, Lorg/a/c/a;->ND()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/a/b/g;->fN(Ljava/lang/String;)V

    :cond_7
    invoke-static {}, Lorg/a/c;->Nw()V

    invoke-static {}, Lorg/a/c;->Nx()V

    sget-object v0, Lorg/a/c;->dcp:Lorg/a/b/f;

    iget-object v3, v0, Lorg/a/b/f;->dcC:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    iget-object v0, v0, Lorg/a/b/f;->dcD:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V
    :try_end_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    const-string v2, "org.slf4j.impl.StaticLoggerBinder.getSingleton()"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x2

    sput v1, Lorg/a/c;->dco:I

    const-string v1, "slf4j-api 1.6.x (or later) is incompatible with this binding."

    invoke-static {v1}, Lorg/a/b/g;->fN(Ljava/lang/String;)V

    const-string v1, "Your binding is version 1.5.5 or earlier."

    invoke-static {v1}, Lorg/a/b/g;->fN(Ljava/lang/String;)V

    const-string v1, "Upgrade your binding to version 1.6.x."

    invoke-static {v1}, Lorg/a/b/g;->fN(Ljava/lang/String;)V

    :cond_8
    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_9
    :try_start_5
    const-string v5, "org.slf4j.impl.StaticLoggerBinder"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_a
    move v1, v2

    goto/16 :goto_2

    :cond_b
    invoke-static {v0}, Lorg/a/c;->k(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception v0

    invoke-static {v0}, Lorg/a/c;->k(Ljava/lang/Throwable;)V

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected initialization failure"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :pswitch_0
    invoke-static {}, Lorg/a/c/a;->NC()Lorg/a/c/a;

    move-result-object v0

    iget-object v0, v0, Lorg/a/c/a;->dcI:Lorg/a/a;

    :goto_4
    return-object v0

    :pswitch_1
    sget-object v0, Lorg/a/c;->dcq:Lorg/a/b/c;

    goto :goto_4

    :pswitch_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "org.slf4j.LoggerFactory in failed state. Original exception was thrown EARLIER. See also http://www.slf4j.org/codes.html#unsuccessfulInit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    sget-object v0, Lorg/a/c;->dcp:Lorg/a/b/f;

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static Nw()V
    .locals 4

    sget-object v1, Lorg/a/c;->dcp:Lorg/a/b/f;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/a/c;->dcp:Lorg/a/b/f;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lorg/a/b/f;->dcB:Z

    sget-object v0, Lorg/a/c;->dcp:Lorg/a/b/f;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, v0, Lorg/a/b/f;->dcC:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/b/e;

    iget-object v3, v0, Lorg/a/b/e;->name:Ljava/lang/String;

    invoke-static {v3}, Lorg/a/c;->fK(Ljava/lang/String;)Lorg/a/b;

    move-result-object v3

    iput-object v3, v0, Lorg/a/b/e;->dcw:Lorg/a/b;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private static Nx()V
    .locals 13

    const/16 v12, 0x80

    const/4 v4, 0x1

    const/4 v1, 0x0

    sget-object v0, Lorg/a/c;->dcp:Lorg/a/b/f;

    iget-object v5, v0, Lorg/a/b/f;->dcD:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v12}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v1

    :goto_0
    invoke-virtual {v5, v7, v12}, Ljava/util/concurrent/LinkedBlockingQueue;->drainTo(Ljava/util/Collection;I)I

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v2, v0

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/b;

    if-eqz v0, :cond_2

    iget-object v9, v0, Lorg/a/a/b;->dcu:Lorg/a/b/e;

    iget-object v10, v9, Lorg/a/b/e;->name:Ljava/lang/String;

    iget-object v3, v9, Lorg/a/b/e;->dcw:Lorg/a/b;

    if-nez v3, :cond_0

    move v3, v4

    :goto_2
    if-eqz v3, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Delegate logger cannot be null at this state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v3, v1

    goto :goto_2

    :cond_1
    iget-object v3, v9, Lorg/a/b/e;->dcw:Lorg/a/b;

    instance-of v3, v3, Lorg/a/b/b;

    if-nez v3, :cond_2

    invoke-virtual {v9}, Lorg/a/b/e;->NB()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v9}, Lorg/a/b/e;->NB()Z

    move-result v3

    if-eqz v3, :cond_2

    :try_start_0
    iget-object v3, v9, Lorg/a/b/e;->dcy:Ljava/lang/reflect/Method;

    iget-object v9, v9, Lorg/a/b/e;->dcw:Lorg/a/b;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    invoke-virtual {v3, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_3
    add-int/lit8 v3, v2, 0x1

    if-nez v2, :cond_5

    iget-object v2, v0, Lorg/a/a/b;->dcu:Lorg/a/b/e;

    invoke-virtual {v2}, Lorg/a/b/e;->NB()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "A number ("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") of logging calls during the initialization phase have been intercepted and are"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/a/b/g;->fN(Ljava/lang/String;)V

    const-string v0, "now being replayed. These are subject to the filtering rules of the underlying logging system."

    invoke-static {v0}, Lorg/a/b/g;->fN(Ljava/lang/String;)V

    const-string v0, "See also http://www.slf4j.org/codes.html#replay"

    invoke-static {v0}, Lorg/a/b/g;->fN(Ljava/lang/String;)V

    move v2, v3

    goto :goto_1

    :cond_3
    invoke-static {v10}, Lorg/a/b/g;->fN(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    iget-object v0, v0, Lorg/a/a/b;->dcu:Lorg/a/b/e;

    iget-object v0, v0, Lorg/a/b/e;->dcw:Lorg/a/b;

    instance-of v0, v0, Lorg/a/b/b;

    if-nez v0, :cond_5

    const-string v0, "The following set of substitute loggers may have been accessed"

    invoke-static {v0}, Lorg/a/b/g;->fN(Ljava/lang/String;)V

    const-string v0, "during the initialization phase. Logging calls during this"

    invoke-static {v0}, Lorg/a/b/g;->fN(Ljava/lang/String;)V

    const-string v0, "phase were not honored. However, subsequent logging calls to these"

    invoke-static {v0}, Lorg/a/b/g;->fN(Ljava/lang/String;)V

    const-string v0, "loggers will work as normally expected."

    invoke-static {v0}, Lorg/a/b/g;->fN(Ljava/lang/String;)V

    const-string v0, "See also http://www.slf4j.org/codes.html#substituteLogger"

    invoke-static {v0}, Lorg/a/b/g;->fN(Ljava/lang/String;)V

    :cond_5
    move v2, v3

    goto/16 :goto_1

    :cond_6
    invoke-interface {v7}, Ljava/util/List;->clear()V

    move v0, v2

    goto/16 :goto_0

    :cond_7
    return-void

    :catch_0
    move-exception v3

    goto :goto_3

    :catch_1
    move-exception v3

    goto :goto_3

    :catch_2
    move-exception v3

    goto :goto_3
.end method

.method private static final Ny()V
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lorg/a/c/a;->dcG:Ljava/lang/String;

    sget-object v4, Lorg/a/c;->dcs:[Ljava/lang/String;

    array-length v5, v4

    move v1, v2

    move v0, v2

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v2, v4, v1

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The requested version "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " by your slf4j binding is not compatible with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/a/c;->dcs:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/a/b/g;->fN(Ljava/lang/String;)V

    const-string v0, "See http://www.slf4j.org/codes.html#version_mismatch for further details."

    invoke-static {v0}, Lorg/a/b/g;->fN(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Unexpected problem occured during version sanity check"

    invoke-static {v1, v0}, Lorg/a/b/g;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static Nz()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    :try_start_0
    const-class v0, Lorg/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/a/c;->dct:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/ClassLoader;->getSystemResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    move-object v1, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Error getting resources from path"

    invoke-static {v1, v0}, Lorg/a/b/g;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object v2

    :cond_1
    :try_start_1
    sget-object v1, Lorg/a/c;->dct:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method public static fK(Ljava/lang/String;)Lorg/a/b;
    .locals 1

    invoke-static {}, Lorg/a/c;->NA()Lorg/a/a;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/a/a;->fK(Ljava/lang/String;)Lorg/a/b;

    move-result-object v0

    return-object v0
.end method

.method private static j(Ljava/util/Set;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/net/URL;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static k(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x2

    sput v0, Lorg/a/c;->dco:I

    const-string v0, "Failed to instantiate SLF4J LoggerFactory"

    invoke-static {v0, p0}, Lorg/a/b/g;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
