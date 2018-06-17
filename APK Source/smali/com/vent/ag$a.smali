.class final Lcom/vent/ag$a;
.super Landroid/support/v7/widget/RecyclerView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vent/ag$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Landroid/support/v7/widget/RecyclerView$x;",
        ">;"
    }
.end annotation


# instance fields
.field final bVA:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/vent/ag;",
            ">;"
        }
    .end annotation
.end field

.field ceb:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vent/ag$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/vent/ag;)V
    .locals 12

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/vent/ag$a;->bVA:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vent/ag$a;->ceb:Ljava/util/ArrayList;

    :try_start_0
    invoke-virtual {p1}, Lcom/vent/ag;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/vent/ag;->e(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v1

    aput-object v1, v0, v2

    check-cast v0, [Ljava/io/File;

    array-length v3, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_3

    array-length v5, v4

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v5, :cond_3

    aget-object v6, v4, v1

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v8, v8

    new-array v8, v8, [C

    invoke-virtual {v7, v8}, Ljava/io/FileReader;->read([C)I

    invoke-virtual {v7}, Ljava/io/FileReader;->close()V

    new-instance v7, Lorg/json/JSONObject;

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v8}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v7, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v8, Lcom/vent/a/x;

    const-string v9, "user"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/vent/a/x;-><init>(Lorg/json/JSONObject;Z)V

    iget-object v9, v8, Lcom/vent/a/x;->cjy:Lcom/vent/a/m;

    new-instance v10, Lcom/vent/a/m;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/vent/a/m;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v9, v10}, Lcom/vent/a/m;->b(Lcom/vent/a/m;Lcom/vent/a/m;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    new-instance v9, Lcom/vent/ag$b;

    invoke-direct {v9}, Lcom/vent/ag$b;-><init>()V

    iput-object v6, v9, Lcom/vent/ag$b;->file:Ljava/io/File;

    iput-object v8, v9, Lcom/vent/ag$b;->bXE:Lcom/vent/a/x;

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    iput-wide v10, v9, Lcom/vent/ag$b;->cef:J

    const-string v6, "authentication_token"

    const/4 v8, 0x0

    invoke-static {v7, v6, v8}, Lcom/vent/d/b;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v9, Lcom/vent/ag$b;->ceg:Ljava/lang/String;

    iget-object v6, p0, Lcom/vent/ag$a;->ceb:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    iget-object v0, p0, Lcom/vent/ag$a;->ceb:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/vent/ag$a;->ceb:Ljava/util/ArrayList;

    new-instance v1, Lcom/vent/ag$a$1;

    invoke-direct {v1, p0}, Lcom/vent/ag$a$1;-><init>(Lcom/vent/ag$a;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vent/ag$a;->ceb:Ljava/util/ArrayList;

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/vent/ag$a;->ceb:Ljava/util/ArrayList;

    :cond_2
    iget-object v0, p0, Lcom/vent/ag$a;->ceb:Ljava/util/ArrayList;

    new-instance v1, Lcom/vent/ag$a$2;

    invoke-direct {v1, p0}, Lcom/vent/ag$a$2;-><init>(Lcom/vent/ag$a;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vent/ag$a;->setHasStableIds(Z)V

    return-void

    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_0
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/vent/ag$a;->ceb:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vent/ag$a;->ceb:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/vent/ag$a;->ceb:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/ag$b;

    iget-object v0, v0, Lcom/vent/ag$b;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final onBindViewHolder(Landroid/support/v7/widget/RecyclerView$x;I)V
    .locals 7

    const/16 v3, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x0

    check-cast p1, Lcom/vent/ag$a$a;

    iget-object v0, p0, Lcom/vent/ag$a;->ceb:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    move-object v5, v1

    :goto_0
    iget-object v0, p1, Lcom/vent/ag$a$a;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    if-nez v5, :cond_3

    move-object v6, v1

    :goto_1
    invoke-static {v6}, Lcom/vent/bb;->c(Lcom/vent/a/x;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/vent/bb;->ciF:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v5, Lcom/vent/ag$b;->ceh:Ljava/lang/Integer;

    :cond_0
    iget-object v4, p1, Lcom/vent/ag$a$a;->bZI:Landroid/widget/TextView;

    if-nez v6, :cond_4

    :goto_2
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v5, :cond_6

    iget-object v0, v5, Lcom/vent/ag$b;->ceh:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    iget-object v0, v5, Lcom/vent/ag$b;->ceh:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p1, Lcom/vent/ag$a$a;->bZL:Landroid/widget/TextView;

    iget-object v1, v5, Lcom/vent/ag$b;->ceh:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/vent/ag$a$a;->bZL:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    iget-object v0, p1, Lcom/vent/ag$a$a;->bUF:Lcom/vent/CachedImageView;

    sget v1, Lcom/vent/MyApplication;->cgm:I

    sget v4, Lcom/vent/MyApplication;->cgo:I

    invoke-static {v6, v0, v1, v4}, Lcom/vent/d/c;->a(Lcom/vent/a/x;Lcom/vent/CachedImageView;II)V

    iget-object v0, p1, Lcom/vent/ag$a$a;->bZN:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Lcom/vent/ag$a$a;->caX:Landroid/view/View;

    invoke-static {v6}, Lcom/vent/bb;->c(Lcom/vent/a/x;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v2

    :goto_4
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz v6, :cond_1

    iget-object v0, v5, Lcom/vent/ag$b;->ceh:Ljava/lang/Integer;

    if-nez v0, :cond_1

    iget-object v0, v5, Lcom/vent/ag$b;->ceg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vent/ag$a;->bVA:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/vent/ag;

    if-eqz v1, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v5, Lcom/vent/ag$b;->ceh:Ljava/lang/Integer;

    invoke-static {}, Lcom/vent/bb;->Es()Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/vent/bb;->bl(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "api/v1/my/notifications/notifications_count.json"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lcom/vent/ag$a$3;

    invoke-virtual {v1}, Lcom/vent/ag;->getActivity()Landroid/support/v4/app/j;

    move-result-object v2

    const-string v4, "GET"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/vent/ag$a$3;-><init>(Lcom/vent/ag$a;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/vent/ag$b;)V

    iget-object v1, v5, Lcom/vent/ag$b;->ceg:Ljava/lang/String;

    invoke-static {v6, v1}, Lcom/vent/bb;->a(Lcom/vent/a/x;Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vent/ad;->bYq:[[Ljava/lang/String;

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/vent/ag$a;->ceb:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/ag$b;

    move-object v5, v0

    goto/16 :goto_0

    :cond_3
    iget-object v0, v5, Lcom/vent/ag$b;->bXE:Lcom/vent/a/x;

    move-object v6, v0

    goto/16 :goto_1

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v6, Lcom/vent/a/x;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, v5, Lcom/vent/ag$b;->cei:Z

    if-eqz v0, :cond_5

    const-string v0, " [stg]"

    :goto_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_5
    const-string v0, ""

    goto :goto_5

    :cond_6
    iget-object v0, p1, Lcom/vent/ag$a$a;->bZL:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_7
    move v0, v3

    goto/16 :goto_4
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$x;
    .locals 4

    new-instance v0, Lcom/vent/ag$a$a;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b00d7

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vent/ag$a$a;-><init>(Lcom/vent/ag$a;Landroid/view/View;)V

    return-object v0
.end method
