.class final Landroid/support/v4/media/session/MediaControllerCompat$a$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/media/session/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final CB:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/media/session/MediaControllerCompat$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/MediaControllerCompat$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a$b;->CB:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final b(IIIII)V
    .locals 6

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a$b;->CB:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$a;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat$b;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/session/MediaControllerCompat$b;-><init>(IIIII)V

    :cond_0
    return-void
.end method

.method public final du()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a$b;->CB:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$a;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroid/support/v4/media/session/MediaControllerCompat$a;->Cz:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    :cond_0
    return-void
.end method

.method public final dv()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a$b;->CB:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    return-void
.end method

.method public final dw()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a$b;->CB:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    return-void
.end method

.method public final onQueueChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a$b;->CB:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$a;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->i(Ljava/util/List;)Ljava/util/List;

    :cond_0
    return-void
.end method

.method public final onSessionDestroyed()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a$b;->CB:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    return-void
.end method

.method public final x(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a$b;->CB:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$a;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroid/support/v4/media/session/MediaControllerCompat$a;->Cz:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->z(Ljava/lang/Object;)Landroid/support/v4/media/session/PlaybackStateCompat;

    :cond_0
    return-void
.end method

.method public final y(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a$b;->CB:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$a;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/support/v4/media/MediaMetadataCompat;->w(Ljava/lang/Object;)Landroid/support/v4/media/MediaMetadataCompat;

    :cond_0
    return-void
.end method
