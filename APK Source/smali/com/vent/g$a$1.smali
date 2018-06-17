.class final Lcom/vent/g$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/g$a;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cad:I

.field final synthetic cae:Lcom/vent/g$a;


# direct methods
.method constructor <init>(Lcom/vent/g$a;I)V
    .locals 0

    iput-object p1, p0, Lcom/vent/g$a$1;->cae:Lcom/vent/g$a;

    iput p2, p0, Lcom/vent/g$a$1;->cad:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/vent/g$a$1;->cae:Lcom/vent/g$a;

    iget-object v0, v0, Lcom/vent/g$a;->bZZ:Lcom/vent/g$b;

    iget-object v1, p0, Lcom/vent/g$a$1;->cae:Lcom/vent/g$a;

    iget-object v1, v1, Lcom/vent/g$a;->cac:Lcom/vent/g$f;

    iget v2, p0, Lcom/vent/g$a$1;->cad:I

    invoke-interface {v0, v1, v2}, Lcom/vent/g$b;->a(Lcom/vent/g$f;I)V

    return-void
.end method
