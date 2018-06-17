.class Lio/intercom/android/sdk/blocks/Video$3;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/g/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/blocks/Video;->createThumbnail(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/g/f",
        "<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/blocks/Video;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$playButton:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/blocks/Video;Landroid/widget/ImageView;Landroid/content/Context;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/Video$3;->this$0:Lio/intercom/android/sdk/blocks/Video;

    iput-object p2, p0, Lio/intercom/android/sdk/blocks/Video$3;->val$playButton:Landroid/widget/ImageView;

    iput-object p3, p0, Lio/intercom/android/sdk/blocks/Video$3;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lio/intercom/android/sdk/blocks/Video$3;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Lio/intercom/a/a/a/c/b/p;Ljava/lang/Object;Lio/intercom/a/a/a/g/a/h;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/c/b/p;",
            "Ljava/lang/Object;",
            "Lio/intercom/a/a/a/g/a/h",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;Z)Z"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/Video$3;->val$playButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x0

    return v0
.end method

.method public onResourceReady(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lio/intercom/a/a/a/g/a/h;Lio/intercom/a/a/a/c/a;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/Object;",
            "Lio/intercom/a/a/a/g/a/h",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Lio/intercom/a/a/a/c/a;",
            "Z)Z"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/Video$3;->val$context:Landroid/content/Context;

    sget v1, Lio/intercom/android/sdk/R$color;->intercom_semi_transparent:I

    invoke-static {v0, v1}, Landroid/support/v4/content/a;->c(Landroid/content/Context;I)I

    move-result v0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/Video$3;->val$imageView:Landroid/widget/ImageView;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/Video$3;->val$playButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    return v3
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lio/intercom/a/a/a/g/a/h;Lio/intercom/a/a/a/c/a;Z)Z
    .locals 6

    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lio/intercom/android/sdk/blocks/Video$3;->onResourceReady(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lio/intercom/a/a/a/g/a/h;Lio/intercom/a/a/a/c/a;Z)Z

    move-result v0

    return v0
.end method
