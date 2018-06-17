.class final Landroid/support/design/widget/b$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/design/widget/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic jo:Landroid/support/design/widget/b;


# direct methods
.method constructor <init>(Landroid/support/design/widget/b;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/b$8;->jo:Landroid/support/design/widget/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bl()V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/b$8;->jo:Landroid/support/design/widget/b;

    invoke-static {}, Landroid/support/design/widget/m;->bN()Landroid/support/design/widget/m;

    move-result-object v1

    iget-object v0, v0, Landroid/support/design/widget/b;->jm:Landroid/support/design/widget/m$a;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/m;->c(Landroid/support/design/widget/m$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/support/design/widget/b;->je:Landroid/os/Handler;

    new-instance v1, Landroid/support/design/widget/b$8$1;

    invoke-direct {v1, p0}, Landroid/support/design/widget/b$8$1;-><init>(Landroid/support/design/widget/b$8;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
