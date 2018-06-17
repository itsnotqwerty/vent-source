.class final Lcom/vent/ActEditProfile$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActEditProfile;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bUW:Lcom/vent/ActEditProfile;


# direct methods
.method constructor <init>(Lcom/vent/ActEditProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ActEditProfile$3;->bUW:Lcom/vent/ActEditProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/vent/ActEditProfile$3;->bUW:Lcom/vent/ActEditProfile;

    const v1, 0x7f0f0121

    invoke-static {v0, v1}, Lcom/vent/d/c;->v(Landroid/content/Context;I)Landroid/support/v7/app/c;

    move-result-object v0

    iget-object v1, p0, Lcom/vent/ActEditProfile$3;->bUW:Lcom/vent/ActEditProfile;

    const/4 v2, 0x0

    new-instance v3, Lcom/vent/ActEditProfile$3$1;

    invoke-direct {v3, p0, v0}, Lcom/vent/ActEditProfile$3$1;-><init>(Lcom/vent/ActEditProfile$3;Landroid/support/v7/app/c;)V

    invoke-static {v1, v2, v3}, Lcom/vent/bb;->a(Landroid/content/Context;ZLjava/lang/Runnable;)V

    return-void
.end method
