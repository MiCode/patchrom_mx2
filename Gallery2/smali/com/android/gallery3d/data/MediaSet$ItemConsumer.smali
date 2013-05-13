.class public abstract Lcom/android/gallery3d/data/MediaSet$ItemConsumer;
.super Ljava/lang/Object;
.source "MediaSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/MediaSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ItemConsumer"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 209
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract consume(ILcom/android/gallery3d/data/MediaItem;)V
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    return v0
.end method
