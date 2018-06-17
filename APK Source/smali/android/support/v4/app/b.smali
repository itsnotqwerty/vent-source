.class public Landroid/support/v4/app/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/b$c;,
        Landroid/support/v4/app/b$b;,
        Landroid/support/v4/app/b$a;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/support/v4/app/b;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1, p2}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/app/b;->a(Landroid/app/ActivityOptions;)Landroid/support/v4/app/b;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v4/app/b;

    invoke-direct {v0}, Landroid/support/v4/app/b;-><init>()V

    goto :goto_0
.end method

.method private static a(Landroid/app/ActivityOptions;)Landroid/support/v4/app/b;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/app/b$c;

    invoke-direct {v0, p0}, Landroid/support/v4/app/b$c;-><init>(Landroid/app/ActivityOptions;)V

    :goto_0
    return-object v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/app/b$b;

    invoke-direct {v0, p0}, Landroid/support/v4/app/b$b;-><init>(Landroid/app/ActivityOptions;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/v4/app/b$a;

    invoke-direct {v0, p0}, Landroid/support/v4/app/b$a;-><init>(Landroid/app/ActivityOptions;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;II)Landroid/support/v4/app/b;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1, p2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/app/b;->a(Landroid/app/ActivityOptions;)Landroid/support/v4/app/b;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v4/app/b;

    invoke-direct {v0}, Landroid/support/v4/app/b;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
