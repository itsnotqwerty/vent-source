.class public final Lcom/vent/ActVent$a;
.super Landroid/support/v4/app/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/ActVent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vent/ActVent$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/h;-><init>()V

    return-void
.end method

.method static b(Landroid/support/v4/app/n;)V
    .locals 2

    new-instance v0, Lcom/vent/ActVent$a;

    invoke-direct {v0}, Lcom/vent/ActVent$a;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vent/ActVent$a;->setArguments(Landroid/os/Bundle;)V

    const-string v1, ""

    invoke-virtual {v0, p0, v1}, Lcom/vent/ActVent$a;->a(Landroid/support/v4/app/n;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/h;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f1000cf

    invoke-virtual {p0, v0}, Lcom/vent/ActVent$a;->X(I)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const v0, 0x7f0b0064

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/vent/ActVent$a$a;

    invoke-direct {v2, p0}, Lcom/vent/ActVent$a$a;-><init>(Lcom/vent/ActVent$a;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/vent/ActVent$a;->getActivity()Landroid/support/v4/app/j;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$i;)V

    new-instance v2, Lcom/vent/views/a;

    invoke-virtual {p0}, Lcom/vent/ActVent$a;->getActivity()Landroid/support/v4/app/j;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/vent/views/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$h;)V

    return-object v1
.end method

.method public final onStart()V
    .locals 4

    invoke-super {p0}, Landroid/support/v4/app/h;->onStart()V

    iget-object v0, p0, Landroid/support/v4/app/h;->wP:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {p0}, Lcom/vent/ActVent$a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07012d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method
