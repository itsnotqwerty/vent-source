.class final Lio/intercom/android/sdk/utilities/AvatarUtils$1;
.super Lio/intercom/a/a/a/g/a/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/utilities/AvatarUtils;->preloadAvatar(Lio/intercom/android/sdk/models/Avatar;Ljava/lang/Runnable;Lio/intercom/a/a/a/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/intercom/a/a/a/g/a/f",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/utilities/AvatarUtils$1;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lio/intercom/a/a/a/g/a/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/utilities/AvatarUtils$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final onResourceReady(Ljava/io/File;Lio/intercom/a/a/a/g/b/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lio/intercom/a/a/a/g/b/d",
            "<-",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/android/sdk/utilities/AvatarUtils$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final bridge synthetic onResourceReady(Ljava/lang/Object;Lio/intercom/a/a/a/g/b/d;)V
    .locals 0

    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lio/intercom/android/sdk/utilities/AvatarUtils$1;->onResourceReady(Ljava/io/File;Lio/intercom/a/a/a/g/b/d;)V

    return-void
.end method
