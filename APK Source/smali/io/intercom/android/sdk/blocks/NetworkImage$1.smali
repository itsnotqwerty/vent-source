.class Lio/intercom/android/sdk/blocks/NetworkImage$1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/g/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/blocks/NetworkImage;->loadImageFromUrl(Ljava/lang/String;Ljava/lang/String;IILandroid/content/Context;IILio/intercom/android/sdk/views/ResizableImageView;Landroid/widget/ProgressBar;)V
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
.field final synthetic this$0:Lio/intercom/android/sdk/blocks/NetworkImage;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$height:I

.field final synthetic val$imageView:Lio/intercom/android/sdk/views/ResizableImageView;

.field final synthetic val$linkUrl:Ljava/lang/String;

.field final synthetic val$spinner:Landroid/widget/ProgressBar;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/blocks/NetworkImage;Landroid/widget/ProgressBar;Lio/intercom/android/sdk/views/ResizableImageView;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/NetworkImage$1;->this$0:Lio/intercom/android/sdk/blocks/NetworkImage;

    iput-object p2, p0, Lio/intercom/android/sdk/blocks/NetworkImage$1;->val$spinner:Landroid/widget/ProgressBar;

    iput-object p3, p0, Lio/intercom/android/sdk/blocks/NetworkImage$1;->val$imageView:Lio/intercom/android/sdk/views/ResizableImageView;

    iput-object p4, p0, Lio/intercom/android/sdk/blocks/NetworkImage$1;->val$context:Landroid/content/Context;

    iput-object p5, p0, Lio/intercom/android/sdk/blocks/NetworkImage$1;->val$url:Ljava/lang/String;

    iput-object p6, p0, Lio/intercom/android/sdk/blocks/NetworkImage$1;->val$linkUrl:Ljava/lang/String;

    iput p7, p0, Lio/intercom/android/sdk/blocks/NetworkImage$1;->val$width:I

    iput p8, p0, Lio/intercom/android/sdk/blocks/NetworkImage$1;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Lio/intercom/a/a/a/c/b/p;Ljava/lang/Object;Lio/intercom/a/a/a/g/a/h;Z)Z
    .locals 3
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

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/NetworkImage$1;->this$0:Lio/intercom/android/sdk/blocks/NetworkImage;

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/NetworkImage$1;->val$spinner:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/NetworkImage$1;->val$imageView:Lio/intercom/android/sdk/views/ResizableImageView;

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/blocks/NetworkImage;->hideLoadingState(Landroid/widget/ProgressBar;Landroid/widget/ImageView;)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/NetworkImage$1;->this$0:Lio/intercom/android/sdk/blocks/NetworkImage;

    invoke-static {v0}, Lio/intercom/android/sdk/blocks/NetworkImage;->access$000(Lio/intercom/android/sdk/blocks/NetworkImage;)Lio/intercom/android/sdk/twig/Twig;

    move-result-object v0

    const-string v1, "images"

    const-string v2, "FAILURE"

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/twig/Twig;->internal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public onResourceReady(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lio/intercom/a/a/a/g/a/h;Lio/intercom/a/a/a/c/a;Z)Z
    .locals 3
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

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/NetworkImage$1;->this$0:Lio/intercom/android/sdk/blocks/NetworkImage;

    invoke-static {v0}, Lio/intercom/android/sdk/blocks/NetworkImage;->access$000(Lio/intercom/android/sdk/blocks/NetworkImage;)Lio/intercom/android/sdk/twig/Twig;

    move-result-object v0

    const-string v1, "images"

    const-string v2, "SUCCESS"

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/twig/Twig;->internal(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/NetworkImage$1;->this$0:Lio/intercom/android/sdk/blocks/NetworkImage;

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/NetworkImage$1;->val$spinner:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/NetworkImage$1;->val$imageView:Lio/intercom/android/sdk/views/ResizableImageView;

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/blocks/NetworkImage;->hideLoadingState(Landroid/widget/ProgressBar;Landroid/widget/ImageView;)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/NetworkImage$1;->this$0:Lio/intercom/android/sdk/blocks/NetworkImage;

    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/NetworkImage;->getStyle()Lio/intercom/android/sdk/blocks/StyleType;

    move-result-object v0

    sget-object v1, Lio/intercom/android/sdk/blocks/StyleType;->CHAT_FULL:Lio/intercom/android/sdk/blocks/StyleType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/NetworkImage$1;->val$imageView:Lio/intercom/android/sdk/views/ResizableImageView;

    new-instance v1, Lio/intercom/android/sdk/blocks/NetworkImage$1$1;

    invoke-direct {v1, p0}, Lio/intercom/android/sdk/blocks/NetworkImage$1$1;-><init>(Lio/intercom/android/sdk/blocks/NetworkImage$1;)V

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/views/ResizableImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const/4 v0, 0x0

    return v0
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

    invoke-virtual/range {v0 .. v5}, Lio/intercom/android/sdk/blocks/NetworkImage$1;->onResourceReady(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lio/intercom/a/a/a/g/a/h;Lio/intercom/a/a/a/c/a;Z)Z

    move-result v0

    return v0
.end method
