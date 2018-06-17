.class final Lcom/google/firebase/iid/aa;
.super Ljava/lang/Object;


# static fields
.field private static bfD:I

.field private static bfK:Landroid/app/PendingIntent;


# instance fields
.field private final aUM:Landroid/content/Context;

.field private final beM:Lcom/google/firebase/iid/z;

.field private final bfL:Landroid/support/v4/g/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/m",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/c/f",
            "<",
            "Landroid/os/Bundle;",
            ">;>;"
        }
    .end annotation
.end field

.field private bfM:Landroid/os/Messenger;

.field private bfN:Landroid/os/Messenger;

.field private bfO:Lcom/google/firebase/iid/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/google/firebase/iid/aa;->bfD:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/firebase/iid/z;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/g/m;

    invoke-direct {v0}, Landroid/support/v4/g/m;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/iid/aa;->bfL:Landroid/support/v4/g/m;

    iput-object p1, p0, Lcom/google/firebase/iid/aa;->aUM:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/firebase/iid/aa;->beM:Lcom/google/firebase/iid/z;

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/google/firebase/iid/ab;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/firebase/iid/ab;-><init>(Lcom/google/firebase/iid/aa;Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/firebase/iid/aa;->bfM:Landroid/os/Messenger;

    return-void
.end method

.method static synthetic a(Lcom/google/firebase/iid/aa;Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x3

    if-eqz p1, :cond_9

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/content/Intent;

    if-eqz v0, :cond_9

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    new-instance v1, Lcom/google/firebase/iid/m$a;

    invoke-direct {v1}, Lcom/google/firebase/iid/m$a;-><init>()V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "google.messenger"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "google.messenger"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    instance-of v0, v1, Lcom/google/firebase/iid/m;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/google/firebase/iid/m;

    iput-object v0, p0, Lcom/google/firebase/iid/aa;->bfO:Lcom/google/firebase/iid/m;

    :cond_0
    instance-of v0, v1, Landroid/os/Messenger;

    if-eqz v0, :cond_1

    check-cast v1, Landroid/os/Messenger;

    iput-object v1, p0, Lcom/google/firebase/iid/aa;->bfN:Landroid/os/Messenger;

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v0, "FirebaseInstanceId"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v2, "FirebaseInstanceId"

    const-string v3, "Unexpected response action: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v1, "registration_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    const-string v1, "unregistered"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_5
    if-nez v1, :cond_6

    invoke-direct {p0, v0}, Lcom/google/firebase/iid/aa;->e(Landroid/content/Intent;)V

    goto :goto_1

    :cond_6
    const-string v2, "\\|ID\\|([^|]+)\\|:?+(.*)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_8

    const-string v0, "FirebaseInstanceId"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v2, "FirebaseInstanceId"

    const-string v3, "Unexpected response string: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "registration_id"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Lcom/google/firebase/iid/aa;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_9
    const-string v0, "FirebaseInstanceId"

    const-string v1, "Dropping invalid message"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private final b(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    iget-object v1, p0, Lcom/google/firebase/iid/aa;->bfL:Landroid/support/v4/g/m;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/iid/aa;->bfL:Landroid/support/v4/g/m;

    invoke-virtual {v0, p1}, Landroid/support/v4/g/m;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/c/f;

    if-nez v0, :cond_1

    const-string v2, "FirebaseInstanceId"

    const-string v3, "Missing callback for "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    :goto_1
    return-void

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    invoke-virtual {v0, p2}, Lcom/google/android/gms/c/f;->N(Ljava/lang/Object;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private static declared-synchronized c(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-class v1, Lcom/google/firebase/iid/aa;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/firebase/iid/aa;->bfK:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.google.example.invalidpackage"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/iid/aa;->bfK:Landroid/app/PendingIntent;

    :cond_0
    const-string v0, "app"

    sget-object v2, Lcom/google/firebase/iid/aa;->bfK:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private final e(Landroid/content/Intent;)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const-string v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "FirebaseInstanceId"

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x31

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected response, no error or registration id "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "FirebaseInstanceId"

    invoke-static {v0, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v2, "FirebaseInstanceId"

    const-string v3, "Received InstanceID error "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "\\|"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    if-le v2, v6, :cond_2

    const-string v2, "ID"

    aget-object v3, v0, v5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_2
    const-string v2, "FirebaseInstanceId"

    const-string v3, "Unexpected structured response "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    aget-object v1, v0, v6

    aget-object v0, v0, v7

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_6
    const-string v2, "error"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/google/firebase/iid/aa;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/google/firebase/iid/aa;->bfL:Landroid/support/v4/g/m;

    monitor-enter v2

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/iid/aa;->bfL:Landroid/support/v4/g/m;

    invoke-virtual {v0}, Landroid/support/v4/g/m;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    iget-object v0, p0, Lcom/google/firebase/iid/aa;->bfL:Landroid/support/v4/g/m;

    invoke-virtual {v0, v1}, Landroid/support/v4/g/m;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/google/firebase/iid/aa;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_8
    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final n(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/firebase/iid/aa;->o(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "google.messenger"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/google/firebase/iid/aa;->o(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "google.messenger"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method private final o(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x3

    const/4 v7, 0x2

    invoke-static {}, Lcom/google/firebase/iid/aa;->uV()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/google/android/gms/c/f;

    invoke-direct {v0}, Lcom/google/android/gms/c/f;-><init>()V

    iget-object v2, p0, Lcom/google/firebase/iid/aa;->bfL:Landroid/support/v4/g/m;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/google/firebase/iid/aa;->bfL:Landroid/support/v4/g/m;

    invoke-virtual {v3, v1, v0}, Landroid/support/v4/g/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/google/firebase/iid/aa;->beM:Lcom/google/firebase/iid/z;

    invoke-virtual {v2}, Lcom/google/firebase/iid/z;->uQ()I

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "MISSING_INSTANCEID_SERVICE"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.google.android.gms"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/firebase/iid/aa;->beM:Lcom/google/firebase/iid/z;

    invoke-virtual {v3}, Lcom/google/firebase/iid/z;->uQ()I

    move-result v3

    if-ne v3, v7, :cond_3

    const-string v3, "com.google.iid.TOKEN_REQUEST"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    invoke-virtual {v2, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/firebase/iid/aa;->aUM:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/google/firebase/iid/aa;->c(Landroid/content/Context;Landroid/content/Intent;)V

    const-string v3, "kid"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "|ID|"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "FirebaseInstanceId"

    invoke-static {v3, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "FirebaseInstanceId"

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Sending "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v3, "google.messenger"

    iget-object v4, p0, Lcom/google/firebase/iid/aa;->bfM:Landroid/os/Messenger;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/firebase/iid/aa;->bfN:Landroid/os/Messenger;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/google/firebase/iid/aa;->bfO:Lcom/google/firebase/iid/m;

    if-eqz v3, :cond_5

    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    :try_start_2
    iget-object v4, p0, Lcom/google/firebase/iid/aa;->bfN:Landroid/os/Messenger;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/google/firebase/iid/aa;->bfN:Landroid/os/Messenger;

    invoke-virtual {v4, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    :try_start_3
    iget-object v0, v0, Lcom/google/android/gms/c/f;->bdU:Lcom/google/android/gms/c/r;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v3, "Must not be called on the main application thread"

    invoke-static {v3}, Lcom/google/android/gms/common/internal/ae;->bh(Ljava/lang/String;)V

    const-string v3, "Task must not be null"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/ae;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "TimeUnit must not be null"

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ae;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/c/e;->isComplete()Z

    move-result v3

    if-nez v3, :cond_7

    new-instance v3, Lcom/google/android/gms/c/h$a;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/android/gms/c/h$a;-><init>(B)V

    invoke-static {v0, v3}, Lcom/google/android/gms/c/h;->a(Lcom/google/android/gms/c/e;Lcom/google/android/gms/c/h$b;)V

    iget-object v3, v3, Lcom/google/android/gms/c/h$a;->aDl:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v4, 0x7530

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_7

    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string v2, "Timed out waiting for Task"

    invoke-direct {v0, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-exception v0

    :goto_2
    :try_start_4
    const-string v0, "FirebaseInstanceId"

    const-string v2, "No response"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/IOException;

    const-string v2, "TIMEOUT"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    iget-object v2, p0, Lcom/google/firebase/iid/aa;->bfL:Landroid/support/v4/g/m;

    monitor-enter v2

    :try_start_5
    iget-object v3, p0, Lcom/google/firebase/iid/aa;->bfL:Landroid/support/v4/g/m;

    invoke-virtual {v3, v1}, Landroid/support/v4/g/m;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    :cond_3
    const-string v3, "com.google.android.c2dm.intent.REGISTER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_4
    :try_start_6
    iget-object v4, p0, Lcom/google/firebase/iid/aa;->bfO:Lcom/google/firebase/iid/m;

    invoke-virtual {v4, v3}, Lcom/google/firebase/iid/m;->send(Landroid/os/Message;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    const-string v3, "FirebaseInstanceId"

    invoke-static {v3, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "FirebaseInstanceId"

    const-string v4, "Messenger failed, fallback to startService"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v3, p0, Lcom/google/firebase/iid/aa;->beM:Lcom/google/firebase/iid/z;

    invoke-virtual {v3}, Lcom/google/firebase/iid/z;->uQ()I

    move-result v3

    if-ne v3, v7, :cond_6

    iget-object v3, p0, Lcom/google/firebase/iid/aa;->aUM:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/google/firebase/iid/aa;->aUM:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    :cond_7
    :try_start_7
    invoke-static {v0}, Lcom/google/android/gms/c/h;->b(Lcom/google/android/gms/c/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    iget-object v2, p0, Lcom/google/firebase/iid/aa;->bfL:Landroid/support/v4/g/m;

    monitor-enter v2

    :try_start_8
    iget-object v3, p0, Lcom/google/firebase/iid/aa;->bfL:Landroid/support/v4/g/m;

    invoke-virtual {v3, v1}, Landroid/support/v4/g/m;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    return-object v0

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    :catch_2
    move-exception v0

    :try_start_9
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_3
    move-exception v0

    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v0

    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method private static declared-synchronized uV()Ljava/lang/String;
    .locals 3

    const-class v1, Lcom/google/firebase/iid/aa;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/google/firebase/iid/aa;->bfD:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lcom/google/firebase/iid/aa;->bfD:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method final m(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/iid/aa;->beM:Lcom/google/firebase/iid/z;

    invoke-virtual {v0}, Lcom/google/firebase/iid/z;->uT()I

    move-result v0

    const v1, 0xb71b00

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/firebase/iid/aa;->aUM:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/iid/o;->ao(Landroid/content/Context;)Lcom/google/firebase/iid/o;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/iid/y;

    invoke-virtual {v0}, Lcom/google/firebase/iid/o;->uL()I

    move-result v2

    invoke-direct {v1, v2, p1}, Lcom/google/firebase/iid/y;-><init>(ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/o;->a(Lcom/google/firebase/iid/w;)Lcom/google/android/gms/c/e;

    move-result-object v0

    :try_start_0
    const-string v1, "Must not be called on the main application thread"

    invoke-static {v1}, Lcom/google/android/gms/common/internal/ae;->bh(Ljava/lang/String;)V

    const-string v1, "Task must not be null"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/ae;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/c/e;->isComplete()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/c/h;->b(Lcom/google/android/gms/c/e;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Landroid/os/Bundle;

    :goto_1
    return-object v0

    :cond_0
    new-instance v1, Lcom/google/android/gms/c/h$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/c/h$a;-><init>(B)V

    invoke-static {v0, v1}, Lcom/google/android/gms/c/h;->a(Lcom/google/android/gms/c/e;Lcom/google/android/gms/c/h$b;)V

    iget-object v1, v1, Lcom/google/android/gms/c/h$a;->aDl:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    invoke-static {v0}, Lcom/google/android/gms/c/h;->b(Lcom/google/android/gms/c/e;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_2
    const-string v1, "FirebaseInstanceId"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "FirebaseInstanceId"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x16

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Error making request: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lcom/google/firebase/iid/x;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/iid/x;

    iget v0, v0, Lcom/google/firebase/iid/x;->aCs:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p1}, Lcom/google/firebase/iid/aa;->n(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/google/firebase/iid/aa;->n(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2
.end method
