.class public final Landroid/support/v7/widget/ax;
.super Landroid/support/v7/widget/av;

# interfaces
.implements Landroid/support/v7/widget/aw;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ax$a;
    }
.end annotation


# static fields
.field public static adl:Ljava/lang/reflect/Method;


# instance fields
.field public adm:Landroid/support/v7/widget/aw;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    :try_start_0
    const-class v0, Landroid/widget/PopupWindow;

    const-string v1, "setTouchModal"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/ax;->adl:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "MenuPopupWindow"

    const-string v1, "Could not find method setTouchModal() on PopupWindow. Oh well."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/support/v7/widget/av;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method final b(Landroid/content/Context;Z)Landroid/support/v7/widget/an;
    .locals 1

    new-instance v0, Landroid/support/v7/widget/ax$a;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/ax$a;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/ax$a;->setHoverListener(Landroid/support/v7/widget/aw;)V

    return-object v0
.end method

.method public final b(Landroid/support/v7/view/menu/h;Landroid/view/MenuItem;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ax;->adm:Landroid/support/v7/widget/aw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ax;->adm:Landroid/support/v7/widget/aw;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/widget/aw;->b(Landroid/support/v7/view/menu/h;Landroid/view/MenuItem;)V

    :cond_0
    return-void
.end method

.method public final c(Landroid/support/v7/view/menu/h;Landroid/view/MenuItem;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ax;->adm:Landroid/support/v7/widget/aw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ax;->adm:Landroid/support/v7/widget/aw;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/widget/aw;->c(Landroid/support/v7/view/menu/h;Landroid/view/MenuItem;)V

    :cond_0
    return-void
.end method
