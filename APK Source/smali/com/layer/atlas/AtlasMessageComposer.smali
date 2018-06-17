.class public final Lcom/layer/atlas/AtlasMessageComposer;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/atlas/AtlasMessageComposer$a;
    }
.end annotation


# instance fields
.field public HX:Z

.field public bmL:F

.field public bmU:Lcom/layer/sdk/LayerClient;

.field bmV:Lcom/layer/sdk/messaging/Conversation;

.field public bmY:Landroid/widget/EditText;

.field public bmZ:Landroid/widget/Button;

.field public bna:Landroid/widget/ImageView;

.field private bnb:Lcom/layer/atlas/b/d/b;

.field public final bnc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layer/atlas/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private bnd:Lcom/layer/atlas/b/c$a;

.field bne:Landroid/widget/PopupWindow;

.field public bnf:I

.field public bng:Landroid/graphics/Typeface;

.field public bnh:I

.field public bni:I

.field public bnj:I

.field private bnk:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/layer/atlas/AtlasMessageComposer;->bnc:Ljava/util/ArrayList;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/layer/atlas/AtlasMessageComposer;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/layer/atlas/AtlasMessageComposer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/layer/atlas/AtlasMessageComposer;->bnc:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/layer/atlas/b$j;->AtlasMessageComposer:[I

    sget v2, Lcom/layer/atlas/b$b;->AtlasMessageComposer:I

    invoke-virtual {v0, p2, v1, v2, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v0, Lcom/layer/atlas/b$j;->AtlasMessageComposer_android_enabled:I

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/layer/atlas/AtlasMessageComposer;->HX:Z

    sget v0, Lcom/layer/atlas/b$j;->AtlasMessageComposer_inputTextColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/layer/atlas/b$c;->atlas_text_black:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/layer/atlas/AtlasMessageComposer;->bnf:I

    sget v0, Lcom/layer/atlas/b$j;->AtlasMessageComposer_inputTextSize:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/layer/atlas/b$d;->atlas_text_size_input:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/layer/atlas/AtlasMessageComposer;->bmL:F

    sget v0, Lcom/layer/atlas/b$j;->AtlasMessageComposer_inputTextStyle:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/layer/atlas/AtlasMessageComposer;->bnh:I

    sget v0, Lcom/layer/atlas/b$j;->AtlasMessageComposer_inputTextTypeface:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/layer/atlas/AtlasMessageComposer;->bnh:I

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/layer/atlas/AtlasMessageComposer;->bng:Landroid/graphics/Typeface;

    sget v0, Lcom/layer/atlas/b$j;->AtlasMessageComposer_inputUnderlineColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/layer/atlas/b$c;->atlas_color_primary_blue:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/layer/atlas/AtlasMessageComposer;->bni:I

    sget v0, Lcom/layer/atlas/b$j;->AtlasMessageComposer_inputCursorColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/layer/atlas/b$c;->atlas_color_primary_blue:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/layer/atlas/AtlasMessageComposer;->bnj:I

    sget v0, Lcom/layer/atlas/b$j;->AtlasMessageComposer_attachmentSendersBackground:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/atlas/AtlasMessageComposer;->bnk:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/layer/atlas/AtlasMessageComposer;->bnk:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    sget v0, Lcom/layer/atlas/b$e;->atlas_popup_background:I

    invoke-static {p1, v0}, Landroid/support/v4/content/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/atlas/AtlasMessageComposer;->bnk:Landroid/graphics/drawable/Drawable;

    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0, p1, p2, p3}, Lcom/layer/atlas/AtlasMessageComposer;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, -0x2

    iget-object v0, p0, Lcom/layer/atlas/AtlasMessageComposer;->bne:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already initialized menu"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/layer/atlas/AtlasMessageComposer;->bne:Landroid/widget/PopupWindow;

    :goto_0
    iget-object v0, p0, Lcom/layer/atlas/AtlasMessageComposer;->bne:Landroid/widget/PopupWindow;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/layer/atlas/b$g;->atlas_message_composer_attachment_menu:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/layer/atlas/AtlasMessageComposer;->bne:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4, v4}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    iget-object v0, p0, Lcom/layer/atlas/AtlasMessageComposer;->bne:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/layer/atlas/AtlasMessageComposer;->bne:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/layer/atlas/AtlasMessageComposer;->bnk:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/layer/atlas/AtlasMessageComposer;->bne:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    return-void

    :cond_1
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/layer/atlas/AtlasMessageComposer;->bne:Landroid/widget/PopupWindow;

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/layer/atlas/b/d/b;)Lcom/layer/atlas/AtlasMessageComposer;
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/layer/atlas/AtlasMessageComposer;->bnb:Lcom/layer/atlas/b/d/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/atlas/AtlasMessageComposer;->bnb:Lcom/layer/atlas/b/d/b;

    iput-object v1, v0, Lcom/layer/atlas/b/c;->bou:Lcom/layer/atlas/b/c$a;

    iget-object v0, p0, Lcom/layer/atlas/AtlasMessageComposer;->bnb:Lcom/layer/atlas/b/d/b;

    iput-object v1, v0, Lcom/layer/atlas/b/c;->bmV:Lcom/layer/sdk/messaging/Conversation;

    iget-object v0, p0, Lcom/layer/atlas/AtlasMessageComposer;->bnb:Lcom/layer/atlas/b/d/b;

    invoke-virtual {v0, v1, v1}, Lcom/layer/atlas/b/d/b;->a(Landroid/content/Context;Lcom/layer/sdk/LayerClient;)V

    :cond_0
    iput-object p1, p0, Lcom/layer/atlas/AtlasMessageComposer;->bnb:Lcom/layer/atlas/b/d/b;

    iget-object v0, p0, Lcom/layer/atlas/AtlasMessageComposer;->bnb:Lcom/layer/atlas/b/d/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/layer/atlas/AtlasMessageComposer;->bnb:Lcom/layer/atlas/b/d/b;

    invoke-virtual {p0}, Lcom/layer/atlas/AtlasMessageComposer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/layer/atlas/AtlasMessageComposer;->bmU:Lcom/layer/sdk/LayerClient;

    invoke-virtual {v0, v1, v2}, Lcom/layer/atlas/b/d/b;->a(Landroid/content/Context;Lcom/layer/sdk/LayerClient;)V

    iget-object v0, p0, Lcom/layer/atlas/AtlasMessageComposer;->bnb:Lcom/layer/atlas/b/d/b;

    iget-object v1, p0, Lcom/layer/atlas/AtlasMessageComposer;->bmV:Lcom/layer/sdk/messaging/Conversation;

    iput-object v1, v0, Lcom/layer/atlas/b/c;->bmV:Lcom/layer/sdk/messaging/Conversation;

    iget-object v0, p0, Lcom/layer/atlas/AtlasMessageComposer;->bnb:Lcom/layer/atlas/b/d/b;

    iget-object v1, p0, Lcom/layer/atlas/AtlasMessageComposer;->bnd:Lcom/layer/atlas/b/c$a;

    iput-object v1, v0, Lcom/layer/atlas/b/c;->bou:Lcom/layer/atlas/b/c$a;

    :cond_1
    return-object p0
