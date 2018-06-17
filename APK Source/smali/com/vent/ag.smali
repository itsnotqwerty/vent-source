.class public final Lcom/vent/ag;
.super Landroid/support/v4/app/h;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vent/ag$a;,
        Lcom/vent/ag$b;
    }
.end annotation


# static fields
.field static bMi:Z


# instance fields
.field cdV:Landroid/support/v7/widget/a/a;

.field cdW:Landroid/support/v7/widget/RecyclerView;

.field recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/h;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/support/v4/app/n;)V
    .locals 2

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vent/bb;->ceg:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/vent/d/c;->bF(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/vent/d/c;->bE(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/vent/ag;

    invoke-direct {v0}, Lcom/vent/ag;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vent/ag;->setArguments(Landroid/os/Bundle;)V

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/vent/ag;->a(Landroid/support/v4/app/n;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/vent/ActMain;Ljava/io/File;)V
    .locals 2

    :try_start_0
    invoke-static {p1}, Lcom/vent/d/c;->i(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/vent/bb;->b(Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/vent/bb;->EB()V

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/vent/bb;->ciA:J

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/vent/ActMain;->a(Landroid/support/v7/app/d;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/vent/ActMain;->BL()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static aH(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    invoke-static {}, Lcom/vent/bb;->Es()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/vent/ag;->e(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static e(Landroid/content/Context;Z)Ljava/io/File;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "users.staging"

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "users"

    goto :goto_0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/vent/ag;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    check-cast v0, Lcom/vent/ActMain;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vent/ActMain;->getSupportFragmentManager()Landroid/support/v4/app/n;

    move-result-object v1

    const-string v2, "profile"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/n;->w(Ljava/lang/String;)Landroid/support/v4/app/i;

    move-result-object v1

    check-cast v1, Lcom/vent/FrgProfile;

    invoke-static {p0}, Lcom/vent/d/c;->a(Landroid/support/v4/app/h;)V

    const v2, 0x7f0f0121

    invoke-static {v0, v2}, Lcom/vent/d/c;->v(Landroid/content/Context;I)Landroid/support/v7/app/c;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vent/ag;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    new-instance v5, Lcom/vent/ag$3;

    invoke-direct {v5, p0, v0, v2, v1}, Lcom/vent/ag$3;-><init>(Lcom/vent/ag;Lcom/vent/ActMain;Landroid/support/v7/app/c;Lcom/vent/FrgProfile;)V

    invoke-static {v3, v4, v5}, Lcom/vent/bb;->a(Landroid/content/Context;ZLjava/lang/Runnable;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0901ec
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/support/v4/app/h;->onCreate(Landroid/os/Bundle;)V

    sget-boolean v0, Lcom/vent/ag;->bMi:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/vent/ag;->bMi:Z

    new-instance v0, Lcom/vent/ag$1;

    invoke-direct {v0, p0}, Lcom/vent/ag$1;-><init>(Lcom/vent/ag;)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    :cond_0
    const v0, 0x7f1000cf

    invoke-virtual {p0, v0}, Lcom/vent/ag;->X(I)V

    :try_start_0
    invoke-static {}, Lcom/vent/bb;->Ey()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vent/ag;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/vent/bb;->Es()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/vent/ag;->e(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    iget-object v3, v3, Lcom/vent/a/y;->cjy:Lcom/vent/a/m;

    invoke-virtual {v3}, Lcom/vent/a/m;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lcom/vent/d/c;->a(Ljava/io/File;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    new-instance v0, Landroid/support/v7/widget/a/a;

    new-instance v1, Lcom/vent/ag$2;

    invoke-direct {v1, p0}, Lcom/vent/ag$2;-><init>(Lcom/vent/ag;)V

    invoke-direct {v0, v1}, Landroid/support/v7/widget/a/a;-><init>(Landroid/support/v7/widget/a/a$a;)V

    iput-object v0, p0, Lcom/vent/ag;->cdV:Landroid/support/v7/widget/a/a;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const v0, 0x7f0b0066

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0901ec

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/vent/ag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/vent/ag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/vent/ag$a;

    invoke-direct {v2, p0}, Lcom/vent/ag$a;-><init>(Lcom/vent/ag;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    iget-object v0, p0, Lcom/vent/ag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/vent/ag;->getActivity()Landroid/support/v4/app/j;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$i;)V

    iget-object v0, p0, Lcom/vent/ag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/vent/views/a;

    invoke-virtual {p0}, Lcom/vent/ag;->getActivity()Landroid/support/v4/app/j;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/vent/views/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$h;)V

    new-instance v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/vent/ag;->getActivity()Landroid/support/v4/app/j;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vent/ag;->cdW:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/vent/ag;->cdV:Landroid/support/v7/widget/a/a;

    iget-object v2, p0, Lcom/vent/ag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/a/a;->g(Landroid/support/v7/widget/RecyclerView;)V

    return-object v1
.end method

.method public final onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vent/ag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-super {p0}, Landroid/support/v4/app/h;->onDestroyView()V

    return-void
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

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {p0}, Lcom/vent/ag;->getContext()Landroid/content/Context;

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

    :cond_0
    return-void
.end method
