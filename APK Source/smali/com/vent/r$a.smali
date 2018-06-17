.class final Lcom/vent/r$a;
.super Lcom/vent/o$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final bXH:Landroid/widget/TextView;

.field final bio:Landroid/widget/TextView;

.field final cbC:Landroid/widget/TextView;

.field final synthetic cbD:Lcom/vent/r;


# direct methods
.method constructor <init>(Lcom/vent/r;Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/vent/r$a;->cbD:Lcom/vent/r;

    sget v0, Lcom/vent/MyApplication;->cgm:I

    invoke-direct {p0, p1, p2, v0}, Lcom/vent/o$b;-><init>(Lcom/vent/o;Landroid/view/View;I)V

    check-cast p2, Landroid/view/ViewGroup;

    iget-boolean v0, p1, Lcom/vent/r;->cbB:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f0900df

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vent/r$a;->cbC:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vent/r$a;->cbC:Landroid/widget/TextView;

    sget-object v1, Lcom/vent/d/e;->cmU:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f09004a

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vent/r$a;->bio:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vent/r$a;->bio:Landroid/widget/TextView;

    sget-object v1, Lcom/vent/d/e;->cmX:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/vent/r$a;->bio:Landroid/widget/TextView;

    invoke-static {}, Lcom/vent/views/FixedTextViewTouchConsume$a;->FB()Lcom/vent/views/FixedTextViewTouchConsume$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/vent/r$a;->bio:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/vent/r$a;->bio:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    const v0, 0x7f090243

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vent/r$a;->bXH:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vent/r$a;->bXH:Landroid/widget/TextView;

    sget-object v1, Lcom/vent/d/e;->cmX:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method
