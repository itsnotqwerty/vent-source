.class public final Landroid/support/v4/view/t;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/t$b;,
        Landroid/support/v4/view/t$a;,
        Landroid/support/v4/view/t$c;
    }
.end annotation


# static fields
.field static final Ge:Landroid/support/v4/view/t$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/view/t$b;

    invoke-direct {v0}, Landroid/support/v4/view/t$b;-><init>()V

    sput-object v0, Landroid/support/v4/view/t;->Ge:Landroid/support/v4/view/t$c;

    :goto_0
    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/view/t$a;

    invoke-direct {v0}, Landroid/support/v4/view/t$a;-><init>()V

    sput-object v0, Landroid/support/v4/view/t;->Ge:Landroid/support/v4/view/t$c;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/v4/view/t$c;

    invoke-direct {v0}, Landroid/support/v4/view/t$c;-><init>()V

    sput-object v0, Landroid/support/v4/view/t;->Ge:Landroid/support/v4/view/t$c;

    goto :goto_0
.end method

.method public static d(Landroid/view/ViewGroup;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/t;->Ge:Landroid/support/v4/view/t$c;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/t$c;->d(Landroid/view/ViewGroup;)I

    move-result v0

    return v0
.end method

.method public static e(Landroid/view/ViewGroup;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/t;->Ge:Landroid/support/v4/view/t$c;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/t$c;->e(Landroid/view/ViewGroup;)Z

    move-result v0

    return v0
.end method
