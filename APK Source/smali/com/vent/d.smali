.class public abstract Lcom/vent/d;
.super Lcom/vent/a;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/vent/ay;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Lcom/vent/aq",
        "<TA;TT;>;A:",
        "Lcom/vent/l",
        "<TT;>;T:",
        "Lcom/vent/a/a;",
        ">",
        "Lcom/vent/a;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/vent/ay",
        "<TF;>;"
    }
.end annotation


# instance fields
.field bWr:Lcom/vent/aq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vent/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/vent/aq;Z)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p1, p1, p2}, Lcom/vent/aq;->a(Lcom/vent/aq;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/vent/d;->bWr:Lcom/vent/aq;

    invoke-virtual {v0}, Lcom/vent/aq;->By()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0902b5
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vent/d;->bWr:Lcom/vent/aq;

    invoke-super {p0}, Lcom/vent/a;->onDestroy()V

    return-void
.end method

.method protected onStart()V
    .locals 3

    const v2, 0x7f09025f

    invoke-super {p0}, Lcom/vent/a;->onStart()V

    const v0, 0x7f0902b5

    invoke-virtual {p0, v0}, Lcom/vent/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/vent/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    new-instance v1, Lcom/vent/d$1;

    invoke-direct {v1, p0}, Lcom/vent/d$1;-><init>(Lcom/vent/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v2}, Lcom/vent/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v1, Lcom/vent/d$2;

    invoke-direct {v1, p0}, Lcom/vent/d$2;-><init>(Lcom/vent/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v1, Lcom/vent/d$3;

    invoke-direct {v1, p0}, Lcom/vent/d$3;-><init>(Lcom/vent/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    goto :goto_0
.end method
