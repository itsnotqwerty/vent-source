.class public final Lcom/vent/ActEmotions;
.super Lcom/vent/a;

# interfaces
.implements Landroid/support/v4/view/ViewPager$f;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vent/ActEmotions$a;,
        Lcom/vent/ActEmotions$c;,
        Lcom/vent/ActEmotions$b;
    }
.end annotation


# static fields
.field static final bVs:Lcom/vent/a/m;

.field static final bVt:Lcom/vent/a/m;


# instance fields
.field bVa:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vent/a/h;",
            ">;"
        }
    .end annotation
.end field

.field bVb:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vent/a/g;",
            ">;>;"
        }
    .end annotation
.end field

.field private bVc:I

.field bVd:Z

.field bVe:Landroid/support/v4/view/ViewPager;

.field bVf:Landroid/widget/SeekBar;

.field bVg:Landroid/view/View;

.field bVh:Lcom/vent/a/z;

.field private bVi:Landroid/view/animation/Animation;

.field private bVj:Landroid/view/animation/Animation;

.field private bVk:Landroid/widget/TextView;

.field bVl:Landroid/view/View;

.field bVm:I

.field bVn:I

.field private bVo:Z

.field private bVp:I

.field private bVq:I

.field bVr:Ljava/lang/String;

.field private bVu:Z

.field private bVv:Z

.field private title:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vent/a/m;

    const-string v1, "00000000-0000-0000-0000-000000000001"

    invoke-direct {v0, v1}, Lcom/vent/a/m;-><init>(Ljava/lang/CharSequence;)V

    sput-object v0, Lcom/vent/ActEmotions;->bVs:Lcom/vent/a/m;

    new-instance v0, Lcom/vent/a/m;

    const-string v1, "00000000-0000-0000-0000-000000000002"

    invoke-direct {v0, v1}, Lcom/vent/a/m;-><init>(Ljava/lang/CharSequence;)V

    sput-object v0, Lcom/vent/ActEmotions;->bVt:Lcom/vent/a/m;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vent/a;-><init>()V

    return-void
.end method

