.class Lio/intercom/android/sdk/blocks/Paragraph;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/android/sdk/blocks/blockInterfaces/ParagraphBlock;


# instance fields
.field private final appConfigProvider:Lio/intercom/android/sdk/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final style:Lio/intercom/android/sdk/blocks/StyleType;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/blocks/StyleType;Lio/intercom/android/sdk/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/blocks/StyleType;",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/Paragraph;->style:Lio/intercom/android/sdk/blocks/StyleType;

    iput-object p2, p0, Lio/intercom/android/sdk/blocks/Paragraph;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    return-void
.end method


# virtual methods
.method public addParagraph(Landroid/text/Spanned;Lio/intercom/android/sdk/blocks/BlockAlignment;ZZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/Paragraph;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppConfig;->getBaseColor()I

    move-result v0

    new-instance v1, Lio/intercom/android/sdk/blocks/views/ParagraphView;

    invoke-virtual {p5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lio/intercom/android/sdk/blocks/Paragraph;->style:Lio/intercom/android/sdk/blocks/StyleType;

    invoke-direct {v1, v2, v3, p2, v0}, Lio/intercom/android/sdk/blocks/views/ParagraphView;-><init>(Landroid/content/Context;Lio/intercom/android/sdk/blocks/StyleType;Lio/intercom/android/sdk/blocks/BlockAlignment;I)V

    sget-object v0, Lio/intercom/android/sdk/blocks/StyleType;->PREVIEW:Lio/intercom/android/sdk/blocks/StyleType;

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/Paragraph;->style:Lio/intercom/android/sdk/blocks/StyleType;

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p2}, Lio/intercom/android/sdk/blocks/BlockAlignment;->getGravity()I

    move-result v0

    invoke-static {v1, v0, p4}, Lio/intercom/android/sdk/utilities/BlockUtils;->setLayoutMarginsAndGravity(Landroid/view/View;IZ)V

    return-object v1

    :cond_0
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
