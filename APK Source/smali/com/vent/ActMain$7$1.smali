.class final Lcom/vent/ActMain$7$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActMain$7;->aQ(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bXb:Lcom/vent/ActMain$7;


# direct methods
.method constructor <init>(Lcom/vent/ActMain$7;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ActMain$7$1;->bXb:Lcom/vent/ActMain$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/vent/ActMain$7$1;->bXb:Lcom/vent/ActMain$7;

    iget-object v0, v0, Lcom/vent/ActMain$7;->bXa:Lcom/vent/ActMain;

    invoke-virtual {v0}, Lcom/vent/ActMain;->BK()V

    iget-object v0, p0, Lcom/vent/ActMain$7$1;->bXb:Lcom/vent/ActMain$7;

    iget-object v0, v0, Lcom/vent/ActMain$7;->bXa:Lcom/vent/ActMain;

    invoke-virtual {v0}, Lcom/vent/ActMain;->finish()V

    return-void
.end method
