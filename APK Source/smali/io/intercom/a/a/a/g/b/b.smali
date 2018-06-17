.class public final Lio/intercom/a/a/a/g/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/g/b/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/g/b/d",
        "<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final cQI:Z

.field private final duration:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/intercom/a/a/a/g/b/b;->duration:I

    iput-boolean p2, p0, Lio/intercom/a/a/a/g/b/b;->cQI:Z

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Lio/intercom/a/a/a/g/b/d$a;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-interface {p2}, Lio/intercom/a/a/a/g/b/d$a;->JH()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :cond_0
    new-instance v1, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v2, v3

    aput-object p1, v2, v4

    invoke-direct {v1, v2}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iget-boolean v0, p0, Lio/intercom/a/a/a/g/b/b;->cQI:Z

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    iget v0, p0, Lio/intercom/a/a/a/g/b/b;->duration:I

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    invoke-interface {p2, v1}, Lio/intercom/a/a/a/g/b/d$a;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    return v4
.end method
