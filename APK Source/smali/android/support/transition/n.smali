.class final Landroid/support/transition/n;
.super Ljava/lang/Object;


# static fields
.field private static final ua:Landroid/support/transition/q;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/transition/p;

    invoke-direct {v0}, Landroid/support/transition/p;-><init>()V

    sput-object v0, Landroid/support/transition/n;->ua:Landroid/support/transition/q;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/transition/o;

    invoke-direct {v0}, Landroid/support/transition/o;-><init>()V

    sput-object v0, Landroid/support/transition/n;->ua:Landroid/support/transition/q;

    goto :goto_0
.end method

.method static a(Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property",
            "<*",
            "Landroid/graphics/PointF;",
            ">;",
            "Landroid/graphics/Path;",
            ")",
            "Landroid/animation/PropertyValuesHolder;"
        }
    .end annotation

    sget-object v0, Landroid/support/transition/n;->ua:Landroid/support/transition/q;

    invoke-interface {v0, p0, p1}, Landroid/support/transition/q;->a(Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    return-object v0
.end method
