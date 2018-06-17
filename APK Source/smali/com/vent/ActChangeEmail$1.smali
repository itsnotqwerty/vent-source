.class final Lcom/vent/ActChangeEmail$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActChangeEmail;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bTU:Lcom/vent/ActChangeEmail;


# direct methods
.method constructor <init>(Lcom/vent/ActChangeEmail;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ActChangeEmail$1;->bTU:Lcom/vent/ActChangeEmail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/vent/ActChangeEmail$1;->bTU:Lcom/vent/ActChangeEmail;

    invoke-virtual {v0}, Lcom/vent/ActChangeEmail;->Be()V

    const/4 v0, 0x0

    return v0
.end method
