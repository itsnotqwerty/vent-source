.class public final Landroid/support/design/widget/TabLayout$e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field kB:Ljava/lang/CharSequence;

.field mPosition:I

.field oX:Ljava/lang/Object;

.field oY:Ljava/lang/CharSequence;

.field oZ:Landroid/view/View;

.field oa:Landroid/graphics/drawable/Drawable;

.field pa:Landroid/support/design/widget/TabLayout;

.field pb:Landroid/support/design/widget/TabLayout$g;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/TabLayout$e;->mPosition:I

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$e;
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/TabLayout$e;->kB:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$e;->bV()V

    return-object p0
.end method

.method final bV()V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->pb:Landroid/support/design/widget/TabLayout$g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->pb:Landroid/support/design/widget/TabLayout$g;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$g;->update()V

    :cond_0
    return-void
.end method

.method public final select()V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->pa:Landroid/support/design/widget/TabLayout;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab not attached to a TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->pa:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, p0}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout$e;)V

    return-void
.end method
