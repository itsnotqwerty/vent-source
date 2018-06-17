.class Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;
.super Landroid/os/ResultReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExtraBinderRequestResultReceiver"
.end annotation


# instance fields
.field private CF:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 6

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->CF:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.support.v4.media.session.EXTRA_BINDER"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_3

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    :goto_1
    invoke-static {v1}, Landroid/support/v4/media/session/b$a;->b(Landroid/os/IBinder;)Landroid/support/v4/media/session/b;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->CD:Landroid/support/v4/media/session/b;

    iget-object v1, v0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->CD:Landroid/support/v4/media/session/b;

    if-eqz v1, :cond_0

    iget-object v2, v0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->CC:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v1, v0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->CC:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/session/MediaControllerCompat$a;

    new-instance v4, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$a;

    invoke-direct {v4, v1}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$a;-><init>(Landroid/support/v4/media/session/MediaControllerCompat$a;)V

    iget-object v5, v0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->CE:Ljava/util/HashMap;

    invoke-virtual {v5, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    iput-boolean v5, v1, Landroid/support/v4/media/session/MediaControllerCompat$a;->Cz:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, v0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->CD:Landroid/support/v4/media/session/b;

    invoke-interface {v1, v4}, Landroid/support/v4/media/session/b;->a(Landroid/support/v4/media/session/a;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_2
    const-string v3, "MediaControllerCompat"

    const-string v4, "Dead object in registerCallback."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    iget-object v0, v0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->CC:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_3
    invoke-static {p2, v1}, Landroid/support/v4/app/g$a;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    goto :goto_1
.end method
