.class final Lcom/vent/g$d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic cab:Lcom/vent/g;

.field final cac:Lcom/vent/g$f;


# direct methods
.method constructor <init>(Lcom/vent/g;Lcom/vent/g$f;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/g$d;->cab:Lcom/vent/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vent/g$d;->cac:Lcom/vent/g$f;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/vent/g$d;->cab:Lcom/vent/g;

    iget-object v0, v0, Lcom/vent/g;->bUM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/d;

    iget-object v1, p0, Lcom/vent/g$d;->cac:Lcom/vent/g$f;

    iget-object v1, v1, Lcom/vent/g$f;->caf:Lcom/vent/a/x;

    invoke-static {v0, v2, v1, v2}, Lcom/vent/ActProfile;->a(Landroid/app/Activity;Landroid/support/v4/app/i;Lcom/vent/a/x;Ljava/util/HashMap;)V

    return-void
.end method
