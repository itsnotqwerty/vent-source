.class final Lcom/intercom/composer/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/intercom/composer/b/c/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intercom/composer/b;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bkJ:Lcom/intercom/composer/b;


# direct methods
.method constructor <init>(Lcom/intercom/composer/b;)V
    .locals 0

    iput-object p1, p0, Lcom/intercom/composer/b$2;->bkJ:Lcom/intercom/composer/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final q(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/intercom/composer/b$2;->bkJ:Lcom/intercom/composer/b;

    iget-object v0, v0, Lcom/intercom/composer/b;->bkD:Lcom/intercom/composer/ComposerView;

    invoke-virtual {v0}, Lcom/intercom/composer/ComposerView;->getSelectedInput()Lcom/intercom/composer/b/b;

    move-result-object v0

    instance-of v1, v0, Lcom/intercom/composer/b/c/b;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/intercom/composer/b/c/b;

    invoke-virtual {v0, p1}, Lcom/intercom/composer/b/c/b;->sendTextBack(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
