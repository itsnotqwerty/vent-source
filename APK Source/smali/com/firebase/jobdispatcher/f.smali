.class final Lcom/firebase/jobdispatcher/f;
.super Ljava/lang/Object;


# static fields
.field private static axp:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/firebase/jobdispatcher/f;->axp:Ljava/lang/Boolean;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ap(Z)V
    .locals 1

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method public static d(Landroid/os/Bundle;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/firebase/jobdispatcher/o;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string v0, "FJD.GooglePlayReceiver"

    const-string v1, "No callback received, terminating"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/firebase/jobdispatcher/f;->e(Landroid/os/Bundle;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_0
.end method

.method private static e(Landroid/os/Bundle;)Landroid/util/Pair;
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ParcelClassLoader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/firebase/jobdispatcher/o;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-static {p0}, Lcom/firebase/jobdispatcher/f;->f(Landroid/os/Bundle;)Landroid/os/Parcel;

    move-result-object v6

    :try_start_0
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gtz v0, :cond_0

    const-string v0, "FJD.GooglePlayReceiver"

    const-string v1, "No callback received, terminating"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const v1, 0x4c444e42    # 5.146036E7f

    if-eq v0, v1, :cond_1

    const-string v0, "FJD.GooglePlayReceiver"

    const-string v1, "No callback received, terminating"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    move-object v0, v2

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v7

    const/4 v0, 0x0

    move v4, v0

    move-object v1, v2

    :goto_1
    if-ge v4, v7, :cond_d

    invoke-static {}, Lcom/firebase/jobdispatcher/f;->kF()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :goto_2
    if-eqz v3, :cond_f

    if-nez v1, :cond_2

    const-string v0, "callback"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    instance-of v8, v0, Ljava/lang/String;

    if-eqz v8, :cond_5

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :goto_3
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move-object v1, v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Ljava/lang/String;

    if-nez v3, :cond_4

    const-string v0, "FJD.GooglePlayReceiver"

    const-string v3, "Bad callback received, terminating"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    goto :goto_2

    :cond_4
    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    goto :goto_2

    :cond_5
    instance-of v8, v0, Ljava/lang/Boolean;

    if-eqz v8, :cond_6

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v5, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object v0, v1

    goto :goto_3

    :cond_6
    instance-of v8, v0, Ljava/lang/Integer;

    if-eqz v8, :cond_7

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v5, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v0, v1

    goto :goto_3

    :cond_7
    instance-of v8, v0, Ljava/util/ArrayList;

    if-eqz v8, :cond_8

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v5, v3, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    move-object v0, v1

    goto :goto_3

    :cond_8
    instance-of v8, v0, Landroid/os/Bundle;

    if-eqz v8, :cond_9

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v5, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    move-object v0, v1

    goto :goto_3

    :cond_9
    instance-of v8, v0, Landroid/os/Parcelable;

    if-eqz v8, :cond_f

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v5, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object v0, v1

    goto :goto_3

    :cond_a
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_b

    const-string v0, "FJD.GooglePlayReceiver"

    const-string v1, "Bad callback received, terminating"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    move-object v0, v2

    goto/16 :goto_0

    :cond_b
    :try_start_3
    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.gms.gcm.PendingCallback"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "FJD.GooglePlayReceiver"

    const-string v1, "Bad callback received, terminating"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    move-object v0, v2

    goto/16 :goto_0

    :cond_c
    :try_start_4
    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v0, Lcom/firebase/jobdispatcher/h;

    invoke-direct {v0, v1}, Lcom/firebase/jobdispatcher/h;-><init>(Landroid/os/IBinder;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    throw v0

    :cond_d
    if-nez v1, :cond_e

    :try_start_5
    const-string v0, "FJD.GooglePlayReceiver"

    const-string v1, "No callback received, terminating"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    move-object v0, v2

    goto/16 :goto_0

    :cond_e
    :try_start_6
    invoke-static {v1, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v0

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    goto/16 :goto_0

    :cond_f
    move-object v0, v1

    goto/16 :goto_3
.end method

.method private static f(Landroid/os/Bundle;)Landroid/os/Parcel;
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v0
.end method

.method private static declared-synchronized kF()Z
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    const-class v3, Lcom/firebase/jobdispatcher/f;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/firebase/jobdispatcher/f;->axp:Ljava/lang/Boolean;

    if-nez v2, :cond_0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v4, "key"

    const-string v5, "value"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/firebase/jobdispatcher/f;->f(Landroid/os/Bundle;)Landroid/os/Parcel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    :try_start_1
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-lez v2, :cond_1

    move v2, v0

    :goto_0
    invoke-static {v2}, Lcom/firebase/jobdispatcher/f;->ap(Z)V

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const v5, 0x4c444e42    # 5.146036E7f

    if-ne v2, v5, :cond_2

    move v2, v0

    :goto_1
    invoke-static {v2}, Lcom/firebase/jobdispatcher/f;->ap(Z)V

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_3

    :goto_2
    invoke-static {v0}, Lcom/firebase/jobdispatcher/f;->ap(Z)V

    const-string v0, "key"

    invoke-virtual {v4}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/firebase/jobdispatcher/f;->axp:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    :cond_0
    :goto_3
    sget-object v0, Lcom/firebase/jobdispatcher/f;->axp:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    monitor-exit v3

    return v0

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/firebase/jobdispatcher/f;->axp:Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
