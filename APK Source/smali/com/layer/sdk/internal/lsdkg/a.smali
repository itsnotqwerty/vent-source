.class public Lcom/layer/sdk/internal/lsdkg/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/layer/sdk/internal/lsdkk/k$a;


# instance fields
.field private final b:Lcom/layer/sdk/internal/a;

.field private final c:Ljava/lang/String;

.field private d:Lcom/layer/sdk/internal/lsdkk/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/lsdkg/a;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Class;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/lsdkg/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-void
.end method

.method public constructor <init>(Lcom/layer/sdk/internal/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkg/a;->b:Lcom/layer/sdk/internal/a;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdkg/a;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/layer/sdk/internal/lsdkg/a;)Lcom/layer/sdk/internal/lsdkk/g;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkg/a;->d:Lcom/layer/sdk/internal/lsdkk/g;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/util/concurrent/Executor;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/layer/sdk/internal/lsdkg/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/layer/sdk/internal/lsdkg/a;->b(Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdkg/a;->e()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkg/a;->d:Lcom/layer/sdk/internal/lsdkk/g;

    invoke-virtual {v0, p1}, Lcom/layer/sdk/internal/lsdkk/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdkg/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "FCM token already registered with Layer server, not attempting to re-register."

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkj/i;
    .locals 5

    new-instance v0, Lcom/layer/sdk/internal/lsdkj/i;

    new-instance v1, Lcom/layer/sdk/internal/lsdkg/a$1;

    invoke-direct {v1, p0, p1}, Lcom/layer/sdk/internal/lsdkg/a$1;-><init>(Lcom/layer/sdk/internal/lsdkg/a;Ljava/lang/String;)V

    new-instance v2, Lcom/layer/sdk/internal/lsdkj/i$a;

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkg/a;->b:Lcom/layer/sdk/internal/a;

    iget-object v4, p0, Lcom/layer/sdk/internal/lsdkg/a;->b:Lcom/layer/sdk/internal/a;

    invoke-virtual {v4}, Lcom/layer/sdk/internal/a;->B()Lcom/layer/b/d/k;

    move-result-object v4

    invoke-direct {v2, v3, v4, p1}, Lcom/layer/sdk/internal/lsdkj/i$a;-><init>(Lcom/layer/sdk/internal/a;Lcom/layer/b/d/k;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/internal/lsdkj/i;-><init>(Lcom/layer/a/c/b$a;Lcom/layer/sdk/internal/lsdkj/i$a;)V

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/layer/sdk/internal/lsdkg/a;->b(Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkj/i;

    move-result-object v0

    if-nez p2, :cond_0

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkj/i;->run()V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->us()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    const-string v1, "FCM"

    invoke-virtual {v0, p0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->I(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/layer/sdk/internal/lsdkg/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FCM token for alternate sender ID \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is null."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Got FCM token from library: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/layer/sdk/internal/lsdkg/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v2, "Failed to get FCM token for alternate sender ID. Instance ID service will register once it becomes available."

    invoke-static {v1, v2, v0}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()Z
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkg/a;->b:Lcom/layer/sdk/internal/a;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/a;->r()Lcom/layer/sdk/internal/b;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdkg/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Skipping FCM registration since a session is not available."

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private e()V
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdkg/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "FCM token is null. Instance ID service will register once it becomes available."

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private f()V
    .locals 4

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkg/a;->b:Lcom/layer/sdk/internal/a;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/a;->r()Lcom/layer/sdk/internal/b;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkg/a;->d:Lcom/layer/sdk/internal/lsdkk/g;

    if-nez v1, :cond_0

    new-instance v1, Lcom/layer/sdk/internal/lsdkk/g;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkg/a;->b:Lcom/layer/sdk/internal/a;

    invoke-virtual {v2}, Lcom/layer/sdk/internal/a;->e()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/layer/sdk/internal/b;->d()Ljava/util/UUID;

    move-result-object v0

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkg/a;->b:Lcom/layer/sdk/internal/a;

    invoke-virtual {v3}, Lcom/layer/sdk/internal/a;->D()I

    move-result v3

    invoke-direct {v1, v2, v0, v3}, Lcom/layer/sdk/internal/lsdkk/g;-><init>(Landroid/content/Context;Ljava/util/UUID;I)V

    iput-object v1, p0, Lcom/layer/sdk/internal/lsdkg/a;->d:Lcom/layer/sdk/internal/lsdkk/g;

    :cond_0
    return-void
.end method

.method private static g()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->us()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->uv()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/layer/sdk/internal/lsdkg/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v2, "Default FCM token is null."

    invoke-static {v1, v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Got FCM token from library: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->b(Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method static synthetic wu()Lcom/layer/sdk/internal/lsdkk/k$a;
    .locals 1

    sget-object v0, Lcom/layer/sdk/internal/lsdkg/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdkg/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdkg/a;->f()V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkg/a;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/layer/sdk/internal/lsdkg/a;->g()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/layer/sdk/internal/lsdkg/a;->a(Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkg/a;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkg/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public b()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkg/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdkg/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Deleting all FCM tokens"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->us()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->uu()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/layer/sdk/internal/lsdkg/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Deleting FCM token for alternate sender ID"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->us()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkg/a;->c:Ljava/lang/String;

    const-string v2, "FCM"

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    if-ne v3, v4, :cond_4

    new-instance v0, Ljava/io/IOException;

    const-string v1, "MAIN_THREAD"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/layer/sdk/internal/lsdkg/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v2, "Error when deleting FCM token"

    invoke-static {v1, v2, v0}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    :try_start_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "delete"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/firebase/iid/FirebaseInstanceId;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->beJ:Lcom/google/firebase/iid/b;

    const-string v3, ""

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/firebase/iid/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
