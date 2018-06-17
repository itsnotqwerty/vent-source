.class Landroid/support/v7/app/k;
.super Landroid/support/v7/app/g;

# interfaces
.implements Landroid/support/v7/view/menu/h$a;
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/k$c;,
        Landroid/support/v7/app/k$d;,
        Landroid/support/v7/app/k$a;,
        Landroid/support/v7/app/k$e;,
        Landroid/support/v7/app/k$b;
    }
.end annotation


# static fields
.field private static final Nf:Z


# instance fields
.field private LC:Landroid/widget/TextView;

.field private NA:Z

.field private NB:Landroid/support/v7/app/AppCompatViewInflater;

.field private Ng:Landroid/support/v7/widget/aj;

.field private Nh:Landroid/support/v7/app/k$a;

.field private Ni:Landroid/support/v7/app/k$e;

.field Nj:Landroid/support/v7/view/b;

.field Nk:Landroid/support/v7/widget/ActionBarContextView;

.field Nl:Landroid/widget/PopupWindow;

.field Nm:Ljava/lang/Runnable;

.field Nn:Landroid/support/v4/view/v;

.field private No:Z

.field private Np:Landroid/view/ViewGroup;

.field private Nq:Landroid/view/View;

.field private Nr:Z

.field private Ns:Z

.field private Nt:Z

