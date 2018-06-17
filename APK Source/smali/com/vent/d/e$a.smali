.class final Lcom/vent/d/e$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/d/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/text/style/CharacterStyle;",
        ">;"
    }
.end annotation


# instance fields
.field private final cnC:Landroid/text/SpannableStringBuilder;


# direct methods
.method constructor <init>(Landroid/text/SpannableStringBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vent/d/e$a;->cnC:Landroid/text/SpannableStringBuilder;

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Landroid/text/style/CharacterStyle;

    check-cast p2, Landroid/text/style/CharacterStyle;

    iget-object v0, p0, Lcom/vent/d/e$a;->cnC:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/vent/d/e$a;->cnC:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, p2}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
