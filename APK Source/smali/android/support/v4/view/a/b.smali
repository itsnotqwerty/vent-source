.class public final Landroid/support/v4/view/a/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/a/b$b;,
        Landroid/support/v4/view/a/b$a;
    }
.end annotation


# instance fields
.field public final HE:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/view/a/b$b;

    invoke-direct {v0, p0}, Landroid/support/v4/view/a/b$b;-><init>(Landroid/support/v4/view/a/b;)V

    iput-object v0, p0, Landroid/support/v4/view/a/b;->HE:Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/view/a/b$a;

    invoke-direct {v0, p0}, Landroid/support/v4/view/a/b$a;-><init>(Landroid/support/v4/view/a/b;)V

    iput-object v0, p0, Landroid/support/v4/view/a/b;->HE:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/a/b;->HE:Ljava/lang/Object;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/view/a/b;->HE:Ljava/lang/Object;

    return-void
.end method
