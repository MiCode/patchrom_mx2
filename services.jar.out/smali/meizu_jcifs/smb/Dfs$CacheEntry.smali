.class Lmeizu_jcifs/smb/Dfs$CacheEntry;
.super Ljava/lang/Object;
.source "Dfs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu_jcifs/smb/Dfs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CacheEntry"
.end annotation


# instance fields
.field expiration:J

.field map:Ljava/util/HashMap;


# direct methods
.method constructor <init>(J)V
    .locals 4
    .parameter "ttl"

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 36
    sget-wide p1, Lmeizu_jcifs/smb/Dfs;->TTL:J

    .line 37
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lmeizu_jcifs/smb/Dfs$CacheEntry;->expiration:J

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmeizu_jcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    .line 39
    return-void
.end method
