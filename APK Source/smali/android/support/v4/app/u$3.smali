.class final Landroid/support/v4/app/u$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic tL:Landroid/graphics/Rect;

.field final synthetic yH:Landroid/support/v4/app/w;

.field final synthetic yJ:Landroid/support/v4/app/i;

.field final synthetic yK:Landroid/support/v4/app/i;

.field final synthetic yL:Z

.field final synthetic yM:Landroid/support/v4/g/a;

.field final synthetic yN:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/v4/app/i;Landroid/support/v4/app/i;ZLandroid/support/v4/g/a;Landroid/view/View;Landroid/support/v4/app/w;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/u$3;->yJ:Landroid/support/v4/app/i;

    iput-object p2, p0, Landroid/support/v4/app/u$3;->yK:Landroid/support/v4/app/i;

    iput-boolean p3, p0, Landroid/support/v4/app/u$3;->yL:Z

    iput-object p4, p0, Landroid/support/v4/app/u$3;->yM:Landroid/support/v4/g/a;

    iput-object p5, p0, Landroid/support/v4/app/u$3;->yN:Landroid/view/View;

    iput-object p6, p0, Landroid/support/v4/app/u$3;->yH:Landroid/support/v4/app/w;

    iput-object p7, p0, Landroid/support/v4/app/u$3;->tL:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroid/support/v4/app/u$3;->yJ:Landroid/support/v4/app/i;

    iget-object v1, p0, Landroid/support/v4/app/u$3;->yK:Landroid/support/v4/app/i;

    iget-boolean v2, p0, Landroid/support/v4/app/u$3;->yL:Z

    iget-object v3, p0, Landroid/support/v4/app/u$3;->yM:Landroid/support/v4/g/a;

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/app/u;->b(Landroid/support/v4/app/i;Landroid/support/v4/app/i;ZLandroid/support/v4/g/a;)V

    iget-object v0, p0, Landroid/support/v4/app/u$3;->yN:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/u$3;->yN:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/app/u$3;->tL:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Landroid/support/v4/app/w;->b(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method
