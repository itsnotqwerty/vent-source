.class final Lcom/vent/s$c$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/s$c;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cad:I

.field final synthetic cch:Lcom/vent/s$c;


# direct methods
.method constructor <init>(Lcom/vent/s$c;I)V
    .locals 0

    iput-object p1, p0, Lcom/vent/s$c$2;->cch:Lcom/vent/s$c;

    iput p2, p0, Lcom/vent/s$c$2;->cad:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/vent/s$c$2;->cch:Lcom/vent/s$c;

    iget-object v0, v0, Lcom/vent/s$c;->cbQ:Lcom/vent/s$d;

    iget-object v1, p0, Lcom/vent/s$c$2;->cch:Lcom/vent/s$c;

    iget-object v1, v1, Lcom/vent/s$c;->cce:Lcom/vent/s$g;

    iget v2, p0, Lcom/vent/s$c$2;->cad:I

    invoke-interface {v0, v1, v2}, Lcom/vent/s$d;->a(Lcom/vent/s$g;I)V

    return-void
.end method
