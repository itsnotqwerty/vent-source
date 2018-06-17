.class public abstract Landroid/support/v7/widget/GridLayout$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method F(II)I
    .locals 0

    return p1
.end method

.method abstract f(Landroid/view/View;II)I
.end method

.method abstract gP()Ljava/lang/String;
.end method

.method gQ()Landroid/support/v7/widget/GridLayout$e;
    .locals 1

    new-instance v0, Landroid/support/v7/widget/GridLayout$e;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayout$e;-><init>()V

    return-object v0
.end method

.method abstract r(Landroid/view/View;I)I
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Alignment:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$a;->gP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
