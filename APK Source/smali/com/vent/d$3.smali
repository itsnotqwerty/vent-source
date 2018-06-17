.class final Lcom/vent/d$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/d;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bWs:Lcom/vent/d;


# direct methods
.method constructor <init>(Lcom/vent/d;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/d$3;->bWs:Lcom/vent/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/vent/d$3;->bWs:Lcom/vent/d;

    iget-object v0, v0, Lcom/vent/d;->bWr:Lcom/vent/aq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/d$3;->bWs:Lcom/vent/d;

    iget-object v0, v0, Lcom/vent/d;->bWr:Lcom/vent/aq;

    invoke-static {v0}, Lcom/vent/d/c;->q(Landroid/support/v4/app/i;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
