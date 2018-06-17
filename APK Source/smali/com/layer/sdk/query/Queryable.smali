.class public interface abstract Lcom/layer/sdk/query/Queryable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/query/Queryable$Property;
    }
.end annotation


# static fields
.field public static final BY_EQUALITY:I = 0x1

.field public static final BY_INCLUSION:I = 0x2

.field public static final BY_PATTERN:I = 0x8

.field public static final BY_RELATIVE:I = 0x4


# virtual methods
.method public abstract getId()Landroid/net/Uri;
.end method