.method private Bt()V
    .locals 2

    iget-object v0, p0, Lcom/vent/ActEmotions;->bVl:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActEmotions;->bVl:Landroid/view/View;

    iget-object v1, p0, Lcom/vent/ActEmotions;->bVi:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method private Bu()V
    .locals 2

    iget-object v0, p0, Lcom/vent/ActEmotions;->bVl:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActEmotions;->bVl:Landroid/view/View;

    iget-object v1, p0, Lcom/vent/ActEmotions;->bVj:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method private Bv()V
    .locals 1

    iget-object v0, p0, Lcom/vent/ActEmotions;->bVa:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/ActEmotions;->getSupportFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    invoke-static {v0}, Lcom/vent/ActEmotions$a;->b(Landroid/support/v4/app/n;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/vent/a/z;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vent/ActEmotions;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "vent"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private static a(Lcom/vent/a/h;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/vent/a/h;->ER()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/vent/a/h;->ES()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/vent/MyApplication;->cgy:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/vent/a/h;->EU()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/vent/bb;->cia:Z

    if-eqz v0, :cond_3

    :cond_1
    sget-object v0, Lcom/vent/bb;->ciU:Ljava/util/Set;

    iget-object v1, p0, Lcom/vent/a/h;->cjy:Lcom/vent/a/m;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/vent/a/h;->EV()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final Bs()V
    .locals 11

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vent/ActEmotions;->bVa:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vent/ActEmotions;->bVb:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/vent/ActEmotions;->bVh:Lcom/vent/a/z;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/vent/ActEmotions;->bVh:Lcom/vent/a/z;

    iget-object v0, v0, Lcom/vent/a/z;->ckX:Lcom/vent/a/m;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/vent/ActEmotions;->bVh:Lcom/vent/a/z;

    iget-object v0, v0, Lcom/vent/a/z;->ckX:Lcom/vent/a/m;

    move-object v1, v0

    :goto_0
    iput v4, p0, Lcom/vent/ActEmotions;->bVc:I

    iput-boolean v4, p0, Lcom/vent/ActEmotions;->bVd:Z

    iget-object v0, p0, Lcom/vent/ActEmotions;->bVr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/vent/bb;->ciO:Ljava/util/Map;

    invoke-static {v0}, Lcom/vent/d/c;->l(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/vent/ActEmotions;->bVr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    sget-object v0, Lcom/vent/bb;->ciO:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/h;

    iget-object v3, v0, Lcom/vent/a/h;->cjT:Ljava/util/List;

    invoke-static {v3}, Lcom/vent/d/c;->f(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Lcom/vent/ActEmotions;->a(Lcom/vent/a/h;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, v0, Lcom/vent/a/h;->cjT:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/m;

    sget-object v3, Lcom/vent/bb;->ciP:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/g;

    if-eqz v0, :cond_1

    iget-boolean v3, v0, Lcom/vent/a/g;->axa:Z

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/vent/a/g;->cjS:Ljava/lang/String;

    if-nez v3, :cond_2

    iget-object v3, v0, Lcom/vent/a/g;->cjP:Ljava/lang/String;

    if-nez v3, :cond_9

    move-object v3, v2

    :goto_2
    iput-object v3, v0, Lcom/vent/a/g;->cjS:Ljava/lang/String;

    :cond_2
    iget-object v3, v0, Lcom/vent/a/g;->cjS:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v10, 0xa

    if-lt v3, v10, :cond_a

    iput-boolean v5, p0, Lcom/vent/ActEmotions;->bVd:Z

    :cond_3
    iget v0, p0, Lcom/vent/ActEmotions;->bVc:I

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/vent/ActEmotions;->bVc:I

    new-instance v0, Lcom/vent/a/h;

    invoke-direct {v0}, Lcom/vent/a/h;-><init>()V

    sget-object v3, Lcom/vent/ActEmotions;->bVt:Lcom/vent/a/m;

    iput-object v3, v0, Lcom/vent/a/h;->cjy:Lcom/vent/a/m;

    const v3, 0x7f0f0109

    invoke-virtual {p0, v3}, Lcom/vent/ActEmotions;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/vent/a/h;->cjP:Ljava/lang/String;

    iget-object v3, p0, Lcom/vent/ActEmotions;->bVa:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/vent/ActEmotions;->bVb:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v4

    :goto_3
    iget-object v0, p0, Lcom/vent/ActEmotions;->bVe:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/vent/ActEmotions;->bVe:Landroid/support/v4/view/ViewPager;

    new-instance v6, Lcom/vent/ActEmotions$b;

    invoke-virtual {p0}, Lcom/vent/ActEmotions;->getSupportFragmentManager()Landroid/support/v4/app/n;

    move-result-object v7

    invoke-direct {v6, v7, p0}, Lcom/vent/ActEmotions$b;-><init>(Landroid/support/v4/app/n;Lcom/vent/ActEmotions;)V

    invoke-virtual {v0, v6}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/o;)V

    :cond_4
    iget-object v0, p0, Lcom/vent/ActEmotions;->bVf:Landroid/widget/SeekBar;

    if-eqz v0, :cond_5

    iget-object v6, p0, Lcom/vent/ActEmotions;->bVf:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/vent/ActEmotions;->bVa:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/vent/d/c;->f(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_17

    move v0, v4

    :goto_4
    invoke-virtual {v6, v0}, Landroid/widget/SeekBar;->setMax(I)V

    :cond_5
    const/4 v7, -0x1

    iget-object v0, p0, Lcom/vent/ActEmotions;->bVa:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v1, :cond_1d

    new-instance v9, Lcom/vent/a/m;

    invoke-static {}, Lcom/vent/bb;->Es()Z

    const-string v0, "4fdc3a9c-48bc-4d8d-b01e-0d6e3097307c"

    invoke-direct {v9, v0}, Lcom/vent/a/m;-><init>(Ljava/lang/CharSequence;)V

    move v6, v4

    :goto_5
    if-ge v6, v8, :cond_1d

    iget-object v0, p0, Lcom/vent/ActEmotions;->bVa:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/h;

    iget-object v0, v0, Lcom/vent/a/h;->cjy:Lcom/vent/a/m;

    invoke-static {v0, v9}, Lcom/vent/a/m;->b(Lcom/vent/a/m;Lcom/vent/a/m;)Z

    move-result v0

    if-eqz v0, :cond_18

    move v0, v6

    :goto_6
    if-gez v0, :cond_6

    if-eqz v1, :cond_19

    if-lez v8, :cond_19

    iget-object v0, p0, Lcom/vent/ActEmotions;->bVa:Ljava/util/ArrayList;

    add-int/lit8 v6, v8, -0x1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/h;

    iget-object v0, v0, Lcom/vent/a/h;->cjy:Lcom/vent/a/m;

    sget-object v6, Lcom/vent/ActEmotions;->bVs:Lcom/vent/a/m;

    invoke-static {v0, v6}, Lcom/vent/a/m;->b(Lcom/vent/a/m;Lcom/vent/a/m;)Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Lcom/vent/bb;->ciW:Lcom/vent/a/m;

    sget-object v6, Lcom/vent/ActEmotions;->bVs:Lcom/vent/a/m;

    invoke-static {v0, v6}, Lcom/vent/a/m;->b(Lcom/vent/a/m;Lcom/vent/a/m;)Z

    move-result v0

    if-eqz v0, :cond_19

    if-eqz v3, :cond_19

    add-int/lit8 v0, v8, -0x1

    :cond_6
    :goto_7
    iput-boolean v5, p0, Lcom/vent/ActEmotions;->bVv:Z

    invoke-virtual {p0, v0}, Lcom/vent/ActEmotions;->eg(I)V

    iput-boolean v4, p0, Lcom/vent/ActEmotions;->bVv:Z

    invoke-static {}, Lcom/vent/bb;->EH()Z

    move-result v0

    iput-boolean v0, p0, Lcom/vent/ActEmotions;->bVo:Z

    invoke-virtual {p0}, Lcom/vent/ActEmotions;->supportInvalidateOptionsMenu()V

    return-void

    :cond_7
    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    iget-object v0, v0, Lcom/vent/a/y;->ckO:Lcom/vent/a/m;

    move-object v1, v0

    goto/16 :goto_0

    :cond_8
    move-object v1, v2

    goto/16 :goto_0

    :cond_9
    iget-object v3, v0, Lcom/vent/a/g;->cjP:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    :cond_a
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_b
    sget-object v0, Lcom/vent/bb;->ciO:Ljava/util/Map;

    invoke-static {v0}, Lcom/vent/d/c;->l(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/vent/bb;->ciO:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/h;

    invoke-static {v0}, Lcom/vent/ActEmotions;->a(Lcom/vent/a/h;)Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/vent/ActEmotions;->bVa:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_d
    iget-object v0, p0, Lcom/vent/ActEmotions;->bVa:Ljava/util/ArrayList;

    new-instance v3, Lcom/vent/ActEmotions$7;

    invoke-direct {v3, p0}, Lcom/vent/ActEmotions$7;-><init>(Lcom/vent/ActEmotions;)V

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    sget-object v0, Lcom/vent/bb;->ciP:Ljava/util/Map;

    invoke-static {v0}, Lcom/vent/d/c;->l(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/vent/ActEmotions;->bVa:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/h;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, v0, Lcom/vent/a/h;->cjT:Ljava/util/List;

    invoke-static {v7}, Lcom/vent/d/c;->f(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_11

    iget-object v0, v0, Lcom/vent/a/h;->cjT:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_e
    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/m;

    sget-object v8, Lcom/vent/bb;->ciP:Ljava/util/Map;

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/g;

    if-eqz v0, :cond_e

    iget-boolean v8, v0, Lcom/vent/a/g;->axa:Z

    if-nez v8, :cond_f

    sget-boolean v8, Lcom/vent/bb;->cia:Z

    if-eqz v8, :cond_e

    :cond_f
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_10
    iget v0, p0, Lcom/vent/ActEmotions;->bVc:I

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/vent/ActEmotions;->bVc:I

    :cond_11
    iget-object v0, p0, Lcom/vent/ActEmotions;->bVb:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_12
    sget-object v0, Lcom/vent/bb;->ciV:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/vent/bb;->Ev()V

    :cond_13
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/vent/bb;->ciV:Ljava/util/List;

    invoke-static {v0}, Lcom/vent/d/c;->f(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Lcom/vent/bb;->ciV:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v3, v4

    :goto_b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/m;

    invoke-static {v0}, Lcom/vent/d/c;->g(Lcom/vent/a/m;)Lcom/vent/a/g;

    move-result-object v8

    if-eqz v8, :cond_15

    invoke-static {v8}, Lcom/vent/d/c;->b(Lcom/vent/a/g;)Lcom/vent/a/h;

    move-result-object v9

    if-eqz v9, :cond_15

    invoke-virtual {v9}, Lcom/vent/a/h;->EV()Z

    move-result v9

    if-nez v9, :cond_15

    invoke-static {v0, v1}, Lcom/vent/a/m;->b(Lcom/vent/a/m;Lcom/vent/a/m;)Z

    move-result v0

    if-eqz v0, :cond_14

    move v3, v5

    :cond_14
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    move v0, v3

    move v3, v0

    goto :goto_b

    :cond_16
    iget v0, p0, Lcom/vent/ActEmotions;->bVc:I

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/vent/ActEmotions;->bVc:I

    :goto_c
    new-instance v0, Lcom/vent/a/h;

    invoke-direct {v0}, Lcom/vent/a/h;-><init>()V

    sget-object v7, Lcom/vent/ActEmotions;->bVs:Lcom/vent/a/m;

    iput-object v7, v0, Lcom/vent/a/h;->cjy:Lcom/vent/a/m;

    const v7, 0x7f0f00f0

    invoke-virtual {p0, v7}, Lcom/vent/ActEmotions;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/vent/a/h;->cjP:Ljava/lang/String;

    iget-object v7, p0, Lcom/vent/ActEmotions;->bVa:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/vent/ActEmotions;->bVb:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_17
    iget-object v0, p0, Lcom/vent/ActEmotions;->bVa:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_4

    :cond_18
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_5

    :cond_19
    sget-object v0, Lcom/vent/bb;->ciP:Ljava/util/Map;

    if-nez v0, :cond_1a

    :goto_d
    if-eqz v2, :cond_1c

    iget-object v2, v2, Lcom/vent/a/g;->cjQ:Lcom/vent/a/m;

    if-eqz v2, :cond_1c

    move v1, v4

    :goto_e
    if-ge v1, v8, :cond_1c

    iget-object v0, p0, Lcom/vent/ActEmotions;->bVa:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/h;

    iget-object v0, v0, Lcom/vent/a/h;->cjy:Lcom/vent/a/m;

    invoke-static {v0, v2}, Lcom/vent/a/m;->b(Lcom/vent/a/m;Lcom/vent/a/m;)Z

    move-result v0

    if-eqz v0, :cond_1b

    move v0, v1

    goto/16 :goto_7

    :cond_1a
    sget-object v0, Lcom/vent/bb;->ciP:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/g;

    move-object v2, v0

    goto :goto_d

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1c
    move v0, v4

    goto/16 :goto_7

    :cond_1d
    move v0, v7

    goto/16 :goto_6

    :cond_1e
    move v3, v4

    goto :goto_c
.end method

.method public final P(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/vent/ActEmotions;->bVv:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/vent/ActEmotions;->Bt()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/vent/ActEmotions;->Bu()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final Q(I)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vent/ActEmotions;->bVv:Z

    invoke-virtual {p0, p1}, Lcom/vent/ActEmotions;->eg(I)V

    iput-boolean v0, p0, Lcom/vent/ActEmotions;->bVv:Z

    return-void
.end method

.method public final a(IFI)V
    .locals 3

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/vent/ActEmotions;->bVa:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/vent/ActEmotions;->bVa:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/h;

    invoke-virtual {p0, v0}, Lcom/vent/ActEmotions;->b(Lcom/vent/a/h;)I

    move-result v1

    iget-object v0, p0, Lcom/vent/ActEmotions;->bVa:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/h;

    invoke-virtual {p0, v0}, Lcom/vent/ActEmotions;->b(Lcom/vent/a/h;)I

    move-result v0

    invoke-static {v1, v0, p2}, Landroid/support/v4/a/a;->c(IIF)I

    move-result v0

    iget-object v1, p0, Lcom/vent/ActEmotions;->bVg:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vent/ActEmotions;->bVg:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    const/high16 v1, 0x19000000

    invoke-static {v1, v0}, Landroid/support/v4/a/a;->l(II)I

    move-result v0

    invoke-static {p0, v0}, Lcom/vent/d/c$c;->a(Landroid/app/Activity;I)V

    :cond_1
    return-void
.end method

.method public final aR(Z)Z
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/vent/ActEmotions;->bVh:Lcom/vent/a/z;

    iget-object v0, v0, Lcom/vent/a/z;->body:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActEmotions;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/vent/ActEmotions$9;

    invoke-direct {v1, p0}, Lcom/vent/ActEmotions$9;-><init>(Lcom/vent/ActEmotions;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return v4

    :cond_0
    invoke-virtual {p0, p1}, Lcom/vent/ActEmotions;->aT(Z)V

    goto :goto_0
.end method

.method final aV(Z)V
    .locals 4

    const/16 v1, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/vent/ActEmotions;->title:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/vent/ActEmotions;->title:Landroid/view/View;

    if-eqz p1, :cond_5

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/vent/ActEmotions;->bVf:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/ActEmotions;->bVf:Landroid/widget/SeekBar;

    if-eqz p1, :cond_6

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    :cond_1
    if-nez p1, :cond_7

    iget-boolean v0, p0, Lcom/vent/ActEmotions;->bVu:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vent/ActEmotions;->bVu:Z

    const v0, 0x7f09025f

    invoke-virtual {p0, v0}, Lcom/vent/ActEmotions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SearchView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->clearFocus()V

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->onActionViewCollapsed()V

    :cond_2
    invoke-static {p0}, Lcom/vent/d/c;->t(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/vent/ActEmotions;->bVr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vent/ActEmotions;->bVr:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/vent/ActEmotions;->Bs()V

    :cond_3
    iput-boolean v2, p0, Lcom/vent/ActEmotions;->bVu:Z

    :cond_4
    :goto_2
    return-void

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/vent/ActEmotions;->Bu()V

    goto :goto_2
.end method

.method final b(Lcom/vent/a/h;)I
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/vent/a/h;->cjy:Lcom/vent/a/m;

    sget-object v1, Lcom/vent/ActEmotions;->bVs:Lcom/vent/a/m;

    invoke-static {v0, v1}, Lcom/vent/a/m;->b(Lcom/vent/a/m;Lcom/vent/a/m;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/vent/a/h;->cjy:Lcom/vent/a/m;

    sget-object v1, Lcom/vent/ActEmotions;->bVt:Lcom/vent/a/m;

    invoke-static {v0, v1}, Lcom/vent/a/m;->b(Lcom/vent/a/m;Lcom/vent/a/m;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/vent/ActEmotions;->bVp:I

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/vent/a/h;->bm(Z)I

    move-result v0

    goto :goto_0
.end method

.method final b(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/vent/a;->b(IILandroid/content/Intent;)V

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/vent/ActEmotions;->Bs()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0x2a -> :sswitch_1
        0x2b -> :sswitch_1
    .end sparse-switch
.end method

.method final c(Lcom/vent/a/h;)I
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/vent/a/h;->cjy:Lcom/vent/a/m;

    sget-object v1, Lcom/vent/ActEmotions;->bVs:Lcom/vent/a/m;

    invoke-static {v0, v1}, Lcom/vent/a/m;->b(Lcom/vent/a/m;Lcom/vent/a/m;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/vent/a/h;->cjy:Lcom/vent/a/m;

    sget-object v1, Lcom/vent/ActEmotions;->bVt:Lcom/vent/a/m;

    invoke-static {v0, v1}, Lcom/vent/a/m;->b(Lcom/vent/a/m;Lcom/vent/a/m;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/vent/ActEmotions;->bVq:I

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/vent/a/h;->bo(Z)I

    move-result v0

    goto :goto_0
.end method

.method final eg(I)V
    .locals 3

    iget-object v0, p0, Lcom/vent/ActEmotions;->bVa:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    if-ltz p1, :cond_4

    iget-object v0, p0, Lcom/vent/ActEmotions;->bVa:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_4

    iget-object v0, p0, Lcom/vent/ActEmotions;->bVa:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/h;

    invoke-virtual {p0, v0}, Lcom/vent/ActEmotions;->b(Lcom/vent/a/h;)I

    move-result v0

    iget-object v1, p0, Lcom/vent/ActEmotions;->bVg:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vent/ActEmotions;->bVg:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    const/high16 v1, 0x19000000

    invoke-static {v1, v0}, Landroid/support/v4/a/a;->l(II)I

    move-result v0

    invoke-static {p0, v0}, Lcom/vent/d/c$c;->a(Landroid/app/Activity;I)V

    :cond_1
    iget-object v0, p0, Lcom/vent/ActEmotions;->bVe:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vent/ActEmotions;->bVe:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/view/ViewPager;->d(IZ)V

    :cond_2
    iget-object v0, p0, Lcom/vent/ActEmotions;->bVf:Landroid/widget/SeekBar;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vent/ActEmotions;->bVf:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcom/vent/ActEmotions;->bVk:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/vent/ActEmotions;->bVe:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/vent/ActEmotions;->bVe:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/o;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/vent/ActEmotions;->bVk:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vent/ActEmotions;->bVe:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/o;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v4/view/o;->aw(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/vent/a;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :sswitch_0
    if-ne p2, v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/vent/ActEmotions;->setResult(I)V

    invoke-virtual {p0}, Lcom/vent/ActEmotions;->finish()V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    const-string v0, "vent"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vent/a/z;

    iput-object v0, p0, Lcom/vent/ActEmotions;->bVh:Lcom/vent/a/z;

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/vent/ActEmotions;->a(IILandroid/content/Intent;)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/vent/ActEmotions;->a(IILandroid/content/Intent;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0x2a -> :sswitch_1
        0x2b -> :sswitch_1
    .end sparse-switch
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/vent/ActEmotions;->Bv()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0902b5
        :pswitch_0
    .end packed-switch
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v4, -0x1

    invoke-super {p0, p1}, Lcom/vent/a;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b0026

    invoke-virtual {p0, v0}, Lcom/vent/ActEmotions;->setContentView(I)V

    const v0, 0x7f0902b5

    invoke-virtual {p0, v0}, Lcom/vent/ActEmotions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/vent/ActEmotions;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/vent/ActEmotions;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/support/v7/app/a;->setDisplayHomeAsUpEnabled(Z)V

    sget-object v1, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/vent/ActEmotions;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p0}, Landroid/support/v7/widget/Toolbar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902af

    invoke-virtual {p0, v0}, Lcom/vent/ActEmotions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/ActEmotions;->title:Landroid/view/View;

    if-nez p1, :cond_c

    move-object v0, v2

    :goto_1
    iput-object v0, p0, Lcom/vent/ActEmotions;->bVr:Ljava/lang/String;

    const v0, 0x7f09025f

    invoke-virtual {p0, v0}, Lcom/vent/ActEmotions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SearchView;

    const v1, 0x7f090269

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const v3, -0x7f000001

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHintTextColor(I)V

    :cond_1
    new-instance v1, Lcom/vent/ActEmotions$1;

    invoke-direct {v1, p0}, Lcom/vent/ActEmotions$1;-><init>(Lcom/vent/ActEmotions;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView;->setOnQueryTextListener(Landroid/support/v7/widget/SearchView$c;)V

    new-instance v1, Lcom/vent/ActEmotions$2;

    invoke-direct {v1, p0}, Lcom/vent/ActEmotions$2;-><init>(Lcom/vent/ActEmotions;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView;->setOnCloseListener(Landroid/support/v7/widget/SearchView$b;)V

    new-instance v1, Lcom/vent/ActEmotions$3;

    invoke-direct {v1, p0}, Lcom/vent/ActEmotions$3;-><init>(Lcom/vent/ActEmotions;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v0, 0x7f010014

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/ActEmotions;->bVi:Landroid/view/animation/Animation;

    const v0, 0x7f010015

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/ActEmotions;->bVj:Landroid/view/animation/Animation;

    const v0, 0x7f09026c

    invoke-virtual {p0, v0}, Lcom/vent/ActEmotions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/ActEmotions;->bVl:Landroid/view/View;

    iget-object v0, p0, Lcom/vent/ActEmotions;->bVl:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    const v0, 0x7f09026b

    invoke-virtual {p0, v0}, Lcom/vent/ActEmotions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vent/ActEmotions;->bVk:Landroid/widget/TextView;

    const/4 v0, 0x0

    iput v0, p0, Lcom/vent/ActEmotions;->bVm:I

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/vent/ActEmotions;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/vent/ActEmotions;->bVn:I

    iget-object v0, p0, Lcom/vent/ActEmotions;->bVl:Landroid/view/View;

    new-instance v1, Lcom/vent/ActEmotions$4;

    invoke-direct {v1, p0}, Lcom/vent/ActEmotions$4;-><init>(Lcom/vent/ActEmotions;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/vent/ActEmotions;->bVi:Landroid/view/animation/Animation;

    new-instance v1, Lcom/vent/ActEmotions$5;

    invoke-direct {v1, p0}, Lcom/vent/ActEmotions$5;-><init>(Lcom/vent/ActEmotions;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/vent/ActEmotions;->bVj:Landroid/view/animation/Animation;

    new-instance v1, Lcom/vent/ActEmotions$6;

    invoke-direct {v1, p0}, Lcom/vent/ActEmotions$6;-><init>(Lcom/vent/ActEmotions;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_2
    if-nez p1, :cond_e

    invoke-virtual {p0}, Lcom/vent/ActEmotions;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v0, "vent"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vent/a/z;

    iput-object v0, p0, Lcom/vent/ActEmotions;->bVh:Lcom/vent/a/z;

    :cond_3
    iget-object v0, p0, Lcom/vent/ActEmotions;->bVh:Lcom/vent/a/z;

    if-nez v0, :cond_4

    invoke-static {}, Lcom/vent/a/z;->Fn()Lcom/vent/a/z;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/ActEmotions;->bVh:Lcom/vent/a/z;

    :cond_4
    if-eqz v3, :cond_a

    invoke-virtual {p0, v2}, Lcom/vent/ActEmotions;->setIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/vent/ActEmotions;->bVh:Lcom/vent/a/z;

    const-string v1, "body"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vent/a/z;->body:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "android.intent.extra.SUBJECT"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vent/d/e;->ex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_5
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vent/d/e;->ex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :cond_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_7
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/vent/ActEmotions;->bVh:Lcom/vent/a/z;

    iget-object v0, v0, Lcom/vent/a/z;->body:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/vent/ActEmotions;->bVh:Lcom/vent/a/z;

    iput-object v1, v0, Lcom/vent/a/z;->body:Ljava/lang/String;

    :cond_9
    iget-object v0, p0, Lcom/vent/ActEmotions;->bVh:Lcom/vent/a/z;

    const-string v1, "vent_privacy"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vent/a/z;->ei(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/vent/a/z;->clc:I

    const-string v0, "group_id"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/vent/ActEmotions;->bVh:Lcom/vent/a/z;

    new-instance v2, Lcom/vent/a/k;

    invoke-direct {v2}, Lcom/vent/a/k;-><init>()V

    iput-object v2, v1, Lcom/vent/a/z;->bYM:Lcom/vent/a/k;

    iget-object v1, p0, Lcom/vent/ActEmotions;->bVh:Lcom/vent/a/z;

    iget-object v1, v1, Lcom/vent/a/z;->bYM:Lcom/vent/a/k;

    new-instance v2, Lcom/vent/a/m;

    invoke-direct {v2, v0}, Lcom/vent/a/m;-><init>(Ljava/lang/CharSequence;)V

    iput-object v2, v1, Lcom/vent/a/k;->cjy:Lcom/vent/a/m;

    iget-object v0, p0, Lcom/vent/ActEmotions;->bVh:Lcom/vent/a/z;

    iget-object v0, v0, Lcom/vent/a/z;->bYM:Lcom/vent/a/k;

    const-string v1, "group_name"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vent/a/k;->setName(Ljava/lang/String;)V

    :cond_a
    iget-object v0, p0, Lcom/vent/ActEmotions;->bVh:Lcom/vent/a/z;

    iget-object v0, v0, Lcom/vent/a/z;->body:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/vent/ActEmotions;->bVh:Lcom/vent/a/z;

    sget-object v1, Lcom/vent/bb;->cir:Ljava/lang/String;

    iput-object v1, v0, Lcom/vent/a/z;->body:Ljava/lang/String;

    :cond_b
    :goto_3
    const v0, 0x7f0901aa

    invoke-virtual {p0, v0}, Lcom/vent/ActEmotions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/ActEmotions;->bVg:Landroid/view/View;

    const v0, 0x7f09020e

    invoke-virtual {p0, v0}, Lcom/vent/ActEmotions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/vent/ActEmotions;->bVe:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/vent/ActEmotions;->bVe:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/ViewPager$f;)V

    const v0, 0x7f090061

    invoke-virtual {p0, v0}, Lcom/vent/ActEmotions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/vent/ActEmotions;->bVf:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/vent/ActEmotions;->bVf:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const v0, -0x7f7f80

    iput v0, p0, Lcom/vent/ActEmotions;->bVp:I

    iput v4, p0, Lcom/vent/ActEmotions;->bVq:I

    invoke-virtual {p0}, Lcom/vent/ActEmotions;->Bs()V

    goto/16 :goto_0

    :cond_c
    const-string v0, "searchString"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_d
    move-object v1, v0

    goto/16 :goto_2

    :cond_e
    const-string v0, "vent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vent/a/z;

    iput-object v0, p0, Lcom/vent/ActEmotions;->bVh:Lcom/vent/a/z;

    goto :goto_3
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    const/4 v4, 0x0

    sget-boolean v0, Lcom/vent/MyApplication;->cgy:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vent/ActEmotions;->bVo:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0800d0

    :goto_0
    const v1, 0x7f0900e8

    const v2, 0x7f0f005c

    const/4 v3, 0x1

    new-array v3, v3, [I

    aput v0, v3, v4

    invoke-static {p0, v2, v3, v4}, Lcom/vent/d/e;->a(Landroid/content/Context;I[IZ)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p1, v4, v1, v4, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/vent/a;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    :cond_1
    const v0, 0x7f0800cc

    goto :goto_0
.end method

.method protected final onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vent/ActEmotions;->title:Landroid/view/View;

    iput-object v0, p0, Lcom/vent/ActEmotions;->bVl:Landroid/view/View;

    iput-object v0, p0, Lcom/vent/ActEmotions;->bVk:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vent/ActEmotions;->bVg:Landroid/view/View;

    iput-object v0, p0, Lcom/vent/ActEmotions;->bVf:Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/vent/ActEmotions;->bVe:Landroid/support/v4/view/ViewPager;

    invoke-super {p0}, Lcom/vent/a;->onDestroy()V

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/vent/a;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    invoke-direct {p0}, Lcom/vent/ActEmotions;->Bv()V

    goto :goto_0

    :sswitch_1
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/vent/ActStore;->a(Lcom/vent/a;Lcom/vent/a/x;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0900d3 -> :sswitch_0
        0x7f0900e8 -> :sswitch_1
    .end sparse-switch
.end method

.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    iget-object v0, p0, Lcom/vent/ActEmotions;->bVf:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vent/ActEmotions;->bVv:Z

    iget-object v0, p0, Lcom/vent/ActEmotions;->bVf:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vent/ActEmotions;->eg(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vent/ActEmotions;->bVv:Z

    :cond_0
    return-void
.end method

.method protected final onResume()V
    .locals 1

    invoke-super {p0}, Lcom/vent/a;->onResume()V

    invoke-static {p0}, Lcom/vent/bb;->r(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "ChooseEmotion"

    invoke-static {p0, v0}, Lcom/vent/ax;->v(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/vent/a;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "vent"

    iget-object v1, p0, Lcom/vent/ActEmotions;->bVh:Lcom/vent/a/z;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "searchString"

    iget-object v1, p0, Lcom/vent/ActEmotions;->bVr:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/vent/ActEmotions;->Bt()V

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/vent/ActEmotions;->Bu()V

    return-void
.end method
