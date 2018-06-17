.class public abstract Lcom/intercom/composer/b/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/intercom/composer/b/c;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private fragmentTag:Ljava/lang/String;

.field private final iconProvider:Lcom/intercom/composer/b/a;

.field private final uniqueIdentifier:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/intercom/composer/b/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intercom/composer/b/b;->uniqueIdentifier:Ljava/lang/String;

    iput-object p2, p0, Lcom/intercom/composer/b/b;->iconProvider:Lcom/intercom/composer/b/a;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Inputs must have a non-empty unique identifier."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract createFragment()Lcom/intercom/composer/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public findFragment(Landroid/support/v4/app/n;)Lcom/intercom/composer/b/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/n;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/intercom/composer/b/b;->fragmentTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/n;->w(Ljava/lang/String;)Landroid/support/v4/app/i;

    move-result-object v0

    check-cast v0, Lcom/intercom/composer/b/c;

    return-object v0
.end method

.method public getBackgroundColor()I
    .locals 1

    sget v0, Lcom/intercom/composer/g$b;->intercom_composer_white:I

    return v0
.end method

.method public getBorderColor()I
    .locals 1

    sget v0, Lcom/intercom/composer/g$b;->intercom_composer_border:I

    return v0
.end method

.method public getIconDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/intercom/composer/b/b;->iconProvider:Lcom/intercom/composer/b/a;

    iget-object v1, p0, Lcom/intercom/composer/b/b;->uniqueIdentifier:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/intercom/composer/b/a;->getIconDrawable(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getUniqueIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/intercom/composer/b/b;->uniqueIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public setFragmentTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/intercom/composer/b/b;->fragmentTag:Ljava/lang/String;

    return-void
.end method
