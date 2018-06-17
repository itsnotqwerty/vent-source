.class final Lcom/vent/ag$a$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ag$a$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bUB:Landroid/support/v7/app/c;

.field final synthetic bUy:I

.field final synthetic cdZ:Lcom/vent/ActMain;

.field final synthetic cee:Lcom/vent/ag$a$a;


# direct methods
.method constructor <init>(Lcom/vent/ag$a$a;Lcom/vent/ActMain;Landroid/support/v7/app/c;I)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ag$a$a$1;->cee:Lcom/vent/ag$a$a;

    iput-object p2, p0, Lcom/vent/ag$a$a$1;->cdZ:Lcom/vent/ActMain;

    iput-object p3, p0, Lcom/vent/ag$a$a$1;->bUB:Landroid/support/v7/app/c;

    iput p4, p0, Lcom/vent/ag$a$a$1;->bUy:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/vent/ag$a$a$1;->cdZ:Lcom/vent/ActMain;

    invoke-virtual {v0}, Lcom/vent/ActMain;->clearAll()V

    iget-object v0, p0, Lcom/vent/ag$a$a$1;->bUB:Landroid/support/v7/app/c;

    invoke-static {v0}, Lcom/vent/d/c;->a(Landroid/support/v7/app/l;)V

    iget-object v0, p0, Lcom/vent/ag$a$a$1;->cee:Lcom/vent/ag$a$a;

    iget-object v0, v0, Lcom/vent/ag$a$a;->cec:Lcom/vent/ag$a;

    iget-object v0, v0, Lcom/vent/ag$a;->ceb:Ljava/util/ArrayList;

    iget v1, p0, Lcom/vent/ag$a$a$1;->bUy:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/ag$b;

    iget-object v0, v0, Lcom/vent/ag$b;->file:Ljava/io/File;

    iget-object v1, p0, Lcom/vent/ag$a$a$1;->cdZ:Lcom/vent/ActMain;

    invoke-static {v1, v0}, Lcom/vent/ag;->a(Lcom/vent/ActMain;Ljava/io/File;)V

    return-void
.end method
