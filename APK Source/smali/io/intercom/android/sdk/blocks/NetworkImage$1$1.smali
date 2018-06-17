.class Lio/intercom/android/sdk/blocks/NetworkImage$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/blocks/NetworkImage$1;->onResourceReady(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lio/intercom/a/a/a/g/a/h;Lio/intercom/a/a/a/c/a;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/intercom/android/sdk/blocks/NetworkImage$1;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/blocks/NetworkImage$1;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/NetworkImage$1$1;->this$1:Lio/intercom/android/sdk/blocks/NetworkImage$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/NetworkImage$1$1;->this$1:Lio/intercom/android/sdk/blocks/NetworkImage$1;

    iget-object v0, v0, Lio/intercom/android/sdk/blocks/NetworkImage$1;->val$context:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/NetworkImage$1$1;->this$1:Lio/intercom/android/sdk/blocks/NetworkImage$1;

    iget-object v0, v0, Lio/intercom/android/sdk/blocks/NetworkImage$1;->this$0:Lio/intercom/android/sdk/blocks/NetworkImage;

    invoke-static {v0}, Lio/intercom/android/sdk/blocks/NetworkImage;->access$100(Lio/intercom/android/sdk/blocks/NetworkImage;)Lio/intercom/android/sdk/blocks/ImageClickListener;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/NetworkImage$1$1;->this$1:Lio/intercom/android/sdk/blocks/NetworkImage$1;

    iget-object v1, v1, Lio/intercom/android/sdk/blocks/NetworkImage$1;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/NetworkImage$1$1;->this$1:Lio/intercom/android/sdk/blocks/NetworkImage$1;

    iget-object v2, v2, Lio/intercom/android/sdk/blocks/NetworkImage$1;->val$linkUrl:Ljava/lang/String;

    iget-object v3, p0, Lio/intercom/android/sdk/blocks/NetworkImage$1$1;->this$1:Lio/intercom/android/sdk/blocks/NetworkImage$1;

    iget-object v3, v3, Lio/intercom/android/sdk/blocks/NetworkImage$1;->val$imageView:Lio/intercom/android/sdk/views/ResizableImageView;

    iget-object v4, p0, Lio/intercom/android/sdk/blocks/NetworkImage$1$1;->this$1:Lio/intercom/android/sdk/blocks/NetworkImage$1;

    iget v4, v4, Lio/intercom/android/sdk/blocks/NetworkImage$1;->val$width:I

    iget-object v5, p0, Lio/intercom/android/sdk/blocks/NetworkImage$1$1;->this$1:Lio/intercom/android/sdk/blocks/NetworkImage$1;

    iget v5, v5, Lio/intercom/android/sdk/blocks/NetworkImage$1;->val$height:I

    invoke-interface/range {v0 .. v5}, Lio/intercom/android/sdk/blocks/ImageClickListener;->onImageClicked(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;II)V

    return-void
.end method
