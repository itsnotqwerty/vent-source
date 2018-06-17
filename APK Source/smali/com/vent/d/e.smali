.class public final Lcom/vent/d/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vent/d/e$b;,
        Lcom/vent/d/e$c;,
        Lcom/vent/d/e$a;
    }
.end annotation


# static fields
.field public static cmU:Landroid/graphics/Typeface;

.field public static cmV:Landroid/graphics/Typeface;

.field public static cmW:Landroid/graphics/Typeface;

.field public static cmX:Landroid/graphics/Typeface;

.field public static cmY:Landroid/graphics/Typeface;

.field public static cmZ:Landroid/graphics/Typeface;

.field private static final cnA:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final cnB:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field

.field public static cna:Landroid/graphics/Typeface;

.field public static cnb:Landroid/graphics/Typeface;

.field public static cnc:Landroid/graphics/Typeface;

.field public static cnd:Landroid/graphics/Typeface;

.field public static cne:Landroid/graphics/Typeface;

.field private static cnf:[B

.field public static cng:I

.field public static cnh:Z

.field public static cni:Z

.field public static cnj:I

.field static final cnk:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final cnl:Z

.field private static cnm:Ljava/lang/String;

.field private static cnn:Ljava/lang/String;

.field private static cno:Ljava/lang/String;

.field private static cnp:Ljava/lang/String;

.field private static cnq:Ljava/lang/String;

.field private static cnr:Ljava/lang/String;

.field private static cns:Ljava/lang/String;

.field private static cnt:Ljava/lang/String;

.field private static cnu:Ljava/lang/String;

.field private static cnv:Ljava/lang/String;

.field private static cnw:Ljava/lang/String;

.field private static cnx:Ljava/lang/String;

.field private static cny:Ljava/lang/String;

.field private static cnz:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "#Vent"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "#VentSuggestions"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/vent/d/e;->cnk:Ljava/util/ArrayList;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/vent/d/e;->cnl:Z

    new-instance v0, Lcom/vent/d/e$1;

    invoke-direct {v0}, Lcom/vent/d/e$1;-><init>()V

    sput-object v0, Lcom/vent/d/e;->cnA:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/vent/d/e$2;

    invoke-direct {v0}, Lcom/vent/d/e$2;-><init>()V

    sput-object v0, Lcom/vent/d/e;->cnB:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static FA()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;
    .locals 12

    const/16 v11, 0x21

    const/4 v7, 0x0

    if-eqz p0, :cond_6

    sget-boolean v0, Lcom/vent/bb;->chZ:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    const/4 v0, 0x5

    if-le v9, v0, :cond_6

    const-class v0, Lcom/vent/c/b;

    invoke-virtual {p0, v7, v9, v0}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Landroid/text/style/CharacterStyle;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-gt v0, v1, :cond_0

    new-instance v0, Lcom/vent/d/e$a;

    invoke-direct {v0, p0}, Lcom/vent/d/e$a;-><init>(Landroid/text/SpannableStringBuilder;)V

    invoke-static {v6, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_0
    array-length v4, v6

    move v3, v7

    move v2, v7

    move v0, v7

    move v1, v7

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v5, v6, v3

    invoke-virtual {p0, v5}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    :goto_1
    if-ge v2, v8, :cond_1

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->getType(I)I

    move-result v10

    packed-switch v10, :pswitch_data_0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v5}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_3
    if-ge v2, v9, :cond_3

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->getType(I)I

    move-result v3

    packed-switch v3, :pswitch_data_1

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :pswitch_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :pswitch_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_3
    if-lez v1, :cond_6

    mul-int/lit8 v2, v1, 0x64

    add-int/2addr v0, v1

    div-int v0, v2, v0

    if-le v0, v11, :cond_6

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    array-length v10, v6

    move v8, v7

    :goto_5
    if-ge v8, v10, :cond_4

    aget-object v2, v6, v8

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    move-object v3, p0

    move v4, v1

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_5

    :cond_4
    const-class v1, Lcom/vent/c/h$a;

    invoke-virtual {p0, v7, v9, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/vent/c/h$a;

    array-length v3, v1

    move v2, v7

    :goto_6
    if-ge v2, v3, :cond_5

    aget-object v4, v1, v2

    invoke-interface {v4}, Lcom/vent/c/h$a;->Fx()Landroid/text/style/CharacterStyle;

    move-result-object v5

    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v0, v5, v6, v4, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_5
    move-object p0, v0

    :cond_6
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Landroid/text/SpannableStringBuilder;I[Z)Landroid/text/SpannableStringBuilder;
    .locals 4

    const/4 v3, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-gez p1, :cond_3

    :goto_1
    if-ltz p1, :cond_4

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    const v2, 0xd800

    if-lt v1, v2, :cond_2

    const v2, 0xdbff

    if-gt v1, v2, :cond_2

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    :cond_2
    const/4 v1, 0x1

    aput-boolean v1, p2, v3

    :goto_2
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    :goto_3
    if-lez v1, :cond_5

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v2

    if-eqz v2, :cond_5

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_3
    invoke-static {p0, p1}, Lcom/vent/d/e;->c(Ljava/lang/CharSequence;I)I

    move-result p1

    goto :goto_1

    :cond_4
    aput-boolean v3, p2, v3

    move-object v0, p0

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-ne v1, v2, :cond_7

    aget-boolean v2, p2, v3

    if-eqz v2, :cond_7

    :goto_4
    if-lez v1, :cond_6

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v2

    if-nez v2, :cond_6

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_6
    :goto_5
    if-lez v1, :cond_7

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v2

    if-eqz v2, :cond_7

    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    :cond_7
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    aget-boolean v1, p2, v3

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_8

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v1

    if-nez v1, :cond_8

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    :cond_8
    const/16 v1, 0x2026

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/String;IILjava/lang/Object;Ljava/util/Map;ZZI)Landroid/text/SpannableStringBuilder;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/vent/a;",
            ">;",
            "Ljava/lang/ref/WeakReference",
            "<*>;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/vent/a/r;",
            ">;ZZI)",
            "Landroid/text/SpannableStringBuilder;"
        }
    .end annotation

    sget v0, Lcom/vent/bb;->cif:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v10, 0x1

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-static/range {v0 .. v10}, Lcom/vent/d/e;->a(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/String;IILjava/lang/Object;Ljava/util/Map;ZZIZ)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v10, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/String;IILjava/lang/Object;Ljava/util/Map;ZZIZ)Landroid/text/SpannableStringBuilder;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/vent/a;",
            ">;",
            "Ljava/lang/ref/WeakReference",
            "<*>;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/vent/a/r;",
            ">;ZZIZ)",
            "Landroid/text/SpannableStringBuilder;"
        }
    .end annotation

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v5, 0x0

    const/4 v11, -0x1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v9, 0x0

    const/4 v6, 0x0

    move v8, v11

    move v7, v5

    :goto_1
    if-ge v7, v13, :cond_4

    move/from16 v0, p3

    if-lt v9, v0, :cond_8

    const/4 v3, 0x2

    move/from16 v0, p9

    if-eq v0, v3, :cond_4

    if-ltz v8, :cond_4

    if-ge v6, v7, :cond_33

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    move v4, v3

    move-object/from16 v5, p2

    invoke-virtual/range {v2 .. v7}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move v6, v7

    move v4, v7

    :goto_2
    if-ge v4, v13, :cond_32

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x5f

    if-ne v3, v5, :cond_6

    add-int/lit8 v5, v13, -0x1

    if-eq v4, v5, :cond_2

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_2
    if-eq v8, v9, :cond_3

    if-nez p9, :cond_3

    sget-boolean v3, Lcom/vent/bb;->cic:Z

    if-nez v3, :cond_3

    new-instance v3, Lcom/vent/c/f;

    invoke-direct {v3}, Lcom/vent/c/f;-><init>()V

    const/16 v5, 0x21

    invoke-virtual {v2, v3, v8, v9, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_3
    const/4 v3, -0x1

    move v8, v3

    move v7, v4

    :cond_4
    :goto_3
    if-ge v6, v7, :cond_5

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    move v4, v3

    move-object/from16 v5, p2

    invoke-virtual/range {v2 .. v7}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    :cond_5
    const/4 v3, 0x2

    move/from16 v0, p9

    if-eq v0, v3, :cond_0

    if-ltz v8, :cond_0

    const-string v3, "_"

    invoke-virtual {v2, v8, v3}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    :cond_6
    const/16 v5, 0xa

    if-ne v3, v5, :cond_7

    const-string v3, "_"

    invoke-virtual {v2, v8, v3}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/4 v3, -0x1

    move v8, v3

    move v7, v4

    goto :goto_3

    :cond_7
    add-int/lit8 v7, v4, 0x1

    move v4, v7

    goto :goto_2

    :cond_8
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eqz p10, :cond_31

    const/16 v3, 0x2000

    if-lt v10, v3, :cond_31

    sget-object v3, Lcom/vent/d/e;->cnf:[B

    if-eqz v3, :cond_31

    if-ge v6, v7, :cond_9

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    move v4, v3

    move-object/from16 v5, p2

    invoke-virtual/range {v2 .. v7}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move v6, v7

    :cond_9
    const/4 v3, 0x0

    move v4, v9

    :goto_4
    const v5, 0xd800

    if-lt v10, v5, :cond_e

    const v5, 0xdbff

    if-gt v10, v5, :cond_e

    add-int v5, v7, v3

    add-int/lit8 v11, v13, -0x1

    if-ge v5, v11, :cond_e

    add-int v5, v7, v3

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v11, 0xdc00

    if-lt v5, v11, :cond_e

    const v11, 0xdfff

    if-gt v5, v11, :cond_e

    const/high16 v11, 0x10000

    const v12, 0xd800

    sub-int/2addr v10, v12

    mul-int/lit16 v10, v10, 0x400

    add-int/2addr v10, v11

    add-int/2addr v5, v10

    const v10, 0xdc00

    sub-int v10, v5, v10

    const/4 v5, 0x2

    :goto_5
    const/high16 v11, 0x20000

    if-ge v10, v11, :cond_a

    sget-object v11, Lcom/vent/d/e;->cnf:[B

    aget-byte v11, v11, v10

    if-nez v11, :cond_b

    :cond_a
    const/16 v11, 0x200d

    if-ne v10, v11, :cond_f

    if-lez v3, :cond_f

    :cond_b
    const/16 v11, 0x20e3

    if-eq v10, v11, :cond_c

    const v11, 0xfe0f

    if-ne v10, v11, :cond_d

    :cond_c
    if-lez v4, :cond_d

    if-nez v3, :cond_d

    add-int/lit8 v4, v4, -0x1

    :cond_d
    add-int/2addr v3, v5

    add-int v5, v7, v3

    if-ge v5, v13, :cond_f

    add-int v5, v7, v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_4

    :cond_e
    const/4 v5, 0x1

    goto :goto_5

    :cond_f
    move v10, v3

    move v11, v4

    if-lez v10, :cond_10

    add-int v12, v7, v10

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    move v4, v3

    move-object/from16 v5, p2

    move v7, v12

    invoke-virtual/range {v2 .. v7}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    add-int/2addr v9, v10

    new-instance v3, Lcom/vent/c/d;

    invoke-direct {v3}, Lcom/vent/c/d;-><init>()V

    const/16 v4, 0x21

    invoke-virtual {v2, v3, v11, v9, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move v6, v12

    move v7, v12

    goto/16 :goto_1

    :cond_10
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move v12, v3

    :goto_6
    const/16 v3, 0x23

    if-ne v12, v3, :cond_18

    if-nez p9, :cond_18

    if-eqz v7, :cond_11

    add-int/lit8 v3, v7, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/vent/d/e;->e(C)Z

    move-result v3

    if-nez v3, :cond_11

    add-int/lit8 v3, v7, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5f

    if-ne v3, v4, :cond_18

    :cond_11
    if-ge v6, v7, :cond_12

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    move v4, v3

    move-object/from16 v5, p2

    invoke-virtual/range {v2 .. v7}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    :cond_12
    add-int/lit8 v3, v7, 0x1

    move v5, v3

    :goto_7
    if-ge v5, v13, :cond_14

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(I)Z

    move-result v4

    if-nez v4, :cond_13

    invoke-static {v3}, Ljava/lang/Character;->isDigit(I)Z

    move-result v3

    if-eqz v3, :cond_14

    :cond_13
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_7

    :cond_14
    move-object/from16 v0, p2

    invoke-virtual {v0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v9, v3

    add-int/lit8 v3, v7, 0x1

    if-le v5, v3, :cond_15

    new-instance v7, Lcom/vent/c/e;

    if-eqz p7, :cond_16

    move-object v4, p0

    :goto_8
    if-eqz p7, :cond_17

    move-object v3, p1

    :goto_9
    move/from16 v0, p4

    invoke-direct {v7, v4, v3, v0, v6}, Lcom/vent/c/e;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;ILjava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v3, v9, v3

    const/16 v4, 0x21

    invoke-virtual {v2, v7, v3, v9, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_15
    move v6, v5

    move v7, v5

    goto/16 :goto_1

    :cond_16
    const/4 v3, 0x0

    move-object v4, v3

    goto :goto_8

    :cond_17
    const/4 v3, 0x0

    goto :goto_9

    :cond_18
    const/16 v3, 0x5f

    if-ne v12, v3, :cond_1e

    const/4 v3, 0x2

    move/from16 v0, p9

    if-eq v0, v3, :cond_1e

    if-ge v6, v7, :cond_19

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    move v4, v3

    move-object/from16 v5, p2

    invoke-virtual/range {v2 .. v7}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move v6, v7

    :cond_19
    if-gez v8, :cond_1b

    if-eqz v7, :cond_1a

    add-int/lit8 v3, v7, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v3

    if-eqz v3, :cond_30

    :cond_1a
    add-int/lit8 v5, v7, 0x1

    move v6, v5

    move v8, v9

    move v7, v5

    goto/16 :goto_1

    :cond_1b
    add-int/lit8 v3, v13, -0x1

    if-eq v7, v3, :cond_1c

    add-int/lit8 v3, v7, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v3

    if-eqz v3, :cond_30

    :cond_1c
    if-eq v8, v9, :cond_1d

    if-nez p9, :cond_1d

    sget-boolean v3, Lcom/vent/bb;->cic:Z

    if-nez v3, :cond_1d

    new-instance v3, Lcom/vent/c/f;

    invoke-direct {v3}, Lcom/vent/c/f;-><init>()V

    const/16 v4, 0x21

    invoke-virtual {v2, v3, v8, v9, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1d
    const/4 v11, -0x1

    add-int/lit8 v5, v7, 0x1

    move v6, v5

    move v8, v11

    move v7, v5

    goto/16 :goto_1

    :cond_1e
    if-ltz v8, :cond_30

    const/16 v3, 0xa

    if-ne v12, v3, :cond_30

    const/4 v3, 0x2

    move/from16 v0, p9

    if-eq v0, v3, :cond_30

    if-ge v6, v7, :cond_1f

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    move v4, v3

    move-object/from16 v5, p2

    invoke-virtual/range {v2 .. v7}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move v6, v7

    :cond_1f
    const-string v3, "_"

    invoke-virtual {v2, v8, v3}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v3, v9, 0x1

    const/4 v8, -0x1

    move v10, v3

    move v11, v8

    :goto_a
    const/16 v3, 0x40

    if-ne v12, v3, :cond_2f

    add-int/lit8 v3, v7, 0x2

    if-ge v3, v13, :cond_2f

    add-int/lit8 v3, v7, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x7b

    if-ne v3, v4, :cond_2a

    if-ge v6, v7, :cond_20

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    move v4, v3

    move-object/from16 v5, p2

    invoke-virtual/range {v2 .. v7}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move v6, v7

    :cond_20
    const/16 v3, 0x7d

    add-int/lit8 v4, v7, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    add-int/lit8 v4, v7, 0x2

    if-le v3, v4, :cond_2a

    add-int/lit8 v12, v3, 0x1

    if-eqz p5, :cond_29

    new-instance v4, Lcom/vent/a/m;

    add-int/lit8 v3, v7, 0x2

    add-int/lit8 v5, v12, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/vent/a/m;-><init>(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p5

    instance-of v3, v0, Ljava/util/Map;

    if-eqz v3, :cond_23

    move-object/from16 v3, p5

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vent/a/x;

    move-object v6, v3

    :cond_21
    :goto_b
    if-eqz v6, :cond_29

    if-eqz p8, :cond_25

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "@"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v6, Lcom/vent/a/x;->username:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    :goto_c
    invoke-virtual {v2, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/2addr v10, v3

    if-nez p9, :cond_22

    new-instance v3, Lcom/vent/c/i;

    if-eqz p7, :cond_26

    move-object v4, p0

    :goto_d
    if-eqz p7, :cond_27

    move-object v5, p1

    :goto_e
    if-nez p8, :cond_28

    const/4 v8, 0x1

    :goto_f
    move/from16 v7, p4

    invoke-direct/range {v3 .. v8}, Lcom/vent/c/i;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Lcom/vent/a/x;IZ)V

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int v4, v10, v4

    const/16 v5, 0x21

    invoke-virtual {v2, v3, v4, v10, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_22
    move v6, v12

    move v9, v10

    move v8, v11

    move v7, v12

    goto/16 :goto_1

    :cond_23
    const/4 v6, 0x0

    move-object/from16 v3, p5

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_24
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vent/a/x;

    iget-object v8, v3, Lcom/vent/a/x;->cjy:Lcom/vent/a/m;

    invoke-static {v8, v4}, Lcom/vent/a/m;->b(Lcom/vent/a/m;Lcom/vent/a/m;)Z

    move-result v8

    if-eqz v8, :cond_24

    move-object v6, v3

    goto :goto_b

    :cond_25
    iget-object v3, v6, Lcom/vent/a/x;->username:Ljava/lang/String;

    move-object v9, v3

    goto :goto_c

    :cond_26
    const/4 v4, 0x0

    goto :goto_d

    :cond_27
    const/4 v5, 0x0

    goto :goto_e

    :cond_28
    const/4 v8, 0x0

    goto :goto_f

    :cond_29
    move-object/from16 v0, p2

    invoke-virtual {v0, v7, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    sub-int v3, v12, v7

    add-int v9, v10, v3

    move v6, v12

    move v8, v11

    move v7, v12

    goto/16 :goto_1

    :cond_2a
    add-int/lit8 v3, v7, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5b

    if-ne v3, v4, :cond_2f

    if-ge v6, v7, :cond_2b

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    move v4, v3

    move-object/from16 v5, p2

    invoke-virtual/range {v2 .. v7}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move v6, v7

    :cond_2b
    const/16 v3, 0x5d

    add-int/lit8 v4, v7, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    add-int/lit8 v4, v7, 0x2

    if-le v3, v4, :cond_2f

    add-int/lit8 v5, v3, 0x1

    if-eqz p6, :cond_2e

    add-int/lit8 v3, v7, 0x2

    add-int/lit8 v4, v5, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vent/a/r;

    if-eqz v3, :cond_2e

    if-nez p9, :cond_2d

    iget-object v4, v3, Lcom/vent/a/r;->ckB:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2d

    iget-object v4, v3, Lcom/vent/a/r;->ckB:Ljava/lang/String;

    :goto_10
    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    add-int v9, v10, v6

    if-nez p9, :cond_2c

    new-instance v6, Lcom/vent/c/g;

    move/from16 v0, p4

    move/from16 v1, p7

    invoke-direct {v6, v3, v0, v1}, Lcom/vent/c/g;-><init>(Lcom/vent/a/r;IZ)V

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int v3, v9, v3

    const/16 v4, 0x21

    invoke-virtual {v2, v6, v3, v9, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_2c
    move v6, v5

    move v8, v11

    move v7, v5

    goto/16 :goto_1

    :cond_2d
    iget-object v4, v3, Lcom/vent/a/r;->ckA:Ljava/lang/String;

    goto :goto_10

    :cond_2e
    move-object/from16 v0, p2

    invoke-virtual {v0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    sub-int v3, v5, v7

    add-int v9, v10, v3

    move v6, v5

    move v8, v11

    move v7, v5

    goto/16 :goto_1

    :cond_2f
    add-int/lit8 v9, v10, 0x1

    add-int/lit8 v5, v7, 0x1

    move v8, v11

    move v7, v5

    goto/16 :goto_1

    :cond_30
    move v10, v9

    move v11, v8

    goto/16 :goto_a

    :cond_31
    move v12, v10

    goto/16 :goto_6

    :cond_32
    move v7, v4

    goto/16 :goto_3

    :cond_33
    move v4, v7

    goto/16 :goto_2
.end method

.method public static a(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/String;ILjava/lang/Object;ZZ)Landroid/text/SpannableStringBuilder;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/vent/a;",
            ">;",
            "Ljava/lang/ref/WeakReference",
            "<*>;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            "ZZ)",
            "Landroid/text/SpannableStringBuilder;"
        }
    .end annotation

    const v3, 0x7fffffff

    const/4 v6, 0x0

    const/4 v9, 0x0

    sget v0, Lcom/vent/bb;->cif:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v10, 0x1

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v0 .. v10}, Lcom/vent/d/e;->a(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/String;IILjava/lang/Object;Ljava/util/Map;ZZIZ)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I[IZ)Ljava/lang/CharSequence;
    .locals 15

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual/range {p0 .. p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    new-instance v3, Landroid/text/SpannableString;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/vent/MyApplication;->br(Landroid/content/Context;)Z

    move-result v7

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v8

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v8, :cond_3

    const-class v2, Landroid/text/style/ImageSpan;

    invoke-virtual {v3, v1, v8, v2}, Landroid/text/SpannableString;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v6

    const-class v2, Landroid/text/style/ImageSpan;

    invoke-virtual {v3, v1, v6, v2}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/ImageSpan;

    array-length v9, v1

    const/4 v2, 0x0

    move v4, v2

    :goto_2
    if-ge v4, v9, :cond_2

    aget-object v10, v1, v4

    if-eqz p3, :cond_1

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    aget v11, p2, v5

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/a/a/a;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    const/4 v2, 0x0

    const/4 v12, 0x0

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    invoke-virtual {v11, v2, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v2, -0x1

    invoke-static {v11, v2}, Landroid/support/v4/a/a/a;->a(Landroid/graphics/drawable/Drawable;I)V

    new-instance v2, Landroid/text/style/ImageSpan;

    const/4 v12, 0x1

    invoke-direct {v2, v11, v12}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    :goto_3
    invoke-virtual {v3, v10}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v3, v10}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    const/16 v12, 0x12

    invoke-virtual {v3, v2, v11, v10, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p2

    array-length v2, v0

    if-eq v5, v2, :cond_3

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_2

    :cond_1
    new-instance v2, Landroid/text/style/ImageSpan;

    aget v11, p2, v5

    const/4 v12, 0x1

    invoke-direct {v2, p0, v11, v12}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    goto :goto_3

    :cond_2
    move v1, v6

    goto :goto_1

    :cond_3
    move-object v1, v3

    goto :goto_0
.end method

.method public static a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6

    const/4 v1, 0x0

    instance-of v0, p0, Landroid/text/Spannable;

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/text/Spannable;

    if-eqz v0, :cond_3

    :cond_0
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    instance-of v0, p0, Landroid/text/Spannable;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v3, Landroid/text/style/CharacterStyle;

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    :cond_1
    invoke-virtual {v4, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    instance-of v0, p1, Landroid/text/Spannable;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v3, Landroid/text/style/CharacterStyle;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    :cond_2
    :goto_0
    return-object v4

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lcom/vent/d/e;->cnl:Z

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/vent/d/e;->cnm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/16 v1, 0xc

    if-ge v0, v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/vent/d/e;->cnn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/16 v1, 0x12

    if-ge v0, v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/vent/d/e;->cno:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/vent/d/e;->cnp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v2

    :goto_0
    if-ltz v2, :cond_0

    add-int v7, v2, v5

    invoke-virtual {v3, v2, v7, v0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v2, v6

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;II)V
    .locals 13

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    new-instance v5, Landroid/text/SpannableString;

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-direct {v5, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06006b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v7

    move v1, v3

    :goto_0
    if-ge v1, v7, :cond_1

    const-class v2, Landroid/text/style/URLSpan;

    invoke-virtual {v5, v1, v7, v2}, Landroid/text/SpannableString;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v4

    const-class v2, Landroid/text/style/URLSpan;

    invoke-virtual {v5, v1, v4, v2}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/URLSpan;

    array-length v8, v1

    move v2, v3

    :goto_1
    if-ge v2, v8, :cond_0

    aget-object v9, v1, v2

    new-instance v10, Lcom/vent/c/a;

    invoke-direct {v10, v9, v6}, Lcom/vent/c/a;-><init>(Landroid/text/style/URLSpan;I)V

    invoke-virtual {v5, v9}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v5, v9}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v9

    const/16 v12, 0x12

    invoke-virtual {v5, v10, v11, v9, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move v1, v4

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinksClickable(Z)V

    return-void
.end method

.method public static a(Landroid/widget/EditText;Landroid/text/TextWatcher;Ljava/lang/CharSequence;II)V
    .locals 10

    sget v0, Lcom/vent/bb;->cif:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    if-lez p4, :cond_8

    sget-object v0, Lcom/vent/d/e;->cnf:[B

    if-eqz v0, :cond_8

    add-int v2, p3, p4

    const/4 v1, 0x0

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-class v0, Lcom/vent/c/d;

    invoke-virtual {v3, p3, v2, v0}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vent/c/d;

    if-eqz v0, :cond_a

    array-length v4, v0

    if-lez v4, :cond_a

    array-length v4, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v0, v1

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_1
    move v1, p3

    move v4, v0

    :goto_2
    if-ge v1, v2, :cond_7

    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v7

    const/16 v0, 0x2000

    if-lt v7, v0, :cond_9

    const/4 v0, 0x0

    move v5, v1

    :goto_3
    const v6, 0xd800

    if-lt v7, v6, :cond_5

    const v6, 0xdbff

    if-gt v7, v6, :cond_5

    add-int v6, v1, v0

    add-int/lit8 v8, v2, -0x1

    if-ge v6, v8, :cond_5

    add-int v6, v1, v0

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v3, v6}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v6

    const v8, 0xdc00

    if-lt v6, v8, :cond_5

    const v8, 0xdfff

    if-gt v6, v8, :cond_5

    const/high16 v8, 0x10000

    const v9, 0xd800

    sub-int/2addr v7, v9

    mul-int/lit16 v7, v7, 0x400

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    const v7, 0xdc00

    sub-int v7, v6, v7

    const/4 v6, 0x2

    :goto_4
    const/high16 v8, 0x20000

    if-ge v7, v8, :cond_1

    sget-object v8, Lcom/vent/d/e;->cnf:[B

    aget-byte v8, v8, v7

    if-nez v8, :cond_2

    :cond_1
    const/16 v8, 0x200d

    if-ne v7, v8, :cond_6

    if-lez v0, :cond_6

    :cond_2
    const/16 v8, 0x20e3

    if-eq v7, v8, :cond_3

    const v8, 0xfe0f

    if-ne v7, v8, :cond_4

    :cond_3
    if-lez v5, :cond_4

    if-nez v0, :cond_4

    add-int/lit8 v5, v5, -0x1

    :cond_4
    add-int/2addr v0, v6

    add-int v6, v1, v0

    if-ge v6, v2, :cond_6

    add-int v6, v1, v0

    invoke-virtual {v3, v6}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v7

    goto :goto_3

    :cond_5
    const/4 v6, 0x1

    goto :goto_4

    :cond_6
    if-lez v0, :cond_9

    add-int/2addr v0, v1

    new-instance v1, Lcom/vent/c/d;

    invoke-direct {v1}, Lcom/vent/c/d;-><init>()V

    const/16 v4, 0x21

    invoke-virtual {v3, v1, v5, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const/4 v1, 0x1

    move v4, v1

    :goto_5
    add-int/lit8 v1, v0, 0x1

    goto :goto_2

    :cond_7
    if-eqz v4, :cond_8

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    move v1, p3

    move v4, p3

    move v5, v2

    invoke-interface/range {v0 .. v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_8
    return-void

    :cond_9
    move v0, v1

    goto :goto_5

    :cond_a
    move v0, v1

    goto/16 :goto_1
.end method

.method public static b(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_2

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-static {p1}, Lcom/vent/d/e;->m(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Lcom/vent/d/e;->cny:Ljava/lang/String;

    const-string v2, "%1$s"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz p0, :cond_3

    invoke-static {p0}, Lcom/vent/d/e;->m(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, ""

    goto :goto_0
.end method

.method public static bK(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vent/d/e;->cnz:[Ljava/lang/String;

    const v0, 0x7f0f016e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vent/d/e;->cnm:Ljava/lang/String;

    const v0, 0x7f0f0170

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vent/d/e;->cnn:Ljava/lang/String;

    const v0, 0x7f0f016d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vent/d/e;->cno:Ljava/lang/String;

    const v0, 0x7f0f016f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vent/d/e;->cnp:Ljava/lang/String;

    const v0, 0x7f0f0135

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vent/d/e;->cnq:Ljava/lang/String;

    const v0, 0x7f0f009d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vent/d/e;->cnr:Ljava/lang/String;

    const v0, 0x7f0f0175

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vent/d/e;->cns:Ljava/lang/String;

    const/high16 v0, 0x7f0f0000

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vent/d/e;->cnt:Ljava/lang/String;

    const v0, 0x7f0f0174

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vent/d/e;->cnu:Ljava/lang/String;

    const v0, 0x7f0f000b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vent/d/e;->cnv:Ljava/lang/String;

    const v0, 0x7f0f0173

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vent/d/e;->cnw:Ljava/lang/String;

    const v0, 0x7f0f0177

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vent/d/e;->cnx:Ljava/lang/String;

    const v0, 0x7f0f0158

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vent/d/e;->cny:Ljava/lang/String;

    return-void
.end method

.method public static bL(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/vent/d/e;->cmV:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/KlinicSlabBook.otf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/vent/d/e;->cmV:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static bM(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-boolean v2, Lcom/vent/d/e;->cnh:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sput-boolean v0, Lcom/vent/d/e;->cnh:Z

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "fonts/KlinicSlabBook.otf"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    sput-object v2, Lcom/vent/d/e;->cmU:Landroid/graphics/Typeface;

    sput-object v2, Lcom/vent/d/e;->cmV:Landroid/graphics/Typeface;

    sget-boolean v2, Lcom/vent/bb;->chT:Z

    if-eqz v2, :cond_5

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_3

    const-string v2, "sans-serif-medium"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    :goto_1
    sput-object v2, Lcom/vent/d/e;->cmW:Landroid/graphics/Typeface;

    const-string v2, "sans-serif"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    sput-object v2, Lcom/vent/d/e;->cmX:Landroid/graphics/Typeface;

    const-string v2, "sans-serif"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    sput-object v2, Lcom/vent/d/e;->cmY:Landroid/graphics/Typeface;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_4

    const-string v2, "sans-serif-light"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    :goto_2
    sput-object v2, Lcom/vent/d/e;->cmZ:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    sget v2, Lcom/vent/bb;->cif:I

    if-eq v2, v0, :cond_0

    sget-object v2, Lcom/vent/d/e;->cne:Landroid/graphics/Typeface;

    if-nez v2, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_8

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "fonts/NotoColorEmoji.ttf"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    sput-object v2, Lcom/vent/d/e;->cne:Landroid/graphics/Typeface;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_4
    sget-object v2, Lcom/vent/d/e;->cne:Landroid/graphics/Typeface;

    if-nez v2, :cond_b

    const-string v2, "failed load NotoColorEmoji"

    invoke-static {v2}, Lcom/vent/d/c;->eu(Ljava/lang/String;)V

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "fonts/NotoEmoji-Regular.ttf"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    sput-object v2, Lcom/vent/d/e;->cne:Landroid/graphics/Typeface;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :goto_5
    sget-object v0, Lcom/vent/d/e;->cne:Landroid/graphics/Typeface;

    if-nez v0, :cond_2

    const-string v0, "failed load NotoEmoji-Regular"

    invoke-static {v0}, Lcom/vent/d/c;->eu(Ljava/lang/String;)V

    :cond_2
    :goto_6
    sget-object v0, Lcom/vent/d/e;->cne:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    const/high16 v0, 0x20000

    new-array v0, v0, [B

    sput-object v0, Lcom/vent/d/e;->cnf:[B

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    if-eqz v1, :cond_9

    const-string v0, "notomap_clr.bin"

    :goto_7
    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    sget-object v1, Lcom/vent/d/e;->cnf:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const v0, 0x1f3fb

    :goto_8
    const v1, 0x1f3ff

    if-gt v0, v1, :cond_a

    sget-object v1, Lcom/vent/d/e;->cnf:[B

    const/4 v2, 0x1

    aput-byte v2, v1, v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_3
    :try_start_4
    const-string v2, "sans-serif"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    goto/16 :goto_1

    :cond_4
    const-string v2, "sans-serif"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    goto :goto_2

    :cond_5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_6

    const-string v2, "sans-serif-medium"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    sput-object v2, Lcom/vent/d/e;->cmW:Landroid/graphics/Typeface;

    const-string v2, "sans-serif"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    sput-object v2, Lcom/vent/d/e;->cmX:Landroid/graphics/Typeface;

    const-string v2, "sans-serif"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    sput-object v2, Lcom/vent/d/e;->cmY:Landroid/graphics/Typeface;

    const-string v2, "sans-serif-light"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    sput-object v2, Lcom/vent/d/e;->cmZ:Landroid/graphics/Typeface;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    :cond_6
    :try_start_5
    sget-boolean v2, Lcom/vent/d/e;->cni:Z

    if-nez v2, :cond_7

    const/4 v2, 0x1

    sput-boolean v2, Lcom/vent/d/e;->cni:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "fonts/Roboto-Medium.ttf"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    sput-object v3, Lcom/vent/d/e;->cna:Landroid/graphics/Typeface;

    const-string v3, "fonts/Roboto-Regular.ttf"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    sput-object v3, Lcom/vent/d/e;->cnb:Landroid/graphics/Typeface;

    const-string v3, "fonts/Roboto-Italic.ttf"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    sput-object v3, Lcom/vent/d/e;->cnc:Landroid/graphics/Typeface;

    const-string v3, "fonts/Roboto-Light.ttf"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    sput-object v2, Lcom/vent/d/e;->cnd:Landroid/graphics/Typeface;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_7
    :goto_9
    :try_start_7
    sget-object v2, Lcom/vent/d/e;->cna:Landroid/graphics/Typeface;

    sput-object v2, Lcom/vent/d/e;->cmW:Landroid/graphics/Typeface;

    sget-object v2, Lcom/vent/d/e;->cnb:Landroid/graphics/Typeface;

    sput-object v2, Lcom/vent/d/e;->cmX:Landroid/graphics/Typeface;

    sget-object v2, Lcom/vent/d/e;->cnc:Landroid/graphics/Typeface;

    sput-object v2, Lcom/vent/d/e;->cmY:Landroid/graphics/Typeface;

    sget-object v2, Lcom/vent/d/e;->cnd:Landroid/graphics/Typeface;

    sput-object v2, Lcom/vent/d/e;->cmZ:Landroid/graphics/Typeface;

    goto/16 :goto_3

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_9

    :catch_2
    move-exception v0

    :cond_8
    move v0, v1

    goto/16 :goto_4

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v0

    goto/16 :goto_5

    :cond_9
    :try_start_8
    const-string v0, "notomap_reg.bin"

    goto/16 :goto_7

    :cond_a
    sget-object v0, Lcom/vent/d/e;->cnf:[B

    const v1, 0xfe0f

    const/4 v2, 0x1

    aput-byte v2, v0, v1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :cond_b
    move v1, v0

    goto/16 :goto_6
.end method

.method public static c(Ljava/lang/CharSequence;I)I
    .locals 9

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    sget v2, Lcom/vent/d/e;->cng:I

    mul-int v4, p1, v2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move v3, v0

    move v2, v0

    :goto_1
    if-ge v3, v4, :cond_5

    if-ge v2, v5, :cond_5

    const/16 v0, 0xa

    invoke-static {p0, v0, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v6

    if-gez v6, :cond_2

    sub-int v0, v5, v2

    add-int v5, v3, v0

    if-lt v5, v4, :cond_1

    sub-int v1, v4, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v0, v2

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    sub-int v7, v6, v2

    if-eqz v7, :cond_3

    sget v0, Lcom/vent/d/e;->cng:I

    add-int/2addr v0, v7

    add-int/lit8 v0, v0, -0x1

    sget v8, Lcom/vent/d/e;->cng:I

    div-int/2addr v0, v8

    sget v8, Lcom/vent/d/e;->cng:I

    mul-int/2addr v0, v8

    add-int v8, v3, v0

    if-lt v8, v4, :cond_4

    sub-int v0, v4, v3

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_2

    :cond_3
    sget v0, Lcom/vent/d/e;->cng:I

    add-int v7, v3, v0

    if-lt v7, v4, :cond_4

    move v0, v2

    goto :goto_2

    :cond_4
    add-int/2addr v0, v3

    add-int/lit8 v2, v6, 0x1

    move v3, v0

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method public static e(C)Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    :pswitch_0
    return v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static eT(I)Ljava/lang/String;
    .locals 4

    const v0, 0xffffff

    and-int/2addr v0, p0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "000000"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static eU(I)Ljava/lang/String;
    .locals 3

    and-int/lit16 v0, p0, 0xff

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static ew(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/16 v5, 0x20

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-gt v0, v5, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_1
    if-lez v0, :cond_6

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_1

    const/16 v4, 0xd

    if-ne v3, v4, :cond_2

    :cond_1
    :goto_2
    if-ge v0, v2, :cond_3

    add-int/lit8 v1, v2, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-gt v1, v5, :cond_3

    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    if-gtz v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v2, v1, :cond_5

    :cond_4
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_5
    return-object p0

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method public static ex(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0xad

    if-eqz p0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const-string v0, "\n\u00ad"

    const-string v1, "\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u00ad\n"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static l(Ljava/util/Date;)Ljava/lang/String;
    .locals 12

    const-wide/32 v10, 0xa4cb800

    const/4 v9, 0x6

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long v6, v2, v4

    cmp-long v8, v6, v10

    if-ltz v8, :cond_1

    cmp-long v6, v6, v10

    if-lez v6, :cond_3

    :cond_1
    move v0, v1

    :cond_2
    :goto_1
    if-eqz v0, :cond_5

    sget-object v0, Lcom/vent/d/e;->cnA:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v6, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v7, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_4

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v7, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-eq v2, v3, :cond_2

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/vent/d/e;->cnB:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static m(Ljava/util/Date;)Ljava/lang/String;
    .locals 14

    const-wide/16 v12, 0x3c

    const-wide/16 v8, 0x1

    const/4 v11, 0x6

    const/4 v10, 0x1

    sget v0, Lcom/vent/bb;->ciw:I

    packed-switch v0, :pswitch_data_0

    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long v0, v2, v0

    const-wide/16 v4, 0x1f4

    add-long/2addr v0, v4

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    const-wide/16 v0, -0x12c

    cmp-long v0, v4, v0

    if-gez v0, :cond_1

    sget-object v0, Lcom/vent/d/e;->cnq:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0xa

    cmp-long v0, v4, v0

    if-gez v0, :cond_2

    sget-object v0, Lcom/vent/d/e;->cnr:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x1e

    add-long/2addr v0, v4

    div-long/2addr v0, v12

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-nez v6, :cond_3

    sget-object v0, Lcom/vent/d/e;->cns:Ljava/lang/String;

    const-string v1, "%1$d"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    cmp-long v6, v0, v8

    if-nez v6, :cond_4

    sget-object v0, Lcom/vent/d/e;->cnt:Ljava/lang/String;

    goto :goto_0

    :cond_4
    cmp-long v6, v0, v12

    if-gez v6, :cond_5

    sget-object v2, Lcom/vent/d/e;->cnu:Ljava/lang/String;

    const-string v3, "%1$d"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-wide/16 v0, 0x708

    add-long/2addr v0, v4

    const-wide/16 v6, 0xe10

    div-long v6, v0, v6

    cmp-long v0, v6, v8

    if-nez v0, :cond_6

    sget-object v0, Lcom/vent/d/e;->cnv:Ljava/lang/String;

    goto :goto_0

    :cond_6
    const-wide/16 v0, 0x6

    cmp-long v0, v6, v0

    if-gez v0, :cond_7

    sget-object v0, Lcom/vent/d/e;->cnw:Ljava/lang/String;

    const-string v1, "%1$d"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    const-wide/32 v8, 0x2a300

    cmp-long v1, v4, v8

    if-gez v1, :cond_8

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const-wide/32 v8, 0x5265c00

    sub-long/2addr v2, v8

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_8

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v2, v1, :cond_8

    sget-object v1, Lcom/vent/d/e;->cnx:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/vent/d/e;->a(Ljava/lang/String;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    const-wide/16 v2, 0x18

    cmp-long v1, v6, v2

    if-gez v1, :cond_9

    sget-object v0, Lcom/vent/d/e;->cnw:Ljava/lang/String;

    const-string v1, "%1$d"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    if-nez v0, :cond_a

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    :cond_a
    const-wide/32 v2, 0x7e900

    cmp-long v1, v4, v2

    if-gez v1, :cond_b

    sget-object v1, Lcom/vent/d/e;->cnz:[Ljava/lang/String;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    aget-object v1, v1, v2

    invoke-static {v1, v0}, Lcom/vent/d/e;->a(Ljava/lang/String;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    sget-object v0, Lcom/vent/d/e;->cnB:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_0
    invoke-static {p0}, Lcom/vent/d/e;->l(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static s(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    sget v0, Lcom/vent/bb;->cif:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Lcom/vent/d/e;->u(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static t(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    sget v0, Lcom/vent/bb;->cif:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/vent/d/e;->u(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static u(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 13

    const v12, 0xdc00

    const v11, 0xd800

    const/4 v2, 0x1

    const/4 v8, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/vent/d/e;->cnf:[B

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v9

    move v0, v8

    move v1, v8

    :goto_1
    if-ge v0, v9, :cond_9

    invoke-virtual {v3, v0}, Landroid/text/SpannableString;->charAt(I)C

    move-result v7

    const/16 v4, 0x2000

    if-lt v7, v4, :cond_8

    move v4, v8

    move v5, v0

    :goto_2
    if-lt v7, v11, :cond_6

    const v6, 0xdbff

    if-gt v7, v6, :cond_6

    add-int v6, v0, v4

    add-int/lit8 v10, v9, -0x1

    if-ge v6, v10, :cond_6

    add-int v6, v0, v4

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v3, v6}, Landroid/text/SpannableString;->charAt(I)C

    move-result v6

    if-lt v6, v12, :cond_6

    const v10, 0xdfff

    if-gt v6, v10, :cond_6

    const/high16 v10, 0x10000

    sub-int/2addr v7, v11

    mul-int/lit16 v7, v7, 0x400

    add-int/2addr v7, v10

    add-int/2addr v6, v7

    sub-int v7, v6, v12

    const/4 v6, 0x2

    :goto_3
    const/high16 v10, 0x20000

    if-ge v7, v10, :cond_2

    sget-object v10, Lcom/vent/d/e;->cnf:[B

    aget-byte v10, v10, v7

    if-nez v10, :cond_3

    :cond_2
    const/16 v10, 0x200d

    if-ne v7, v10, :cond_7

    if-lez v4, :cond_7

    :cond_3
    const/16 v10, 0x20e3

    if-eq v7, v10, :cond_4

    const v10, 0xfe0f

    if-ne v7, v10, :cond_5

    :cond_4
    if-lez v5, :cond_5

    if-nez v4, :cond_5

    add-int/lit8 v5, v5, -0x1

    :cond_5
    add-int/2addr v4, v6

    add-int v6, v0, v4

    if-ge v6, v9, :cond_7

    add-int v6, v0, v4

    invoke-virtual {v3, v6}, Landroid/text/SpannableString;->charAt(I)C

    move-result v7

    goto :goto_2

    :cond_6
    move v6, v2

    goto :goto_3

    :cond_7
    if-lez v4, :cond_8

    add-int/2addr v0, v4

    new-instance v1, Lcom/vent/c/d;

    invoke-direct {v1}, Lcom/vent/c/d;-><init>()V

    const/16 v4, 0x21

    invoke-virtual {v3, v1, v5, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move v1, v2

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_9
    if-eqz v1, :cond_0

    move-object p0, v3

    goto :goto_0
.end method

.method public static u(Landroid/app/Activity;)V
    .locals 6

    invoke-static {p0}, Lcom/vent/d/c;->bJ(Landroid/content/Context;)I

    move-result v0

    sget v1, Lcom/vent/d/e;->cnj:I

    if-eq v0, v1, :cond_0

    sput v0, Lcom/vent/d/e;->cnj:I

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    sget-object v3, Lcom/vent/d/e;->cmX:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07013a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    const-string v3, "@The #quick HTTPS://brown _fox_ *jumps* over the lazy dog. \ud83d\ude00"

    const/4 v4, 0x0

    const/16 v5, 0x3d

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42740000    # 61.0f

    div-float/2addr v1, v2

    sget v2, Lcom/vent/MyApplication;->cgh:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/vent/d/e;->cng:I

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    if-eqz p0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vent/d/e;->ex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method
