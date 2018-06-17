.class public final Lcom/intercom/composer/c/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/intercom/composer/c/c;


# instance fields
.field public final bkU:Lcom/intercom/composer/c/d;

.field public final blM:Lcom/intercom/composer/c/b;

.field public final blN:Landroid/view/Window;

.field public final blO:Landroid/view/View;

.field public final blg:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/intercom/composer/c/d;Landroid/view/View;Landroid/view/View;)V
    .locals 6

    new-instance v1, Lcom/intercom/composer/c/b;

    invoke-direct {v1, p1, p2}, Lcom/intercom/composer/c/b;-><init>(Landroid/app/Activity;Lcom/intercom/composer/c/d;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    move-object v0, p0

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/intercom/composer/c/a;-><init>(Lcom/intercom/composer/c/b;Lcom/intercom/composer/c/d;Landroid/view/Window;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private constructor <init>(Lcom/intercom/composer/c/b;Lcom/intercom/composer/c/d;Landroid/view/Window;Landroid/view/View;Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p5, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "behindKeyboardView can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p4, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "editText can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p4, p0, Lcom/intercom/composer/c/a;->blg:Landroid/view/View;

    iput-object p5, p0, Lcom/intercom/composer/c/a;->blO:Landroid/view/View;

    iput-object p3, p0, Lcom/intercom/composer/c/a;->blN:Landroid/view/Window;

    iget-object v0, p0, Lcom/intercom/composer/c/a;->blN:Landroid/view/Window;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    iput-object p2, p0, Lcom/intercom/composer/c/a;->bkU:Lcom/intercom/composer/c/d;

    iput-object p1, p0, Lcom/intercom/composer/c/a;->blM:Lcom/intercom/composer/c/b;

    iget-object v0, p0, Lcom/intercom/composer/c/a;->blM:Lcom/intercom/composer/c/b;

    iput-object p0, v0, Lcom/intercom/composer/c/b;->blS:Lcom/intercom/composer/c/c;

    return-void
.end method


# virtual methods
.method public final a(ZI)V
    .locals 2

    const/16 v1, 0x10

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/intercom/composer/c/a;->blN:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-virtual {p0}, Lcom/intercom/composer/c/a;->vW()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intercom/composer/c/a;->blO:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/intercom/composer/c/a;->blO:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/intercom/composer/c/a;->vW()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/intercom/composer/c/a;->blN:Landroid/view/Window;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/intercom/composer/c/a;->blN:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0
.end method

.method public final vW()Z
    .locals 1

    iget-object v0, p0, Lcom/intercom/composer/c/a;->blO:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final vX()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/intercom/composer/c/a;->vW()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/intercom/composer/c/a;->blO:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/intercom/composer/c/a;->blO:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    iget-object v0, p0, Lcom/intercom/composer/c/a;->blN:Landroid/view/Window;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
