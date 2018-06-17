.class Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputInjector$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputInjector;->getToolbar(Landroid/view/ViewGroup;)Landroid/support/v7/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputInjector;

.field final synthetic val$searchView:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputInjector;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputInjector$2;->this$0:Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputInjector;

    iput-object p2, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputInjector$2;->val$searchView:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputInjector$2;->val$searchView:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
