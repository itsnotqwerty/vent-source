.class public final Landroid/support/v7/app/k$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "d"
.end annotation


# instance fields
.field NG:I

.field NH:Landroid/view/ViewGroup;

.field NI:Landroid/view/View;

.field NJ:Landroid/view/View;

.field NK:Landroid/support/v7/view/menu/h;

.field NL:Landroid/support/v7/view/menu/f;

.field NM:Landroid/content/Context;

.field NN:Z

.field NO:Z

.field NP:Z

.field public NQ:Z

.field NR:Z

.field NS:Z

.field NT:Landroid/os/Bundle;

.field background:I

.field gravity:I

.field windowAnimations:I

.field x:I

.field y:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/support/v7/app/k$d;->NG:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/k$d;->NR:Z

    return-void
.end method


# virtual methods
.method final e(Landroid/support/v7/view/menu/h;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/k$d;->NK:Landroid/support/v7/view/menu/h;

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/k$d;->NK:Landroid/support/v7/view/menu/h;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/app/k$d;->NK:Landroid/support/v7/view/menu/h;

    iget-object v1, p0, Landroid/support/v7/app/k$d;->NL:Landroid/support/v7/view/menu/f;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->b(Landroid/support/v7/view/menu/o;)V

    :cond_2
    iput-object p1, p0, Landroid/support/v7/app/k$d;->NK:Landroid/support/v7/view/menu/h;

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/k$d;->NL:Landroid/support/v7/view/menu/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/k$d;->NL:Landroid/support/v7/view/menu/f;

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/h;->a(Landroid/support/v7/view/menu/o;)V

    goto :goto_0
.end method
