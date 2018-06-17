.class final Lcom/vent/ActReport2$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActReport2$1;->aQ(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bXN:Lcom/vent/ActReport2$1;


# direct methods
.method constructor <init>(Lcom/vent/ActReport2$1;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ActReport2$1$1;->bXN:Lcom/vent/ActReport2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/vent/ActReport2$1$1;->bXN:Lcom/vent/ActReport2$1;

    iget-object v0, v0, Lcom/vent/ActReport2$1;->bXM:Lcom/vent/ActReport2;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/vent/ActReport2;->setResult(I)V

    iget-object v0, p0, Lcom/vent/ActReport2$1$1;->bXN:Lcom/vent/ActReport2$1;

    iget-object v0, v0, Lcom/vent/ActReport2$1;->bXM:Lcom/vent/ActReport2;

    invoke-virtual {v0}, Lcom/vent/ActReport2;->finish()V

    return-void
.end method
