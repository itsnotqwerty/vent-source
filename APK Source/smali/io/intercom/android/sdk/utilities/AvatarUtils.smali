.class public Lio/intercom/android/sdk/utilities/AvatarUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAvatar(Lio/intercom/android/sdk/models/Avatar;Landroid/widget/ImageView;ILio/intercom/android/sdk/identity/AppConfig;Lio/intercom/a/a/a/j;)V
    .locals 3

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lio/intercom/android/sdk/models/Avatar;->getInitials()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0, p3}, Lio/intercom/android/sdk/utilities/AvatarUtils;->getDefaultDrawable(Landroid/content/Context;Lio/intercom/android/sdk/identity/AppConfig;)Lio/intercom/android/sdk/views/AvatarDefaultDrawable;

    move-result-object v0

    :goto_0
    new-instance v1, Lio/intercom/a/a/a/g/g;

    invoke-direct {v1}, Lio/intercom/a/a/a/g/g;-><init>()V

    invoke-virtual {v1, v0}, Lio/intercom/a/a/a/g/g;->o(Landroid/graphics/drawable/Drawable;)Lio/intercom/a/a/a/g/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/intercom/a/a/a/g/g;->p(Landroid/graphics/drawable/Drawable;)Lio/intercom/a/a/a/g/g;

    move-result-object v0

    invoke-virtual {p0}, Lio/intercom/android/sdk/models/Avatar;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/intercom/android/sdk/utilities/ImageUtils;->getDiskCacheStrategy(Ljava/lang/String;)Lio/intercom/a/a/a/c/b/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/a/a/a/g/g;->b(Lio/intercom/a/a/a/c/b/i;)Lio/intercom/a/a/a/g/g;

    move-result-object v0

    new-instance v1, Lio/intercom/android/sdk/transforms/RoundTransform;

    invoke-direct {v1}, Lio/intercom/android/sdk/transforms/RoundTransform;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lio/intercom/a/a/a/g/g;->a(Lio/intercom/a/a/a/c/m;Z)Lio/intercom/a/a/a/g/g;

    move-result-object v0

    if-lez p2, :cond_0

    invoke-virtual {v0, p2, p2}, Lio/intercom/a/a/a/g/g;->aO(II)Lio/intercom/a/a/a/g/g;

    move-result-object v0

    :cond_0
    invoke-virtual {p0}, Lio/intercom/android/sdk/models/Avatar;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Lio/intercom/a/a/a/j;->eT(Ljava/lang/String;)Lio/intercom/a/a/a/i;

    move-result-object v1

    invoke-static {}, Lio/intercom/a/a/a/c/d/c/c;->Ji()Lio/intercom/a/a/a/c/d/c/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/intercom/a/a/a/i;->a(Lio/intercom/a/a/a/k;)Lio/intercom/a/a/a/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/intercom/a/a/a/i;->a(Lio/intercom/a/a/a/g/g;)Lio/intercom/a/a/a/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/intercom/a/a/a/i;->c(Landroid/widget/ImageView;)Lio/intercom/a/a/a/g/a/i;

    return-void

    :cond_1
    invoke-virtual {p0}, Lio/intercom/android/sdk/models/Avatar;->getInitials()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lio/intercom/android/sdk/utilities/AvatarUtils;->getInitialsDrawable(Ljava/lang/String;Lio/intercom/android/sdk/identity/AppConfig;)Lio/intercom/android/sdk/views/AvatarInitialsDrawable;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDefaultDrawable(Landroid/content/Context;Lio/intercom/android/sdk/identity/AppConfig;)Lio/intercom/android/sdk/views/AvatarDefaultDrawable;
    .locals 2

    new-instance v0, Lio/intercom/android/sdk/views/AvatarDefaultDrawable;

    invoke-virtual {p1}, Lio/intercom/android/sdk/identity/AppConfig;->getBaseColorDark()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lio/intercom/android/sdk/views/AvatarDefaultDrawable;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static getInitialsDrawable(Ljava/lang/String;Lio/intercom/android/sdk/identity/AppConfig;)Lio/intercom/android/sdk/views/AvatarInitialsDrawable;
    .locals 3

    new-instance v0, Lio/intercom/android/sdk/views/AvatarInitialsDrawable;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/intercom/android/sdk/identity/AppConfig;->getBaseColorDark()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/views/AvatarInitialsDrawable;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static loadAvatarIntoView(Lio/intercom/android/sdk/models/Avatar;Landroid/widget/ImageView;Lio/intercom/android/sdk/identity/AppConfig;Lio/intercom/a/a/a/j;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lio/intercom/android/sdk/utilities/AvatarUtils;->createAvatar(Lio/intercom/android/sdk/models/Avatar;Landroid/widget/ImageView;ILio/intercom/android/sdk/identity/AppConfig;Lio/intercom/a/a/a/j;)V

    return-void
.end method

.method public static preloadAvatar(Lio/intercom/android/sdk/models/Avatar;Ljava/lang/Runnable;Lio/intercom/a/a/a/j;)V
    .locals 3

    invoke-virtual {p0}, Lio/intercom/android/sdk/models/Avatar;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    const-class v0, Ljava/io/File;

    invoke-virtual {p2, v0}, Lio/intercom/a/a/a/j;->x(Ljava/lang/Class;)Lio/intercom/a/a/a/i;

    move-result-object v0

    sget-object v1, Lio/intercom/a/a/a/j;->cGg:Lio/intercom/a/a/a/g/g;

    invoke-virtual {v0, v1}, Lio/intercom/a/a/a/i;->a(Lio/intercom/a/a/a/g/g;)Lio/intercom/a/a/a/i;

    move-result-object v0

    invoke-virtual {p0}, Lio/intercom/android/sdk/models/Avatar;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/a/a/a/i;->aq(Ljava/lang/Object;)Lio/intercom/a/a/a/i;

    move-result-object v0

    new-instance v1, Lio/intercom/android/sdk/utilities/AvatarUtils$1;

    invoke-direct {v1, p1}, Lio/intercom/android/sdk/utilities/AvatarUtils$1;-><init>(Ljava/lang/Runnable;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lio/intercom/a/a/a/i;->a(Lio/intercom/a/a/a/g/a/h;Lio/intercom/a/a/a/g/f;)Lio/intercom/a/a/a/g/a/h;

    goto :goto_0
.end method
