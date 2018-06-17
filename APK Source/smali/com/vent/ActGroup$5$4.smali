.class final Lcom/vent/ActGroup$5$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActGroup$5;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bWo:Lcom/vent/ActGroup$5;


# direct methods
.method constructor <init>(Lcom/vent/ActGroup$5;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ActGroup$5$4;->bWo:Lcom/vent/ActGroup$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 4

    iget-object v0, p0, Lcom/vent/ActGroup$5$4;->bWo:Lcom/vent/ActGroup$5;

    iget-object v0, v0, Lcom/vent/ActGroup$5;->bWk:Lcom/vent/ActGroup;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/vent/ActGroup;->S(J)V

    return-void
.end method
