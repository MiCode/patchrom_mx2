.class public Landroid/net/sip/Utility;
.super Ljava/lang/Object;
.source "Utility.java"


# static fields
.field private static DEBUG:Z

.field public static FILE_PATH_WITH_SD:Ljava/lang/String;

.field private static hasSDCard:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Landroid/net/sip/Utility;->hasSDCard:Z

    .line 21
    const/4 v0, 0x1

    sput-boolean v0, Landroid/net/sip/Utility;->DEBUG:Z

    .line 22
    const-string v0, "/sdcard/"

    sput-object v0, Landroid/net/sip/Utility;->FILE_PATH_WITH_SD:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static WriteLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 22
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 85
    sget-boolean v18, Landroid/net/sip/Utility;->DEBUG:Z

    if-eqz v18, :cond_3

    invoke-static {}, Landroid/net/sip/Utility;->checkSDCard()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 87
    :try_start_0
    const-string v10, "/sdcard/SyncLog/"

    .line 88
    .local v10, dirPathStr:Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    .local v9, dirPath:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v18

    if-nez v18, :cond_1

    .line 90
    :cond_0
    invoke-virtual {v9}, Ljava/io/File;->mkdir()Z

    .line 93
    :cond_1
    new-instance v16, Ljava/io/File;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "siplog.txt"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    .local v16, savefile:Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_4

    .line 96
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->createNewFile()Z

    .line 104
    :cond_2
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 105
    .local v2, CD:Ljava/util/Calendar;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 106
    .local v8, YY:I
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v18

    add-int/lit8 v5, v18, 0x1

    .line 107
    .local v5, MM:I
    const/16 v18, 0x5

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 108
    .local v3, DD:I
    const/16 v18, 0xb

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 109
    .local v4, HH:I
    const/16 v18, 0xc

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 110
    .local v6, NN:I
    const/16 v18, 0xd

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 111
    .local v7, SS:I
    const-string v14, ""

    .line 112
    .local v14, logmsg:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 113
    const-string v17, ""

    .line 114
    .local v17, szTime:Ljava/lang/String;
    const-string v18, "%04d-%02d-%02d %02d:%02d:%02d"

    const/16 v19, 0x6

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 116
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 117
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 118
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 119
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\r\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 120
    new-instance v15, Ljava/io/FileOutputStream;

    const/16 v18, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-direct {v15, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 121
    .local v15, out:Ljava/io/FileOutputStream;
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 122
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V

    .line 131
    .end local v2           #CD:Ljava/util/Calendar;
    .end local v3           #DD:I
    .end local v4           #HH:I
    .end local v5           #MM:I
    .end local v6           #NN:I
    .end local v7           #SS:I
    .end local v8           #YY:I
    .end local v9           #dirPath:Ljava/io/File;
    .end local v10           #dirPathStr:Ljava/lang/String;
    .end local v14           #logmsg:Ljava/lang/String;
    .end local v15           #out:Ljava/io/FileOutputStream;
    .end local v16           #savefile:Ljava/io/File;
    .end local v17           #szTime:Ljava/lang/String;
    :cond_3
    :goto_1
    return-void

    .line 98
    .restart local v9       #dirPath:Ljava/io/File;
    .restart local v10       #dirPathStr:Ljava/lang/String;
    .restart local v16       #savefile:Ljava/io/File;
    :cond_4
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v12

    .line 99
    .local v12, length:J
    const-wide/32 v18, 0x200000

    cmp-long v18, v12, v18

    if-lez v18, :cond_2

    .line 100
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 101
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 123
    .end local v9           #dirPath:Ljava/io/File;
    .end local v10           #dirPathStr:Ljava/lang/String;
    .end local v12           #length:J
    .end local v16           #savefile:Ljava/io/File;
    :catch_0
    move-exception v11

    .line 125
    .local v11, e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 126
    .end local v11           #e:Ljava/io/IOException;
    :catch_1
    move-exception v11

    .line 128
    .local v11, e:Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static checkSDCard()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 26
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 27
    sput-boolean v0, Landroid/net/sip/Utility;->hasSDCard:Z

    .line 32
    :goto_0
    return v0

    .line 31
    :cond_0
    sput-boolean v1, Landroid/net/sip/Utility;->hasSDCard:Z

    move v0, v1

    .line 32
    goto :goto_0
.end method

.method public static createPath(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "rootPath"
    .parameter "path"

    .prologue
    const/4 v7, 0x0

    .line 37
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    .local v6, rootFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 39
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v8

    if-nez v8, :cond_2

    .line 64
    :cond_0
    :goto_0
    return v7

    .line 43
    :cond_1
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_2

    .line 44
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 45
    new-instance v6, Ljava/io/File;

    .end local v6           #rootFile:Ljava/io/File;
    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    .restart local v6       #rootFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 52
    :cond_2
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    .local v5, pathFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 54
    const/4 v7, 0x1

    goto :goto_0

    .line 57
    :cond_3
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 58
    .local v1, files:[Ljava/io/File;
    move-object v0, v1

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_5

    aget-object v2, v0, v3

    .line 59
    .local v2, fl:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 60
    invoke-static {v2}, Landroid/net/sip/Utility;->removeFile(Ljava/io/File;)V

    .line 58
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 64
    .end local v2           #fl:Ljava/io/File;
    :cond_5
    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    move-result v7

    goto :goto_0
.end method

.method public static removeFile(Ljava/io/File;)V
    .locals 3
    .parameter "path"

    .prologue
    .line 70
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 72
    .local v0, child:[Ljava/io/File;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-eqz v2, :cond_0

    .line 73
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 74
    aget-object v2, v0, v1

    invoke-static {v2}, Landroid/net/sip/Utility;->removeFile(Ljava/io/File;)V

    .line 75
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    .end local v0           #child:[Ljava/io/File;
    .end local v1           #i:I
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 80
    return-void
.end method
