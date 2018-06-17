.class final Lcom/vent/i$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/i$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic caJ:Lcom/vent/i$1;


# direct methods
.method constructor <init>(Lcom/vent/i$1;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/i$1$1;->caJ:Lcom/vent/i$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/vent/i$1$1;->caJ:Lcom/vent/i$1;

    iget-object v0, v0, Lcom/vent/i$1;->caI:Lcom/vent/i;

    iget-object v0, v0, Lcom/vent/i;->bUM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/vent/ActChangeEmail;->l(Landroid/app/Activity;)V

    return-void
.end method
