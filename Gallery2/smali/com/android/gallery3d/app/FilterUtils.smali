.class public Lcom/android/gallery3d/app/FilterUtils;
.super Ljava/lang/Object;
.source "FilterUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newClusterPath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "base"
    .parameter "clusterType"

    .prologue
    .line 194
    sparse-switch p1, :sswitch_data_0

    .line 214
    .end local p0
    :goto_0
    return-object p0

    .line 196
    .restart local p0
    :sswitch_0
    const-string v0, "time"

    .line 214
    .local v0, kind:Ljava/lang/String;
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/cluster/{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 199
    .end local v0           #kind:Ljava/lang/String;
    :sswitch_1
    const-string v0, "location"

    .line 200
    .restart local v0       #kind:Ljava/lang/String;
    goto :goto_1

    .line 202
    .end local v0           #kind:Ljava/lang/String;
    :sswitch_2
    const-string v0, "tag"

    .line 203
    .restart local v0       #kind:Ljava/lang/String;
    goto :goto_1

    .line 205
    .end local v0           #kind:Ljava/lang/String;
    :sswitch_3
    const-string v0, "size"

    .line 206
    .restart local v0       #kind:Ljava/lang/String;
    goto :goto_1

    .line 208
    .end local v0           #kind:Ljava/lang/String;
    :sswitch_4
    const-string v0, "face"

    .line 209
    .restart local v0       #kind:Ljava/lang/String;
    goto :goto_1

    .line 194
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public static newFilterPath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "base"
    .parameter "filterType"

    .prologue
    .line 177
    packed-switch p1, :pswitch_data_0

    .line 188
    .end local p0
    :goto_0
    return-object p0

    .line 179
    .restart local p0
    :pswitch_0
    const/4 v0, 0x2

    .line 188
    .local v0, mediaType:I
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/filter/mediatype/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 182
    .end local v0           #mediaType:I
    :pswitch_1
    const/4 v0, 0x4

    .line 183
    .restart local v0       #mediaType:I
    goto :goto_1

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static removeOneClusterFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "base"

    .prologue
    .line 224
    const/4 v1, 0x1

    new-array v0, v1, [Z

    .line 225
    .local v0, done:[Z
    invoke-static {p0, v0}, Lcom/android/gallery3d/app/FilterUtils;->removeOneClusterFromPath(Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static removeOneClusterFromPath(Ljava/lang/String;[Z)Ljava/lang/String;
    .locals 9
    .parameter "base"
    .parameter "done"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 229
    aget-boolean v5, p1, v7

    if-eqz v5, :cond_0

    .line 254
    .end local p0
    :goto_0
    return-object p0

    .line 231
    .restart local p0
    :cond_0
    invoke-static {p0}, Lcom/android/gallery3d/data/Path;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 232
    .local v3, segments:[Ljava/lang/String;
    aget-object v5, v3, v7

    const-string v6, "cluster"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 233
    aput-boolean v8, p1, v7

    .line 234
    aget-object v5, v3, v8

    invoke-static {v5}, Lcom/android/gallery3d/data/Path;->splitSequence(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object p0, v5, v7

    goto :goto_0

    .line 237
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_5

    .line 239
    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    aget-object v5, v3, v0

    const-string v6, "{"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 241
    const-string v5, "{"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    aget-object v5, v3, v0

    invoke-static {v5}, Lcom/android/gallery3d/data/Path;->splitSequence(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 243
    .local v4, sets:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    array-length v5, v4

    if-ge v1, v5, :cond_3

    .line 244
    if-lez v1, :cond_2

    .line 245
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    :cond_2
    aget-object v5, v4, v1

    invoke-static {v5, p1}, Lcom/android/gallery3d/app/FilterUtils;->removeOneClusterFromPath(Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 249
    :cond_3
    const-string v5, "}"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .end local v1           #j:I
    .end local v4           #sets:[Ljava/lang/String;
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 251
    :cond_4
    aget-object v5, v3, v0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 254
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static switchClusterPath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "base"
    .parameter "clusterType"

    .prologue
    .line 219
    invoke-static {p0}, Lcom/android/gallery3d/app/FilterUtils;->removeOneClusterFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/gallery3d/app/FilterUtils;->newClusterPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
