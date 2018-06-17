.class final Landroid/support/v7/widget/bu;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/bu$b;,
        Landroid/support/v7/widget/bu$a;
    }
.end annotation


# instance fields
.field final aky:Landroid/support/v7/widget/bu$b;

.field akz:Landroid/support/v7/widget/bu$a;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/bu$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/bu;->aky:Landroid/support/v7/widget/bu$b;

    new-instance v0, Landroid/support/v7/widget/bu$a;

    invoke-direct {v0}, Landroid/support/v7/widget/bu$a;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/bu;->akz:Landroid/support/v7/widget/bu$a;

    return-void
.end method


# virtual methods
.method final bi(Landroid/view/View;)Z
    .locals 5

    iget-object v0, p0, Landroid/support/v7/widget/bu;->akz:Landroid/support/v7/widget/bu$a;

    iget-object v1, p0, Landroid/support/v7/widget/bu;->aky:Landroid/support/v7/widget/bu$b;

    invoke-interface {v1}, Landroid/support/v7/widget/bu$b;->ik()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/bu;->aky:Landroid/support/v7/widget/bu$b;

    invoke-interface {v2}, Landroid/support/v7/widget/bu$b;->il()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/bu;->aky:Landroid/support/v7/widget/bu$b;

    invoke-interface {v3, p1}, Landroid/support/v7/widget/bu$b;->ba(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/bu;->aky:Landroid/support/v7/widget/bu$b;

    invoke-interface {v4, p1}, Landroid/support/v7/widget/bu$b;->bb(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v7/widget/bu$a;->setBounds(IIII)V

    iget-object v0, p0, Landroid/support/v7/widget/bu;->akz:Landroid/support/v7/widget/bu$a;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/widget/bu$a;->akA:I

    iget-object v0, p0, Landroid/support/v7/widget/bu;->akz:Landroid/support/v7/widget/bu$a;

    const/16 v1, 0x6003

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bu$a;->addFlags(I)V

    iget-object v0, p0, Landroid/support/v7/widget/bu;->akz:Landroid/support/v7/widget/bu$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/bu$a;->jc()Z

    move-result v0

    return v0
.end method

.method final h(IIII)Landroid/view/View;
    .locals 9

    const/4 v8, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/bu;->aky:Landroid/support/v7/widget/bu$b;

    invoke-interface {v0}, Landroid/support/v7/widget/bu$b;->ik()I

    move-result v3

    iget-object v0, p0, Landroid/support/v7/widget/bu;->aky:Landroid/support/v7/widget/bu$b;

    invoke-interface {v0}, Landroid/support/v7/widget/bu$b;->il()I

    move-result v4

    if-le p2, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-eq p1, p2, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/bu;->aky:Landroid/support/v7/widget/bu$b;

    invoke-interface {v1, p1}, Landroid/support/v7/widget/bu$b;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v5, p0, Landroid/support/v7/widget/bu;->aky:Landroid/support/v7/widget/bu$b;

    invoke-interface {v5, v1}, Landroid/support/v7/widget/bu$b;->ba(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Landroid/support/v7/widget/bu;->aky:Landroid/support/v7/widget/bu$b;

    invoke-interface {v6, v1}, Landroid/support/v7/widget/bu$b;->bb(Landroid/view/View;)I

    move-result v6

    iget-object v7, p0, Landroid/support/v7/widget/bu;->akz:Landroid/support/v7/widget/bu$a;

    invoke-virtual {v7, v3, v4, v5, v6}, Landroid/support/v7/widget/bu$a;->setBounds(IIII)V

    if-eqz p3, :cond_1

    iget-object v5, p0, Landroid/support/v7/widget/bu;->akz:Landroid/support/v7/widget/bu$a;

    iput v8, v5, Landroid/support/v7/widget/bu$a;->akA:I

    iget-object v5, p0, Landroid/support/v7/widget/bu;->akz:Landroid/support/v7/widget/bu$a;

    invoke-virtual {v5, p3}, Landroid/support/v7/widget/bu$a;->addFlags(I)V

    iget-object v5, p0, Landroid/support/v7/widget/bu;->akz:Landroid/support/v7/widget/bu$a;

    invoke-virtual {v5}, Landroid/support/v7/widget/bu$a;->jc()Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_2
    return-object v1

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_3

    iget-object v5, p0, Landroid/support/v7/widget/bu;->akz:Landroid/support/v7/widget/bu$a;

    iput v8, v5, Landroid/support/v7/widget/bu$a;->akA:I

    iget-object v5, p0, Landroid/support/v7/widget/bu;->akz:Landroid/support/v7/widget/bu$a;

    invoke-virtual {v5, p4}, Landroid/support/v7/widget/bu$a;->addFlags(I)V

    iget-object v5, p0, Landroid/support/v7/widget/bu;->akz:Landroid/support/v7/widget/bu$a;

    invoke-virtual {v5}, Landroid/support/v7/widget/bu$a;->jc()Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_3
    add-int/2addr p1, v0

    move-object v2, v1

    goto :goto_1

    :cond_2
    move-object v1, v2

    goto :goto_2

    :cond_3
    move-object v1, v2

    goto :goto_3
.end method
