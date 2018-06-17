.class final Lcom/vent/ActSignIn$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActSignIn;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bYm:Lcom/vent/ActSignIn;


# direct methods
.method constructor <init>(Lcom/vent/ActSignIn;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ActSignIn$1;->bYm:Lcom/vent/ActSignIn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/vent/ActSignIn$1;->bYm:Lcom/vent/ActSignIn;

    invoke-virtual {v0}, Lcom/vent/ActSignIn;->Ci()V

    const/4 v0, 0x1

    return v0
.end method
