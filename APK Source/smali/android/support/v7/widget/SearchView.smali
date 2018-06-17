.class public Landroid/support/v7/widget/SearchView;
.super Landroid/support/v7/widget/at;

# interfaces
.implements Landroid/support/v7/view/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/SearchView$a;,
        Landroid/support/v7/widget/SearchView$SearchAutoComplete;,
        Landroid/support/v7/widget/SearchView$f;,
        Landroid/support/v7/widget/SearchView$e;,
        Landroid/support/v7/widget/SearchView$d;,
        Landroid/support/v7/widget/SearchView$b;,
        Landroid/support/v7/widget/SearchView$c;
    }
.end annotation


# static fields
.field static final ahD:Landroid/support/v7/widget/SearchView$a;


# instance fields
.field private final Mo:Landroid/widget/AdapterView$OnItemSelectedListener;

.field final agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

.field private final agQ:Landroid/view/View;

.field final agR:Landroid/view/View;

.field private final agS:Landroid/view/View;

.field final agT:Landroid/widget/ImageView;

.field final agU:Landroid/widget/ImageView;

.field final agV:Landroid/widget/ImageView;

.field final agW:Landroid/widget/ImageView;

.field final agX:Landroid/view/View;

.field private agY:Landroid/support/v7/widget/SearchView$f;

.field private agZ:Landroid/graphics/Rect;

.field private ahA:I

.field ahB:Landroid/app/SearchableInfo;

.field ahC:Landroid/os/Bundle;

.field private final ahE:Ljava/lang/Runnable;

.field private ahF:Ljava/lang/Runnable;

.field private final ahG:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private final ahH:Landroid/view/View$OnClickListener;

.field ahI:Landroid/view/View$OnKeyListener;

.field private final ahJ:Landroid/widget/TextView$OnEditorActionListener;

.field private final ahK:Landroid/widget/AdapterView$OnItemClickListener;

.field private ahL:Landroid/text/TextWatcher;

.field private aha:Landroid/graphics/Rect;

