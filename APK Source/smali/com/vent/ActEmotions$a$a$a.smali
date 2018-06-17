.class final Lcom/vent/ActEmotions$a$a$a;
.super Landroid/support/v7/widget/RecyclerView$x;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/ActEmotions$a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final bVB:Landroid/widget/TextView;

.field final synthetic bVC:Lcom/vent/ActEmotions$a$a;


# direct methods
.method constructor <init>(Lcom/vent/ActEmotions$a$a;Landroid/view/View;)V
    .locals 3

    iput-object p1, p0, Lcom/vent/ActEmotions$a$a$a;->bVC:Lcom/vent/ActEmotions$a$a;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$x;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901e5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vent/ActEmotions$a$a$a;->bVB:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vent/ActEmotions$a$a$a;->bVB:Landroid/widget/TextView;

    sget-object v1, Lcom/vent/d/e;->cmU:Landroid/graphics/Typeface;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/vent/ActEmotions$a$a$a;->bVC:Lcom/vent/ActEmotions$a$a;

    iget-object v0, v0, Lcom/vent/ActEmotions$a$a;->bVA:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/ActEmotions$a;

    invoke-static {v0}, Lcom/vent/d/c;->a(Landroid/support/v4/app/h;)V

    invoke-virtual {v0}, Lcom/vent/ActEmotions$a;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    check-cast v0, Lcom/vent/ActEmotions;

    iget-object v0, v0, Lcom/vent/ActEmotions;->bVe:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Lcom/vent/ActEmotions$a$a$a;->getAdapterPosition()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->d(IZ)V

    return-void
.end method
