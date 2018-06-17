.class final Lcom/vent/ActStore$a$a;
.super Lcom/vent/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/ActStore$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vent/m",
        "<",
        "Lcom/vent/a/h;",
        ">.a;"
    }
.end annotation


# instance fields
.field final bVB:Landroid/widget/TextView;

.field final bYA:Landroid/widget/TextView;

.field final synthetic bYx:Lcom/vent/ActStore$a;

.field final bYy:Landroid/widget/ImageView;

.field final bYz:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/vent/ActStore$a;Landroid/view/View;)V
    .locals 3

    iput-object p1, p0, Lcom/vent/ActStore$a$a;->bYx:Lcom/vent/ActStore$a;

    invoke-direct {p0, p1, p2}, Lcom/vent/m$a;-><init>(Lcom/vent/m;Landroid/view/View;)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901e5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vent/ActStore$a$a;->bVB:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vent/ActStore$a$a;->bVB:Landroid/widget/TextView;

    sget-object v1, Lcom/vent/d/e;->cmU:Landroid/graphics/Typeface;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const v0, 0x7f0901cb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vent/ActStore$a$a;->bYy:Landroid/widget/ImageView;

    iget-object v0, p1, Lcom/vent/ActStore$a;->bYw:Lcom/vent/ActStore;

    iget-object v0, v0, Lcom/vent/ActStore;->bVI:Lcom/vent/a/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActStore$a$a;->bYy:Landroid/widget/ImageView;

    const v1, 0x7f0800cc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    const v0, 0x7f0902e1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vent/ActStore$a$a;->bYz:Landroid/widget/ImageView;

    const v0, 0x7f0901eb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vent/ActStore$a$a;->bYA:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Lcom/vent/ActStore$a$a;->CQ()Lcom/vent/a/b;

    move-result-object v0

    check-cast v0, Lcom/vent/a/h;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/vent/ActStore$a$a;->bYx:Lcom/vent/ActStore$a;

    iget-object v1, v1, Lcom/vent/ActStore$a;->bYw:Lcom/vent/ActStore;

    iget-object v2, p0, Lcom/vent/ActStore$a$a;->bYx:Lcom/vent/ActStore$a;

    iget-object v2, v2, Lcom/vent/ActStore$a;->bYw:Lcom/vent/ActStore;

    iget-object v2, v2, Lcom/vent/ActStore;->bVI:Lcom/vent/a/x;

    invoke-static {v1, v0, v2}, Lcom/vent/ActStoreEmotCat;->a(Lcom/vent/a;Lcom/vent/a/h;Lcom/vent/a/x;)V

    goto :goto_0
.end method
