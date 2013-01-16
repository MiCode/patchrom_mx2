.class public Landroid/media/dlna/DlnaUtils;
.super Ljava/lang/Object;
.source "DlnaUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static durationFromObject(Ljava/lang/Object;)I
    .locals 8
    .parameter "dur"

    .prologue
    const/high16 v7, 0x447a

    .line 46
    if-nez p0, :cond_1

    .line 47
    const/4 v1, 0x0

    .line 72
    .end local p0
    .local v1, duration:I
    :cond_0
    :goto_0
    return v1

    .line 49
    .end local v1           #duration:I
    .restart local p0
    :cond_1
    const/4 v1, 0x0

    .line 50
    .restart local v1       #duration:I
    instance-of v5, p0, Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 52
    :try_start_0
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_3

    .line 53
    check-cast p0, Ljava/lang/String;

    .end local p0
    const-string v5, ":"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, dus:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v5, v2

    if-ge v4, v5, :cond_0

    .line 55
    mul-int/lit8 v1, v1, 0x3c

    .line 56
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_2

    .line 57
    mul-int/lit16 v1, v1, 0x3e8

    .line 58
    int-to-float v5, v1

    aget-object v6, v2, v4

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v1, v5

    .line 54
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 60
    :cond_2
    aget-object v5, v2, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v1, v5

    goto :goto_2

    .line 64
    .end local v2           #dus:[Ljava/lang/String;
    .end local v4           #i:I
    .restart local p0
    :cond_3
    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    mul-float/2addr v5, v7

    float-to-int v1, v5

    goto :goto_0

    .line 66
    :catch_0
    move-exception v3

    .line 67
    .local v3, e:Ljava/lang/Exception;
    const-string v5, "@@"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parse duration error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 69
    .end local v3           #e:Ljava/lang/Exception;
    .restart local p0
    :cond_4
    instance-of v5, p0, Ljava/lang/Integer;

    if-eqz v5, :cond_0

    .line 70
    check-cast p0, Ljava/lang/Integer;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public static fromCommaSeparatedList(Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 6
    .parameter "s"
    .parameter "unescapeCommas"

    .prologue
    .line 93
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 94
    :cond_0
    const/4 v2, 0x0

    .line 107
    :cond_1
    return-object v2

    .line 97
    :cond_2
    const-string v0, "XXX1122334455XXX"

    .line 98
    .local v0, QUOTED_COMMA_PLACEHOLDER:Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 99
    const-string v3, "\\\\,"

    const-string v4, "XXX1122334455XXX"

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 102
    :cond_3
    const-string v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, split:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 104
    aget-object v3, v2, v1

    const-string v4, "XXX1122334455XXX"

    const-string v5, ","

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 105
    aget-object v3, v2, v1

    const-string v4, "\\\\\\\\"

    const-string v5, "\\\\"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static makeDlnaNode(Ljava/util/Map;)Landroid/media/dlna/DlnaNode;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/media/dlna/DlnaNode;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, info:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    new-instance v0, Landroid/media/dlna/DlnaNode;

    invoke-direct {v0, p0}, Landroid/media/dlna/DlnaNode;-><init>(Ljava/util/Map;)V

    .line 41
    .local v0, dn:Landroid/media/dlna/DlnaNode;
    return-object v0
.end method

.method public static toCommaSeparatedList([Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 8
    .parameter "o"
    .parameter "escapeCommas"

    .prologue
    .line 111
    if-nez p0, :cond_0

    .line 112
    const-string v6, ""

    .line 126
    :goto_0
    return-object v6

    .line 114
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .local v5, sb:Ljava/lang/StringBuilder;
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/Object;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 116
    .local v3, obj:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 117
    .local v4, objString:Ljava/lang/String;
    const-string v6, "\\\\"

    const-string v7, "\\\\\\\\"

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 118
    if-eqz p1, :cond_1

    .line 119
    const-string v6, ","

    const-string v7, "\\\\,"

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 121
    :cond_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 123
    .end local v3           #obj:Ljava/lang/Object;
    .end local v4           #objString:Ljava/lang/String;
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_3

    .line 124
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 126
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static toSeperatedString(J)Ljava/lang/String;
    .locals 13
    .parameter "duration"

    .prologue
    .line 77
    const-wide/16 v9, 0x0

    cmp-long v9, p0, v9

    if-ltz v9, :cond_0

    .line 79
    const-wide/16 v9, 0x3e8

    :try_start_0
    div-long v0, p0, v9

    .line 80
    .local v0, dursec:J
    const-wide/32 v9, 0xea60

    rem-long v9, p0, v9

    long-to-float v9, v9

    const/high16 v10, 0x447a

    div-float v8, v9, v10

    .line 81
    .local v8, sec:F
    const-wide/16 v9, 0x3c

    div-long v9, v0, v9

    const-wide/16 v11, 0x3c

    rem-long v6, v9, v11

    .line 82
    .local v6, min:J
    const-wide/16 v9, 0xe10

    div-long v4, v0, v9

    .line 83
    .local v4, hour:J
    const-string v9, "%02d:%02d:%02.3f"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 89
    .end local v0           #dursec:J
    .end local v4           #hour:J
    .end local v6           #min:J
    .end local v8           #sec:F
    :goto_0
    return-object v2

    .line 85
    :catch_0
    move-exception v3

    .line 86
    .local v3, e:Ljava/lang/Exception;
    const-string v9, "DLNAService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "to seperated string error "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .end local v3           #e:Ljava/lang/Exception;
    :cond_0
    const-string v2, "00:00:00.000"

    goto :goto_0
.end method
