.class public final Landroid/support/v7/view/menu/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/view/menu/o;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/view/menu/f$a;
    }
.end annotation


# instance fields
.field public JR:Landroid/view/LayoutInflater;

.field Pj:Landroid/support/v7/view/menu/h;

.field public QU:Landroid/support/v7/view/menu/o$a;

.field QW:I

.field public RQ:Landroid/support/v7/view/menu/ExpandedMenuView;

.field RR:I

.field RS:I

.field public RT:Landroid/support/v7/view/menu/f$a;

.field mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/support/v7/view/menu/f;->QW:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/view/menu/f;->RS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p2}, Landroid/support/v7/view/menu/f;-><init>(I)V

    iput-object p1, p0, Landroid/support/v7/view/menu/f;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/support/v7/view/menu/f;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/f;->JR:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final G(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/f;->RT:Landroid/support/v7/view/menu/f$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/f;->RT:Landroid/support/v7/view/menu/f$a;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/f$a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final a(Landroid/content/Context;Landroid/support/v7/view/menu/h;)V
    .locals 2

    iget v0, p0, Landroid/support/v7/view/menu/f;->RS:I

    if-eqz v0, :cond_2

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget v1, p0, Landroid/support/v7/view/menu/f;->RS:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/support/v7/view/menu/f;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/support/v7/view/menu/f;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/f;->JR:Landroid/view/LayoutInflater;

    :cond_0
    :goto_0
    iput-object p2, p0, Landroid/support/v7/view/menu/f;->Pj:Landroid/support/v7/view/menu/h;

    iget-object v0, p0, Landroid/support/v7/view/menu/f;->RT:Landroid/support/v7/view/menu/f$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/view/menu/f;->RT:Landroid/support/v7/view/menu/f$a;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/f$a;->notifyDataSetChanged()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Landroid/support/v7/view/menu/f;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iput-object p1, p0, Landroid/support/v7/view/menu/f;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/support/v7/view/menu/f;->JR:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/f;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/f;->JR:Landroid/view/LayoutInflater;

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/view/menu/h;Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/f;->QU:Landroid/support/v7/view/menu/o$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/f;->QU:Landroid/support/v7/view/menu/o$a;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/menu/o$a;->a(Landroid/support/v7/view/menu/h;Z)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/support/v7/view/menu/o$a;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/view/menu/f;->QU:Landroid/support/v7/view/menu/o$a;

    return-void
.end method

.method public final a(Landroid/support/v7/view/menu/u;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/support/v7/view/menu/u;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Landroid/support/v7/view/menu/i;

    invoke-direct {v0, p1}, Landroid/support/v7/view/menu/i;-><init>(Landroid/support/v7/view/menu/h;)V

    iget-object v1, v0, Landroid/support/v7/view/menu/i;->Pj:Landroid/support/v7/view/menu/h;

    new-instance v2, Landroid/support/v7/app/c$a;

    iget-object v3, v1, Landroid/support/v7/view/menu/h;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/support/v7/view/menu/f;

    invoke-virtual {v2}, Landroid/support/v7/app/c$a;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Landroid/support/v7/a/a$g;->abc_list_menu_item_layout:I

    invoke-direct {v3, v4, v5}, Landroid/support/v7/view/menu/f;-><init>(Landroid/content/Context;I)V

    iput-object v3, v0, Landroid/support/v7/view/menu/i;->Sw:Landroid/support/v7/view/menu/f;

    iget-object v3, v0, Landroid/support/v7/view/menu/i;->Sw:Landroid/support/v7/view/menu/f;

    iput-object v0, v3, Landroid/support/v7/view/menu/f;->QU:Landroid/support/v7/view/menu/o$a;

    iget-object v3, v0, Landroid/support/v7/view/menu/i;->Pj:Landroid/support/v7/view/menu/h;

    iget-object v4, v0, Landroid/support/v7/view/menu/i;->Sw:Landroid/support/v7/view/menu/f;

    invoke-virtual {v3, v4}, Landroid/support/v7/view/menu/h;->a(Landroid/support/v7/view/menu/o;)V

    iget-object v3, v0, Landroid/support/v7/view/menu/i;->Sw:Landroid/support/v7/view/menu/f;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/f;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/support/v7/app/c$a;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    iget-object v3, v1, Landroid/support/v7/view/menu/h;->Sl:Landroid/view/View;

    if-eqz v3, :cond_2

    invoke-virtual {v2, v3}, Landroid/support/v7/app/c$a;->setCustomTitle(Landroid/view/View;)Landroid/support/v7/app/c$a;

    :goto_1
    invoke-virtual {v2, v0}, Landroid/support/v7/app/c$a;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/support/v7/app/c$a;

    invoke-virtual {v2}, Landroid/support/v7/app/c$a;->create()Landroid/support/v7/app/c;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/view/menu/i;->Sv:Landroid/support/v7/app/c;

    iget-object v1, v0, Landroid/support/v7/view/menu/i;->Sv:Landroid/support/v7/app/c;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/c;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, v0, Landroid/support/v7/view/menu/i;->Sv:Landroid/support/v7/app/c;

    invoke-virtual {v1}, Landroid/support/v7/app/c;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x3eb

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, v0, Landroid/support/v7/view/menu/i;->Sv:Landroid/support/v7/app/c;

    invoke-virtual {v0}, Landroid/support/v7/app/c;->show()V

    iget-object v0, p0, Landroid/support/v7/view/menu/f;->QU:Landroid/support/v7/view/menu/o$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/view/menu/f;->QU:Landroid/support/v7/view/menu/o$a;

    invoke-interface {v0, p1}, Landroid/support/v7/view/menu/o$a;->d(Landroid/support/v7/view/menu/h;)Z

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, v1, Landroid/support/v7/view/menu/h;->Sk:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/support/v7/app/c$a;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/app/c$a;

    move-result-object v3

    iget-object v1, v1, Landroid/support/v7/view/menu/h;->Sj:Ljava/lang/CharSequence;

    invoke-virtual {v3, v1}, Landroid/support/v7/app/c$a;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/c$a;

    goto :goto_1
.end method

.method public final c(Landroid/support/v7/view/menu/j;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final d(Landroid/support/v7/view/menu/j;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final fa()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/f;->RT:Landroid/support/v7/view/menu/f$a;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/view/menu/f$a;

    invoke-direct {v0, p0}, Landroid/support/v7/view/menu/f$a;-><init>(Landroid/support/v7/view/menu/f;)V

    iput-object v0, p0, Landroid/support/v7/view/menu/f;->RT:Landroid/support/v7/view/menu/f$a;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/f;->RT:Landroid/support/v7/view/menu/f$a;

    return-object v0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v7/view/menu/f;->Pj:Landroid/support/v7/view/menu/h;

    iget-object v1, p0, Landroid/support/v7/view/menu/f;->RT:Landroid/support/v7/view/menu/f$a;

    invoke-virtual {v1, p3}, Landroid/support/v7/view/menu/f$a;->aW(I)Landroid/support/v7/view/menu/j;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/support/v7/view/menu/h;->a(Landroid/view/MenuItem;Landroid/support/v7/view/menu/o;I)Z

    return-void
.end method