.end method

.method public final b(Lcom/layer/sdk/messaging/Conversation;)Lcom/layer/atlas/AtlasMessageComposer;
    .locals 2

    iput-object p1, p0, Lcom/layer/atlas/AtlasMessageComposer;->bmV:Lcom/layer/sdk/messaging/Conversation;

    iget-object v0, p0, Lcom/layer/atlas/AtlasMessageComposer;->bnb:Lcom/layer/atlas/b/d/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/atlas/AtlasMessageComposer;->bnb:Lcom/layer/atlas/b/d/b;

    iput-object p1, v0, Lcom/layer/atlas/b/c;->bmV:Lcom/layer/sdk/messaging/Conversation;

    :cond_0
    iget-object v0, p0, Lcom/layer/atlas/AtlasMessageComposer;->bnc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/atlas/b/b;

    iput-object p1, v0, Lcom/layer/atlas/b/c;->bmV:Lcom/layer/sdk/messaging/Conversation;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method protected final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    instance-of v0, p1, Lcom/layer/atlas/AtlasMessageComposer$a;

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_0
    return-void

    :cond_1
    check-cast p1, Lcom/layer/atlas/AtlasMessageComposer$a;

    invoke-virtual {p1}, Lcom/layer/atlas/AtlasMessageComposer$a;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/layer/atlas/AtlasMessageComposer;->bnc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/atlas/b/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v2, p1, Lcom/layer/atlas/AtlasMessageComposer$a;->Cs:Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0
.end method

.method protected final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/atlas/AtlasMessageComposer;->bnc:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/layer/atlas/AtlasMessageComposer$a;

    invoke-direct {v1, v0}, Lcom/layer/atlas/AtlasMessageComposer$a;-><init>(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/layer/atlas/AtlasMessageComposer;->bnc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final setEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/layer/atlas/AtlasMessageComposer;->bna:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/atlas/AtlasMessageComposer;->bna:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/layer/atlas/AtlasMessageComposer;->bmY:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/layer/atlas/AtlasMessageComposer;->bmY:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/layer/atlas/AtlasMessageComposer;->bmZ:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/layer/atlas/AtlasMessageComposer;->bmZ:Landroid/widget/Button;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/layer/atlas/AtlasMessageComposer;->bmY:Landroid/widget/EditText;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/layer/atlas/AtlasMessageComposer;->bmY:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final wf()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/layer/atlas/AtlasMessageComposer;->bnb:Lcom/layer/atlas/b/d/b;

    iget-object v1, p0, Lcom/layer/atlas/AtlasMessageComposer;->bmY:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/layer/atlas/b/d/b;->dt(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/layer/atlas/AtlasMessageComposer;->bmY:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/layer/atlas/AtlasMessageComposer;->bmZ:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_0
    .catch Lcom/layer/sdk/exceptions/LayerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/layer/sdk/exceptions/LayerException;->printStackTrace()V

    goto :goto_0
.end method