.field private Nu:[Landroid/support/v7/app/k$d;

.field private Nv:Landroid/support/v7/app/k$d;

.field private Nw:Z

.field Nx:Z

.field Ny:I

.field private final Nz:Ljava/lang/Runnable;

.field private ng:Landroid/graphics/Rect;

.field private nh:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/support/v7/app/k;->Nf:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/e;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/app/g;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/e;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/k;->Nn:Landroid/support/v4/view/v;

    new-instance v0, Landroid/support/v7/app/k$1;

    invoke-direct {v0, p0}, Landroid/support/v7/app/k$1;-><init>(Landroid/support/v7/app/k;)V

    iput-object v0, p0, Landroid/support/v7/app/k;->Nz:Ljava/lang/Runnable;

    return-void
.end method

.method private a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 9

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/v7/app/k;->NB:Landroid/support/v7/app/AppCompatViewInflater;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/k;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/support/v7/a/a$j;->AppCompatTheme:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Landroid/support/v7/a/a$j;->AppCompatTheme_viewInflaterClass:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-class v0, Landroid/support/v7/app/AppCompatViewInflater;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_0
    new-instance v0, Landroid/support/v7/app/AppCompatViewInflater;

    invoke-direct {v0}, Landroid/support/v7/app/AppCompatViewInflater;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/k;->NB:Landroid/support/v7/app/AppCompatViewInflater;

    :cond_1
    :goto_0
    sget-boolean v0, Landroid/support/v7/app/k;->Nf:Z

    if-eqz v0, :cond_10

    instance-of v0, p4, Lorg/xmlpull/v1/XmlPullParser;

    if-eqz v0, :cond_9

    move-object v0, p4

    check-cast v0, Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-le v0, v2, :cond_8

    move v0, v2

    :goto_1
    iget-object v5, p0, Landroid/support/v7/app/k;->NB:Landroid/support/v7/app/AppCompatViewInflater;

    sget-boolean v4, Landroid/support/v7/app/k;->Nf:Z

    invoke-static {}, Landroid/support/v7/widget/bt;->jb()Z

    move-result v6

    if-eqz v0, :cond_f

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    :goto_2
    sget-object v0, Landroid/support/v7/a/a$j;->View:[I

    invoke-virtual {v1, p4, v0, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    if-eqz v4, :cond_e

    sget v0, Landroid/support/v7/a/a$j;->View_android_theme:I

    invoke-virtual {v7, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    :goto_3
    if-nez v0, :cond_2

    sget v0, Landroid/support/v7/a/a$j;->View_theme:I

    invoke-virtual {v7, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_2

    const-string v4, "AppCompatViewInflater"

    const-string v8, "app:theme is now deprecated. Please move to using android:theme instead."

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v4, v0

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v4, :cond_d

    instance-of v0, v1, Landroid/support/v7/view/d;

    if-eqz v0, :cond_3

    move-object v0, v1

    check-cast v0, Landroid/support/v7/view/d;

    iget v0, v0, Landroid/support/v7/view/d;->Pt:I

    if-eq v0, v4, :cond_d

    :cond_3
    new-instance v0, Landroid/support/v7/view/d;

    invoke-direct {v0, v1, v4}, Landroid/support/v7/view/d;-><init>(Landroid/content/Context;I)V

    :goto_4
    if-eqz v6, :cond_4

    invoke-static {v0}, Landroid/support/v7/widget/bl;->n(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    :cond_4
    const/4 v1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_5
    move v2, v1

    :goto_5
    packed-switch v2, :pswitch_data_0

    const/4 v1, 0x0

    :goto_6
    if-nez v1, :cond_c

    if-eq p3, v0, :cond_c

    invoke-virtual {v5, v0, p2, p4}, Landroid/support/v7/app/AppCompatViewInflater;->a(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    :goto_7
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v2, v1, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_6

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xf

    if-lt v2, v4, :cond_a

    invoke-static {v0}, Landroid/support/v4/view/r;->ai(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_6
    :goto_8
    return-object v0

    :cond_7
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AppCompatViewInflater;

    iput-object v0, p0, Landroid/support/v7/app/k;->NB:Landroid/support/v7/app/AppCompatViewInflater;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v4, "AppCompatDelegate"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to instantiate custom view inflater "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ". Falling back to default."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Landroid/support/v7/app/AppCompatViewInflater;

    invoke-direct {v0}, Landroid/support/v7/app/AppCompatViewInflater;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/k;->NB:Landroid/support/v7/app/AppCompatViewInflater;

    goto/16 :goto_0

    :cond_8
    move v0, v3

    goto/16 :goto_1

    :cond_9
    move-object v0, p1

    check-cast v0, Landroid/view/ViewParent;

    invoke-direct {p0, v0}, Landroid/support/v7/app/k;->a(Landroid/view/ViewParent;)Z

    move-result v0

    goto/16 :goto_1

    :sswitch_0
    const-string v2, "TextView"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    goto :goto_5

    :sswitch_1
    const-string v4, "ImageView"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_5

    :sswitch_2
    const-string v2, "Button"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x2

    goto/16 :goto_5

    :sswitch_3
    const-string v2, "EditText"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x3

    goto/16 :goto_5

    :sswitch_4
    const-string v2, "Spinner"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x4

    goto/16 :goto_5

    :sswitch_5
    const-string v2, "ImageButton"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x5

    goto/16 :goto_5

    :sswitch_6
    const-string v2, "CheckBox"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x6

    goto/16 :goto_5

    :sswitch_7
    const-string v2, "RadioButton"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x7

    goto/16 :goto_5

    :sswitch_8
    const-string v2, "CheckedTextView"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x8

    goto/16 :goto_5

    :sswitch_9
    const-string v2, "AutoCompleteTextView"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x9

    goto/16 :goto_5

    :sswitch_a
    const-string v2, "MultiAutoCompleteTextView"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0xa

    goto/16 :goto_5

    :sswitch_b
    const-string v2, "RatingBar"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0xb

    goto/16 :goto_5

    :sswitch_c
    const-string v2, "SeekBar"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0xc

    goto/16 :goto_5

    :pswitch_0
    new-instance v1, Landroid/support/v7/widget/AppCompatTextView;

    invoke-direct {v1, v0, p4}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_6

    :pswitch_1
    new-instance v1, Landroid/support/v7/widget/r;

    invoke-direct {v1, v0, p4}, Landroid/support/v7/widget/r;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_6

    :pswitch_2
    new-instance v1, Landroid/support/v7/widget/i;

    invoke-direct {v1, v0, p4}, Landroid/support/v7/widget/i;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_6

    :pswitch_3
    new-instance v1, Landroid/support/v7/widget/n;

    invoke-direct {v1, v0, p4}, Landroid/support/v7/widget/n;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_6

    :pswitch_4
    new-instance v1, Landroid/support/v7/widget/z;

    invoke-direct {v1, v0, p4}, Landroid/support/v7/widget/z;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_6

    :pswitch_5
    new-instance v1, Landroid/support/v7/widget/p;

    invoke-direct {v1, v0, p4}, Landroid/support/v7/widget/p;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_6

    :pswitch_6
    new-instance v1, Landroid/support/v7/widget/j;

    invoke-direct {v1, v0, p4}, Landroid/support/v7/widget/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_6

    :pswitch_7
    new-instance v1, Landroid/support/v7/widget/v;

    invoke-direct {v1, v0, p4}, Landroid/support/v7/widget/v;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_6

    :pswitch_8
    new-instance v1, Landroid/support/v7/widget/k;

    invoke-direct {v1, v0, p4}, Landroid/support/v7/widget/k;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_6

    :pswitch_9
    new-instance v1, Landroid/support/v7/widget/g;

    invoke-direct {v1, v0, p4}, Landroid/support/v7/widget/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_6

    :pswitch_a
    new-instance v1, Landroid/support/v7/widget/s;

    invoke-direct {v1, v0, p4}, Landroid/support/v7/widget/s;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_6

    :pswitch_b
    new-instance v1, Landroid/support/v7/widget/w;

    invoke-direct {v1, v0, p4}, Landroid/support/v7/widget/w;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_6

    :pswitch_c
    new-instance v1, Landroid/support/v7/widget/x;

    invoke-direct {v1, v0, p4}, Landroid/support/v7/widget/x;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_6

    :cond_a
    sget-object v2, Landroid/support/v7/app/AppCompatViewInflater;->NV:[I

    invoke-virtual {v1, p4, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    new-instance v3, Landroid/support/v7/app/AppCompatViewInflater$a;

    invoke-direct {v3, v0, v2}, Landroid/support/v7/app/AppCompatViewInflater$a;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_8

    :cond_c
    move-object v0, v1

    goto/16 :goto_7

    :cond_d
    move-object v0, v1

    goto/16 :goto_4

    :cond_e
    move v0, v3

    goto/16 :goto_3

    :cond_f
    move-object v1, p3

    goto/16 :goto_2

    :cond_10
    move v0, v3

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x7404ceea -> :sswitch_b
        -0x56c015e7 -> :sswitch_8
        -0x503aa7ad -> :sswitch_a
        -0x37f7066e -> :sswitch_0
        -0x37e04bb3 -> :sswitch_5
        -0x274065a5 -> :sswitch_c
        -0x1440b607 -> :sswitch_4
        0x2e46a6ed -> :sswitch_7
        0x431b5280 -> :sswitch_1
        0x5445f9ba -> :sswitch_9
        0x5f7507c3 -> :sswitch_6
        0x63577677 -> :sswitch_3
        0x77471352 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private a(Landroid/support/v7/app/k$d;Landroid/view/KeyEvent;)V
    .locals 10

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    const/4 v9, 0x1

    iget-boolean v0, p1, Landroid/support/v7/app/k$d;->NP:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/app/g;->MP:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/support/v7/app/k$d;->NG:I

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/app/k;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v4, 0x4

    if-ne v0, v4, :cond_3

    move v0, v9

    :goto_1
    if-nez v0, :cond_0

    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/g;->Le:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_4

    iget v4, p1, Landroid/support/v7/app/k$d;->NG:I

    iget-object v5, p1, Landroid/support/v7/app/k$d;->NK:Landroid/support/v7/view/menu/h;

    invoke-interface {v0, v4, v5}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0, p1, v9}, Landroid/support/v7/app/k;->a(Landroid/support/v7/app/k$d;Z)V

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_1

    :cond_4
    iget-object v0, p0, Landroid/support/v7/app/k;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/view/WindowManager;

    if-eqz v8, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/k;->b(Landroid/support/v7/app/k$d;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v7/app/k$d;->NH:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    iget-boolean v0, p1, Landroid/support/v7/app/k$d;->NR:Z

    if-eqz v0, :cond_16

    :cond_5
    iget-object v0, p1, Landroid/support/v7/app/k$d;->NH:Landroid/view/ViewGroup;

    if-nez v0, :cond_c

    invoke-virtual {p0}, Landroid/support/v7/app/k;->ez()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    sget v5, Landroid/support/v7/a/a$a;->actionBarPopupTheme:I

    invoke-virtual {v4, v5, v1, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_6

    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5, v9}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_6
    sget v5, Landroid/support/v7/a/a$a;->panelMenuListTheme:I

    invoke-virtual {v4, v5, v1, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_b

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v1, v9}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :goto_2
    new-instance v1, Landroid/support/v7/view/d;

    invoke-direct {v1, v0, v3}, Landroid/support/v7/view/d;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iput-object v1, p1, Landroid/support/v7/app/k$d;->NM:Landroid/content/Context;

    sget-object v0, Landroid/support/v7/a/a$j;->AppCompatTheme:[I

    invoke-virtual {v1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Landroid/support/v7/a/a$j;->AppCompatTheme_panelBackground:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p1, Landroid/support/v7/app/k$d;->background:I

    sget v1, Landroid/support/v7/a/a$j;->AppCompatTheme_android_windowAnimationStyle:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p1, Landroid/support/v7/app/k$d;->windowAnimations:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Landroid/support/v7/app/k$c;

    iget-object v1, p1, Landroid/support/v7/app/k$d;->NM:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/k$c;-><init>(Landroid/support/v7/app/k;Landroid/content/Context;)V

    iput-object v0, p1, Landroid/support/v7/app/k$d;->NH:Landroid/view/ViewGroup;

    const/16 v0, 0x51

    iput v0, p1, Landroid/support/v7/app/k$d;->gravity:I

    iget-object v0, p1, Landroid/support/v7/app/k$d;->NH:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    :cond_7
    :goto_3
    iget-object v0, p1, Landroid/support/v7/app/k$d;->NJ:Landroid/view/View;

    if-eqz v0, :cond_d

    iget-object v0, p1, Landroid/support/v7/app/k$d;->NJ:Landroid/view/View;

    iput-object v0, p1, Landroid/support/v7/app/k$d;->NI:Landroid/view/View;

    move v0, v9

    :goto_4
    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v7/app/k$d;->NI:Landroid/view/View;

    if-eqz v0, :cond_15

    iget-object v0, p1, Landroid/support/v7/app/k$d;->NJ:Landroid/view/View;

    if-eqz v0, :cond_14

    move v0, v9

    :goto_5
    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v7/app/k$d;->NI:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_18

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v1, v0

    :goto_6
    iget v0, p1, Landroid/support/v7/app/k$d;->background:I

    iget-object v4, p1, Landroid/support/v7/app/k$d;->NH:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    iget-object v0, p1, Landroid/support/v7/app/k$d;->NI:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_8

    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_8

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v4, p1, Landroid/support/v7/app/k$d;->NI:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_8
    iget-object v0, p1, Landroid/support/v7/app/k$d;->NH:Landroid/view/ViewGroup;

    iget-object v4, p1, Landroid/support/v7/app/k$d;->NI:Landroid/view/View;

    invoke-virtual {v0, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p1, Landroid/support/v7/app/k$d;->NI:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p1, Landroid/support/v7/app/k$d;->NI:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_9
    move v1, v2

    :cond_a
    :goto_7
    iput-boolean v3, p1, Landroid/support/v7/app/k$d;->NO:Z

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v3, p1, Landroid/support/v7/app/k$d;->x:I

    iget v4, p1, Landroid/support/v7/app/k$d;->y:I

    const/16 v5, 0x3ea

    const/high16 v6, 0x820000

    const/4 v7, -0x3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iget v1, p1, Landroid/support/v7/app/k$d;->gravity:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v1, p1, Landroid/support/v7/app/k$d;->windowAnimations:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v1, p1, Landroid/support/v7/app/k$d;->NH:Landroid/view/ViewGroup;

    invoke-interface {v8, v1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v9, p1, Landroid/support/v7/app/k$d;->NP:Z

    goto/16 :goto_0

    :cond_b
    sget v1, Landroid/support/v7/a/a$i;->Theme_AppCompat_CompactMenu:I

    invoke-virtual {v4, v1, v9}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto/16 :goto_2

    :cond_c
    iget-boolean v0, p1, Landroid/support/v7/app/k$d;->NR:Z

    if-eqz v0, :cond_7

    iget-object v0, p1, Landroid/support/v7/app/k$d;->NH:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p1, Landroid/support/v7/app/k$d;->NH:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    goto/16 :goto_3

    :cond_d
    iget-object v0, p1, Landroid/support/v7/app/k$d;->NK:Landroid/support/v7/view/menu/h;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/support/v7/app/k;->Ni:Landroid/support/v7/app/k$e;

    if-nez v0, :cond_e

    new-instance v0, Landroid/support/v7/app/k$e;

    invoke-direct {v0, p0}, Landroid/support/v7/app/k$e;-><init>(Landroid/support/v7/app/k;)V

    iput-object v0, p0, Landroid/support/v7/app/k;->Ni:Landroid/support/v7/app/k$e;

    :cond_e
    iget-object v0, p0, Landroid/support/v7/app/k;->Ni:Landroid/support/v7/app/k$e;

    iget-object v1, p1, Landroid/support/v7/app/k$d;->NK:Landroid/support/v7/view/menu/h;

    if-nez v1, :cond_f

    const/4 v0, 0x0

    :goto_8
    check-cast v0, Landroid/view/View;

    iput-object v0, p1, Landroid/support/v7/app/k$d;->NI:Landroid/view/View;

    iget-object v0, p1, Landroid/support/v7/app/k$d;->NI:Landroid/view/View;

    if-eqz v0, :cond_13

    move v0, v9

    goto/16 :goto_4

    :cond_f
    iget-object v1, p1, Landroid/support/v7/app/k$d;->NL:Landroid/support/v7/view/menu/f;

    if-nez v1, :cond_10

    new-instance v1, Landroid/support/v7/view/menu/f;

    iget-object v4, p1, Landroid/support/v7/app/k$d;->NM:Landroid/content/Context;

    sget v5, Landroid/support/v7/a/a$g;->abc_list_menu_item_layout:I

    invoke-direct {v1, v4, v5}, Landroid/support/v7/view/menu/f;-><init>(Landroid/content/Context;I)V

    iput-object v1, p1, Landroid/support/v7/app/k$d;->NL:Landroid/support/v7/view/menu/f;

    iget-object v1, p1, Landroid/support/v7/app/k$d;->NL:Landroid/support/v7/view/menu/f;

    iput-object v0, v1, Landroid/support/v7/view/menu/f;->QU:Landroid/support/v7/view/menu/o$a;

    iget-object v0, p1, Landroid/support/v7/app/k$d;->NK:Landroid/support/v7/view/menu/h;

    iget-object v1, p1, Landroid/support/v7/app/k$d;->NL:Landroid/support/v7/view/menu/f;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->a(Landroid/support/v7/view/menu/o;)V

    :cond_10
    iget-object v1, p1, Landroid/support/v7/app/k$d;->NL:Landroid/support/v7/view/menu/f;

    iget-object v0, p1, Landroid/support/v7/app/k$d;->NH:Landroid/view/ViewGroup;

    iget-object v4, v1, Landroid/support/v7/view/menu/f;->RQ:Landroid/support/v7/view/menu/ExpandedMenuView;

    if-nez v4, :cond_12

    iget-object v4, v1, Landroid/support/v7/view/menu/f;->JR:Landroid/view/LayoutInflater;

    sget v5, Landroid/support/v7/a/a$g;->abc_expanded_menu_layout:I

    invoke-virtual {v4, v5, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/ExpandedMenuView;

    iput-object v0, v1, Landroid/support/v7/view/menu/f;->RQ:Landroid/support/v7/view/menu/ExpandedMenuView;

    iget-object v0, v1, Landroid/support/v7/view/menu/f;->RT:Landroid/support/v7/view/menu/f$a;

    if-nez v0, :cond_11

    new-instance v0, Landroid/support/v7/view/menu/f$a;

    invoke-direct {v0, v1}, Landroid/support/v7/view/menu/f$a;-><init>(Landroid/support/v7/view/menu/f;)V

    iput-object v0, v1, Landroid/support/v7/view/menu/f;->RT:Landroid/support/v7/view/menu/f$a;

    :cond_11
    iget-object v0, v1, Landroid/support/v7/view/menu/f;->RQ:Landroid/support/v7/view/menu/ExpandedMenuView;

    iget-object v4, v1, Landroid/support/v7/view/menu/f;->RT:Landroid/support/v7/view/menu/f$a;

    invoke-virtual {v0, v4}, Landroid/support/v7/view/menu/ExpandedMenuView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, v1, Landroid/support/v7/view/menu/f;->RQ:Landroid/support/v7/view/menu/ExpandedMenuView;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/ExpandedMenuView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_12
    iget-object v0, v1, Landroid/support/v7/view/menu/f;->RQ:Landroid/support/v7/view/menu/ExpandedMenuView;

    goto :goto_8

    :cond_13
    move v0, v3

    goto/16 :goto_4

    :cond_14
    iget-object v0, p1, Landroid/support/v7/app/k$d;->NL:Landroid/support/v7/view/menu/f;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/f;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_15

    move v0, v9

    goto/16 :goto_5

    :cond_15
    move v0, v3

    goto/16 :goto_5

    :cond_16
    iget-object v0, p1, Landroid/support/v7/app/k$d;->NJ:Landroid/view/View;

    if-eqz v0, :cond_17

    iget-object v0, p1, Landroid/support/v7/app/k$d;->NJ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_17

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v0, v1, :cond_a

    :cond_17
    move v1, v2

    goto/16 :goto_7

    :cond_18
    move-object v1, v0

    goto/16 :goto_6
.end method

.method private a(Landroid/support/v7/app/k$d;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p1, Landroid/support/v7/app/k$d;->NN:Z

    if-nez v1, :cond_2

    invoke-direct {p0, p1, p3}, Landroid/support/v7/app/k;->b(Landroid/support/v7/app/k$d;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    iget-object v1, p1, Landroid/support/v7/app/k$d;->NK:Landroid/support/v7/view/menu/h;

    if-eqz v1, :cond_0

    iget-object v0, p1, Landroid/support/v7/app/k$d;->NK:Landroid/support/v7/view/menu/h;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p3, v1}, Landroid/support/v7/view/menu/h;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    goto :goto_0
.end method

.method private a(Landroid/view/ViewParent;)Z
    .locals 4

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/k;->Le:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    move-object v1, p1

    :goto_1
    if-nez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    if-eq v1, v3, :cond_2

    instance-of v0, v1, Landroid/view/View;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/r;->ah(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_1
.end method

.method private b(Landroid/support/v7/app/k$d;Landroid/view/KeyEvent;)Z
    .locals 10

    const/16 v5, 0x6c

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-boolean v0, p0, Landroid/support/v7/app/g;->MP:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-boolean v0, p1, Landroid/support/v7/app/k$d;->NN:Z

    if-eqz v0, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/k;->Nv:Landroid/support/v7/app/k$d;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/app/k;->Nv:Landroid/support/v7/app/k$d;

    if-eq v0, p1, :cond_3

    iget-object v0, p0, Landroid/support/v7/app/k;->Nv:Landroid/support/v7/app/k$d;

    invoke-virtual {p0, v0, v4}, Landroid/support/v7/app/k;->a(Landroid/support/v7/app/k$d;Z)V

    :cond_3
    iget-object v0, p0, Landroid/support/v7/app/g;->Le:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v7

    if-eqz v7, :cond_4

    iget v0, p1, Landroid/support/v7/app/k$d;->NG:I

    invoke-interface {v7, v0}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v7/app/k$d;->NJ:Landroid/view/View;

    :cond_4
    iget v0, p1, Landroid/support/v7/app/k$d;->NG:I

    if-eqz v0, :cond_5

    iget v0, p1, Landroid/support/v7/app/k$d;->NG:I

    if-ne v0, v5, :cond_f

    :cond_5
    move v6, v3

    :goto_1
    if-eqz v6, :cond_6

    iget-object v0, p0, Landroid/support/v7/app/k;->Ng:Landroid/support/v7/widget/aj;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v7/app/k;->Ng:Landroid/support/v7/widget/aj;

    invoke-interface {v0}, Landroid/support/v7/widget/aj;->fF()V

    :cond_6
    iget-object v0, p1, Landroid/support/v7/app/k$d;->NJ:Landroid/view/View;

    if-nez v0, :cond_16

    if-eqz v6, :cond_7

    iget-object v0, p0, Landroid/support/v7/app/g;->MH:Landroid/support/v7/app/a;

    instance-of v0, v0, Landroid/support/v7/app/n;

    if-nez v0, :cond_16

    :cond_7
    iget-object v0, p1, Landroid/support/v7/app/k$d;->NK:Landroid/support/v7/view/menu/h;

    if-eqz v0, :cond_8

    iget-boolean v0, p1, Landroid/support/v7/app/k$d;->NS:Z

    if-eqz v0, :cond_12

    :cond_8
    iget-object v0, p1, Landroid/support/v7/app/k$d;->NK:Landroid/support/v7/view/menu/h;

    if-nez v0, :cond_c

    iget-object v2, p0, Landroid/support/v7/app/k;->mContext:Landroid/content/Context;

    iget v0, p1, Landroid/support/v7/app/k$d;->NG:I

    if-eqz v0, :cond_9

    iget v0, p1, Landroid/support/v7/app/k$d;->NG:I

    if-ne v0, v5, :cond_19

    :cond_9
    iget-object v0, p0, Landroid/support/v7/app/k;->Ng:Landroid/support/v7/widget/aj;

    if-eqz v0, :cond_19

    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    sget v0, Landroid/support/v7/a/a$a;->actionBarTheme:I

    invoke-virtual {v8, v0, v5, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v5, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_10

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iget v9, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v9, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    sget v9, Landroid/support/v7/a/a$a;->actionBarWidgetTheme:I

    invoke-virtual {v0, v9, v5, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    :goto_2
    iget v9, v5, Landroid/util/TypedValue;->resourceId:I

    if-eqz v9, :cond_b

    if-nez v0, :cond_a

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    :cond_a
    iget v5, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v5, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_b
    move-object v5, v0

    if-eqz v5, :cond_19

    new-instance v0, Landroid/support/v7/view/d;

    invoke-direct {v0, v2, v4}, Landroid/support/v7/view/d;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    :goto_3
    new-instance v2, Landroid/support/v7/view/menu/h;

    invoke-direct {v2, v0}, Landroid/support/v7/view/menu/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p0}, Landroid/support/v7/view/menu/h;->a(Landroid/support/v7/view/menu/h$a;)V

    invoke-virtual {p1, v2}, Landroid/support/v7/app/k$d;->e(Landroid/support/v7/view/menu/h;)V

    iget-object v0, p1, Landroid/support/v7/app/k$d;->NK:Landroid/support/v7/view/menu/h;

    if-eqz v0, :cond_0

    :cond_c
    if-eqz v6, :cond_e

    iget-object v0, p0, Landroid/support/v7/app/k;->Ng:Landroid/support/v7/widget/aj;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v7/app/k;->Nh:Landroid/support/v7/app/k$a;

    if-nez v0, :cond_d

    new-instance v0, Landroid/support/v7/app/k$a;

    invoke-direct {v0, p0}, Landroid/support/v7/app/k$a;-><init>(Landroid/support/v7/app/k;)V

    iput-object v0, p0, Landroid/support/v7/app/k;->Nh:Landroid/support/v7/app/k$a;

    :cond_d
    iget-object v0, p0, Landroid/support/v7/app/k;->Ng:Landroid/support/v7/widget/aj;

    iget-object v2, p1, Landroid/support/v7/app/k$d;->NK:Landroid/support/v7/view/menu/h;

    iget-object v5, p0, Landroid/support/v7/app/k;->Nh:Landroid/support/v7/app/k$a;

    invoke-interface {v0, v2, v5}, Landroid/support/v7/widget/aj;->a(Landroid/view/Menu;Landroid/support/v7/view/menu/o$a;)V

    :cond_e
    iget-object v0, p1, Landroid/support/v7/app/k$d;->NK:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->fj()V

    iget v0, p1, Landroid/support/v7/app/k$d;->NG:I

    iget-object v2, p1, Landroid/support/v7/app/k$d;->NK:Landroid/support/v7/view/menu/h;

    invoke-interface {v7, v0, v2}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p1, v1}, Landroid/support/v7/app/k$d;->e(Landroid/support/v7/view/menu/h;)V

    if-eqz v6, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/k;->Ng:Landroid/support/v7/widget/aj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/k;->Ng:Landroid/support/v7/widget/aj;

    iget-object v2, p0, Landroid/support/v7/app/k;->Nh:Landroid/support/v7/app/k$a;

    invoke-interface {v0, v1, v2}, Landroid/support/v7/widget/aj;->a(Landroid/view/Menu;Landroid/support/v7/view/menu/o$a;)V

    goto/16 :goto_0

    :cond_f
    move v6, v4

    goto/16 :goto_1

    :cond_10
    sget v0, Landroid/support/v7/a/a$a;->actionBarWidgetTheme:I

    invoke-virtual {v8, v0, v5, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-object v0, v1

    goto :goto_2

    :cond_11
    iput-boolean v4, p1, Landroid/support/v7/app/k$d;->NS:Z

    :cond_12
    iget-object v0, p1, Landroid/support/v7/app/k$d;->NK:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->fj()V

    iget-object v0, p1, Landroid/support/v7/app/k$d;->NT:Landroid/os/Bundle;

    if-eqz v0, :cond_13

    iget-object v0, p1, Landroid/support/v7/app/k$d;->NK:Landroid/support/v7/view/menu/h;

    iget-object v2, p1, Landroid/support/v7/app/k$d;->NT:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/support/v7/view/menu/h;->c(Landroid/os/Bundle;)V

    iput-object v1, p1, Landroid/support/v7/app/k$d;->NT:Landroid/os/Bundle;

    :cond_13
    iget-object v0, p1, Landroid/support/v7/app/k$d;->NJ:Landroid/view/View;

    iget-object v2, p1, Landroid/support/v7/app/k$d;->NK:Landroid/support/v7/view/menu/h;

    invoke-interface {v7, v4, v0, v2}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_15

    if-eqz v6, :cond_14

    iget-object v0, p0, Landroid/support/v7/app/k;->Ng:Landroid/support/v7/widget/aj;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/support/v7/app/k;->Ng:Landroid/support/v7/widget/aj;

    iget-object v2, p0, Landroid/support/v7/app/k;->Nh:Landroid/support/v7/app/k$a;

    invoke-interface {v0, v1, v2}, Landroid/support/v7/widget/aj;->a(Landroid/view/Menu;Landroid/support/v7/view/menu/o$a;)V

    :cond_14
    iget-object v0, p1, Landroid/support/v7/app/k$d;->NK:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->fk()V

    goto/16 :goto_0

    :cond_15
    if-eqz p2, :cond_17

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    :goto_4
    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v0

    if-eq v0, v3, :cond_18

    move v0, v3

    :goto_5
    iput-boolean v0, p1, Landroid/support/v7/app/k$d;->NQ:Z

    iget-object v0, p1, Landroid/support/v7/app/k$d;->NK:Landroid/support/v7/view/menu/h;

    iget-boolean v1, p1, Landroid/support/v7/app/k$d;->NQ:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->setQwertyMode(Z)V

    iget-object v0, p1, Landroid/support/v7/app/k$d;->NK:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->fk()V

    :cond_16
    iput-boolean v3, p1, Landroid/support/v7/app/k$d;->NN:Z

    iput-boolean v4, p1, Landroid/support/v7/app/k$d;->NO:Z

    iput-object p1, p0, Landroid/support/v7/app/k;->Nv:Landroid/support/v7/app/k$d;

    move v4, v3

    goto/16 :goto_0

    :cond_17
    const/4 v0, -0x1

    goto :goto_4

    :cond_18
    move v0, v4

    goto :goto_5

    :cond_19
    move-object v0, v2

    goto/16 :goto_3
.end method

.method private eC()V
    .locals 9

    const/16 v8, 0x6c

    const v5, 0x1020002

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    iget-boolean v0, p0, Landroid/support/v7/app/k;->No:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Landroid/support/v7/app/k;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/support/v7/a/a$j;->AppCompatTheme:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Landroid/support/v7/a/a$j;->AppCompatTheme_windowActionBar:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget v1, Landroid/support/v7/a/a$j;->AppCompatTheme_windowNoTitle:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v7}, Landroid/support/v7/app/k;->requestWindowFeature(I)Z

    :cond_1
    :goto_0
    sget v1, Landroid/support/v7/a/a$j;->AppCompatTheme_windowActionBarOverlay:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x6d

    invoke-virtual {p0, v1}, Landroid/support/v7/app/k;->requestWindowFeature(I)Z

    :cond_2
    sget v1, Landroid/support/v7/a/a$j;->AppCompatTheme_windowActionModeOverlay:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Landroid/support/v7/app/k;->requestWindowFeature(I)Z

    :cond_3
    sget v1, Landroid/support/v7/a/a$j;->AppCompatTheme_android_windowIsFloating:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/app/k;->MM:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v0, p0, Landroid/support/v7/app/k;->Le:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/app/k;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/app/k;->MN:Z

    if-nez v1, :cond_a

    iget-boolean v1, p0, Landroid/support/v7/app/k;->MM:Z

    if-eqz v1, :cond_5

    sget v1, Landroid/support/v7/a/a$g;->abc_dialog_title_material:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-boolean v6, p0, Landroid/support/v7/app/k;->MK:Z

    iput-boolean v6, p0, Landroid/support/v7/app/k;->MJ:Z

    move-object v2, v0

    :goto_1
    if-nez v2, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AppCompat does not support the current theme features: { windowActionBar: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Landroid/support/v7/app/k;->MJ:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", windowActionBarOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/v7/app/k;->MK:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", android:windowIsFloating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/v7/app/k;->MM:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", windowActionModeOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/v7/app/k;->ML:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", windowNoTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/v7/app/k;->MN:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    sget v1, Landroid/support/v7/a/a$j;->AppCompatTheme_windowActionBar:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v8}, Landroid/support/v7/app/k;->requestWindowFeature(I)Z

    goto/16 :goto_0

    :cond_5
    iget-boolean v0, p0, Landroid/support/v7/app/k;->MJ:Z

    if-eqz v0, :cond_1a

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iget-object v0, p0, Landroid/support/v7/app/k;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v2, Landroid/support/v7/a/a$a;->actionBarTheme:I

    invoke-virtual {v0, v2, v1, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_9

    new-instance v0, Landroid/support/v7/view/d;

    iget-object v2, p0, Landroid/support/v7/app/k;->mContext:Landroid/content/Context;

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v0, v2, v1}, Landroid/support/v7/view/d;-><init>(Landroid/content/Context;I)V

    :goto_2
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/v7/a/a$g;->abc_screen_toolbar:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget v1, Landroid/support/v7/a/a$f;->decor_content_parent:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/aj;

    iput-object v1, p0, Landroid/support/v7/app/k;->Ng:Landroid/support/v7/widget/aj;

    iget-object v1, p0, Landroid/support/v7/app/k;->Ng:Landroid/support/v7/widget/aj;

    iget-object v2, p0, Landroid/support/v7/app/g;->Le:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/support/v7/widget/aj;->setWindowCallback(Landroid/view/Window$Callback;)V

    iget-boolean v1, p0, Landroid/support/v7/app/k;->MK:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/support/v7/app/k;->Ng:Landroid/support/v7/widget/aj;

    const/16 v2, 0x6d

    invoke-interface {v1, v2}, Landroid/support/v7/widget/aj;->aX(I)V

    :cond_6
    iget-boolean v1, p0, Landroid/support/v7/app/k;->Nr:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/support/v7/app/k;->Ng:Landroid/support/v7/widget/aj;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/support/v7/widget/aj;->aX(I)V

    :cond_7
    iget-boolean v1, p0, Landroid/support/v7/app/k;->Ns:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/support/v7/app/k;->Ng:Landroid/support/v7/widget/aj;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroid/support/v7/widget/aj;->aX(I)V

    :cond_8
    move-object v2, v0

    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, Landroid/support/v7/app/k;->mContext:Landroid/content/Context;

    goto :goto_2

    :cond_a
    iget-boolean v1, p0, Landroid/support/v7/app/k;->ML:Z

    if-eqz v1, :cond_b

    sget v1, Landroid/support/v7/a/a$g;->abc_screen_simple_overlay_action_mode:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    :goto_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_c

    new-instance v0, Landroid/support/v7/app/k$2;

    invoke-direct {v0, p0}, Landroid/support/v7/app/k$2;-><init>(Landroid/support/v7/app/k;)V

    invoke-static {v1, v0}, Landroid/support/v4/view/r;->a(Landroid/view/View;Landroid/support/v4/view/n;)V

    move-object v2, v1

    goto/16 :goto_1

    :cond_b
    sget v1, Landroid/support/v7/a/a$g;->abc_screen_simple:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    goto :goto_3

    :cond_c
    move-object v0, v1

    check-cast v0, Landroid/support/v7/widget/ap;

    new-instance v2, Landroid/support/v7/app/k$3;

    invoke-direct {v2, p0}, Landroid/support/v7/app/k$3;-><init>(Landroid/support/v7/app/k;)V

    invoke-interface {v0, v2}, Landroid/support/v7/widget/ap;->setOnFitSystemWindowsListener(Landroid/support/v7/widget/ap$a;)V

    move-object v2, v1

    goto/16 :goto_1

    :cond_d
    iget-object v0, p0, Landroid/support/v7/app/k;->Ng:Landroid/support/v7/widget/aj;

    if-nez v0, :cond_e

    sget v0, Landroid/support/v7/a/a$f;->title:I

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/app/k;->LC:Landroid/widget/TextView;

    :cond_e
    invoke-static {v2}, Landroid/support/v7/widget/bw;->bk(Landroid/view/View;)V

    sget v0, Landroid/support/v7/a/a$f;->action_bar_activity_content:I

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ContentFrameLayout;

    iget-object v1, p0, Landroid/support/v7/app/k;->Le:Landroid/view/Window;

    invoke-virtual {v1, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_10

    :goto_4
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_f

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/ContentFrameLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    :cond_f
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setId(I)V

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/ContentFrameLayout;->setId(I)V

    instance-of v4, v1, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_10

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_10
    iget-object v1, p0, Landroid/support/v7/app/k;->Le:Landroid/view/Window;

    invoke-virtual {v1, v2}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    new-instance v1, Landroid/support/v7/app/k$4;

    invoke-direct {v1, p0}, Landroid/support/v7/app/k$4;-><init>(Landroid/support/v7/app/k;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ContentFrameLayout;->setAttachListener(Landroid/support/v7/widget/ContentFrameLayout$a;)V

    iput-object v2, p0, Landroid/support/v7/app/k;->Np:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroid/support/v7/app/g;->ME:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/support/v7/app/g;->ME:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {p0, v0}, Landroid/support/v7/app/k;->l(Ljava/lang/CharSequence;)V

    :cond_11
    iget-object v0, p0, Landroid/support/v7/app/k;->Np:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ContentFrameLayout;

    iget-object v1, p0, Landroid/support/v7/app/k;->Le:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    iget-object v5, v0, Landroid/support/v7/widget/ContentFrameLayout;->XK:Landroid/graphics/Rect;

    invoke-virtual {v5, v2, v3, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {v0}, Landroid/support/v4/view/r;->ae(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->requestLayout()V

    :cond_12
    iget-object v1, p0, Landroid/support/v7/app/k;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/support/v7/a/a$j;->AppCompatTheme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v2, Landroid/support/v7/a/a$j;->AppCompatTheme_windowMinWidthMajor:I

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    sget v2, Landroid/support/v7/a/a$j;->AppCompatTheme_windowMinWidthMinor:I

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    sget v2, Landroid/support/v7/a/a$j;->AppCompatTheme_windowFixedWidthMajor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_13

    sget v2, Landroid/support/v7/a/a$j;->AppCompatTheme_windowFixedWidthMajor:I

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_13
    sget v2, Landroid/support/v7/a/a$j;->AppCompatTheme_windowFixedWidthMinor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_14

    sget v2, Landroid/support/v7/a/a$j;->AppCompatTheme_windowFixedWidthMinor:I

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_14
    sget v2, Landroid/support/v7/a/a$j;->AppCompatTheme_windowFixedHeightMajor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_15

    sget v2, Landroid/support/v7/a/a$j;->AppCompatTheme_windowFixedHeightMajor:I

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_15
    sget v2, Landroid/support/v7/a/a$j;->AppCompatTheme_windowFixedHeightMinor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_16

    sget v2, Landroid/support/v7/a/a$j;->AppCompatTheme_windowFixedHeightMinor:I

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_16
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->requestLayout()V

    iput-boolean v7, p0, Landroid/support/v7/app/k;->No:Z

    invoke-virtual {p0, v6}, Landroid/support/v7/app/k;->aS(I)Landroid/support/v7/app/k$d;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/app/g;->MP:Z

    if-nez v1, :cond_18

    if-eqz v0, :cond_17

    iget-object v0, v0, Landroid/support/v7/app/k$d;->NK:Landroid/support/v7/view/menu/h;

    if-nez v0, :cond_18

    :cond_17
    invoke-direct {p0, v8}, Landroid/support/v7/app/k;->invalidatePanelMenu(I)V

    :cond_18
    return-void

    :cond_19
    iget-object v0, p0, Landroid/support/v7/app/g;->Ch:Ljava/lang/CharSequence;

    goto/16 :goto_5

    :cond_1a
    move-object v2, v3

    goto/16 :goto_1
.end method

.method private eG()V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/app/k;->No:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Window feature must be requested before adding content"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private invalidatePanelMenu(I)V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Landroid/support/v7/app/k;->Ny:I

    shl-int v1, v2, p1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/app/k;->Ny:I

    iget-boolean v0, p0, Landroid/support/v7/app/k;->Nx:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/k;->Le:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/k;->Nz:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/support/v4/view/r;->b(Landroid/view/View;Ljava/lang/Runnable;)V

    iput-boolean v2, p0, Landroid/support/v7/app/k;->Nx:Z

    :cond_0
    return-void
.end method


# virtual methods
.method final a(Landroid/view/Menu;)Landroid/support/v7/app/k$d;
    .locals 5

    const/4 v1, 0x0

    iget-object v3, p0, Landroid/support/v7/app/k;->Nu:[Landroid/support/v7/app/k$d;

    if-eqz v3, :cond_0

    array-length v0, v3

    :goto_0
    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_2

    aget-object v1, v3, v2

    if-eqz v1, :cond_1

    iget-object v4, v1, Landroid/support/v7/app/k$d;->NK:Landroid/support/v7/view/menu/h;

    if-ne v4, p1, :cond_1

    move-object v0, v1

    :goto_2
    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method a(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/k;->ME:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/view/LayoutInflater$Factory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/k;->ME:Landroid/view/Window$Callback;

    check-cast v0, Landroid/view/LayoutInflater$Factory;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/LayoutInflater$Factory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final a(ILandroid/support/v7/app/k$d;Landroid/view/Menu;)V
    .locals 1

    if-nez p3, :cond_1

    if-nez p2, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/k;->Nu:[Landroid/support/v7/app/k$d;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/k;->Nu:[Landroid/support/v7/app/k$d;

    aget-object p2, v0, p1

    :cond_0
    if-eqz p2, :cond_1

    iget-object p3, p2, Landroid/support/v7/app/k$d;->NK:Landroid/support/v7/view/menu/h;

    :cond_1
    if-eqz p2, :cond_3

    iget-boolean v0, p2, Landroid/support/v7/app/k$d;->NP:Z

    if-nez v0, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-boolean v0, p0, Landroid/support/v7/app/g;->MP:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/app/k;->ME:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method final a(Landroid/support/v7/app/k$d;Z)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    iget v0, p1, Landroid/support/v7/app/k$d;->NG:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/k;->Ng:Landroid/support/v7/widget/aj;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/k;->Ng:Landroid/support/v7/widget/aj;

    invoke-interface {v0}, Landroid/support/v7/widget/aj;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/support/v7/app/k$d;->NK:Landroid/support/v7/view/menu/h;

    invoke-virtual {p0, v0}, Landroid/support/v7/app/k;->c(Landroid/support/v7/view/menu/h;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/k;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-eqz v0, :cond_2

    iget-boolean v1, p1, Landroid/support/v7/app/k$d;->NP:Z

    if-eqz v1, :cond_2

    iget-object v1, p1, Landroid/support/v7/app/k$d;->NH:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    iget-object v1, p1, Landroid/support/v7/app/k$d;->NH:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    if-eqz p2, :cond_2

    iget v0, p1, Landroid/support/v7/app/k$d;->NG:I

    invoke-virtual {p0, v0, p1, v3}, Landroid/support/v7/app/k;->a(ILandroid/support/v7/app/k$d;Landroid/view/Menu;)V

    :cond_2
    iput-boolean v2, p1, Landroid/support/v7/app/k$d;->NN:Z

    iput-boolean v2, p1, Landroid/support/v7/app/k$d;->NO:Z

    iput-boolean v2, p1, Landroid/support/v7/app/k$d;->NP:Z

    iput-object v3, p1, Landroid/support/v7/app/k$d;->NI:Landroid/view/View;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v7/app/k$d;->NR:Z

    iget-object v0, p0, Landroid/support/v7/app/k;->Nv:Landroid/support/v7/app/k$d;

    if-ne v0, p1, :cond_0

    iput-object v3, p0, Landroid/support/v7/app/k;->Nv:Landroid/support/v7/app/k$d;

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/view/menu/h;Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/g;->Le:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroid/support/v7/app/g;->MP:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/view/menu/h;->fq()Landroid/support/v7/view/menu/h;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/app/k;->a(Landroid/view/Menu;)Landroid/support/v7/app/k$d;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, v1, Landroid/support/v7/app/k$d;->NG:I

    invoke-interface {v0, v1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final aP(I)V
    .locals 3

    const/4 v2, 0x0

    const/16 v0, 0x6c

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/app/k;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/a;->B(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/v7/app/k;->aS(I)Landroid/support/v7/app/k$d;

    move-result-object v0

    iget-boolean v1, v0, Landroid/support/v7/app/k$d;->NP:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v2}, Landroid/support/v7/app/k;->a(Landroid/support/v7/app/k$d;Z)V

    goto :goto_0
.end method

.method final aQ(I)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x6c

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/app/k;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/support/v7/app/a;->B(Z)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final aS(I)Landroid/support/v7/app/k$d;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/v7/app/k;->Nu:[Landroid/support/v7/app/k$d;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-gt v1, p1, :cond_2

    :cond_0
    add-int/lit8 v1, p1, 0x1

    new-array v1, v1, [Landroid/support/v7/app/k$d;

    if-eqz v0, :cond_1

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object v1, p0, Landroid/support/v7/app/k;->Nu:[Landroid/support/v7/app/k$d;

    move-object v0, v1

    :cond_2
    aget-object v1, v0, p1

    if-nez v1, :cond_3

    new-instance v1, Landroid/support/v7/app/k$d;

    invoke-direct {v1, p1}, Landroid/support/v7/app/k$d;-><init>(I)V

    aput-object v1, v0, p1

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method final aT(I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Landroid/support/v7/app/k;->aS(I)Landroid/support/v7/app/k$d;

    move-result-object v0

    iget-object v1, v0, Landroid/support/v7/app/k$d;->NK:Landroid/support/v7/view/menu/h;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v0, Landroid/support/v7/app/k$d;->NK:Landroid/support/v7/view/menu/h;

    invoke-virtual {v2, v1}, Landroid/support/v7/view/menu/h;->b(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_0

    iput-object v1, v0, Landroid/support/v7/app/k$d;->NT:Landroid/os/Bundle;

    :cond_0
    iget-object v1, v0, Landroid/support/v7/app/k$d;->NK:Landroid/support/v7/view/menu/h;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/h;->fj()V

    iget-object v1, v0, Landroid/support/v7/app/k$d;->NK:Landroid/support/v7/view/menu/h;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/h;->clear()V

    :cond_1
    iput-boolean v4, v0, Landroid/support/v7/app/k$d;->NS:Z

    iput-boolean v4, v0, Landroid/support/v7/app/k$d;->NR:Z

    const/16 v0, 0x6c

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/k;->Ng:Landroid/support/v7/widget/aj;

    if-eqz v0, :cond_3

    invoke-virtual {p0, v3}, Landroid/support/v7/app/k;->aS(I)Landroid/support/v7/app/k$d;

    move-result-object v0

    if-eqz v0, :cond_3

    iput-boolean v3, v0, Landroid/support/v7/app/k$d;->NN:Z

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/app/k;->b(Landroid/support/v7/app/k$d;Landroid/view/KeyEvent;)Z

    :cond_3
    return-void
.end method

.method final aU(I)I
    .locals 7

    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/app/k;->Nk:Landroid/support/v7/widget/ActionBarContextView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v7/app/k;->Nk:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v7/app/k;->Nk:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Landroid/support/v7/app/k;->Nk:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContextView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/support/v7/app/k;->ng:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/v7/app/k;->ng:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/v7/app/k;->nh:Landroid/graphics/Rect;

    :cond_0
    iget-object v1, p0, Landroid/support/v7/app/k;->ng:Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/support/v7/app/k;->nh:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, p1, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v5, p0, Landroid/support/v7/app/k;->Np:Landroid/view/ViewGroup;

    invoke-static {v5, v1, v4}, Landroid/support/v7/widget/bw;->a(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget v1, v4, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_4

    move v1, p1

    :goto_0
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v4, v1, :cond_b

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, p0, Landroid/support/v7/app/k;->Nq:Landroid/view/View;

    if-nez v1, :cond_5

    new-instance v1, Landroid/view/View;

    iget-object v4, p0, Landroid/support/v7/app/k;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/app/k;->Nq:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/app/k;->Nq:Landroid/view/View;

    iget-object v4, p0, Landroid/support/v7/app/k;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroid/support/v7/a/a$c;->abc_input_method_navigation_guard:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Landroid/support/v7/app/k;->Np:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/support/v7/app/k;->Nq:Landroid/view/View;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    move v1, v3

    :goto_1
    iget-object v4, p0, Landroid/support/v7/app/k;->Nq:Landroid/view/View;

    if-eqz v4, :cond_7

    :goto_2
    iget-boolean v4, p0, Landroid/support/v7/app/k;->ML:Z

    if-nez v4, :cond_1

    if-eqz v3, :cond_1

    move p1, v2

    :cond_1
    move v4, v3

    :goto_3
    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/app/k;->Nk:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ActionBarContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    move v0, v4

    :goto_4
    iget-object v1, p0, Landroid/support/v7/app/k;->Nq:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/app/k;->Nq:Landroid/view/View;

    if-eqz v0, :cond_9

    :goto_5
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return p1

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v1, p0, Landroid/support/v7/app/k;->Nq:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v4, p1, :cond_6

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, p0, Landroid/support/v7/app/k;->Nq:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    move v1, v3

    goto :goto_1

    :cond_7
    move v3, v2

    goto :goto_2

    :cond_8
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v1, :cond_a

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v1, v3

    move v4, v2

    goto :goto_3

    :cond_9
    const/16 v2, 0x8

    goto :goto_5

    :cond_a
    move v1, v2

    move v4, v2

    goto :goto_3

    :cond_b
    move v1, v2

    goto :goto_1

    :cond_c
    move v0, v2

    goto :goto_4
.end method

.method public final addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-direct {p0}, Landroid/support/v7/app/k;->eC()V

    iget-object v0, p0, Landroid/support/v7/app/k;->Np:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroid/support/v7/app/k;->ME:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method final b(Landroid/support/v7/view/b$a;)Landroid/support/v7/view/b;
    .locals 8

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/support/v7/app/k;->eE()V

    iget-object v0, p0, Landroid/support/v7/app/k;->Nj:Landroid/support/v7/view/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/k;->Nj:Landroid/support/v7/view/b;

    invoke-virtual {v0}, Landroid/support/v7/view/b;->finish()V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/k;->MG:Landroid/support/v7/app/e;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v7/app/g;->MP:Z

    if-nez v0, :cond_3

    :try_start_0
    iget-object v0, p0, Landroid/support/v7/app/k;->MG:Landroid/support/v7/app/e;

    invoke-interface {v0, p1}, Landroid/support/v7/app/e;->onWindowStartingSupportActionMode(Landroid/support/v7/view/b$a;)Landroid/support/v7/view/b;
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_4

    iput-object v0, p0, Landroid/support/v7/app/k;->Nj:Landroid/support/v7/view/b;

    :cond_1
    :goto_1
    iget-object v0, p0, Landroid/support/v7/app/k;->Nj:Landroid/support/v7/view/b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/app/k;->MG:Landroid/support/v7/app/e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/app/k;->MG:Landroid/support/v7/app/e;

    iget-object v1, p0, Landroid/support/v7/app/k;->Nj:Landroid/support/v7/view/b;

    invoke-interface {v0, v1}, Landroid/support/v7/app/e;->onSupportActionModeStarted(Landroid/support/v7/view/b;)V

    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/k;->Nj:Landroid/support/v7/view/b;

    return-object v0

    :catch_0
    move-exception v0

    :cond_3
    move-object v0, v3

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroid/support/v7/app/k;->Nk:Landroid/support/v7/widget/ActionBarContextView;

    if-nez v0, :cond_5

    iget-boolean v0, p0, Landroid/support/v7/app/k;->MM:Z

    if-eqz v0, :cond_8

    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    iget-object v0, p0, Landroid/support/v7/app/k;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v5, Landroid/support/v7/a/a$a;->actionBarTheme:I

    invoke-virtual {v0, v5, v4, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v5, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_7

    iget-object v5, p0, Landroid/support/v7/app/k;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iget v0, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    new-instance v0, Landroid/support/v7/view/d;

    iget-object v6, p0, Landroid/support/v7/app/k;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6, v2}, Landroid/support/v7/view/d;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    :goto_2
    new-instance v5, Landroid/support/v7/widget/ActionBarContextView;

    invoke-direct {v5, v0}, Landroid/support/v7/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Landroid/support/v7/app/k;->Nk:Landroid/support/v7/widget/ActionBarContextView;

    new-instance v5, Landroid/widget/PopupWindow;

    sget v6, Landroid/support/v7/a/a$a;->actionModePopupWindowStyle:I

    invoke-direct {v5, v0, v3, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v5, p0, Landroid/support/v7/app/k;->Nl:Landroid/widget/PopupWindow;

    iget-object v5, p0, Landroid/support/v7/app/k;->Nl:Landroid/widget/PopupWindow;

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/support/v4/widget/l;->a(Landroid/widget/PopupWindow;I)V

    iget-object v5, p0, Landroid/support/v7/app/k;->Nl:Landroid/widget/PopupWindow;

    iget-object v6, p0, Landroid/support/v7/app/k;->Nk:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v5, p0, Landroid/support/v7/app/k;->Nl:Landroid/widget/PopupWindow;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    sget v6, Landroid/support/v7/a/a$a;->actionBarSize:I

    invoke-virtual {v5, v6, v4, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v4, v4, Landroid/util/TypedValue;->data:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    iget-object v4, p0, Landroid/support/v7/app/k;->Nk:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/ActionBarContextView;->setContentHeight(I)V

    iget-object v0, p0, Landroid/support/v7/app/k;->Nl:Landroid/widget/PopupWindow;

    const/4 v4, -0x2

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    new-instance v0, Landroid/support/v7/app/k$5;

    invoke-direct {v0, p0}, Landroid/support/v7/app/k$5;-><init>(Landroid/support/v7/app/k;)V

    iput-object v0, p0, Landroid/support/v7/app/k;->Nm:Ljava/lang/Runnable;

    :cond_5
    :goto_3
    iget-object v0, p0, Landroid/support/v7/app/k;->Nk:Landroid/support/v7/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/app/k;->eE()V

    iget-object v0, p0, Landroid/support/v7/app/k;->Nk:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->fC()V

    new-instance v4, Landroid/support/v7/view/e;

    iget-object v0, p0, Landroid/support/v7/app/k;->Nk:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v7/app/k;->Nk:Landroid/support/v7/widget/ActionBarContextView;

    iget-object v0, p0, Landroid/support/v7/app/k;->Nl:Landroid/widget/PopupWindow;

    if-nez v0, :cond_9

    move v0, v1

    :goto_4
    invoke-direct {v4, v5, v6, p1, v0}, Landroid/support/v7/view/e;-><init>(Landroid/content/Context;Landroid/support/v7/widget/ActionBarContextView;Landroid/support/v7/view/b$a;Z)V

    invoke-virtual {v4}, Landroid/support/v7/view/b;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {p1, v4, v0}, Landroid/support/v7/view/b$a;->a(Landroid/support/v7/view/b;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v4}, Landroid/support/v7/view/b;->invalidate()V

    iget-object v0, p0, Landroid/support/v7/app/k;->Nk:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/ActionBarContextView;->c(Landroid/support/v7/view/b;)V

    iput-object v4, p0, Landroid/support/v7/app/k;->Nj:Landroid/support/v7/view/b;

    invoke-virtual {p0}, Landroid/support/v7/app/k;->eD()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/v7/app/k;->Nk:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->setAlpha(F)V

    iget-object v0, p0, Landroid/support/v7/app/k;->Nk:Landroid/support/v7/widget/ActionBarContextView;

    invoke-static {v0}, Landroid/support/v4/view/r;->S(Landroid/view/View;)Landroid/support/v4/view/v;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/support/v4/view/v;->k(F)Landroid/support/v4/view/v;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/k;->Nn:Landroid/support/v4/view/v;

    iget-object v0, p0, Landroid/support/v7/app/k;->Nn:Landroid/support/v4/view/v;

    new-instance v1, Landroid/support/v7/app/k$6;

    invoke-direct {v1, p0}, Landroid/support/v7/app/k$6;-><init>(Landroid/support/v7/app/k;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/v;->a(Landroid/support/v4/view/w;)Landroid/support/v4/view/v;

    :cond_6
    :goto_5
    iget-object v0, p0, Landroid/support/v7/app/k;->Nl:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/k;->Le:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/k;->Nm:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Landroid/support/v7/app/k;->mContext:Landroid/content/Context;

    goto/16 :goto_2

    :cond_8
    iget-object v0, p0, Landroid/support/v7/app/k;->Np:Landroid/view/ViewGroup;

    sget v4, Landroid/support/v7/a/a$f;->action_mode_bar_stub:I

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ViewStubCompat;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/support/v7/app/k;->ez()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    invoke-virtual {v0}, Landroid/support/v7/widget/ViewStubCompat;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionBarContextView;

    iput-object v0, p0, Landroid/support/v7/app/k;->Nk:Landroid/support/v7/widget/ActionBarContextView;

    goto/16 :goto_3

    :cond_9
    move v0, v2

    goto :goto_4

    :cond_a
    iget-object v0, p0, Landroid/support/v7/app/k;->Nk:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/ActionBarContextView;->setAlpha(F)V

    iget-object v0, p0, Landroid/support/v7/app/k;->Nk:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/app/k;->Nk:Landroid/support/v7/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    iget-object v0, p0, Landroid/support/v7/app/k;->Nk:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v7/app/k;->Nk:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/r;->W(Landroid/view/View;)V

    goto :goto_5

    :cond_b
    iput-object v3, p0, Landroid/support/v7/app/k;->Nj:Landroid/support/v7/view/b;

    goto/16 :goto_1
.end method

.method public final b(Landroid/support/v7/view/menu/h;)V
    .locals 6

    const/16 v5, 0x6c

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/support/v7/app/k;->Ng:Landroid/support/v7/widget/aj;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/app/k;->Ng:Landroid/support/v7/widget/aj;

    invoke-interface {v0}, Landroid/support/v7/widget/aj;->canShowOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/app/k;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/k;->Ng:Landroid/support/v7/widget/aj;

    invoke-interface {v0}, Landroid/support/v7/widget/aj;->isOverflowMenuShowPending()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/g;->Le:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/k;->Ng:Landroid/support/v7/widget/aj;

    invoke-interface {v1}, Landroid/support/v7/widget/aj;->isOverflowMenuShowing()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Landroid/support/v7/app/g;->MP:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Landroid/support/v7/app/k;->Nx:Z

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/support/v7/app/k;->Ny:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/app/k;->Le:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/app/k;->Nz:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Landroid/support/v7/app/k;->Nz:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_1
    invoke-virtual {p0, v4}, Landroid/support/v7/app/k;->aS(I)Landroid/support/v7/app/k$d;

    move-result-object v1

    iget-object v2, v1, Landroid/support/v7/app/k$d;->NK:Landroid/support/v7/view/menu/h;

    if-eqz v2, :cond_2

    iget-boolean v2, v1, Landroid/support/v7/app/k$d;->NS:Z

    if-nez v2, :cond_2

    iget-object v2, v1, Landroid/support/v7/app/k$d;->NJ:Landroid/view/View;

    iget-object v3, v1, Landroid/support/v7/app/k$d;->NK:Landroid/support/v7/view/menu/h;

    invoke-interface {v0, v4, v2, v3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, v1, Landroid/support/v7/app/k$d;->NK:Landroid/support/v7/view/menu/h;

    invoke-interface {v0, v5, v1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    iget-object v0, p0, Landroid/support/v7/app/k;->Ng:Landroid/support/v7/widget/aj;

    invoke-interface {v0}, Landroid/support/v7/widget/aj;->showOverflowMenu()Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, Landroid/support/v7/app/k;->Ng:Landroid/support/v7/widget/aj;

    invoke-interface {v1}, Landroid/support/v7/widget/aj;->hideOverflowMenu()Z

    iget-boolean v1, p0, Landroid/support/v7/app/g;->MP:Z

    if-nez v1, :cond_2

    invoke-virtual {p0, v4}, Landroid/support/v7/app/k;->aS(I)Landroid/support/v7/app/k$d;

    move-result-object v1

    iget-object v1, v1, Landroid/support/v7/app/k$d;->NK:Landroid/support/v7/view/menu/h;

    invoke-interface {v0, v5, v1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v4}, Landroid/support/v7/app/k;->aS(I)Landroid/support/v7/app/k$d;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/app/k$d;->NR:Z

    invoke-virtual {p0, v0, v4}, Landroid/support/v7/app/k;->a(Landroid/support/v7/app/k$d;Z)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/app/k;->a(Landroid/support/v7/app/k$d;Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method final c(Landroid/support/v7/view/menu/h;)V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/app/k;->Nt:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/k;->Nt:Z

    iget-object v0, p0, Landroid/support/v7/app/k;->Ng:Landroid/support/v7/widget/aj;

    invoke-interface {v0}, Landroid/support/v7/widget/aj;->eH()V

    iget-object v0, p0, Landroid/support/v7/app/g;->Le:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Landroid/support/v7/app/g;->MP:Z

    if-nez v1, :cond_1

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/k;->Nt:Z

    goto :goto_0
.end method

.method final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x52

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/k;->ME:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    if-eqz v0, :cond_4

    sparse-switch v3, :sswitch_data_0

    :goto_2
    move v1, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v2}, Landroid/support/v7/app/k;->aS(I)Landroid/support/v7/app/k$d;

    move-result-object v0

    iget-boolean v2, v0, Landroid/support/v7/app/k$d;->NP:Z

    if-nez v2, :cond_0

    invoke-direct {p0, v0, p1}, Landroid/support/v7/app/k;->b(Landroid/support/v7/app/k$d;Landroid/view/KeyEvent;)Z

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Landroid/support/v7/app/k;->Nw:Z

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    sparse-switch v3, :sswitch_data_1

    :cond_5
    move v1, v2

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Landroid/support/v7/app/k;->Nj:Landroid/support/v7/view/b;

    if-nez v0, :cond_0

    invoke-virtual {p0, v2}, Landroid/support/v7/app/k;->aS(I)Landroid/support/v7/app/k$d;

    move-result-object v3

    iget-object v0, p0, Landroid/support/v7/app/k;->Ng:Landroid/support/v7/widget/aj;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v7/app/k;->Ng:Landroid/support/v7/widget/aj;

    invoke-interface {v0}, Landroid/support/v7/widget/aj;->canShowOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v7/app/k;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/support/v7/app/k;->Ng:Landroid/support/v7/widget/aj;

    invoke-interface {v0}, Landroid/support/v7/widget/aj;->isOverflowMenuShowing()Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Landroid/support/v7/app/g;->MP:Z

    if-nez v0, :cond_e

    invoke-direct {p0, v3, p1}, Landroid/support/v7/app/k;->b(Landroid/support/v7/app/k$d;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v7/app/k;->Ng:Landroid/support/v7/widget/aj;

    invoke-interface {v0}, Landroid/support/v7/widget/aj;->showOverflowMenu()Z

    move-result v0

    :goto_4
    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/k;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_a

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Landroid/support/v7/app/k;->Ng:Landroid/support/v7/widget/aj;

    invoke-interface {v0}, Landroid/support/v7/widget/aj;->hideOverflowMenu()Z

    move-result v0

    goto :goto_4

    :cond_7
    iget-boolean v0, v3, Landroid/support/v7/app/k$d;->NP:Z

    if-nez v0, :cond_8

    iget-boolean v0, v3, Landroid/support/v7/app/k$d;->NO:Z

    if-eqz v0, :cond_9

    :cond_8
    iget-boolean v0, v3, Landroid/support/v7/app/k$d;->NP:Z

    invoke-virtual {p0, v3, v1}, Landroid/support/v7/app/k;->a(Landroid/support/v7/app/k$d;Z)V

    goto :goto_4

    :cond_9
    iget-boolean v0, v3, Landroid/support/v7/app/k$d;->NN:Z

    if-eqz v0, :cond_e

    iget-boolean v0, v3, Landroid/support/v7/app/k$d;->NS:Z

    if-eqz v0, :cond_f

    iput-boolean v2, v3, Landroid/support/v7/app/k$d;->NN:Z

    invoke-direct {p0, v3, p1}, Landroid/support/v7/app/k;->b(Landroid/support/v7/app/k$d;Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_5
    if-eqz v0, :cond_e

    invoke-direct {p0, v3, p1}, Landroid/support/v7/app/k;->a(Landroid/support/v7/app/k$d;Landroid/view/KeyEvent;)V

    move v0, v1

    goto :goto_4

    :cond_a
    const-string v0, "AppCompatDelegate"

    const-string v2, "Couldn\'t get audio manager"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_3
    iget-boolean v0, p0, Landroid/support/v7/app/k;->Nw:Z

    iput-boolean v2, p0, Landroid/support/v7/app/k;->Nw:Z

    invoke-virtual {p0, v2}, Landroid/support/v7/app/k;->aS(I)Landroid/support/v7/app/k$d;

    move-result-object v3

    if-eqz v3, :cond_b

    iget-boolean v4, v3, Landroid/support/v7/app/k$d;->NP:Z

    if-eqz v4, :cond_b

    if-nez v0, :cond_0

    invoke-virtual {p0, v3, v1}, Landroid/support/v7/app/k;->a(Landroid/support/v7/app/k$d;Z)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Landroid/support/v7/app/k;->Nj:Landroid/support/v7/view/b;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v7/app/k;->Nj:Landroid/support/v7/view/b;

    invoke-virtual {v0}, Landroid/support/v7/view/b;->finish()V

    move v0, v1

    :goto_6
    if-eqz v0, :cond_5

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p0}, Landroid/support/v7/app/k;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/support/v7/app/a;->collapseActionView()Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_6

    :cond_d
    move v0, v2

    goto :goto_6

    :cond_e
    move v0, v2

    goto :goto_4

    :cond_f
    move v0, v1

    goto :goto_5

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x4 -> :sswitch_3
        0x52 -> :sswitch_2
    .end sparse-switch
.end method

.method final eD()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/app/k;->No:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/k;->Np:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/k;->Np:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/support/v4/view/r;->ae(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final eE()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/k;->Nn:Landroid/support/v4/view/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/k;->Nn:Landroid/support/v4/view/v;

    invoke-virtual {v0}, Landroid/support/v4/view/v;->cancel()V

    :cond_0
    return-void
.end method

.method final eF()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/k;->aS(I)Landroid/support/v7/app/k$d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/app/k;->a(Landroid/support/v7/app/k$d;Z)V

    return-void
.end method

.method final eH()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/k;->Ng:Landroid/support/v7/widget/aj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/k;->Ng:Landroid/support/v7/widget/aj;

    invoke-interface {v0}, Landroid/support/v7/widget/aj;->eH()V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/k;->Nl:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/app/k;->Le:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/k;->Nm:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/support/v7/app/k;->Nl:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Landroid/support/v7/app/k;->Nl:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/k;->Nl:Landroid/widget/PopupWindow;

    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/app/k;->eE()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/k;->aS(I)Landroid/support/v7/app/k$d;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, v0, Landroid/support/v7/app/k$d;->NK:Landroid/support/v7/view/menu/h;

    if-eqz v1, :cond_3

    iget-object v0, v0, Landroid/support/v7/app/k$d;->NK:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->close()V

    :cond_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final eu()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/app/k;->eC()V

    return-void
.end method

.method public final ev()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/k;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {v0, p0}, Landroid/support/v4/view/f;->b(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/app/k;

    if-nez v0, :cond_0

    const-string v0, "AppCompatDelegate"

    const-string v1, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final ey()V
    .locals 3

    invoke-direct {p0}, Landroid/support/v7/app/k;->eC()V

    iget-boolean v0, p0, Landroid/support/v7/app/k;->MJ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/k;->MH:Landroid/support/v7/app/a;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/k;->ME:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_3

    new-instance v1, Landroid/support/v7/app/q;

    iget-object v0, p0, Landroid/support/v7/app/k;->ME:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Activity;

    iget-boolean v2, p0, Landroid/support/v7/app/k;->MK:Z

    invoke-direct {v1, v0, v2}, Landroid/support/v7/app/q;-><init>(Landroid/app/Activity;Z)V

    iput-object v1, p0, Landroid/support/v7/app/k;->MH:Landroid/support/v7/app/a;

    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/support/v7/app/k;->MH:Landroid/support/v7/app/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/k;->MH:Landroid/support/v7/app/a;

    iget-boolean v1, p0, Landroid/support/v7/app/k;->NA:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->z(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/support/v7/app/k;->ME:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Dialog;

    if-eqz v0, :cond_2

    new-instance v1, Landroid/support/v7/app/q;

    iget-object v0, p0, Landroid/support/v7/app/k;->ME:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Dialog;

    invoke-direct {v1, v0}, Landroid/support/v7/app/q;-><init>(Landroid/app/Dialog;)V

    iput-object v1, p0, Landroid/support/v7/app/k;->MH:Landroid/support/v7/app/a;

    goto :goto_1
.end method

.method public final findViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v7/app/k;->eC()V

    iget-object v0, p0, Landroid/support/v7/app/k;->Le:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final invalidateOptionsMenu()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/app/k;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/app/a;->et()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/app/k;->invalidatePanelMenu(I)V

    goto :goto_0
.end method

.method final l(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/k;->Ng:Landroid/support/v7/widget/aj;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/k;->Ng:Landroid/support/v7/widget/aj;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/aj;->setWindowTitle(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/g;->MH:Landroid/support/v7/app/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/app/g;->MH:Landroid/support/v7/app/a;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/a;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/k;->LC:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/k;->LC:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    iget-boolean v0, p0, Landroid/support/v7/app/k;->MJ:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/app/k;->No:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/app/k;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/a;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    invoke-static {}, Landroid/support/v7/widget/m;->gh()Landroid/support/v7/widget/m;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/k;->mContext:Landroid/content/Context;

    iget-object v2, v0, Landroid/support/v7/widget/m;->Wg:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, v0, Landroid/support/v7/widget/m;->Wh:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/g/f;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/g/f;->clear()V

    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/support/v7/app/k;->ew()Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/support/v7/app/k;->ME:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/k;->ME:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/v4/app/y;->g(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/g;->MH:Landroid/support/v7/app/a;

    if-nez v0, :cond_1

    iput-boolean v1, p0, Landroid/support/v7/app/k;->NA:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->z(Z)V

    goto :goto_0
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p2, p3, p4}, Landroid/support/v7/app/k;->a(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/app/k;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/v7/app/k;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/app/k;->Nx:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/k;->Le:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/k;->Nz:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/g;->onDestroy()V

    iget-object v0, p0, Landroid/support/v7/app/k;->MH:Landroid/support/v7/app/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/k;->MH:Landroid/support/v7/app/a;

    invoke-virtual {v0}, Landroid/support/v7/app/a;->onDestroy()V

    :cond_1
    return-void
.end method

.method final onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/support/v7/app/k;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1, p2}, Landroid/support/v7/app/a;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Landroid/support/v7/app/k;->Nv:Landroid/support/v7/app/k$d;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/app/k;->Nv:Landroid/support/v7/app/k$d;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-direct {p0, v2, v3, p2}, Landroid/support/v7/app/k;->a(Landroid/support/v7/app/k$d;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Landroid/support/v7/app/k;->Nv:Landroid/support/v7/app/k$d;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/app/k;->Nv:Landroid/support/v7/app/k$d;

    iput-boolean v0, v1, Landroid/support/v7/app/k$d;->NO:Z

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/support/v7/app/k;->Nv:Landroid/support/v7/app/k$d;

    if-nez v2, :cond_3

    invoke-virtual {p0, v1}, Landroid/support/v7/app/k;->aS(I)Landroid/support/v7/app/k$d;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Landroid/support/v7/app/k;->b(Landroid/support/v7/app/k$d;Landroid/view/KeyEvent;)Z

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-direct {p0, v2, v3, p2}, Landroid/support/v7/app/k;->a(Landroid/support/v7/app/k$d;ILandroid/view/KeyEvent;)Z

    move-result v3

    iput-boolean v1, v2, Landroid/support/v7/app/k$d;->NN:Z

    if-nez v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final onPostResume()V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/app/k;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->A(Z)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/app/k;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->A(Z)V

    :cond_0
    return-void
.end method

.method public final requestWindowFeature(I)Z
    .locals 5

    const/16 v0, 0x6c

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x8

    if-ne p1, v3, :cond_1

    const-string v3, "AppCompatDelegate"

    const-string v4, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    :cond_0
    :goto_0
    iget-boolean v3, p0, Landroid/support/v7/app/k;->MN:Z

    if-eqz v3, :cond_2

    if-ne p1, v0, :cond_2

    move v0, v1

    :goto_1
    return v0

    :cond_1
    const/16 v3, 0x9

    if-ne p1, v3, :cond_0

    const-string v3, "AppCompatDelegate"

    const-string v4, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x6d

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Landroid/support/v7/app/k;->MJ:Z

    if-eqz v0, :cond_3

    if-ne p1, v2, :cond_3

    iput-boolean v1, p0, Landroid/support/v7/app/k;->MJ:Z

    :cond_3
    sparse-switch p1, :sswitch_data_0

    iget-object v0, p0, Landroid/support/v7/app/k;->Le:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result v0

    goto :goto_1

    :sswitch_0
    invoke-direct {p0}, Landroid/support/v7/app/k;->eG()V

    iput-boolean v2, p0, Landroid/support/v7/app/k;->MJ:Z

    move v0, v2

    goto :goto_1

    :sswitch_1
    invoke-direct {p0}, Landroid/support/v7/app/k;->eG()V

    iput-boolean v2, p0, Landroid/support/v7/app/k;->MK:Z

    move v0, v2

    goto :goto_1

    :sswitch_2
    invoke-direct {p0}, Landroid/support/v7/app/k;->eG()V

    iput-boolean v2, p0, Landroid/support/v7/app/k;->ML:Z

    move v0, v2

    goto :goto_1

    :sswitch_3
    invoke-direct {p0}, Landroid/support/v7/app/k;->eG()V

    iput-boolean v2, p0, Landroid/support/v7/app/k;->Nr:Z

    move v0, v2

    goto :goto_1

    :sswitch_4
    invoke-direct {p0}, Landroid/support/v7/app/k;->eG()V

    iput-boolean v2, p0, Landroid/support/v7/app/k;->Ns:Z

    move v0, v2

    goto :goto_1

    :sswitch_5
    invoke-direct {p0}, Landroid/support/v7/app/k;->eG()V

    iput-boolean v2, p0, Landroid/support/v7/app/k;->MN:Z

    move v0, v2

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_3
        0x5 -> :sswitch_4
        0xa -> :sswitch_2
        0x6c -> :sswitch_0
        0x6d -> :sswitch_1
    .end sparse-switch
.end method

.method public final setContentView(I)V
    .locals 2

    invoke-direct {p0}, Landroid/support/v7/app/k;->eC()V

    iget-object v0, p0, Landroid/support/v7/app/k;->Np:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Landroid/support/v7/app/k;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/app/k;->ME:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Landroid/support/v7/app/k;->eC()V

    iget-object v0, p0, Landroid/support/v7/app/k;->Np:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v7/app/k;->ME:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-direct {p0}, Landroid/support/v7/app/k;->eC()V

    iget-object v0, p0, Landroid/support/v7/app/k;->Np:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroid/support/v7/app/k;->ME:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public final setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/app/k;->ME:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/app/k;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v7/app/q;

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object v2, p0, Landroid/support/v7/app/k;->MI:Landroid/view/MenuInflater;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/app/a;->onDestroy()V

    :cond_2
    if-eqz p1, :cond_3

    new-instance v1, Landroid/support/v7/app/n;

    iget-object v0, p0, Landroid/support/v7/app/k;->ME:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v7/app/k;->MF:Landroid/view/Window$Callback;

    invoke-direct {v1, p1, v0, v2}, Landroid/support/v7/app/n;-><init>(Landroid/support/v7/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V

    iput-object v1, p0, Landroid/support/v7/app/k;->MH:Landroid/support/v7/app/a;

    iget-object v0, p0, Landroid/support/v7/app/k;->Le:Landroid/view/Window;

    iget-object v1, v1, Landroid/support/v7/app/n;->On:Landroid/view/Window$Callback;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/app/k;->invalidateOptionsMenu()V

    goto :goto_0

    :cond_3
    iput-object v2, p0, Landroid/support/v7/app/k;->MH:Landroid/support/v7/app/a;

    iget-object v0, p0, Landroid/support/v7/app/k;->Le:Landroid/view/Window;

    iget-object v1, p0, Landroid/support/v7/app/k;->MF:Landroid/view/Window$Callback;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    goto :goto_1
.end method

.method public final startSupportActionMode(Landroid/support/v7/view/b$a;)Landroid/support/v7/view/b;
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ActionMode callback can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/k;->Nj:Landroid/support/v7/view/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/k;->Nj:Landroid/support/v7/view/b;

    invoke-virtual {v0}, Landroid/support/v7/view/b;->finish()V

    :cond_1
    new-instance v0, Landroid/support/v7/app/k$b;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/k$b;-><init>(Landroid/support/v7/app/k;Landroid/support/v7/view/b$a;)V

    invoke-virtual {p0}, Landroid/support/v7/app/k;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/support/v7/app/a;->a(Landroid/support/v7/view/b$a;)Landroid/support/v7/view/b;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/app/k;->Nj:Landroid/support/v7/view/b;

    iget-object v1, p0, Landroid/support/v7/app/k;->Nj:Landroid/support/v7/view/b;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/app/k;->MG:Landroid/support/v7/app/e;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/app/k;->MG:Landroid/support/v7/app/e;

    iget-object v2, p0, Landroid/support/v7/app/k;->Nj:Landroid/support/v7/view/b;

    invoke-interface {v1, v2}, Landroid/support/v7/app/e;->onSupportActionModeStarted(Landroid/support/v7/view/b;)V

    :cond_2
    iget-object v1, p0, Landroid/support/v7/app/k;->Nj:Landroid/support/v7/view/b;

    if-nez v1, :cond_3

    invoke-virtual {p0, v0}, Landroid/support/v7/app/k;->b(Landroid/support/v7/view/b$a;)Landroid/support/v7/view/b;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/k;->Nj:Landroid/support/v7/view/b;

    :cond_3
    iget-object v0, p0, Landroid/support/v7/app/k;->Nj:Landroid/support/v7/view/b;

    return-object v0
.end method
