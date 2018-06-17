.class final Lcom/vent/p$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/p$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cbv:Lcom/vent/a/x;

.field final synthetic cbw:Lcom/vent/p$a;


# direct methods
.method constructor <init>(Lcom/vent/p$a;Lcom/vent/a/x;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/p$a$1;->cbw:Lcom/vent/p$a;

    iput-object p2, p0, Lcom/vent/p$a$1;->cbv:Lcom/vent/a/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/vent/p$a$1;->cbw:Lcom/vent/p$a;

    iget-object v0, v0, Lcom/vent/p$a;->cbu:Lcom/vent/p;

    iget-object v0, v0, Lcom/vent/p;->bUM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/ActAddChat;

    iget-object v1, p0, Lcom/vent/p$a$1;->cbv:Lcom/vent/a/x;

    invoke-static {v0, v2, v1, v2}, Lcom/vent/ActProfile;->a(Landroid/app/Activity;Landroid/support/v4/app/i;Lcom/vent/a/x;Ljava/util/HashMap;)V

    return-void
.end method
