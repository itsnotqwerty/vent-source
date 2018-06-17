.class public Lcom/layer/sdk/internal/lsdkk/k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/lsdkk/k$b;,
        Lcom/layer/sdk/internal/lsdkk/k$a;
    }
.end annotation


# static fields
.field public static final a:[C

.field public static final b:[I

.field public static final c:[F

.field private static volatile d:Z

.field private static volatile e:Z

.field private static volatile f:Z

.field private static volatile g:Z

.field private static h:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-array v0, v1, [C

    sput-object v0, Lcom/layer/sdk/internal/lsdkk/k;->a:[C

    new-array v0, v1, [I

    sput-object v0, Lcom/layer/sdk/internal/lsdkk/k;->b:[I

    new-array v0, v1, [F

    sput-object v0, Lcom/layer/sdk/internal/lsdkk/k;->c:[F

    sput-boolean v1, Lcom/layer/sdk/internal/lsdkk/k;->d:Z

    sput-boolean v1, Lcom/layer/sdk/internal/lsdkk/k;->e:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/layer/sdk/internal/lsdkk/k;->f:Z

    sput-boolean v1, Lcom/layer/sdk/internal/lsdkk/k;->g:Z

    new-instance v0, Lcom/layer/sdk/internal/lsdkk/k$b;

    invoke-direct {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k$b;-><init>(B)V

    invoke-static {v0}, Lcom/layer/b/e/a;->a(Lcom/layer/b/e/a$b;)V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/layer/sdk/internal/lsdkk/k;->h:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static a(Ljava/lang/Class;)Lcom/layer/sdk/internal/lsdkk/k$a;
    .locals 3

    new-instance v0, Lcom/layer/sdk/internal/lsdkk/k$a;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/internal/lsdkk/k$a;-><init>(Ljava/lang/String;B)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkk/k$a;
    .locals 2

    new-instance v0, Lcom/layer/sdk/internal/lsdkk/k$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/layer/sdk/internal/lsdkk/k$a;-><init>(Ljava/lang/String;B)V

    return-object v0
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, ", "

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-nez v1, :cond_0

    move-object v2, p2

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ": "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move-object v2, p1

    goto :goto_1

    :cond_1
    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    sget-boolean v0, Lcom/layer/sdk/internal/lsdkk/k;->d:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/layer/sdk/internal/lsdkk/k;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "alwaysOn"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/layer/sdk/internal/lsdkk/k;->d:Z

    sput-boolean p1, Lcom/layer/sdk/internal/lsdkk/k;->e:Z

    invoke-static {p0}, Lcom/layer/sdk/internal/lsdkk/k;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "alwaysOn"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v1, "LayerSDK"

    sget-boolean v0, Lcom/layer/sdk/internal/lsdkk/k;->e:Z

    if-eqz v0, :cond_0

    const-string v0, "Enabling logs"

    :goto_0
    invoke-static {v1, v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "Disabling logs"

    goto :goto_0
.end method

.method public static a(Lcom/layer/sdk/LayerClient;Landroid/app/Activity;)V
    .locals 1

    sget-boolean v0, Lcom/layer/sdk/internal/lsdkk/k;->f:Z

    invoke-static {p0, v0, p1}, Lcom/layer/sdk/internal/lsdkk/l;->a(Lcom/layer/sdk/LayerClient;ZLandroid/app/Activity;)V

    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/layer/sdk/internal/lsdkk/k;->e:Z

    if-nez v0, :cond_0

    const-string v0, "LayerSDK"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    instance-of v1, p0, Lcom/layer/sdk/internal/lsdkk/k$a;

    if-eqz v1, :cond_1

    check-cast p0, Lcom/layer/sdk/internal/lsdkk/k$a;

    invoke-static {p0}, Lcom/layer/sdk/internal/lsdkk/k$a;->a(Lcom/layer/sdk/internal/lsdkk/k$a;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LayerSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget-boolean v0, Lcom/layer/sdk/internal/lsdkk/k;->e:Z

    if-nez v0, :cond_1

    const-string v0, "LayerSDK"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p2}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    instance-of v1, p0, Lcom/layer/sdk/internal/lsdkk/k$a;

    if-eqz v1, :cond_2

    check-cast p0, Lcom/layer/sdk/internal/lsdkk/k$a;

    invoke-static {p0}, Lcom/layer/sdk/internal/lsdkk/k$a;->a(Lcom/layer/sdk/internal/lsdkk/k$a;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LayerSDK"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Z)V
    .locals 0

    sput-boolean p0, Lcom/layer/sdk/internal/lsdkk/k;->g:Z

    return-void
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lcom/layer/sdk/internal/lsdkk/k;->e:Z

    return v0
.end method

.method public static a(I)Z
    .locals 1

    sget-boolean v0, Lcom/layer/sdk/internal/lsdkk/k;->e:Z

    if-nez v0, :cond_0

    const-string v0, "LayerSDK"

    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/StackTraceElement;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "utils.log"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getstacktrace"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Throwable;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object v0, p0

    :goto_0
    if-nez v0, :cond_0

    move v0, v1

    :goto_1
    return v0

    :cond_0
    instance-of v3, v0, Lcom/layer/sdk/exceptions/LayerConversationException;

    if-eqz v3, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    instance-of v3, v0, Lcom/layer/sdk/exceptions/LayerObjectException;

    if-eqz v3, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    instance-of v3, v0, Lcom/layer/sdk/exceptions/LayerException;

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    if-eq p0, v0, :cond_3

    move-object v0, p0

    goto :goto_0

    :cond_3
    instance-of v3, v0, Lcom/layer/b/d/m;

    if-eqz v3, :cond_5

    check-cast v0, Lcom/layer/b/d/m;

    iget-object v3, v0, Lcom/layer/b/d/m;->bvU:Lcom/layer/b/d/f;

    if-nez v3, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    sget-object v3, Lcom/layer/sdk/internal/lsdkk/k$1;->bqe:[I

    iget-object v0, v0, Lcom/layer/b/d/m;->bvU:Lcom/layer/b/d/f;

    invoke-virtual {v0}, Lcom/layer/b/d/f;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    move v0, v2

    goto :goto_1

    :pswitch_0
    move v0, v1

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static b(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "layer-logging"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Lcom/layer/sdk/internal/lsdkk/k;->f:Z

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/l;->a(Lcom/layer/sdk/LayerClient;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/layer/sdk/internal/lsdkk/k;->e:Z

    if-nez v0, :cond_0

    const-string v0, "LayerSDK"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    instance-of v1, p0, Lcom/layer/sdk/internal/lsdkk/k$a;

    if-eqz v1, :cond_1

    check-cast p0, Lcom/layer/sdk/internal/lsdkk/k$a;

    invoke-static {p0}, Lcom/layer/sdk/internal/lsdkk/k$a;->a(Lcom/layer/sdk/internal/lsdkk/k$a;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LayerSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget-boolean v0, Lcom/layer/sdk/internal/lsdkk/k;->e:Z

    if-nez v0, :cond_1

    const-string v0, "LayerSDK"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p2}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    instance-of v1, p0, Lcom/layer/sdk/internal/lsdkk/k$a;

    if-eqz v1, :cond_2

    check-cast p0, Lcom/layer/sdk/internal/lsdkk/k$a;

    invoke-static {p0}, Lcom/layer/sdk/internal/lsdkk/k$a;->a(Lcom/layer/sdk/internal/lsdkk/k$a;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LayerSDK"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/layer/sdk/internal/lsdkk/k;->g:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/layer/sdk/internal/lsdkk/k;->e:Z

    if-nez v0, :cond_1

    const-string v0, "LayerSDK"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "LayerSDK"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static c(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/layer/sdk/internal/lsdkk/k;->e:Z

    if-nez v0, :cond_0

    const-string v0, "LayerSDK"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    instance-of v1, p0, Lcom/layer/sdk/internal/lsdkk/k$a;

    if-eqz v1, :cond_1

    check-cast p0, Lcom/layer/sdk/internal/lsdkk/k$a;

    invoke-static {p0}, Lcom/layer/sdk/internal/lsdkk/k$a;->a(Lcom/layer/sdk/internal/lsdkk/k$a;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LayerSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget-boolean v0, Lcom/layer/sdk/internal/lsdkk/k;->e:Z

    if-nez v0, :cond_1

    const-string v0, "LayerSDK"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p2}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    instance-of v1, p0, Lcom/layer/sdk/internal/lsdkk/k$a;

    if-eqz v1, :cond_2

    check-cast p0, Lcom/layer/sdk/internal/lsdkk/k$a;

    invoke-static {p0}, Lcom/layer/sdk/internal/lsdkk/k$a;->a(Lcom/layer/sdk/internal/lsdkk/k$a;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LayerSDK"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/layer/sdk/internal/lsdkk/k;->e:Z

    if-nez v0, :cond_0

    const-string v0, "LayerPerf:SDK"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "LayerPerf:SDK"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static c()Z
    .locals 1

    sget-boolean v0, Lcom/layer/sdk/internal/lsdkk/k;->g:Z

    return v0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p0
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/layer/sdk/internal/lsdkk/k;->e:Z

    if-nez v0, :cond_0

    const-string v0, "LayerSDK"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    instance-of v1, p0, Lcom/layer/sdk/internal/lsdkk/k$a;

    if-eqz v1, :cond_1

    check-cast p0, Lcom/layer/sdk/internal/lsdkk/k$a;

    invoke-static {p0}, Lcom/layer/sdk/internal/lsdkk/k$a;->a(Lcom/layer/sdk/internal/lsdkk/k$a;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LayerSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget-boolean v0, Lcom/layer/sdk/internal/lsdkk/k;->e:Z

    if-nez v0, :cond_1

    const-string v0, "LayerSDK"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p2}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    instance-of v1, p0, Lcom/layer/sdk/internal/lsdkk/k$a;

    if-eqz v1, :cond_2

    check-cast p0, Lcom/layer/sdk/internal/lsdkk/k$a;

    invoke-static {p0}, Lcom/layer/sdk/internal/lsdkk/k$a;->a(Lcom/layer/sdk/internal/lsdkk/k$a;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LayerSDK"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static d()Z
    .locals 2

    sget-boolean v0, Lcom/layer/sdk/internal/lsdkk/k;->e:Z

    if-nez v0, :cond_0

    const-string v0, "LayerPerf:SDK"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static e()Ljava/lang/String;
    .locals 5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/StackTraceElement;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS zzz"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/layer/sdk/internal/lsdkk/k;->e:Z

    if-nez v0, :cond_0

    const-string v0, "LayerSDK"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    instance-of v1, p0, Lcom/layer/sdk/internal/lsdkk/k$a;

    if-eqz v1, :cond_1

    check-cast p0, Lcom/layer/sdk/internal/lsdkk/k$a;

    invoke-static {p0}, Lcom/layer/sdk/internal/lsdkk/k$a;->a(Lcom/layer/sdk/internal/lsdkk/k$a;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LayerSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
