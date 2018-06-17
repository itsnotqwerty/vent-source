.class final Landroid/support/v4/view/t$b;
.super Landroid/support/v4/view/t$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/view/t$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Landroid/view/ViewGroup;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    move-result v0

    return v0
.end method
