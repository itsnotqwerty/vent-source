.class final Lcom/vent/FrgProfile$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/FrgProfile;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cfr:Lcom/vent/FrgProfile;


# direct methods
.method constructor <init>(Lcom/vent/FrgProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/FrgProfile$3;->cfr:Lcom/vent/FrgProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 4

    iget-object v0, p0, Lcom/vent/FrgProfile$3;->cfr:Lcom/vent/FrgProfile;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/vent/FrgProfile;->S(J)V

    return-void
.end method
