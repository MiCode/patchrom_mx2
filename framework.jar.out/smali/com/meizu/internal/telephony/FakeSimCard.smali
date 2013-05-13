.class public Lcom/meizu/internal/telephony/FakeSimCard;
.super Ljava/lang/Object;
.source "FakeSimCard.java"


# static fields
.field private static final SIM_FILE:Ljava/lang/String; = "fake_sim.dat"

.field public static final TAG_CMUAR:Ljava/lang/String; = "CMUAR"

.field public static final TAG_IMSI:Ljava/lang/String; = "IMSI"

.field private static final TAG_LOG:Ljava/lang/String; = "FakeSimCard"

.field public static final TAG_UCF:Ljava/lang/String; = "UCF"

.field public static final TAG_WMIS:Ljava/lang/String; = "WMIS"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImsi:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/meizu/internal/telephony/FakeSimCard;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method

.method private clearContent(Ljava/lang/String;)Z
    .locals 2
    .parameter "imsi"

    .prologue
    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 108
    .local v0, map:Ljava/util/Map;
    const-string v1, "IMSI"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-direct {p0, v0}, Lcom/meizu/internal/telephony/FakeSimCard;->saveValueMap(Ljava/util/Map;)Z

    move-result v1

    return v1
.end method

.method private loadValueByTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "tag"

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/meizu/internal/telephony/FakeSimCard;->loadValueMap()Ljava/util/Map;

    move-result-object v0

    .line 173
    .local v0, map:Ljava/util/Map;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 174
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method private loadValueMap()Ljava/util/Map;
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v7, 0x0

    .line 113
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 114
    .local v4, map:Ljava/util/Map;
    const/4 v2, 0x0

    .line 117
    .local v2, fis:Ljava/io/FileInputStream;
    :try_start_0
    iget-object v8, p0, Lcom/meizu/internal/telephony/FakeSimCard;->mContext:Landroid/content/Context;

    const-string v9, "fake_sim.dat"

    invoke-virtual {v8, v9}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 118
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 119
    .local v3, isr:Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 120
    .local v0, br:Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, temp:Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 121
    const-string v8, ":"

    const/4 v9, 0x2

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 122
    .local v5, pair:[Ljava/lang/String;
    array-length v8, v5

    if-lt v8, v10, :cond_0

    const/4 v8, 0x0

    aget-object v8, v5, v8

    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 124
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #isr:Ljava/io/InputStreamReader;
    .end local v5           #pair:[Ljava/lang/String;
    .end local v6           #temp:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 125
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_1
    const-string v8, "FakeSimCard"

    const-string/jumbo v9, "no fake sim file found, use empty"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    move-object v4, v7

    .line 139
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .end local v4           #map:Ljava/util/Map;
    :cond_2
    :goto_1
    return-object v4

    .line 132
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v3       #isr:Ljava/io/InputStreamReader;
    .restart local v4       #map:Ljava/util/Map;
    .restart local v6       #temp:Ljava/lang/String;
    :cond_3
    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 133
    :catch_1
    move-exception v1

    .line 134
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v7

    .line 135
    goto :goto_1

    .line 133
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #isr:Ljava/io/InputStreamReader;
    .end local v6           #temp:Ljava/lang/String;
    .local v1, e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v1

    .line 134
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v7

    .line 135
    goto :goto_1

    .line 127
    .end local v1           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 128
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 132
    if-eqz v2, :cond_4

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :cond_4
    move-object v4, v7

    .line 135
    goto :goto_1

    .line 133
    :catch_4
    move-exception v1

    .line 134
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v7

    .line 135
    goto :goto_1

    .line 131
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 132
    if-eqz v2, :cond_5

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 135
    :cond_5
    throw v8

    .line 133
    :catch_5
    move-exception v1

    .line 134
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v7

    .line 135
    goto :goto_1
.end method

.method private removeValueByTag(Ljava/lang/String;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/meizu/internal/telephony/FakeSimCard;->loadValueMap()Ljava/util/Map;

    move-result-object v0

    .line 190
    .local v0, map:Ljava/util/Map;
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-direct {p0, v0}, Lcom/meizu/internal/telephony/FakeSimCard;->saveValueMap(Ljava/util/Map;)Z

    .line 192
    return-void
.end method

.method private saveValueByTag(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "tag"
    .parameter "val"

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/meizu/internal/telephony/FakeSimCard;->loadValueMap()Ljava/util/Map;

    move-result-object v0

    .line 179
    .local v0, map:Ljava/util/Map;
    const-string v1, "IMSI"

    iget-object v2, p0, Lcom/meizu/internal/telephony/FakeSimCard;->mImsi:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-direct {p0, v0}, Lcom/meizu/internal/telephony/FakeSimCard;->saveValueMap(Ljava/util/Map;)Z

    move-result v1

    return v1
.end method

.method private saveValueByUCFTag(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "tag"
    .parameter "val"

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/meizu/internal/telephony/FakeSimCard;->loadValueMap()Ljava/util/Map;

    move-result-object v0

    .line 185
    .local v0, map:Ljava/util/Map;
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-direct {p0, v0}, Lcom/meizu/internal/telephony/FakeSimCard;->saveValueMap(Ljava/util/Map;)Z

    move-result v1

    return v1
.end method

.method private saveValueMap(Ljava/util/Map;)Z
    .locals 12
    .parameter "map"

    .prologue
    const/4 v8, 0x0

    .line 143
    const/4 v2, 0x0

    .line 145
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v9, p0, Lcom/meizu/internal/telephony/FakeSimCard;->mContext:Landroid/content/Context;

    const-string v10, "fake_sim.dat"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 146
    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 147
    .local v5, osw:Ljava/io/OutputStreamWriter;
    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 148
    .local v6, pw:Ljava/io/PrintWriter;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 149
    .local v3, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 150
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 151
    .local v1, entry:Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 152
    .local v4, key:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 153
    .local v7, val:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v7, :cond_1

    .end local v7           #val:Ljava/lang/String;
    :goto_1
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 156
    .end local v1           #entry:Ljava/util/Map$Entry;
    .end local v3           #it:Ljava/util/Iterator;
    .end local v4           #key:Ljava/lang/String;
    .end local v5           #osw:Ljava/io/OutputStreamWriter;
    .end local v6           #pw:Ljava/io/PrintWriter;
    :catch_0
    move-exception v0

    .line 157
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 168
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    :goto_2
    return v8

    .line 153
    .restart local v1       #entry:Ljava/util/Map$Entry;
    .restart local v3       #it:Ljava/util/Iterator;
    .restart local v4       #key:Ljava/lang/String;
    .restart local v5       #osw:Ljava/io/OutputStreamWriter;
    .restart local v6       #pw:Ljava/io/PrintWriter;
    .restart local v7       #val:Ljava/lang/String;
    :cond_1
    :try_start_3
    const-string v7, ""

    goto :goto_1

    .line 155
    .end local v1           #entry:Ljava/util/Map$Entry;
    .end local v4           #key:Ljava/lang/String;
    .end local v7           #val:Ljava/lang/String;
    :cond_2
    invoke-virtual {v6}, Ljava/io/PrintWriter;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 161
    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 168
    :cond_3
    const/4 v8, 0x1

    goto :goto_2

    .line 162
    :catch_1
    move-exception v0

    .line 163
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 162
    .end local v3           #it:Ljava/util/Iterator;
    .end local v5           #osw:Ljava/io/OutputStreamWriter;
    .end local v6           #pw:Ljava/io/PrintWriter;
    :catch_2
    move-exception v0

    .line 163
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 160
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 161
    if-eqz v2, :cond_4

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 164
    :cond_4
    throw v9

    .line 162
    :catch_3
    move-exception v0

    .line 163
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public clearUCFTag()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "UCF"

    invoke-direct {p0, v0}, Lcom/meizu/internal/telephony/FakeSimCard;->removeValueByTag(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public loadCMUAR()[B
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 87
    const-string v3, "CMUAR"

    invoke-direct {p0, v3}, Lcom/meizu/internal/telephony/FakeSimCard;->loadValueByTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, msasStr:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 96
    :goto_0
    return-object v0

    .line 91
    :cond_0
    :try_start_0
    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .local v0, data:[B
    goto :goto_0

    .line 92
    .end local v0           #data:[B
    :catch_0
    move-exception v1

    .line 93
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public loadIMSI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    const-string v0, "IMSI"

    invoke-direct {p0, v0}, Lcom/meizu/internal/telephony/FakeSimCard;->loadValueByTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadMWIS()[B
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 62
    const-string v3, "WMIS"

    invoke-direct {p0, v3}, Lcom/meizu/internal/telephony/FakeSimCard;->loadValueByTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, mwisStr:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 71
    :goto_0
    return-object v0

    .line 66
    :cond_0
    :try_start_0
    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .local v0, data:[B
    goto :goto_0

    .line 67
    .end local v0           #data:[B
    :catch_0
    move-exception v1

    .line 68
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onImsiLoaded(Ljava/lang/String;)V
    .locals 2
    .parameter "imsi"

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/meizu/internal/telephony/FakeSimCard;->loadIMSI()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/internal/telephony/FakeSimCard;->mImsi:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/meizu/internal/telephony/FakeSimCard;->mImsi:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/telephony/FakeSimCard;->mImsi:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    :cond_0
    const-string v0, "FakeSimCard"

    const-string v1, "SIM card changed detected, so erase fake sim"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-direct {p0, p1}, Lcom/meizu/internal/telephony/FakeSimCard;->clearContent(Ljava/lang/String;)Z

    .line 57
    iput-object p1, p0, Lcom/meizu/internal/telephony/FakeSimCard;->mImsi:Ljava/lang/String;

    .line 59
    :cond_1
    return-void
.end method

.method public saveCMUAR([B)Z
    .locals 4
    .parameter "data"

    .prologue
    .line 81
    invoke-static {p1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, msasStr:Ljava/lang/String;
    const-string v1, "FakeSimCard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saveCMUAR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const-string v1, "CMUAR"

    invoke-direct {p0, v1, v0}, Lcom/meizu/internal/telephony/FakeSimCard;->saveValueByTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public saveMWIS([B)Z
    .locals 4
    .parameter "data"

    .prologue
    .line 75
    invoke-static {p1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, mwisStr:Ljava/lang/String;
    const-string v1, "FakeSimCard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saveMWIS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const-string v1, "WMIS"

    invoke-direct {p0, v1, v0}, Lcom/meizu/internal/telephony/FakeSimCard;->saveValueByTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public saveUCFTag()Z
    .locals 3

    .prologue
    .line 44
    const-string/jumbo v0, "valueOfUCF"

    .line 45
    .local v0, UCFStr:Ljava/lang/String;
    const-string v1, "UCF"

    const-string/jumbo v2, "valueOfUCF"

    invoke-direct {p0, v1, v2}, Lcom/meizu/internal/telephony/FakeSimCard;->saveValueByUCFTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public searchUCFTag()Z
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/meizu/internal/telephony/FakeSimCard;->loadValueMap()Ljava/util/Map;

    move-result-object v0

    .line 40
    .local v0, map:Ljava/util/Map;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 41
    :goto_0
    return v1

    :cond_0
    const-string v1, "UCF"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method
