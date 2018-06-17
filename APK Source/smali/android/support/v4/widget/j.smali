.class public final Landroid/support/v4/widget/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/j$c;,
        Landroid/support/v4/widget/j$a;,
        Landroid/support/v4/widget/j$b;
    }
.end annotation


# static fields
.field static final Jp:Landroid/support/v4/widget/j$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/widget/j$c;

    invoke-direct {v0}, Landroid/support/v4/widget/j$c;-><init>()V

    sput-object v0, Landroid/support/v4/widget/j;->Jp:Landroid/support/v4/widget/j$b;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/widget/j$a;

    invoke-direct {v0}, Landroid/support/v4/widget/j$a;-><init>()V

    sput-object v0, Landroid/support/v4/widget/j;->Jp:Landroid/support/v4/widget/j$b;

    goto :goto_0
.end method

.method public static a(Landroid/widget/ImageView;)Landroid/content/res/ColorStateList;
    .locals 1

    sget-object v0, Landroid/support/v4/widget/j;->Jp:Landroid/support/v4/widget/j$b;

    invoke-interface {v0, p0}, Landroid/support/v4/widget/j$b;->a(Landroid/widget/ImageView;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V
    .locals 1

    sget-object v0, Landroid/support/v4/widget/j;->Jp:Landroid/support/v4/widget/j$b;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/j$b;->a(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static a(Landroid/widget/ImageView;Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    sget-object v0, Landroid/support/v4/widget/j;->Jp:Landroid/support/v4/widget/j$b;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/j$b;->a(Landroid/widget/ImageView;Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public static b(Landroid/widget/ImageView;)Landroid/graphics/PorterDuff$Mode;
    .locals 1

    sget-object v0, Landroid/support/v4/widget/j;->Jp:Landroid/support/v4/widget/j$b;

    invoke-interface {v0, p0}, Landroid/support/v4/widget/j$b;->b(Landroid/widget/ImageView;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method