.field private ahb:[I

.field private ahc:[I

.field private final ahd:Landroid/widget/ImageView;

.field private final ahe:Landroid/graphics/drawable/Drawable;

.field private final ahf:I

.field private final ahg:I

.field final ahh:Landroid/content/Intent;

.field final ahi:Landroid/content/Intent;

.field private final ahj:Ljava/lang/CharSequence;

.field private ahk:Landroid/support/v7/widget/SearchView$c;

.field private ahl:Landroid/support/v7/widget/SearchView$b;

.field ahm:Landroid/view/View$OnFocusChangeListener;

.field ahn:Landroid/support/v7/widget/SearchView$d;

.field private aho:Landroid/view/View$OnClickListener;

.field ahp:Z

.field private ahq:Z

.field ahr:Landroid/support/v4/widget/f;

.field private ahs:Z

.field private aht:Ljava/lang/CharSequence;

.field private ahu:Z

.field private ahv:Z

.field private ahw:Z

.field private ahx:Ljava/lang/CharSequence;

.field private ahy:Ljava/lang/CharSequence;

.field private ahz:Z

.field private by:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v7/widget/SearchView$a;

    invoke-direct {v0}, Landroid/support/v7/widget/SearchView$a;-><init>()V

    sput-object v0, Landroid/support/v7/widget/SearchView;->ahD:Landroid/support/v7/widget/SearchView$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Landroid/support/v7/a/a$a;->searchViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    const/high16 v7, 0x10000000

    const/4 v1, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/at;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->agZ:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->aha:Landroid/graphics/Rect;

    new-array v0, v1, [I

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->ahb:[I

    new-array v0, v1, [I

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->ahc:[I

    new-instance v0, Landroid/support/v7/widget/SearchView$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/SearchView$1;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->ahE:Ljava/lang/Runnable;

    new-instance v0, Landroid/support/v7/widget/SearchView$3;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/SearchView$3;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->ahF:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->ahG:Ljava/util/WeakHashMap;

    new-instance v0, Landroid/support/v7/widget/SearchView$6;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/SearchView$6;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->ahH:Landroid/view/View$OnClickListener;

    new-instance v0, Landroid/support/v7/widget/SearchView$7;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/SearchView$7;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->ahI:Landroid/view/View$OnKeyListener;

    new-instance v0, Landroid/support/v7/widget/SearchView$8;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/SearchView$8;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->ahJ:Landroid/widget/TextView$OnEditorActionListener;

    new-instance v0, Landroid/support/v7/widget/SearchView$9;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/SearchView$9;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->ahK:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Landroid/support/v7/widget/SearchView$10;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/SearchView$10;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->Mo:Landroid/widget/AdapterView$OnItemSelectedListener;

    new-instance v0, Landroid/support/v7/widget/SearchView$2;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/SearchView$2;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->ahL:Landroid/text/TextWatcher;

    sget-object v0, Landroid/support/v7/a/a$j;->SearchView:[I

    invoke-static {p1, p2, v0, p3, v6}, Landroid/support/v7/widget/bo;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/bo;

    move-result-object v1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Landroid/support/v7/a/a$j;->SearchView_layout:I

    sget v3, Landroid/support/v7/a/a$g;->abc_search_view:I

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/bo;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget v0, Landroid/support/v7/a/a$f;->search_src_text:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setSearchView(Landroid/support/v7/widget/SearchView;)V

    sget v0, Landroid/support/v7/a/a$f;->search_edit_frame:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->agQ:Landroid/view/View;

    sget v0, Landroid/support/v7/a/a$f;->search_plate:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->agR:Landroid/view/View;

    sget v0, Landroid/support/v7/a/a$f;->submit_area:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->agS:Landroid/view/View;

    sget v0, Landroid/support/v7/a/a$f;->search_button:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->agT:Landroid/widget/ImageView;

    sget v0, Landroid/support/v7/a/a$f;->search_go_btn:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->agU:Landroid/widget/ImageView;

    sget v0, Landroid/support/v7/a/a$f;->search_close_btn:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->agV:Landroid/widget/ImageView;

    sget v0, Landroid/support/v7/a/a$f;->search_voice_btn:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->agW:Landroid/widget/ImageView;

    sget v0, Landroid/support/v7/a/a$f;->search_mag_icon:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->ahd:Landroid/widget/ImageView;

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->agR:Landroid/view/View;

    sget v2, Landroid/support/v7/a/a$j;->SearchView_queryBackground:I

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/bo;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/support/v4/view/r;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->agS:Landroid/view/View;

    sget v2, Landroid/support/v7/a/a$j;->SearchView_submitBackground:I

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/bo;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/support/v4/view/r;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->agT:Landroid/widget/ImageView;

    sget v2, Landroid/support/v7/a/a$j;->SearchView_searchIcon:I

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/bo;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->agU:Landroid/widget/ImageView;

    sget v2, Landroid/support/v7/a/a$j;->SearchView_goIcon:I

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/bo;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->agV:Landroid/widget/ImageView;

    sget v2, Landroid/support/v7/a/a$j;->SearchView_closeIcon:I

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/bo;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->agW:Landroid/widget/ImageView;

    sget v2, Landroid/support/v7/a/a$j;->SearchView_voiceIcon:I

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/bo;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->ahd:Landroid/widget/ImageView;

    sget v2, Landroid/support/v7/a/a$j;->SearchView_searchIcon:I

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/bo;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v0, Landroid/support/v7/a/a$j;->SearchView_searchHintIcon:I

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/bo;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->ahe:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->agT:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/v7/a/a$h;->abc_searchview_description_search:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/support/v7/widget/bq;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    sget v0, Landroid/support/v7/a/a$j;->SearchView_suggestionRowLayout:I

    sget v2, Landroid/support/v7/a/a$g;->abc_search_dropdown_item_icons_2line:I

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/bo;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SearchView;->ahf:I

    sget v0, Landroid/support/v7/a/a$j;->SearchView_commitIcon:I

    invoke-virtual {v1, v0, v6}, Landroid/support/v7/widget/bo;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SearchView;->ahg:I

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->agT:Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->ahH:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->agV:Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->ahH:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->agU:Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->ahH:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->agW:Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->ahH:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->ahH:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->ahL:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->ahJ:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->ahK:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->Mo:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->ahI:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    new-instance v2, Landroid/support/v7/widget/SearchView$4;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/SearchView$4;-><init>(Landroid/support/v7/widget/SearchView;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    sget v0, Landroid/support/v7/a/a$j;->SearchView_iconifiedByDefault:I

    invoke-virtual {v1, v0, v5}, Landroid/support/v7/widget/bo;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->setIconifiedByDefault(Z)V

    sget v0, Landroid/support/v7/a/a$j;->SearchView_android_maxWidth:I

    invoke-virtual {v1, v0, v4}, Landroid/support/v7/widget/bo;->getDimensionPixelSize(II)I

    move-result v0

    if-eq v0, v4, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->setMaxWidth(I)V

    :cond_0
    sget v0, Landroid/support/v7/a/a$j;->SearchView_defaultQueryHint:I

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/bo;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->ahj:Ljava/lang/CharSequence;

    sget v0, Landroid/support/v7/a/a$j;->SearchView_queryHint:I

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/bo;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->aht:Ljava/lang/CharSequence;

    sget v0, Landroid/support/v7/a/a$j;->SearchView_android_imeOptions:I

    invoke-virtual {v1, v0, v4}, Landroid/support/v7/widget/bo;->getInt(II)I

    move-result v0

    if-eq v0, v4, :cond_1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->setImeOptions(I)V

    :cond_1
    sget v0, Landroid/support/v7/a/a$j;->SearchView_android_inputType:I

    invoke-virtual {v1, v0, v4}, Landroid/support/v7/widget/bo;->getInt(II)I

    move-result v0

    if-eq v0, v4, :cond_2

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->setInputType(I)V

    :cond_2
    sget v0, Landroid/support/v7/a/a$j;->SearchView_android_focusable:I

    invoke-virtual {v1, v0, v5}, Landroid/support/v7/widget/bo;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->setFocusable(Z)V

    iget-object v0, v1, Landroid/support/v7/widget/bo;->ajT:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.WEB_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->ahh:Landroid/content/Intent;

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->ahh:Landroid/content/Intent;

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->ahh:Landroid/content/Intent;

    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "web_search"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->ahi:Landroid/content/Intent;

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->ahi:Landroid/content/Intent;

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getDropDownAnchor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->agX:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->agX:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->agX:Landroid/view/View;

    new-instance v1, Landroid/support/v7/widget/SearchView$5;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/SearchView$5;-><init>(Landroid/support/v7/widget/SearchView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_3
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->ahp:Z

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->ae(Z)V

    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->iA()V

    return-void
.end method

.method private a(Landroid/database/Cursor;)Landroid/content/Intent;
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "suggest_intent_action"

    invoke-static {p1, v0}, Landroid/support/v7/widget/bj;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->ahB:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestIntentAction()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_4

    const-string v0, "android.intent.action.SEARCH"

    move-object v2, v0

    :goto_0
    const-string v0, "suggest_intent_data"

    invoke-static {p1, v0}, Landroid/support/v7/widget/bj;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->ahB:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestIntentData()Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    const-string v3, "suggest_intent_data_id"

    invoke-static {p1, v3}, Landroid/support/v7/widget/bj;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    move-object v0, v1

    :goto_1
    const-string v3, "suggest_intent_query"

    invoke-static {p1, v3}, Landroid/support/v7/widget/bj;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "suggest_intent_extra_data"

    invoke-static {p1, v4}, Landroid/support/v7/widget/bj;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v0, v4, v3}, Landroid/support/v7/widget/SearchView;->a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v0

    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_3
    const-string v3, "SearchView"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Search suggestions cursor at row "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " returned exception."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception v0

    const/4 v0, -0x1

    goto :goto_3

    :cond_4
    move-object v2, v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_0
    const-string v1, "user_query"

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->ahy:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    if-eqz p4, :cond_1

    const-string v1, "query"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    if-eqz p3, :cond_2

    const-string v1, "intent_extra_data_key"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->ahC:Landroid/os/Bundle;

    if-eqz v1, :cond_3

    const-string v1, "app_data"

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->ahC:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_3
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->ahB:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v0
.end method

.method private ae(Z)V
    .locals 6

    const/4 v4, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    iput-boolean p1, p0, Landroid/support/v7/widget/SearchView;->ahq:Z

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v4

    :goto_1
    iget-object v5, p0, Landroid/support/v7/widget/SearchView;->agT:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0, v3}, Landroid/support/v7/widget/SearchView;->af(Z)V

    iget-object v5, p0, Landroid/support/v7/widget/SearchView;->agQ:Landroid/view/View;

    if-eqz p1, :cond_3

    move v0, v2

    :goto_2
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->ahd:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->ahp:Z

    if-eqz v0, :cond_4

    :cond_0
    :goto_3
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->ahd:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->ix()V

    if-nez v3, :cond_5

    :goto_4
    invoke-direct {p0, v4}, Landroid/support/v7/widget/SearchView;->ag(Z)V

    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->iw()V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v3, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    move v2, v1

    goto :goto_3

    :cond_5
    move v4, v1

    goto :goto_4
.end method

.method private af(Z)V
    .locals 2

    const/16 v0, 0x8

    iget-boolean v1, p0, Landroid/support/v7/widget/SearchView;->ahs:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->iv()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    iget-boolean v1, p0, Landroid/support/v7/widget/SearchView;->ahw:Z

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->agU:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private ag(Z)V
    .locals 3

    const/16 v1, 0x8

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->ahw:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->ahq:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->agU:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->agW:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private getPreferredHeight()I
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/a/a$d;->abc_search_view_preferred_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private getPreferredWidth()I
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/a/a$d;->abc_search_view_preferred_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private iA()V
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getQueryHint()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    iget-boolean v1, p0, Landroid/support/v7/widget/SearchView;->ahp:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->ahe:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    invoke-virtual {v2, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getTextSize()F

    move-result v1

    float-to-double v4, v1

    const-wide/high16 v6, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v4, v6

    double-to-int v1, v4

    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->ahe:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v8, v8, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v1, Landroid/text/SpannableStringBuilder;

    const-string v3, "   "

    invoke-direct {v1, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/text/style/ImageSpan;

    iget-object v4, p0, Landroid/support/v7/widget/SearchView;->ahe:Landroid/graphics/drawable/Drawable;

    invoke-direct {v3, v4}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/16 v6, 0x21

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object v0, v1

    goto :goto_0
.end method

.method private iv()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->ahs:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->ahw:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->ahq:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private iw()V
    .locals 2

    const/16 v0, 0x8

    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->iv()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->agU:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->agW:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->agS:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private ix()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v0

    :goto_0
    if-nez v2, :cond_0

    iget-boolean v3, p0, Landroid/support/v7/widget/SearchView;->ahp:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Landroid/support/v7/widget/SearchView;->ahz:Z

    if-nez v3, :cond_3

    :cond_0
    :goto_1
    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->agV:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    :goto_2
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->agV:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_5

    sget-object v0, Landroid/support/v7/widget/SearchView;->ENABLED_STATE_SET:[I

    :goto_3
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    return-void

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    const/16 v1, 0x8

    goto :goto_2

    :cond_5
    sget-object v0, Landroid/support/v7/widget/SearchView;->EMPTY_STATE_SET:[I

    goto :goto_3
.end method

.method private iy()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->ahE:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static m(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final G(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "android.intent.action.SEARCH"

    invoke-direct {p0, v0, v1, v1, p1}, Landroid/support/v7/widget/SearchView;->a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method final b(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/16 v2, 0x15

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->ahB:Landroid/app/SearchableInfo;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->ahr:Landroid/support/v4/widget/f;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x42

    if-eq p1, v0, :cond_2

    const/16 v0, 0x54

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3d

    if-ne p1, v0, :cond_3

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->bR(I)Z

    move-result v1

    goto :goto_0

    :cond_3
    if-eq p1, v2, :cond_4

    const/16 v0, 0x16

    if-ne p1, v0, :cond_6

    :cond_4
    if-ne p1, v2, :cond_5

    move v0, v1

    :goto_1
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setListSelection(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->clearListSelection()V

    sget-object v0, Landroid/support/v7/widget/SearchView;->ahD:Landroid/support/v7/widget/SearchView$a;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$a;->a(Landroid/widget/AutoCompleteTextView;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->length()I

    move-result v0

    goto :goto_1

    :cond_6
    const/16 v0, 0x13

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method final bR(I)Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->ahn:Landroid/support/v7/widget/SearchView$d;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->ahn:Landroid/support/v7/widget/SearchView$d;

    invoke-interface {v1}, Landroid/support/v7/widget/SearchView$d;->iH()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->ahr:Landroid/support/v4/widget/f;

    invoke-virtual {v1}, Landroid/support/v4/widget/f;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Landroid/support/v7/widget/SearchView;->a(Landroid/database/Cursor;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-static {v1, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->a(Landroid/support/v7/widget/SearchView$SearchAutoComplete;Z)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->dismissDropDown()V

    const/4 v0, 0x1

    :cond_2
    return v0

    :catch_0
    move-exception v1

    const-string v3, "SearchView"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed launch activity: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public clearFocus()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SearchView;->ahv:Z

    invoke-super {p0}, Landroid/support/v7/widget/at;->clearFocus()V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->clearFocus()V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-static {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->a(Landroid/support/v7/widget/SearchView$SearchAutoComplete;Z)V

    iput-boolean v1, p0, Landroid/support/v7/widget/SearchView;->ahv:Z

    return-void
.end method

.method public getImeOptions()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    return v0
.end method

.method public getInputType()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getInputType()I

    move-result v0

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SearchView;->by:I

    return v0
.end method

.method public getQuery()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getQueryHint()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->aht:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->aht:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->ahB:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->ahB:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->ahB:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->ahj:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method getSuggestionCommitIconResId()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SearchView;->ahg:I

    return v0
.end method

.method getSuggestionRowLayout()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SearchView;->ahf:I

    return v0
.end method

.method public getSuggestionsAdapter()Landroid/support/v4/widget/f;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->ahr:Landroid/support/v4/widget/f;

    return-object v0
.end method

.method final iB()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->ahk:Landroid/support/v7/widget/SearchView$c;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->ahk:Landroid/support/v7/widget/SearchView$c;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    invoke-interface {v1}, Landroid/support/v7/widget/SearchView$c;->iF()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->ahB:Landroid/app/SearchableInfo;

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->G(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->a(Landroid/support/v7/widget/SearchView$SearchAutoComplete;Z)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->dismissDropDown()V

    goto :goto_0
.end method

.method final iC()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->ae(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->a(Landroid/support/v7/widget/SearchView$SearchAutoComplete;Z)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->aho:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->aho:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method final iD()V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->ahq:Z

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->ae(Z)V

    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->iy()V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->iE()V

    :cond_0
    return-void
.end method

.method final iE()V
    .locals 3

    sget-object v0, Landroid/support/v7/widget/SearchView;->ahD:Landroid/support/v7/widget/SearchView$a;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v2, v0, Landroid/support/v7/widget/SearchView$a;->ahN:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v0, v0, Landroid/support/v7/widget/SearchView$a;->ahN:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    sget-object v0, Landroid/support/v7/widget/SearchView;->ahD:Landroid/support/v7/widget/SearchView$a;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v2, v0, Landroid/support/v7/widget/SearchView$a;->ahO:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    :try_start_1
    iget-object v0, v0, Landroid/support/v7/widget/SearchView$a;->ahO:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method final iz()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/support/v7/widget/SearchView;->FOCUSED_STATE_SET:[I

    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->agR:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->agS:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->invalidate()V

    return-void

    :cond_2
    sget-object v0, Landroid/support/v7/widget/SearchView;->EMPTY_STATE_SET:[I

    goto :goto_0
.end method

.method final m(Ljava/lang/CharSequence;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->ahy:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->af(Z)V

    if-nez v0, :cond_2

    :goto_1
    invoke-direct {p0, v1}, Landroid/support/v7/widget/SearchView;->ag(Z)V

    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->ix()V

    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->iw()V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->ahk:Landroid/support/v7/widget/SearchView$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->ahx:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->ahk:Landroid/support/v7/widget/SearchView$c;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/support/v7/widget/SearchView$c;->onQueryTextChange(Ljava/lang/String;)Z

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->ahx:Ljava/lang/CharSequence;

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public final onActionViewCollapsed()V
    .locals 3

    const-string v0, ""

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->ahy:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->clearFocus()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->ae(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget v1, p0, Landroid/support/v7/widget/SearchView;->ahA:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/SearchView;->ahz:Z

    return-void
.end method

.method public final onActionViewExpanded()V
    .locals 3

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->ahz:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SearchView;->ahz:Z

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SearchView;->ahA:I

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget v1, p0, Landroid/support/v7/widget/SearchView;->ahA:I

    const/high16 v2, 0x2000000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->setIconified(Z)V

    goto :goto_0
.end method

.method final onCloseClicked()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->ahp:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->ahl:Landroid/support/v7/widget/SearchView$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->ahl:Landroid/support/v7/widget/SearchView$b;

    invoke-interface {v0}, Landroid/support/v7/widget/SearchView$b;->onClose()Z

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->clearFocus()V

    invoke-direct {p0, v2}, Landroid/support/v7/widget/SearchView;->ae(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-static {v0, v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->a(Landroid/support/v7/widget/SearchView$SearchAutoComplete;Z)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->ahE:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->ahF:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    invoke-super {p0}, Landroid/support/v7/widget/at;->onDetachedFromWindow()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/at;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->agZ:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->ahb:[I

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->ahc:[I

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/SearchView;->getLocationInWindow([I)V

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->ahb:[I

    aget v2, v2, v4

    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->ahc:[I

    aget v3, v3, v4

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->ahb:[I

    aget v3, v3, v5

    iget-object v4, p0, Landroid/support/v7/widget/SearchView;->ahc:[I

    aget v4, v4, v5

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {v1, v3, v2, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->aha:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->agZ:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->agZ:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int v3, p5, p3

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->agY:Landroid/support/v7/widget/SearchView$f;

    if-nez v0, :cond_1

    new-instance v0, Landroid/support/v7/widget/SearchView$f;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->aha:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->agZ:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/widget/SearchView$f;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->agY:Landroid/support/v7/widget/SearchView$f;

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->agY:Landroid/support/v7/widget/SearchView$f;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->agY:Landroid/support/v7/widget/SearchView$f;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->aha:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->agZ:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/SearchView$f;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4

    const/high16 v3, 0x40000000    # 2.0f

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->ahq:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/at;->onMeasure(II)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    sparse-switch v1, :sswitch_data_0

    :cond_1
    :goto_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    sparse-switch v2, :sswitch_data_1

    :goto_2
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/support/v7/widget/at;->onMeasure(II)V

    goto :goto_0

    :sswitch_0
    iget v1, p0, Landroid/support/v7/widget/SearchView;->by:I

    if-lez v1, :cond_2

    iget v1, p0, Landroid/support/v7/widget/SearchView;->by:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->getPreferredWidth()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    :sswitch_1
    iget v1, p0, Landroid/support/v7/widget/SearchView;->by:I

    if-lez v1, :cond_1

    iget v1, p0, Landroid/support/v7/widget/SearchView;->by:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    :sswitch_2
    iget v0, p0, Landroid/support/v7/widget/SearchView;->by:I

    if-lez v0, :cond_3

    iget v0, p0, Landroid/support/v7/widget/SearchView;->by:I

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->getPreferredWidth()I

    move-result v0

    goto :goto_1

    :sswitch_3
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->getPreferredHeight()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_2

    :sswitch_4
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->getPreferredHeight()I

    move-result v1

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_3
        0x0 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Landroid/support/v7/widget/SearchView$e;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v7/widget/at;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void

    :cond_0
    check-cast p1, Landroid/support/v7/widget/SearchView$e;

    iget-object v0, p1, Landroid/support/v4/view/a;->EV:Landroid/os/Parcelable;

    invoke-super {p0, v0}, Landroid/support/v7/widget/at;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean v0, p1, Landroid/support/v7/widget/SearchView$e;->ahQ:Z

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->ae(Z)V

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->requestLayout()V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/support/v7/widget/at;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroid/support/v7/widget/SearchView$e;

    invoke-direct {v1, v0}, Landroid/support/v7/widget/SearchView$e;-><init>(Landroid/os/Parcelable;)V

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->ahq:Z

    iput-boolean v0, v1, Landroid/support/v7/widget/SearchView$e;->ahQ:Z

    return-object v1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/widget/at;->onWindowFocusChanged(Z)V

    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->iy()V

    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroid/support/v7/widget/SearchView;->ahv:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/support/v7/widget/SearchView;->ahq:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, p1, p2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->ae(Z)V

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/at;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method public setAppSearchData(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->ahC:Landroid/os/Bundle;

    return-void
.end method

.method public setIconified(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->onCloseClicked()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->iC()V

    goto :goto_0
.end method

.method public setIconifiedByDefault(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->ahp:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/SearchView;->ahp:Z

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->ae(Z)V

    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->iA()V

    goto :goto_0
.end method

.method public setImeOptions(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    return-void
.end method

.method public setInputType(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/SearchView;->by:I

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->requestLayout()V

    return-void
.end method

.method public setOnCloseListener(Landroid/support/v7/widget/SearchView$b;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->ahl:Landroid/support/v7/widget/SearchView$b;

    return-void
.end method

.method public setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->ahm:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method public setOnQueryTextListener(Landroid/support/v7/widget/SearchView$c;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->ahk:Landroid/support/v7/widget/SearchView$c;

    return-void
.end method

.method public setOnSearchClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->aho:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnSuggestionListener(Landroid/support/v7/widget/SearchView$d;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->ahn:Landroid/support/v7/widget/SearchView$d;

    return-void
.end method

.method setQuery(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_0
.end method

.method public setQueryHint(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->aht:Ljava/lang/CharSequence;

    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->iA()V

    return-void
.end method

.method public setQueryRefinementEnabled(Z)V
    .locals 2

    iput-boolean p1, p0, Landroid/support/v7/widget/SearchView;->ahu:Z

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->ahr:Landroid/support/v4/widget/f;

    instance-of v0, v0, Landroid/support/v7/widget/bj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->ahr:Landroid/support/v4/widget/f;

    check-cast v0, Landroid/support/v7/widget/bj;

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    :goto_0
    iput v1, v0, Landroid/support/v7/widget/bj;->aiO:I

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setSearchableInfo(Landroid/app/SearchableInfo;)V
    .locals 8

    const/4 v4, 0x0

    const/high16 v7, 0x10000

    const/4 v3, 0x0

    const/4 v2, 0x1

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->ahB:Landroid/app/SearchableInfo;

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->ahB:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->ahB:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestThreshold()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setThreshold(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->ahB:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getImeOptions()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->ahB:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getInputType()I

    move-result v0

    and-int/lit8 v1, v0, 0xf

    if-ne v1, v2, :cond_0

    const v1, -0x10001

    and-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->ahB:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    or-int/2addr v0, v7

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->ahr:Landroid/support/v4/widget/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->ahr:Landroid/support/v4/widget/f;

    invoke-virtual {v0, v4}, Landroid/support/v4/widget/f;->changeCursor(Landroid/database/Cursor;)V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->ahB:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/support/v7/widget/bj;

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v5, p0, Landroid/support/v7/widget/SearchView;->ahB:Landroid/app/SearchableInfo;

    iget-object v6, p0, Landroid/support/v7/widget/SearchView;->ahG:Ljava/util/WeakHashMap;

    invoke-direct {v0, v1, p0, v5, v6}, Landroid/support/v7/widget/bj;-><init>(Landroid/content/Context;Landroid/support/v7/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->ahr:Landroid/support/v4/widget/f;

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->ahr:Landroid/support/v4/widget/f;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->ahr:Landroid/support/v4/widget/f;

    check-cast v0, Landroid/support/v7/widget/bj;

    iget-boolean v1, p0, Landroid/support/v7/widget/SearchView;->ahu:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x2

    :goto_0
    iput v1, v0, Landroid/support/v7/widget/bj;->aiO:I

    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->iA()V

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->ahB:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->ahB:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->ahB:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->ahh:Landroid/content/Intent;

    :goto_1
    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_7

    :goto_2
    iput-boolean v2, p0, Landroid/support/v7/widget/SearchView;->ahw:Z

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->ahw:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const-string v1, "nm"

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setPrivateImeOptions(Ljava/lang/String;)V

    :cond_4
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->ahq:Z

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->ae(Z)V

    return-void

    :cond_5
    move v1, v2

    goto :goto_0

    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->ahB:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->ahi:Landroid/content/Intent;

    goto :goto_1

    :cond_7
    move v2, v3

    goto :goto_2

    :cond_8
    move v2, v3

    goto :goto_2

    :cond_9
    move-object v0, v4

    goto :goto_1
.end method

.method public setSubmitButtonEnabled(Z)V
    .locals 1

    iput-boolean p1, p0, Landroid/support/v7/widget/SearchView;->ahs:Z

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->ahq:Z

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->ae(Z)V

    return-void
.end method

.method public setSuggestionsAdapter(Landroid/support/v4/widget/f;)V
    .locals 2

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->ahr:Landroid/support/v4/widget/f;

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->ahr:Landroid/support/v4/widget/f;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
