.class final Lcom/vent/ActRegister1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActRegister1;->Cc()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bTM:Landroid/support/v7/app/c;

.field final synthetic bXu:Lcom/vent/ActRegister1;


# direct methods
.method constructor <init>(Lcom/vent/ActRegister1;Landroid/support/v7/app/c;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ActRegister1$1;->bXu:Lcom/vent/ActRegister1;

    iput-object p2, p0, Lcom/vent/ActRegister1$1;->bTM:Landroid/support/v7/app/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/vent/ActRegister1$1;->bXu:Lcom/vent/ActRegister1;

    invoke-virtual {v0}, Lcom/vent/ActRegister1;->Cd()V

    iget-object v0, p0, Lcom/vent/ActRegister1$1;->bTM:Landroid/support/v7/app/c;

    invoke-static {v0}, Lcom/vent/d/c;->a(Landroid/support/v7/app/l;)V

    return-void
.end method
