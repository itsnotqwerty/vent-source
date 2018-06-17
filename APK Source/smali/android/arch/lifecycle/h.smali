.class public final Landroid/arch/lifecycle/h;
.super Ljava/lang/Object;


# static fields
.field private static aP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static aQ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Landroid/arch/lifecycle/b;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/arch/lifecycle/h;->aP:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/arch/lifecycle/h;->aQ:Ljava/util/Map;

    return-void
.end method

.method private static a(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)Landroid/arch/lifecycle/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Landroid/arch/lifecycle/b;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/arch/lifecycle/b;"
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/b;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static d(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Landroid/arch/lifecycle/b;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "."

    const-string v4, "_"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_LifecycleAdapter"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    :cond_0
    :goto_3
    return-object v0

    :cond_1
    const-string v1, ""

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_2

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_3

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static e(Ljava/lang/Class;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sget-object v0, Landroid/arch/lifecycle/h;->aP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/arch/lifecycle/h;->aP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {p0}, Landroid/arch/lifecycle/h;->d(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Landroid/arch/lifecycle/h;->aQ:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    :goto_1
    sget-object v1, Landroid/arch/lifecycle/h;->aP:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    sget-object v5, Landroid/arch/lifecycle/a;->aq:Landroid/arch/lifecycle/a;

    iget-object v0, v5, Landroid/arch/lifecycle/a;->as:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v5, Landroid/arch/lifecycle/a;->as:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_2
    if-nez v0, :cond_7

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    const/4 v0, 0x0

    invoke-static {v5}, Landroid/arch/lifecycle/h;->f(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v5}, Landroid/arch/lifecycle/h;->e(Ljava/lang/Class;)I

    move-result v0

    if-eq v0, v3, :cond_7

    new-instance v1, Ljava/util/ArrayList;

    sget-object v0, Landroid/arch/lifecycle/h;->aQ:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v5

    array-length v6, v5

    :goto_3
    if-ge v4, v6, :cond_6

    aget-object v7, v5, v4

    invoke-static {v7}, Landroid/arch/lifecycle/h;->f(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {v7}, Landroid/arch/lifecycle/h;->e(Ljava/lang/Class;)I

    move-result v1

    if-eq v1, v3, :cond_7

    if-nez v0, :cond_8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    :goto_4
    sget-object v0, Landroid/arch/lifecycle/h;->aQ:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_5
    add-int/lit8 v4, v4, 0x1

    move-object v0, v1

    goto :goto_3

    :cond_3
    invoke-static {p0}, Landroid/arch/lifecycle/a;->b(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v6

    array-length v7, v6

    move v1, v4

    :goto_6
    if-ge v1, v7, :cond_5

    aget-object v0, v6, v1

    const-class v8, Landroid/arch/lifecycle/l;

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/l;

    if-eqz v0, :cond_4

    invoke-virtual {v5, p0, v6}, Landroid/arch/lifecycle/a;->a(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Landroid/arch/lifecycle/a$a;

    move v0, v3

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_5
    iget-object v0, v5, Landroid/arch/lifecycle/a;->as:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v4

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_7

    sget-object v1, Landroid/arch/lifecycle/h;->aQ:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    goto/16 :goto_1

    :cond_7
    move v0, v3

    goto/16 :goto_1

    :cond_8
    move-object v1, v0

    goto :goto_4

    :cond_9
    move-object v1, v0

    goto :goto_5
.end method

.method static f(Ljava/lang/Object;)Landroid/arch/lifecycle/GenericLifecycleObserver;
    .locals 4

    const/4 v1, 0x0

    instance-of v0, p0, Landroid/arch/lifecycle/FullLifecycleObserver;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/arch/lifecycle/FullLifecycleObserverAdapter;

    check-cast p0, Landroid/arch/lifecycle/FullLifecycleObserver;

    invoke-direct {v0, p0}, Landroid/arch/lifecycle/FullLifecycleObserverAdapter;-><init>(Landroid/arch/lifecycle/FullLifecycleObserver;)V

    move-object p0, v0

    :goto_0
    return-object p0

    :cond_0
    instance-of v0, p0, Landroid/arch/lifecycle/GenericLifecycleObserver;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/arch/lifecycle/GenericLifecycleObserver;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Landroid/arch/lifecycle/h;->e(Ljava/lang/Class;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    sget-object v2, Landroid/arch/lifecycle/h;->aQ:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    invoke-static {v0, p0}, Landroid/arch/lifecycle/h;->a(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)Landroid/arch/lifecycle/b;

    move-result-object v0

    new-instance p0, Landroid/arch/lifecycle/SingleGeneratedAdapterObserver;

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/SingleGeneratedAdapterObserver;-><init>(Landroid/arch/lifecycle/b;)V

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v3, v2, [Landroid/arch/lifecycle/b;

    move v2, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    invoke-static {v1, p0}, Landroid/arch/lifecycle/h;->a(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)Landroid/arch/lifecycle/b;

    move-result-object v1

    aput-object v1, v3, v2

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_3
    new-instance p0, Landroid/arch/lifecycle/CompositeGeneratedAdaptersObserver;

    invoke-direct {p0, v3}, Landroid/arch/lifecycle/CompositeGeneratedAdaptersObserver;-><init>([Landroid/arch/lifecycle/b;)V

    goto :goto_0

    :cond_4
    new-instance v0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;

    invoke-direct {v0, p0}, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0
.end method

.method private static f(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    if-eqz p0, :cond_0

    const-class v0, Landroid/arch/lifecycle/d;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
