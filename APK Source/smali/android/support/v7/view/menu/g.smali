.class public final Landroid/support/v7/view/menu/g;
.super Landroid/widget/BaseAdapter;


# static fields
.field static final RW:I


# instance fields
.field private final JR:Landroid/view/LayoutInflater;

.field private RU:I

.field public RX:Landroid/support/v7/view/menu/h;

.field private final Re:Z

.field Rt:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Landroid/support/v7/a/a$g;->abc_popup_menu_item_layout:I

    sput v0, Landroid/support/v7/view/menu/g;->RW:I

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/view/menu/h;Landroid/view/LayoutInflater;Z)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/view/menu/g;->RU:I

    iput-boolean p3, p0, Landroid/support/v7/view/menu/g;->Re:Z

    iput-object p2, p0, Landroid/support/v7/view/menu/g;->JR:Landroid/view/LayoutInflater;

    iput-object p1, p0, Landroid/support/v7/view/menu/g;->RX:Landroid/support/v7/view/menu/h;

    invoke-direct {p0}, Landroid/support/v7/view/menu/g;->ff()V

    return-void
.end method

.method private ff()V
    .locals 5

    iget-object v0, p0, Landroid/support/v7/view/menu/g;->RX:Landroid/support/v7/view/menu/h;

    iget-object v2, v0, Landroid/support/v7/view/menu/h;->St:Landroid/support/v7/view/menu/j;

    if-eqz v2, :cond_1

    iget-object v0, p0, Landroid/support/v7/view/menu/g;->RX:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->fp()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/j;

    if-ne v0, v2, :cond_0

    iput v1, p0, Landroid/support/v7/view/menu/g;->RU:I

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/view/menu/g;->RU:I

    goto :goto_1
.end method


# virtual methods
.method public final aW(I)Landroid/support/v7/view/menu/j;
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/view/menu/g;->Re:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/view/menu/g;->RX:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->fp()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    iget v1, p0, Landroid/support/v7/view/menu/g;->RU:I

    if-ltz v1, :cond_0

    iget v1, p0, Landroid/support/v7/view/menu/g;->RU:I

    if-lt p1, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/j;

    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->RX:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->fn()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public final getCount()I
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/view/menu/g;->Re:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/g;->RX:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->fp()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    iget v1, p0, Landroid/support/v7/view/menu/g;->RU:I

    if-gez v1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->RX:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->fn()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/g;->aW(I)Landroid/support/v7/view/menu/j;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_1

    iget-object v0, p0, Landroid/support/v7/view/menu/g;->JR:Landroid/view/LayoutInflater;

    sget v1, Landroid/support/v7/view/menu/g;->RW:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    :goto_0
    move-object v0, v1

    check-cast v0, Landroid/support/v7/view/menu/p$a;

    iget-boolean v2, p0, Landroid/support/v7/view/menu/g;->Rt:Z

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroid/support/v7/view/menu/ListMenuItemView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/ListMenuItemView;->setForceShowIcon(Z)V

    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/g;->aW(I)Landroid/support/v7/view/menu/j;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/support/v7/view/menu/p$a;->a(Landroid/support/v7/view/menu/j;)V

    return-object v1

    :cond_1
    move-object v1, p2

    goto :goto_0
.end method

.method public final notifyDataSetChanged()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/view/menu/g;->ff()V

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
