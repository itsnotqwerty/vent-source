.class final Lcom/vent/ah$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bTE:I

.field final synthetic bTF:Landroid/content/Intent;

.field final synthetic cej:Lcom/vent/ah;

.field final synthetic we:I


# direct methods
.method constructor <init>(Lcom/vent/ah;IILandroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ah$1;->cej:Lcom/vent/ah;

    iput p2, p0, Lcom/vent/ah$1;->we:I

    iput p3, p0, Lcom/vent/ah$1;->bTE:I

    iput-object p4, p0, Lcom/vent/ah$1;->bTF:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/vent/ah$1;->cej:Lcom/vent/ah;

    iget v1, p0, Lcom/vent/ah$1;->we:I

    iget v2, p0, Lcom/vent/ah$1;->bTE:I

    iget-object v3, p0, Lcom/vent/ah$1;->bTF:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/vent/ah;->b(IILandroid/content/Intent;)V

    return-void
.end method
