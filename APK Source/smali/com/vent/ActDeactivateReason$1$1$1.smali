.class final Lcom/vent/ActDeactivateReason$1$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActDeactivateReason$1$1;->aQ(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bUB:Landroid/support/v7/app/c;

.field final synthetic bUC:Lcom/vent/ActDeactivateReason$1$1;


# direct methods
.method constructor <init>(Lcom/vent/ActDeactivateReason$1$1;Landroid/support/v7/app/c;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ActDeactivateReason$1$1$1;->bUC:Lcom/vent/ActDeactivateReason$1$1;

    iput-object p2, p0, Lcom/vent/ActDeactivateReason$1$1$1;->bUB:Landroid/support/v7/app/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/vent/ActDeactivateReason$1$1$1;->bUB:Landroid/support/v7/app/c;

    invoke-static {v0}, Lcom/vent/d/c;->a(Landroid/support/v7/app/l;)V

    iget-object v0, p0, Lcom/vent/ActDeactivateReason$1$1$1;->bUC:Lcom/vent/ActDeactivateReason$1$1;

    iget-object v0, v0, Lcom/vent/ActDeactivateReason$1$1;->bUA:Lcom/vent/ActDeactivateReason$1;

    iget-object v0, v0, Lcom/vent/ActDeactivateReason$1;->bUz:Lcom/vent/ActDeactivateReason;

    invoke-virtual {v0}, Lcom/vent/ActDeactivateReason;->finish()V

    return-void
.end method
