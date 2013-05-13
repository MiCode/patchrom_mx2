.class Lcom/android/server/am/UsageStatsService$PkgDataItem;
.super Ljava/lang/Object;
.source "UsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/UsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PkgDataItem"
.end annotation


# instance fields
.field reported:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 196
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 197
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/UsageStatsService$PkgDataItem;->reported:I

    .line 198
    return-void
.end method


# virtual methods
.method public getReported()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/android/server/am/UsageStatsService$PkgDataItem;->reported:I

    return v0
.end method

.method public setReported(I)V
    .locals 0
    .parameter "reported"

    .prologue
    .line 204
    iput p1, p0, Lcom/android/server/am/UsageStatsService$PkgDataItem;->reported:I

    .line 205
    return-void
.end method
