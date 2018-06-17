.class public interface abstract annotation Lio/intercom/android/sdk/metrics/MetricTracker$Place;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/android/sdk/metrics/MetricTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Place"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final IN_APP:Ljava/lang/String; = "in_app"

.field public static final MESSENGER:Ljava/lang/String; = "messenger"

.field public static final MESSENGER_CARD:Ljava/lang/String; = "messenger_card"

.field public static final PUSH:Ljava/lang/String; = "push"
