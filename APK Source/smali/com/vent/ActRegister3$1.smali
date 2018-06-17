.class final Lcom/vent/ActRegister3$1;
.super Lcom/vent/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActRegister3;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bXy:Lcom/vent/ActRegister3;


# direct methods
.method constructor <init>(Lcom/vent/ActRegister3;Lcom/vent/a;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ActRegister3$1;->bXy:Lcom/vent/ActRegister3;

    invoke-direct {p0, p2}, Lcom/vent/j;-><init>(Lcom/vent/a;)V

    return-void
.end method


# virtual methods
.method protected final AZ()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/vent/ActRegister3$1;->bXy:Lcom/vent/ActRegister3;

    invoke-virtual {v0, v1, v1}, Lcom/vent/ActRegister3;->f(ZZ)V

    return-void
.end method
