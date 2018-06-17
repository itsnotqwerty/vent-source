.class public interface abstract Lcom/intercom/input/gallery/f$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intercom/input/gallery/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract getDataSource(Lcom/intercom/input/gallery/f;)Lcom/intercom/input/gallery/d;
.end method

.method public abstract getEmptyViewSubtitle(Landroid/content/res/Resources;)Ljava/lang/String;
.end method

.method public abstract getEmptyViewTitle(Landroid/content/res/Resources;)Ljava/lang/String;
.end method

.method public abstract getErrorViewSubtitle(Landroid/content/res/Resources;)Ljava/lang/String;
.end method

.method public abstract getErrorViewTitle(Landroid/content/res/Resources;)Ljava/lang/String;
.end method

.method public abstract getExpanderButton(Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract getImageLoader(Lcom/intercom/input/gallery/f;)Lcom/intercom/composer/e;
.end method

.method public abstract getLightBoxFragmentClass(Lcom/intercom/input/gallery/f;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intercom/input/gallery/f;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lcom/intercom/input/gallery/h;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSearchView(Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract getThemeColor(Landroid/content/Context;)I
.end method

.method public abstract getToolbar(Landroid/view/ViewGroup;)Landroid/support/v7/widget/Toolbar;
.end method
