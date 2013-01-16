.class public Lcom/meizu/internal/policy/impl/TimeTracker;
.super Ljava/lang/Object;
.source "TimeTracker.java"


# instance fields
.field mBegin:J

.field mCost:J

.field mCount:J

.field mId:J

.field mLap:J

.field mMax:J

.field mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/meizu/internal/policy/impl/TimeTracker;->mLap:J

    .line 16
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/TimeTracker;->mTag:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public begin(J)V
    .locals 4
    .parameter "id"

    .prologue
    const-wide/16 v2, 0x0

    .line 20
    iput-wide p1, p0, Lcom/meizu/internal/policy/impl/TimeTracker;->mId:J

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/internal/policy/impl/TimeTracker;->mBegin:J

    .line 22
    iget-wide v0, p0, Lcom/meizu/internal/policy/impl/TimeTracker;->mLap:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 23
    iget-wide v0, p0, Lcom/meizu/internal/policy/impl/TimeTracker;->mBegin:J

    iput-wide v0, p0, Lcom/meizu/internal/policy/impl/TimeTracker;->mLap:J

    .line 24
    iput-wide v2, p0, Lcom/meizu/internal/policy/impl/TimeTracker;->mCost:J

    .line 25
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/meizu/internal/policy/impl/TimeTracker;->mMax:J

    .line 26
    iput-wide v2, p0, Lcom/meizu/internal/policy/impl/TimeTracker;->mCount:J

    .line 28
    :cond_0
    return-void
.end method

.method public end()V
    .locals 12

    .prologue
    const-wide/16 v10, 0xa

    .line 31
    iget-wide v6, p0, Lcom/meizu/internal/policy/impl/TimeTracker;->mCount:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/meizu/internal/policy/impl/TimeTracker;->mCount:J

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 33
    .local v4, endTick:J
    iget-wide v6, p0, Lcom/meizu/internal/policy/impl/TimeTracker;->mBegin:J

    sub-long v0, v4, v6

    .line 34
    .local v0, diff:J
    cmp-long v6, v0, v10

    if-lez v6, :cond_0

    .line 35
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/TimeTracker;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "End: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/meizu/internal/policy/impl/TimeTracker;->mId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_0
    iget-wide v6, p0, Lcom/meizu/internal/policy/impl/TimeTracker;->mCost:J

    add-long/2addr v6, v0

    iput-wide v6, p0, Lcom/meizu/internal/policy/impl/TimeTracker;->mCost:J

    .line 38
    iget-wide v6, p0, Lcom/meizu/internal/policy/impl/TimeTracker;->mMax:J

    cmp-long v6, v6, v0

    if-gez v6, :cond_1

    .line 39
    iput-wide v0, p0, Lcom/meizu/internal/policy/impl/TimeTracker;->mMax:J

    .line 41
    :cond_1
    iget-wide v6, p0, Lcom/meizu/internal/policy/impl/TimeTracker;->mCount:J

    cmp-long v6, v6, v10

    if-lez v6, :cond_2

    .line 42
    iget-wide v6, p0, Lcom/meizu/internal/policy/impl/TimeTracker;->mLap:J

    sub-long v2, v4, v6

    .line 43
    .local v2, elapsed:J
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/TimeTracker;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TimeCost percent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/meizu/internal/policy/impl/TimeTracker;->mCost:J

    const-wide/16 v10, 0x64

    mul-long/2addr v8, v10

    div-long/2addr v8, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/meizu/internal/policy/impl/TimeTracker;->mId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", max: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/meizu/internal/policy/impl/TimeTracker;->mMax:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", avg: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/meizu/internal/policy/impl/TimeTracker;->mCost:J

    iget-wide v10, p0, Lcom/meizu/internal/policy/impl/TimeTracker;->mCount:J

    div-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", freq: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/meizu/internal/policy/impl/TimeTracker;->mCount:J

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    div-long/2addr v8, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/meizu/internal/policy/impl/TimeTracker;->mLap:J

    .line 50
    .end local v2           #elapsed:J
    :cond_2
    return-void
.end method
