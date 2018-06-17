.class public interface abstract Lcom/layer/sdk/query/Queryable$Property;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/query/Queryable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Property"
.end annotation


# virtual methods
.method public abstract isEqualityQueryable()Z
.end method

.method public abstract isInclusionQueryable()Z
.end method

.method public abstract isPatternQueryable()Z
.end method

.method public abstract isRelativeQueryable()Z
.end method

.method public abstract isSortable()Z
.end method
