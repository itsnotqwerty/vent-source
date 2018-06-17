.class public final Lcom/vent/d/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vent/d/a$b;,
        Lcom/vent/d/a$a;
    }
.end annotation


# static fields
.field static final cmB:[I

.field private static final cmC:Landroid/support/v4/g/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/g",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field

.field static cmD:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a7

    aput v2, v0, v1

    sput-object v0, Lcom/vent/d/a;->cmB:[I

    new-instance v0, Lcom/vent/d/a$1;

    invoke-direct {v0}, Lcom/vent/d/a$1;-><init>()V

    sput-object v0, Lcom/vent/d/a;->cmC:Landroid/support/v4/g/g;

    return-void
.end method

.method public static a(Landroid/content/Context;IIZ)Landroid/graphics/drawable/StateListDrawable;
    .locals 2

    invoke-static {p0}, Lcom/vent/MyApplication;->br(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, p3, v1}, Lcom/vent/d/a;->a(ZIIZF)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/vent/d/a$a;Lcom/vent/d/a$a;)Landroid/graphics/drawable/StateListDrawable;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/vent/d/a$a;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/vent/d/a$a;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vent/d/a;->er(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/vent/d/a$b;

    invoke-direct {v0, v1, p0, p1}, Lcom/vent/d/a$b;-><init>(Ljava/lang/String;Lcom/vent/d/a$a;Lcom/vent/d/a$a;)V

    :cond_0
    return-object v0
.end method

.method public static a(ZIIZ)Landroid/graphics/drawable/StateListDrawable;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/vent/d/a;->a(ZIIZF)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    return-object v0
.end method

.method private static a(ZIIZF)Landroid/graphics/drawable/StateListDrawable;
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0, p4, p2}, Lcom/vent/d/a;->b(IFI)Lcom/vent/d/a$a;

    move-result-object v1

    const v0, 0xffffff

    and-int v2, p1, v0

    if-eqz p0, :cond_0

    const/high16 v0, 0x77000000

    :goto_0
    or-int/2addr v0, v2

    invoke-static {v0, p4, p2}, Lcom/vent/d/a;->b(IFI)Lcom/vent/d/a$a;

    move-result-object v0

    if-nez p3, :cond_1

    invoke-static {v0, v1}, Lcom/vent/d/a;->a(Lcom/vent/d/a$a;Lcom/vent/d/a$a;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const/high16 v0, 0x33000000

    goto :goto_0

    :cond_1
    invoke-static {v1, v0}, Lcom/vent/d/a;->a(Lcom/vent/d/a$a;Lcom/vent/d/a$a;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;IIZ)Landroid/graphics/drawable/StateListDrawable;
    .locals 2

    invoke-static {p0}, Lcom/vent/MyApplication;->br(Landroid/content/Context;)Z

    move-result v0

    sget v1, Lcom/vent/MyApplication;->cgd:I

    int-to-float v1, v1

    invoke-static {v0, p1, p2, p3, v1}, Lcom/vent/d/a;->a(ZIIZF)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static b(ZIIZ)Landroid/graphics/drawable/StateListDrawable;
    .locals 1

    sget v0, Lcom/vent/MyApplication;->cgd:I

    int-to-float v0, v0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/vent/d/a;->a(ZIIZF)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    return-object v0
.end method

.method private static b(IFI)Lcom/vent/d/a$a;
    .locals 3

    const/16 v2, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vent/d/a;->er(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/vent/d/a$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/vent/d/a$a;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/vent/d/a$a;-><init>(Ljava/lang/String;IFI)V

    :cond_0
    return-object v0
.end method

.method public static bq(Landroid/view/View;)V
    .locals 5

    const/16 v4, 0x32

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    instance-of v0, v1, Lcom/vent/d/a$b;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/vent/d/a$b;

    iget-object v0, v0, Lcom/vent/d/a$b;->key:Ljava/lang/String;

    move-object v2, v0

    :goto_0
    sget v0, Lcom/vent/d/a;->cmD:I

    const/16 v3, 0x1f4

    if-ge v0, v3, :cond_0

    sget-object v0, Lcom/vent/d/a;->cmC:Landroid/support/v4/g/g;

    invoke-virtual {v0}, Landroid/support/v4/g/g;->size()I

    move-result v0

    if-lt v0, v4, :cond_2

    :cond_0
    sget-object v0, Lcom/vent/d/a;->cmC:Landroid/support/v4/g/g;

    sget-object v3, Lcom/vent/d/a;->cmC:Landroid/support/v4/g/g;

    invoke-virtual {v3}, Landroid/support/v4/g/g;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Landroid/support/v4/g/g;->trimToSize(I)V

    goto :goto_0

    :cond_1
    instance-of v0, v1, Lcom/vent/d/a$a;

    if-eqz v0, :cond_3

    move-object v0, v1

    check-cast v0, Lcom/vent/d/a$a;

    iget-object v0, v0, Lcom/vent/d/a$a;->key:Ljava/lang/String;

    move-object v2, v0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/vent/d/a;->cmC:Landroid/support/v4/g/g;

    invoke-virtual {v0, v2}, Landroid/support/v4/g/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v4, :cond_3

    sget v2, Lcom/vent/d/a;->cmD:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/vent/d/a;->cmD:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return-void

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    sget v3, Lcom/vent/d/a;->cmD:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/vent/d/a;->cmD:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/vent/d/a;->cmC:Landroid/support/v4/g/g;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/g/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public static c(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-static {p0}, Lcom/vent/MyApplication;->br(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/vent/d/a;->c(ZIIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static c(ZIIZ)Landroid/graphics/drawable/Drawable;
    .locals 2

    if-eqz p3, :cond_1

    const v0, 0xffffff

    and-int v1, p1, v0

    if-eqz p0, :cond_0

    const/high16 v0, 0x77000000

    :goto_0
    or-int/2addr v0, v1

    :goto_1
    const/4 v1, 0x0

    invoke-static {v0, v1, p2}, Lcom/vent/d/a;->b(IFI)Lcom/vent/d/a$a;

    move-result-object v0

    return-object v0

    :cond_0
    const/high16 v0, 0x33000000

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static eQ(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    sget v0, Lcom/vent/MyApplication;->cgd:I

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/vent/d/a;->b(IFI)Lcom/vent/d/a$a;

    move-result-object v0

    return-object v0
.end method

.method private static er(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v1, 0x0

    sget-object v0, Lcom/vent/d/a;->cmC:Landroid/support/v4/g/g;

    invoke-virtual {v0, p0}, Landroid/support/v4/g/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    add-int/lit8 v1, v2, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/vent/d/a;->cmD:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/vent/d/a;->cmD:I

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static flush()V
    .locals 2

    sget-object v0, Lcom/vent/d/a;->cmC:Landroid/support/v4/g/g;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/g/g;->trimToSize(I)V

    return-void
.end method
