.class public final Lcom/vent/d/e$b;
.super Landroid/widget/ArrayAdapter;

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/d/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vent/d/e$b$a;,
        Lcom/vent/d/e$b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# instance fields
.field final bYq:[[Ljava/lang/String;

.field final bZf:I

.field private final cnD:Landroid/widget/Filter;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const v0, 0x109000a

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lcom/vent/d/e$b$1;

    invoke-direct {v0, p0}, Lcom/vent/d/e$b$1;-><init>(Lcom/vent/d/e$b;)V

    iput-object v0, p0, Lcom/vent/d/e$b;->cnD:Landroid/widget/Filter;

    iput p2, p0, Lcom/vent/d/e$b;->bZf:I

    sget-object v0, Lcom/vent/bb;->bYq:[[Ljava/lang/String;

    invoke-static {v0}, Lcom/vent/d/c;->d([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/vent/d/e$b;->bYq:[[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getFilter()Landroid/widget/Filter;
    .locals 1

    iget-object v0, p0, Lcom/vent/d/e$b;->cnD:Landroid/widget/Filter;

    return-object v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Lcom/vent/d/e$b;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v0, v2, Lcom/vent/a/x;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Lcom/vent/d/e$b$b;

    if-eqz v3, :cond_5

    check-cast p2, Landroid/view/ViewGroup;

    check-cast v0, Lcom/vent/d/e$b$b;

    move-object v3, p2

    :goto_0
    if-nez v3, :cond_4

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b00d8

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v3, Lcom/vent/d/e$b$b;

    invoke-direct {v3, v4}, Lcom/vent/d/e$b$b;-><init>(B)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const v1, 0x7f090232

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vent/CachedImageView;

    iput-object v1, v3, Lcom/vent/d/e$b$b;->bUF:Lcom/vent/CachedImageView;

    iget-object v1, v3, Lcom/vent/d/e$b$b;->bUF:Lcom/vent/CachedImageView;

    sget v4, Lcom/vent/MyApplication;->cgk:I

    sget v5, Lcom/vent/MyApplication;->cgk:I

    invoke-virtual {v1, v4, v5}, Lcom/vent/CachedImageView;->aH(II)V

    iget-object v1, v3, Lcom/vent/d/e$b$b;->bUF:Lcom/vent/CachedImageView;

    const v4, 0x7f08012b

    invoke-virtual {v1, v4}, Lcom/vent/CachedImageView;->setDefaultImage(I)V

    const v1, 0x7f0902d5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/vent/d/e$b$b;->bZI:Landroid/widget/TextView;

    move-object v1, v3

    move-object v4, v0

    :goto_1
    move-object v0, v2

    check-cast v0, Lcom/vent/a/x;

    iget-object v2, v1, Lcom/vent/d/e$b$b;->bUF:Lcom/vent/CachedImageView;

    sget v3, Lcom/vent/MyApplication;->cgk:I

    sget v5, Lcom/vent/MyApplication;->cgm:I

    invoke-static {v0, v2, v3, v5}, Lcom/vent/d/c;->a(Lcom/vent/a/x;Lcom/vent/CachedImageView;II)V

    iget-object v2, v1, Lcom/vent/d/e$b$b;->bUF:Lcom/vent/CachedImageView;

    invoke-virtual {v2, v1}, Lcom/vent/CachedImageView;->setTag(Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/vent/d/e$b$b;->bZI:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/vent/a/x;->username:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-object v4

    :cond_0
    instance-of v0, v2, Ljava/lang/String;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Lcom/vent/d/e$b$a;

    if-eqz v3, :cond_3

    check-cast p2, Landroid/view/ViewGroup;

    check-cast v0, Lcom/vent/d/e$b$a;

    move-object v3, p2

    :goto_3
    if-nez v3, :cond_2

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b00c7

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v3, Lcom/vent/d/e$b$a;

    invoke-direct {v3, v4}, Lcom/vent/d/e$b$a;-><init>(B)V

    const v1, 0x1020014

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/vent/d/e$b$a;->cnG:Landroid/widget/TextView;

    iget-object v1, v3, Lcom/vent/d/e$b$a;->cnG:Landroid/widget/TextView;

    iget v4, p0, Lcom/vent/d/e$b;->bZf:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    move-object v1, v3

    move-object v4, v0

    :goto_4
    check-cast v2, Ljava/lang/String;

    iget-object v0, v1, Lcom/vent/d/e$b$a;->cnG:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    move-object v1, v0

    move-object v4, v3

    goto :goto_4

    :cond_3
    move-object v0, v1

    move-object v3, v1

    goto :goto_3

    :cond_4
    move-object v1, v0

    move-object v4, v3

    goto :goto_1

    :cond_5
    move-object v0, v1

    move-object v3, v1

    goto/16 :goto_0
.end method
