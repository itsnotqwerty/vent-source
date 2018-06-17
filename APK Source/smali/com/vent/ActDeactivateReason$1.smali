.class final Lcom/vent/ActDeactivateReason$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActDeactivateReason;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bUy:I

.field final synthetic bUz:Lcom/vent/ActDeactivateReason;


# direct methods
.method constructor <init>(Lcom/vent/ActDeactivateReason;I)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ActDeactivateReason$1;->bUz:Lcom/vent/ActDeactivateReason;

    iput p2, p0, Lcom/vent/ActDeactivateReason$1;->bUy:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    new-instance v0, Lcom/vent/ActDeactivateReason$1$1;

    iget-object v1, p0, Lcom/vent/ActDeactivateReason$1;->bUz:Lcom/vent/ActDeactivateReason;

    const-string v2, "api/v1/my/user.json"

    const-string v3, "DELETE"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/vent/ActDeactivateReason$1$1;-><init>(Lcom/vent/ActDeactivateReason$1;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    return-void
.end method
