.class public final Lio/intercom/a/a/a/g/a/c;
.super Lio/intercom/a/a/a/g/a/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/intercom/a/a/a/g/a/d",
        "<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/intercom/a/a/a/g/a/d;-><init>(Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method protected final synthetic az(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lio/intercom/a/a/a/g/a/c;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
