.class final Landroid/support/design/widget/b$9;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/design/widget/b$d;


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

    iput-object p1, p0, Landroid/support/design/widget/b$9;->jo:Landroid/support/design/widget/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bm()V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/b$9;->jo:Landroid/support/design/widget/b;

    iget-object v0, v0, Landroid/support/design/widget/b;->jh:Landroid/support/design/widget/b$e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/b$e;->setOnLayoutChangeListener(Landroid/support/design/widget/b$d;)V

    iget-object v0, p0, Landroid/support/design/widget/b$9;->jo:Landroid/support/design/widget/b;

    invoke-virtual {v0}, Landroid/support/design/widget/b;->bj()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/b$9;->jo:Landroid/support/design/widget/b;

    invoke-virtual {v0}, Landroid/support/design/widget/b;->bg()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/b$9;->jo:Landroid/support/design/widget/b;

    invoke-virtual {v0}, Landroid/support/design/widget/b;->bh()V

    goto :goto_0
.end method
