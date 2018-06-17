.class public final Landroid/support/v4/view/a/a$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field final HD:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/view/a/a$b;->HD:Ljava/lang/Object;

    return-void
.end method

.method public static a(IIIIZ)Landroid/support/v4/view/a/a$b;
    .locals 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v6, Landroid/support/v4/view/a/a$b;

    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/support/v4/view/a/a$b;-><init>(Ljava/lang/Object;)V

    move-object v0, v6

    :goto_0
    return-object v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/view/a/a$b;

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/view/a/a$b;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/v4/view/a/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/view/a/a$b;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method
