.class Landroid/support/v4/view/t$a;
.super Landroid/support/v4/view/t$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/view/t$c;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Landroid/view/ViewGroup;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutMode()I

    move-result v0

    return v0
.end method
