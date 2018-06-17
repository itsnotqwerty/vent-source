.class public abstract Lcom/layer/sdk/query/ListViewController;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/query/ListViewController$PreProcessCallback;,
        Lcom/layer/sdk/query/ListViewController$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Tquery::",
        "Lcom/layer/sdk/query/Queryable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract execute()Lcom/layer/sdk/query/ListViewController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/layer/sdk/query/ListViewController",
            "<TTquery;>;"
        }
    .end annotation
.end method

.method public abstract getItem(I)Lcom/layer/sdk/query/Queryable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TTquery;"
        }
    .end annotation
.end method

.method public abstract getItemCount()I
.end method

.method public abstract getItemId(I)Landroid/net/Uri;
.end method

.method public abstract getPosition(Lcom/layer/sdk/query/Queryable;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTquery;)I"
        }
    .end annotation
.end method

.method public abstract getPosition(Lcom/layer/sdk/query/Queryable;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTquery;I)I"
        }
    .end annotation
.end method

.method public abstract setPreProcessCallback(Lcom/layer/sdk/query/ListViewController$PreProcessCallback;)Lcom/layer/sdk/query/ListViewController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/query/ListViewController$PreProcessCallback",
            "<TTquery;>;)",
            "Lcom/layer/sdk/query/ListViewController",
            "<TTquery;>;"
        }
    .end annotation
.end method

.method public abstract setQuery(Lcom/layer/sdk/query/Query;)Lcom/layer/sdk/query/ListViewController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/query/Query",
            "<TTquery;>;)",
            "Lcom/layer/sdk/query/ListViewController",
            "<TTquery;>;"
        }
    .end annotation
.end method

.method public abstract updateBoundPosition(I)V
.end method
