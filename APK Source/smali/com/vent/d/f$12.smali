.class final Lcom/vent/d/f$12;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/d/f;->a(Landroid/support/v7/app/d;Lcom/vent/a/z;Ljava/lang/Runnable;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic bXk:Landroid/support/v7/app/d;

.field final synthetic bZz:Lcom/vent/a/z;

.field final synthetic cnO:Ljava/lang/Runnable;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/support/v7/app/d;Ljava/lang/String;Ljava/lang/Runnable;Lcom/vent/a/z;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/d/f$12;->bXk:Landroid/support/v7/app/d;

    iput-object p2, p0, Lcom/vent/d/f$12;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/vent/d/f$12;->cnO:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/vent/d/f$12;->bZz:Lcom/vent/a/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    new-instance v0, Lcom/vent/d/f$12$1;

    iget-object v2, p0, Lcom/vent/d/f$12;->bXk:Landroid/support/v7/app/d;

    iget-object v3, p0, Lcom/vent/d/f$12;->val$url:Ljava/lang/String;

    const-string v4, "DELETE"

    iget-object v1, p0, Lcom/vent/d/f$12;->cnO:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    const v5, 0x7f0f0047

    :goto_0
    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/vent/d/f$12$1;-><init>(Lcom/vent/d/f$12;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    return-void

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method
