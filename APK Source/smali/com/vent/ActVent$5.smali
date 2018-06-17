.class final Lcom/vent/ActVent$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActVent;->aR(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bZn:Lcom/vent/ActVent;


# direct methods
.method constructor <init>(Lcom/vent/ActVent;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ActVent$5;->bZn:Lcom/vent/ActVent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/vent/ActVent$5;->bZn:Lcom/vent/ActVent;

    invoke-static {v0}, Lcom/vent/ax;->bl(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/vent/ActVent$5;->bZn:Lcom/vent/ActVent;

    iget-object v0, v0, Lcom/vent/ActVent;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActVent$5;->bZn:Lcom/vent/ActVent;

    iget-object v0, v0, Lcom/vent/ActVent;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/vent/bb;->ea(Ljava/lang/String;)V

    invoke-static {}, Lcom/vent/bb;->EA()V

    iget-object v0, p0, Lcom/vent/ActVent$5;->bZn:Lcom/vent/ActVent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vent/ActVent;->aT(Z)V

    return-void
.end method
