.class public Landroid/media/CueHelper;
.super Ljava/lang/Object;
.source "CueHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/CueHelper$CueTrack;,
        Landroid/media/CueHelper$CueTrackTag;,
        Landroid/media/CueHelper$CueTrackInfo;
    }
.end annotation


# static fields
.field private static final AUDIO_FILETYPE:[I = null

.field private static final AUDIO_TYPE:[Ljava/lang/String; = null

.field public static final DOT_CUE:Ljava/lang/String; = ".cue"

.field public static final DOT_CUS:Ljava/lang/String; = ".cus"

.field private static final FILE:Ljava/lang/String; = "FILE"

.field private static final INDEX:Ljava/lang/String; = "INDEX"

.field public static final MAX_DURATION:J = 0x7fffffffL

.field private static final PERFORMER:Ljava/lang/String; = "PERFORMER"

.field private static final TITLE:Ljava/lang/String; = "TITLE"

.field private static final TRACK:Ljava/lang/String; = "TRACK"

.field private static final UTF8:Ljava/lang/String; = "UFT-8"


# instance fields
.field private m_cueFilePath:Ljava/lang/String;

.field private m_cuePerformer:Ljava/lang/String;

.field private m_cueTitle:Ljava/lang/String;

.field private m_cueTracks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/CueHelper$CueTrack;",
            ">;"
        }
    .end annotation
.end field

.field private m_musicFileName:Ljava/lang/String;

.field private m_musicFileNameWithExt:Ljava/lang/String;

.field private m_musicFilePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 46
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ".ape"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ".flac"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ".wav"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, ".fla"

    aput-object v2, v0, v1

    const-string v1, ".dts"

    aput-object v1, v0, v3

    sput-object v0, Landroid/media/CueHelper;->AUDIO_TYPE:[Ljava/lang/String;

    .line 47
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/media/CueHelper;->AUDIO_FILETYPE:[I

    return-void

    :array_0
    .array-data 0x4
        0x34t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x37t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 541
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/CueHelper;->m_cueTracks:Ljava/util/ArrayList;

    return-void
.end method

.method private clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 527
    iput-object v1, p0, Landroid/media/CueHelper;->m_musicFilePath:Ljava/lang/String;

    .line 528
    iput-object v1, p0, Landroid/media/CueHelper;->m_musicFileName:Ljava/lang/String;

    .line 529
    iput-object v1, p0, Landroid/media/CueHelper;->m_musicFileNameWithExt:Ljava/lang/String;

    .line 530
    iput-object v1, p0, Landroid/media/CueHelper;->m_cueTitle:Ljava/lang/String;

    .line 531
    iput-object v1, p0, Landroid/media/CueHelper;->m_cuePerformer:Ljava/lang/String;

    .line 532
    iget-object v0, p0, Landroid/media/CueHelper;->m_cueTracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 533
    iput-object v1, p0, Landroid/media/CueHelper;->m_cueFilePath:Ljava/lang/String;

    .line 534
    return-void
.end method

.method public static getCharset(Ljava/io/File;)Ljava/lang/String;
    .locals 12
    .parameter "file"

    .prologue
    const/4 v8, 0x3

    const/4 v11, -0x2

    const/4 v10, -0x1

    .line 131
    const-string v1, "GBK"

    .line 132
    .local v1, charset:Ljava/lang/String;
    new-array v4, v8, [B

    .line 133
    .local v4, first3Bytes:[B
    const/4 v5, 0x0

    .line 135
    .local v5, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 136
    .end local v5           #fis:Ljava/io/FileInputStream;
    .local v6, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 137
    .local v0, bis:Ljava/io/BufferedInputStream;
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 139
    const/4 v8, 0x0

    const/4 v9, 0x3

    invoke-virtual {v0, v4, v8, v9}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-result v7

    .line 140
    .local v7, read:I
    if-ne v7, v10, :cond_1

    .line 156
    if-eqz v6, :cond_0

    .line 158
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v5, v6

    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    move-object v2, v1

    .line 164
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v1           #charset:Ljava/lang/String;
    .end local v7           #read:I
    .local v2, charset:Ljava/lang/String;
    :goto_1
    return-object v2

    .line 159
    .end local v2           #charset:Ljava/lang/String;
    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #charset:Ljava/lang/String;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    .restart local v7       #read:I
    :catch_0
    move-exception v3

    .line 160
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 142
    .end local v3           #e:Ljava/io/IOException;
    :cond_1
    const/4 v8, 0x0

    :try_start_3
    aget-byte v8, v4, v8

    if-ne v8, v10, :cond_4

    const/4 v8, 0x1

    aget-byte v8, v4, v8

    if-ne v8, v11, :cond_4

    .line 144
    const-string/jumbo v1, "unicode"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 156
    :cond_2
    :goto_2
    if-eqz v6, :cond_7

    .line 158
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v5, v6

    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v6           #fis:Ljava/io/FileInputStream;
    .end local v7           #read:I
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :cond_3
    :goto_3
    move-object v2, v1

    .line 164
    .end local v1           #charset:Ljava/lang/String;
    .restart local v2       #charset:Ljava/lang/String;
    goto :goto_1

    .line 145
    .end local v2           #charset:Ljava/lang/String;
    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #charset:Ljava/lang/String;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    .restart local v7       #read:I
    :cond_4
    const/4 v8, 0x0

    :try_start_5
    aget-byte v8, v4, v8

    if-ne v8, v11, :cond_5

    const/4 v8, 0x1

    aget-byte v8, v4, v8

    if-ne v8, v10, :cond_5

    .line 147
    const-string/jumbo v1, "unicode"

    goto :goto_2

    .line 148
    :cond_5
    const/4 v8, 0x0

    aget-byte v8, v4, v8

    const/16 v9, -0x11

    if-ne v8, v9, :cond_2

    const/4 v8, 0x1

    aget-byte v8, v4, v8

    const/16 v9, -0x45

    if-ne v8, v9, :cond_2

    const/4 v8, 0x2

    aget-byte v8, v4, v8

    const/16 v9, -0x41

    if-ne v8, v9, :cond_2

    .line 150
    const-string v1, "UTF-8"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_2

    .line 159
    :catch_1
    move-exception v3

    .line 160
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .line 161
    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .line 153
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v3           #e:Ljava/io/IOException;
    .end local v7           #read:I
    :catch_2
    move-exception v3

    .line 154
    .local v3, e:Ljava/lang/Exception;
    :goto_4
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 156
    if-eqz v5, :cond_3

    .line 158
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_3

    .line 159
    :catch_3
    move-exception v3

    .line 160
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 156
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_5
    if-eqz v5, :cond_6

    .line 158
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 161
    :cond_6
    :goto_6
    throw v8

    .line 159
    :catch_4
    move-exception v3

    .line 160
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 156
    .end local v3           #e:Ljava/io/IOException;
    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    goto :goto_5

    .line 153
    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    :catch_5
    move-exception v3

    move-object v5, v6

    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    goto :goto_4

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    .restart local v7       #read:I
    :cond_7
    move-object v5, v6

    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method public static getCharset([B)Ljava/lang/String;
    .locals 7
    .parameter "content"

    .prologue
    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v2, -0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 168
    const-string v0, "GBK"

    .line 169
    .local v0, charset:Ljava/lang/String;
    if-eqz p0, :cond_0

    array-length v1, p0

    if-le v1, v6, :cond_0

    .line 170
    aget-byte v1, p0, v3

    if-ne v1, v5, :cond_1

    aget-byte v1, p0, v4

    if-ne v1, v2, :cond_1

    .line 172
    const-string/jumbo v0, "unicode"

    .line 181
    :cond_0
    :goto_0
    return-object v0

    .line 173
    :cond_1
    aget-byte v1, p0, v3

    if-ne v1, v2, :cond_2

    aget-byte v1, p0, v4

    if-ne v1, v5, :cond_2

    .line 175
    const-string/jumbo v0, "unicode"

    goto :goto_0

    .line 176
    :cond_2
    array-length v1, p0

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    aget-byte v1, p0, v3

    const/16 v2, -0x11

    if-ne v1, v2, :cond_0

    aget-byte v1, p0, v4

    const/16 v2, -0x45

    if-ne v1, v2, :cond_0

    aget-byte v1, p0, v6

    const/16 v2, -0x41

    if-ne v1, v2, :cond_0

    .line 178
    const-string v0, "UTF-8"

    goto :goto_0
.end method

.method public static getCueFromCus(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "cusFilePath"

    .prologue
    .line 101
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-le v3, v4, :cond_0

    .line 102
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v2, v3, -0x4

    .line 103
    .local v2, startIndex:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, fileExt:Ljava/lang/String;
    const-string v3, ".cus"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 105
    add-int/lit8 v2, v2, -0x1

    .line 106
    const/16 v3, 0x2e

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    .line 107
    .local v1, i:I
    if-lez v1, :cond_0

    if-ge v1, v2, :cond_0

    .line 108
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 112
    .end local v0           #fileExt:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #startIndex:I
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getCueFromMusic(Ljava/lang/String;I)Ljava/lang/String;
    .locals 13
    .parameter "musicFilePath"
    .parameter "fileType"

    .prologue
    const/16 v12, 0x2e

    const/4 v11, -0x1

    .line 62
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_4

    .line 64
    const/4 v9, 0x0

    .line 65
    .local v9, needFind:Z
    const/4 v4, -0x1

    .line 67
    .local v4, dotPos:I
    if-gez p1, :cond_2

    .line 68
    invoke-virtual {p0, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 69
    if-le v4, v11, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ge v4, v10, :cond_0

    .line 70
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 72
    .local v5, fileExt:Ljava/lang/String;
    sget-object v0, Landroid/media/CueHelper;->AUDIO_TYPE:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v8, v0

    .local v8, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v1, v0, v6

    .line 73
    .local v1, audioType:Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 74
    const/4 v9, 0x1

    .line 89
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #audioType:Ljava/lang/String;
    .end local v5           #fileExt:Ljava/lang/String;
    .end local v6           #i$:I
    .end local v8           #len$:I
    :cond_0
    :goto_1
    if-eqz v9, :cond_4

    if-le v4, v11, :cond_4

    .line 90
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    invoke-virtual {p0, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".cue"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, cueFilePath:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .local v2, cueFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 97
    .end local v2           #cueFile:Ljava/io/File;
    .end local v3           #cueFilePath:Ljava/lang/String;
    .end local v4           #dotPos:I
    .end local v9           #needFind:Z
    :goto_2
    return-object v3

    .line 72
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #audioType:Ljava/lang/String;
    .restart local v4       #dotPos:I
    .restart local v5       #fileExt:Ljava/lang/String;
    .restart local v6       #i$:I
    .restart local v8       #len$:I
    .restart local v9       #needFind:Z
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 80
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #audioType:Ljava/lang/String;
    .end local v5           #fileExt:Ljava/lang/String;
    .end local v6           #i$:I
    .end local v8           #len$:I
    :cond_2
    const/4 v7, 0x0

    .local v7, k:I
    :goto_3
    sget-object v10, Landroid/media/CueHelper;->AUDIO_FILETYPE:[I

    array-length v10, v10

    if-ge v7, v10, :cond_0

    .line 81
    sget-object v10, Landroid/media/CueHelper;->AUDIO_FILETYPE:[I

    aget v10, v10, v7

    if-ne p1, v10, :cond_3

    .line 82
    const/4 v9, 0x1

    .line 83
    invoke-virtual {p0, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 84
    goto :goto_1

    .line 80
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 97
    .end local v4           #dotPos:I
    .end local v7           #k:I
    .end local v9           #needFind:Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private static getLineContent(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "line"
    .parameter "offset"

    .prologue
    const/16 v3, 0x22

    .line 187
    invoke-virtual {p0, v3, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 188
    .local v1, start:I
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 189
    .local v0, end:I
    if-gez v0, :cond_0

    .line 190
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 192
    :cond_0
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getMusicPathForCue(Ljava/lang/String;)Ljava/lang/String;
    .locals 28
    .parameter "filePath"

    .prologue
    .line 380
    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v25

    if-nez v25, :cond_2

    .line 381
    :cond_0
    const/16 v19, 0x0

    .line 458
    :cond_1
    :goto_0
    return-object v19

    .line 383
    :cond_2
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 384
    .local v11, file:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v25

    if-eqz v25, :cond_3

    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    move-result v25

    if-nez v25, :cond_4

    .line 385
    :cond_3
    const/16 v19, 0x0

    goto :goto_0

    .line 388
    :cond_4
    invoke-static {v11}, Landroid/media/CueHelper;->getCharset(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    .line 391
    .local v6, charset:Ljava/lang/String;
    :try_start_0
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 392
    .local v12, fis:Ljava/io/FileInputStream;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v25, Ljava/io/InputStreamReader;

    move-object/from16 v0, v25

    invoke-direct {v0, v12, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 394
    .local v5, br:Ljava/io/BufferedReader;
    const-string v25, "UFT-8"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 395
    const-wide/16 v25, 0x1

    move-wide/from16 v0, v25

    invoke-virtual {v5, v0, v1}, Ljava/io/BufferedReader;->skip(J)J

    .line 401
    :cond_5
    const/16 v19, 0x0

    .line 404
    .local v19, musicFilePath:Ljava/lang/String;
    :cond_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    .local v15, line:Ljava/lang/String;
    if-eqz v15, :cond_b

    .line 405
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v25

    if-eqz v25, :cond_6

    .line 406
    const/16 v20, 0x0

    .line 407
    .local v20, pos1:I
    :goto_1
    move/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->charAt(I)C

    move-result v25

    const/16 v26, 0x20

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_7

    .line 408
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 410
    :cond_7
    const/16 v25, 0x20

    add-int/lit8 v26, v20, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v21

    .line 411
    .local v21, pos2:I
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    .line 413
    .local v24, word:Ljava/lang/String;
    const-string v25, "FILE"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_6

    .line 415
    move/from16 v0, v21

    invoke-static {v15, v0}, Landroid/media/CueHelper;->getLineContent(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    .line 418
    .local v18, musicFileNameWithExt:Ljava/lang/String;
    const/16 v25, 0x2f

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v22

    .line 419
    .local v22, sepPos:I
    if-ltz v22, :cond_8

    .line 420
    const/16 v25, 0x0

    add-int/lit8 v26, v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 424
    .local v7, cueDir:Ljava/lang/String;
    :goto_2
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 426
    const/16 v25, 0x2e

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .line 427
    .local v9, dotPos:I
    if-lez v9, :cond_9

    .line 428
    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 433
    .local v17, musicFileName:Ljava/lang/String;
    :goto_3
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 434
    .local v16, musicFile:Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v25

    if-nez v25, :cond_1

    .line 435
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v25

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v26

    const-string v27, ".cue"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v27

    sub-int v26, v26, v27

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 436
    .local v8, cueFileName:Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_6

    .line 437
    sget-object v3, Landroid/media/CueHelper;->AUDIO_TYPE:[Ljava/lang/String;

    .local v3, arr$:[Ljava/lang/String;
    array-length v14, v3

    .local v14, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_4
    if-ge v13, v14, :cond_6

    aget-object v4, v3, v13

    .line 438
    .local v4, audioType:Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 439
    .local v23, tryFile:Ljava/lang/String;
    new-instance v16, Ljava/io/File;

    .end local v16           #musicFile:Ljava/io/File;
    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 440
    .restart local v16       #musicFile:Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v25

    if-eqz v25, :cond_a

    .line 441
    move-object/from16 v19, v23

    .line 444
    goto/16 :goto_0

    .line 422
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v4           #audioType:Ljava/lang/String;
    .end local v7           #cueDir:Ljava/lang/String;
    .end local v8           #cueFileName:Ljava/lang/String;
    .end local v9           #dotPos:I
    .end local v13           #i$:I
    .end local v14           #len$:I
    .end local v16           #musicFile:Ljava/io/File;
    .end local v17           #musicFileName:Ljava/lang/String;
    .end local v23           #tryFile:Ljava/lang/String;
    :cond_8
    const-string v7, ""

    .restart local v7       #cueDir:Ljava/lang/String;
    goto/16 :goto_2

    .line 430
    .restart local v9       #dotPos:I
    :cond_9
    move-object/from16 v17, v18

    .restart local v17       #musicFileName:Ljava/lang/String;
    goto :goto_3

    .line 437
    .restart local v3       #arr$:[Ljava/lang/String;
    .restart local v4       #audioType:Ljava/lang/String;
    .restart local v8       #cueFileName:Ljava/lang/String;
    .restart local v13       #i$:I
    .restart local v14       #len$:I
    .restart local v16       #musicFile:Ljava/io/File;
    .restart local v23       #tryFile:Ljava/lang/String;
    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 455
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v4           #audioType:Ljava/lang/String;
    .end local v7           #cueDir:Ljava/lang/String;
    .end local v8           #cueFileName:Ljava/lang/String;
    .end local v9           #dotPos:I
    .end local v13           #i$:I
    .end local v14           #len$:I
    .end local v16           #musicFile:Ljava/io/File;
    .end local v17           #musicFileName:Ljava/lang/String;
    .end local v18           #musicFileNameWithExt:Ljava/lang/String;
    .end local v20           #pos1:I
    .end local v21           #pos2:I
    .end local v22           #sepPos:I
    .end local v23           #tryFile:Ljava/lang/String;
    .end local v24           #word:Ljava/lang/String;
    :cond_b
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 457
    .end local v5           #br:Ljava/io/BufferedReader;
    .end local v12           #fis:Ljava/io/FileInputStream;
    .end local v15           #line:Ljava/lang/String;
    .end local v19           #musicFilePath:Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 458
    .local v10, e:Ljava/lang/Exception;
    const/16 v19, 0x0

    goto/16 :goto_0
.end method

.method private static getPreTime(Ljava/lang/String;I)J
    .locals 12
    .parameter "line"
    .parameter "offset"

    .prologue
    const/16 v11, 0x3a

    const/16 v8, 0x20

    const-wide/16 v9, 0x3e8

    .line 222
    invoke-virtual {p0, v8, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    add-int/lit8 v2, v7, 0x1

    .line 223
    .local v2, pos:I
    add-int/lit8 v7, v2, 0x2

    invoke-virtual {p0, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_0

    .line 224
    const-wide/16 v7, -0x1

    .line 243
    :goto_0
    return-wide v7

    .line 227
    :cond_0
    add-int/lit8 v2, v2, 0x2

    .line 228
    :goto_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v8, :cond_1

    .line 229
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 233
    :cond_1
    add-int/lit8 v7, v2, 0x2

    invoke-virtual {p0, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 234
    .local v0, m:J
    invoke-virtual {p0, v11, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    add-int/lit8 v2, v7, 0x1

    .line 235
    add-int/lit8 v7, v2, 0x2

    invoke-virtual {p0, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 236
    .local v3, s:J
    invoke-virtual {p0, v11, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    add-int/lit8 v2, v7, 0x1

    .line 237
    add-int/lit8 v7, v2, 0x2

    invoke-virtual {p0, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 239
    .local v5, z:J
    const-wide/16 v7, 0x3c

    mul-long/2addr v7, v0

    mul-long v0, v7, v9

    .line 240
    mul-long/2addr v3, v9

    .line 241
    mul-long v7, v5, v9

    const-wide/16 v9, 0x4b

    div-long v5, v7, v9

    .line 243
    add-long v7, v0, v3

    add-long/2addr v7, v5

    goto :goto_0
.end method

.method private static getTime(Ljava/lang/String;I)J
    .locals 13
    .parameter "line"
    .parameter "offset"

    .prologue
    const/16 v12, 0x3a

    const/16 v11, 0x20

    const-wide/16 v9, 0x3e8

    .line 197
    invoke-virtual {p0, v11, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    add-int/lit8 v2, v7, 0x1

    .line 198
    .local v2, pos:I
    add-int/lit8 v7, v2, 0x2

    invoke-virtual {p0, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_0

    .line 199
    const-wide/16 v7, -0x1

    .line 218
    :goto_0
    return-wide v7

    .line 202
    :cond_0
    add-int/lit8 v2, v2, 0x2

    .line 203
    :goto_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v11, :cond_1

    .line 204
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 208
    :cond_1
    add-int/lit8 v7, v2, 0x2

    invoke-virtual {p0, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 209
    .local v0, m:J
    invoke-virtual {p0, v12, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    add-int/lit8 v2, v7, 0x1

    .line 210
    add-int/lit8 v7, v2, 0x2

    invoke-virtual {p0, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 211
    .local v3, s:J
    invoke-virtual {p0, v12, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    add-int/lit8 v2, v7, 0x1

    .line 212
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v8, v2, 0x2

    if-ge v7, v8, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    :goto_2
    invoke-virtual {p0, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 214
    .local v5, z:J
    const-wide/16 v7, 0x3c

    mul-long/2addr v7, v0

    mul-long v0, v7, v9

    .line 215
    mul-long/2addr v3, v9

    .line 216
    mul-long v7, v5, v9

    const-wide/16 v9, 0x4b

    div-long v5, v7, v9

    .line 218
    add-long v7, v0, v3

    add-long/2addr v7, v5

    goto :goto_0

    .line 212
    .end local v5           #z:J
    :cond_2
    add-int/lit8 v7, v2, 0x2

    goto :goto_2
.end method

.method public static getTrackFromCus(Ljava/lang/String;)I
    .locals 5
    .parameter "cusFilePath"

    .prologue
    .line 116
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-le v3, v4, :cond_0

    .line 117
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v2, v3, -0x4

    .line 118
    .local v2, startIndex:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, fileExt:Ljava/lang/String;
    const-string v3, ".cus"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    add-int/lit8 v2, v2, -0x1

    .line 121
    const/16 v3, 0x2e

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    .line 122
    .local v1, i:I
    if-lez v1, :cond_0

    if-ge v1, v2, :cond_0

    .line 123
    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 127
    .end local v0           #fileExt:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #startIndex:I
    :goto_0
    return v3

    :cond_0
    const/4 v3, -0x1

    goto :goto_0
.end method


# virtual methods
.method public getCuePerformer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Landroid/media/CueHelper;->m_cuePerformer:Ljava/lang/String;

    return-object v0
.end method

.method public getCueTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Landroid/media/CueHelper;->m_cueTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getMusicFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Landroid/media/CueHelper;->m_musicFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getMusicFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Landroid/media/CueHelper;->m_musicFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackCount()I
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Landroid/media/CueHelper;->m_cueTracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTrackInfo(I)Landroid/media/CueHelper$CueTrackInfo;
    .locals 9
    .parameter "track"

    .prologue
    const-wide/32 v7, 0x7fffffff

    const-wide/16 v5, 0x0

    .line 467
    const/4 v3, 0x1

    if-lt p1, v3, :cond_0

    iget-object v3, p0, Landroid/media/CueHelper;->m_cueTracks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le p1, v3, :cond_1

    .line 468
    :cond_0
    const/4 v2, 0x0

    .line 487
    :goto_0
    return-object v2

    .line 470
    :cond_1
    new-instance v2, Landroid/media/CueHelper$CueTrackInfo;

    invoke-direct {v2, p0}, Landroid/media/CueHelper$CueTrackInfo;-><init>(Landroid/media/CueHelper;)V

    .line 471
    .local v2, trackInfo:Landroid/media/CueHelper$CueTrackInfo;
    iget-object v3, p0, Landroid/media/CueHelper;->m_cueTracks:Ljava/util/ArrayList;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/CueHelper$CueTrack;

    iget-wide v3, v3, Landroid/media/CueHelper$CueTrack;->startTime:J

    iput-wide v3, v2, Landroid/media/CueHelper$CueTrackInfo;->startTime:J

    .line 472
    iget-object v3, p0, Landroid/media/CueHelper;->m_cueTracks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne p1, v3, :cond_3

    .line 473
    iput-wide v7, v2, Landroid/media/CueHelper$CueTrackInfo;->endTime:J

    .line 481
    :goto_1
    iget-wide v3, v2, Landroid/media/CueHelper$CueTrackInfo;->endTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 482
    iput-wide v7, v2, Landroid/media/CueHelper$CueTrackInfo;->endTime:J

    .line 485
    :cond_2
    iget-object v3, p0, Landroid/media/CueHelper;->m_cueTracks:Ljava/util/ArrayList;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/CueHelper$CueTrack;

    iget-object v3, v3, Landroid/media/CueHelper$CueTrack;->musicpath:Ljava/lang/String;

    iput-object v3, v2, Landroid/media/CueHelper$CueTrackInfo;->musicFilePath:Ljava/lang/String;

    goto :goto_0

    .line 476
    :cond_3
    iget-object v3, p0, Landroid/media/CueHelper;->m_cueTracks:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/CueHelper$CueTrack;

    iget-wide v0, v3, Landroid/media/CueHelper$CueTrack;->preStart:J

    .line 477
    .local v0, nextPre:J
    cmp-long v3, v0, v5

    if-nez v3, :cond_4

    iget-object v3, p0, Landroid/media/CueHelper;->m_cueTracks:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/CueHelper$CueTrack;

    iget-wide v0, v3, Landroid/media/CueHelper$CueTrack;->startTime:J

    .end local v0           #nextPre:J
    :cond_4
    iput-wide v0, v2, Landroid/media/CueHelper$CueTrackInfo;->endTime:J

    goto :goto_1
.end method

.method public getTrackTag(I)Landroid/media/CueHelper$CueTrackTag;
    .locals 4
    .parameter "track"

    .prologue
    .line 499
    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    iget-object v2, p0, Landroid/media/CueHelper;->m_cueTracks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le p1, v2, :cond_1

    .line 500
    :cond_0
    const/4 v1, 0x0

    .line 507
    :goto_0
    return-object v1

    .line 502
    :cond_1
    iget-object v2, p0, Landroid/media/CueHelper;->m_cueTracks:Ljava/util/ArrayList;

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/CueHelper$CueTrack;

    .line 503
    .local v0, cueTrack:Landroid/media/CueHelper$CueTrack;
    new-instance v1, Landroid/media/CueHelper$CueTrackTag;

    invoke-direct {v1, p0}, Landroid/media/CueHelper$CueTrackTag;-><init>(Landroid/media/CueHelper;)V

    .line 504
    .local v1, trackTag:Landroid/media/CueHelper$CueTrackTag;
    iget-object v2, p0, Landroid/media/CueHelper;->m_cueTitle:Ljava/lang/String;

    iput-object v2, v1, Landroid/media/CueHelper$CueTrackTag;->album:Ljava/lang/String;

    .line 505
    iget-object v2, v0, Landroid/media/CueHelper$CueTrack;->artist:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroid/media/CueHelper$CueTrack;->artist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_4

    :cond_2
    iget-object v2, p0, Landroid/media/CueHelper;->m_cuePerformer:Ljava/lang/String;

    :goto_1
    iput-object v2, v1, Landroid/media/CueHelper$CueTrackTag;->artist:Ljava/lang/String;

    .line 506
    iget-object v2, v0, Landroid/media/CueHelper$CueTrack;->title:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, v0, Landroid/media/CueHelper$CueTrack;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_5

    :cond_3
    iget-object v2, p0, Landroid/media/CueHelper;->m_musicFileName:Ljava/lang/String;

    :goto_2
    iput-object v2, v1, Landroid/media/CueHelper$CueTrackTag;->title:Ljava/lang/String;

    goto :goto_0

    .line 505
    :cond_4
    iget-object v2, v0, Landroid/media/CueHelper$CueTrack;->artist:Ljava/lang/String;

    goto :goto_1

    .line 506
    :cond_5
    iget-object v2, v0, Landroid/media/CueHelper$CueTrack;->title:Ljava/lang/String;

    goto :goto_2
.end method

.method public loadCueFile(Ljava/lang/String;)Z
    .locals 30
    .parameter "filePath"

    .prologue
    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/CueHelper;->m_cueFilePath:Ljava/lang/String;

    move-object/from16 v27, v0

    if-eqz v27, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/CueHelper;->m_cueFilePath:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_0

    .line 249
    const/16 v27, 0x1

    .line 375
    :goto_0
    return v27

    .line 252
    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/media/CueHelper;->clear()V

    .line 254
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v27

    if-nez v27, :cond_2

    .line 255
    :cond_1
    const/16 v27, 0x0

    goto :goto_0

    .line 257
    :cond_2
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 258
    .local v13, file:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v27

    if-eqz v27, :cond_3

    invoke-virtual {v13}, Ljava/io/File;->isFile()Z

    move-result v27

    if-nez v27, :cond_4

    .line 259
    :cond_3
    const/16 v27, 0x0

    goto :goto_0

    .line 262
    :cond_4
    invoke-static {v13}, Landroid/media/CueHelper;->getCharset(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    .line 264
    .local v6, charset:Ljava/lang/String;
    const/16 v24, 0x0

    .line 265
    .local v24, trackCount:I
    new-instance v9, Landroid/media/CueHelper$CueTrack;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/media/CueHelper$CueTrack;-><init>(Landroid/media/CueHelper;)V

    .line 268
    .local v9, cueTrack:Landroid/media/CueHelper$CueTrack;
    :try_start_0
    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 269
    .local v14, fis:Ljava/io/FileInputStream;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v27, Ljava/io/InputStreamReader;

    move-object/from16 v0, v27

    invoke-direct {v0, v14, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 271
    .local v5, br:Ljava/io/BufferedReader;
    const-string v27, "UFT-8"

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_5

    .line 272
    const-wide/16 v27, 0x1

    move-wide/from16 v0, v27

    invoke-virtual {v5, v0, v1}, Ljava/io/BufferedReader;->skip(J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_5
    move-object v10, v9

    .line 278
    .end local v9           #cueTrack:Landroid/media/CueHelper$CueTrack;
    .local v10, cueTrack:Landroid/media/CueHelper$CueTrack;
    :cond_6
    :goto_1
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17

    .local v17, line:Ljava/lang/String;
    if-eqz v17, :cond_12

    .line 279
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v27

    if-eqz v27, :cond_6

    .line 280
    const/16 v19, 0x0

    .line 281
    .local v19, pos1:I
    :goto_2
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v27

    const/16 v28, 0x20

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_7

    .line 282
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 284
    :cond_7
    const/16 v27, 0x20

    add-int/lit8 v28, v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v20

    .line 285
    .local v20, pos2:I
    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    .line 287
    .local v26, word:Ljava/lang/String;
    const-string v27, "INDEX"

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_9

    .line 288
    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/media/CueHelper;->getTime(Ljava/lang/String;I)J

    move-result-wide v22

    .line 289
    .local v22, time:J
    const-wide/16 v27, 0x0

    cmp-long v27, v22, v27

    if-lez v27, :cond_8

    .line 290
    move-wide/from16 v0, v22

    iput-wide v0, v10, Landroid/media/CueHelper$CueTrack;->startTime:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 358
    .end local v17           #line:Ljava/lang/String;
    .end local v19           #pos1:I
    .end local v20           #pos2:I
    .end local v22           #time:J
    .end local v26           #word:Ljava/lang/String;
    :catch_0
    move-exception v12

    move-object v9, v10

    .line 359
    .end local v5           #br:Ljava/io/BufferedReader;
    .end local v10           #cueTrack:Landroid/media/CueHelper$CueTrack;
    .end local v14           #fis:Ljava/io/FileInputStream;
    .restart local v9       #cueTrack:Landroid/media/CueHelper$CueTrack;
    .local v12, e:Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 360
    invoke-direct/range {p0 .. p0}, Landroid/media/CueHelper;->clear()V

    .line 361
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 292
    .end local v9           #cueTrack:Landroid/media/CueHelper$CueTrack;
    .end local v12           #e:Ljava/lang/Exception;
    .restart local v5       #br:Ljava/io/BufferedReader;
    .restart local v10       #cueTrack:Landroid/media/CueHelper$CueTrack;
    .restart local v14       #fis:Ljava/io/FileInputStream;
    .restart local v17       #line:Ljava/lang/String;
    .restart local v19       #pos1:I
    .restart local v20       #pos2:I
    .restart local v22       #time:J
    .restart local v26       #word:Ljava/lang/String;
    :cond_8
    :try_start_2
    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/media/CueHelper;->getPreTime(Ljava/lang/String;I)J

    move-result-wide v22

    .line 293
    const-wide/16 v27, 0x0

    cmp-long v27, v22, v27

    if-lez v27, :cond_6

    .line 294
    move-wide/from16 v0, v22

    iput-wide v0, v10, Landroid/media/CueHelper$CueTrack;->preStart:J

    goto :goto_1

    .line 297
    .end local v22           #time:J
    :cond_9
    const-string v27, "TITLE"

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_b

    .line 298
    if-nez v24, :cond_a

    .line 299
    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/media/CueHelper;->getLineContent(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/CueHelper;->m_cueTitle:Ljava/lang/String;

    goto/16 :goto_1

    .line 301
    :cond_a
    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/media/CueHelper;->getLineContent(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    iput-object v0, v10, Landroid/media/CueHelper$CueTrack;->title:Ljava/lang/String;

    goto/16 :goto_1

    .line 303
    :cond_b
    const-string v27, "PERFORMER"

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_d

    .line 304
    if-nez v24, :cond_c

    .line 305
    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/media/CueHelper;->getLineContent(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/CueHelper;->m_cuePerformer:Ljava/lang/String;

    goto/16 :goto_1

    .line 307
    :cond_c
    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/media/CueHelper;->getLineContent(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    iput-object v0, v10, Landroid/media/CueHelper$CueTrack;->artist:Ljava/lang/String;

    goto/16 :goto_1

    .line 309
    :cond_d
    const-string v27, "TRACK"

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_e

    .line 310
    if-lez v24, :cond_15

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/CueHelper;->m_cueTracks:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    new-instance v9, Landroid/media/CueHelper$CueTrack;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/media/CueHelper$CueTrack;-><init>(Landroid/media/CueHelper;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 314
    .end local v10           #cueTrack:Landroid/media/CueHelper$CueTrack;
    .restart local v9       #cueTrack:Landroid/media/CueHelper$CueTrack;
    :goto_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/CueHelper;->m_musicFilePath:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iput-object v0, v9, Landroid/media/CueHelper$CueTrack;->musicpath:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 315
    add-int/lit8 v24, v24, 0x1

    move-object v10, v9

    .end local v9           #cueTrack:Landroid/media/CueHelper$CueTrack;
    .restart local v10       #cueTrack:Landroid/media/CueHelper$CueTrack;
    goto/16 :goto_1

    .line 316
    :cond_e
    :try_start_4
    const-string v27, "FILE"

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_6

    .line 318
    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/media/CueHelper;->getLineContent(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/CueHelper;->m_musicFileNameWithExt:Ljava/lang/String;

    .line 321
    const/16 v27, 0x2f

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v21

    .line 322
    .local v21, sepPos:I
    if-ltz v21, :cond_f

    .line 323
    const/16 v27, 0x0

    add-int/lit8 v28, v21, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 327
    .local v7, cueDir:Ljava/lang/String;
    :goto_5
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/CueHelper;->m_musicFileNameWithExt:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/CueHelper;->m_musicFilePath:Ljava/lang/String;

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/CueHelper;->m_musicFileNameWithExt:Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x2e

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    .line 330
    .local v11, dotPos:I
    if-lez v11, :cond_10

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/CueHelper;->m_musicFileNameWithExt:Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/CueHelper;->m_musicFileName:Ljava/lang/String;

    .line 336
    :goto_6
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/CueHelper;->m_musicFilePath:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 337
    .local v18, musicFile:Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v27

    if-nez v27, :cond_6

    .line 338
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v27

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v28

    const-string v29, ".cue"

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    sub-int v28, v28, v29

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 339
    .local v8, cueFileName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/CueHelper;->m_musicFileName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_6

    .line 340
    sget-object v3, Landroid/media/CueHelper;->AUDIO_TYPE:[Ljava/lang/String;

    .local v3, arr$:[Ljava/lang/String;
    array-length v0, v3

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v15, 0x0

    .local v15, i$:I
    :goto_7
    move/from16 v0, v16

    if-ge v15, v0, :cond_6

    aget-object v4, v3, v15

    .line 341
    .local v4, audioType:Ljava/lang/String;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 342
    .local v25, tryFile:Ljava/lang/String;
    new-instance v18, Ljava/io/File;

    .end local v18           #musicFile:Ljava/io/File;
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 343
    .restart local v18       #musicFile:Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v27

    if-eqz v27, :cond_11

    .line 344
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/CueHelper;->m_musicFilePath:Ljava/lang/String;

    .line 345
    move-object/from16 v0, p0

    iput-object v8, v0, Landroid/media/CueHelper;->m_musicFileName:Ljava/lang/String;

    .line 346
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/CueHelper;->m_musicFileNameWithExt:Ljava/lang/String;

    goto/16 :goto_1

    .line 325
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v4           #audioType:Ljava/lang/String;
    .end local v7           #cueDir:Ljava/lang/String;
    .end local v8           #cueFileName:Ljava/lang/String;
    .end local v11           #dotPos:I
    .end local v15           #i$:I
    .end local v16           #len$:I
    .end local v18           #musicFile:Ljava/io/File;
    .end local v25           #tryFile:Ljava/lang/String;
    :cond_f
    const-string v7, ""

    .restart local v7       #cueDir:Ljava/lang/String;
    goto/16 :goto_5

    .line 333
    .restart local v11       #dotPos:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/CueHelper;->m_musicFileNameWithExt:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/CueHelper;->m_musicFileName:Ljava/lang/String;

    goto/16 :goto_6

    .line 340
    .restart local v3       #arr$:[Ljava/lang/String;
    .restart local v4       #audioType:Ljava/lang/String;
    .restart local v8       #cueFileName:Ljava/lang/String;
    .restart local v15       #i$:I
    .restart local v16       #len$:I
    .restart local v18       #musicFile:Ljava/io/File;
    .restart local v25       #tryFile:Ljava/lang/String;
    :cond_11
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 356
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v4           #audioType:Ljava/lang/String;
    .end local v7           #cueDir:Ljava/lang/String;
    .end local v8           #cueFileName:Ljava/lang/String;
    .end local v11           #dotPos:I
    .end local v15           #i$:I
    .end local v16           #len$:I
    .end local v18           #musicFile:Ljava/io/File;
    .end local v19           #pos1:I
    .end local v20           #pos2:I
    .end local v21           #sepPos:I
    .end local v25           #tryFile:Ljava/lang/String;
    .end local v26           #word:Ljava/lang/String;
    :cond_12
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/CueHelper;->m_cueTracks:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v27

    move/from16 v1, v24

    if-ge v0, v1, :cond_13

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/CueHelper;->m_cueTracks:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/CueHelper;->m_cueTracks:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    if-gtz v27, :cond_14

    .line 370
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 373
    :cond_14
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/CueHelper;->m_cueFilePath:Ljava/lang/String;

    .line 375
    const/16 v27, 0x1

    goto/16 :goto_0

    .line 358
    .end local v5           #br:Ljava/io/BufferedReader;
    .end local v10           #cueTrack:Landroid/media/CueHelper$CueTrack;
    .end local v14           #fis:Ljava/io/FileInputStream;
    .end local v17           #line:Ljava/lang/String;
    .restart local v9       #cueTrack:Landroid/media/CueHelper$CueTrack;
    :catch_1
    move-exception v12

    goto/16 :goto_3

    .end local v9           #cueTrack:Landroid/media/CueHelper$CueTrack;
    .restart local v5       #br:Ljava/io/BufferedReader;
    .restart local v10       #cueTrack:Landroid/media/CueHelper$CueTrack;
    .restart local v14       #fis:Ljava/io/FileInputStream;
    .restart local v17       #line:Ljava/lang/String;
    .restart local v19       #pos1:I
    .restart local v20       #pos2:I
    .restart local v26       #word:Ljava/lang/String;
    :cond_15
    move-object v9, v10

    .end local v10           #cueTrack:Landroid/media/CueHelper$CueTrack;
    .restart local v9       #cueTrack:Landroid/media/CueHelper$CueTrack;
    goto/16 :goto_4
.end method

.method public makeCusForTrack(I)Ljava/lang/String;
    .locals 2
    .parameter "track"

    .prologue
    .line 511
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Landroid/media/CueHelper;->m_cueTracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 512
    :cond_0
    const/4 v0, 0x0

    .line 514
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/media/CueHelper;->m_cueFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".cus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
