.class Landroid/media/MediaScanner$MyMediaScannerClient;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Landroid/media/MediaScannerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyMediaScannerClient"
.end annotation


# instance fields
.field private mAlbum:Ljava/lang/String;

.field private mAlbumArtist:Ljava/lang/String;

.field private mArtist:Ljava/lang/String;

.field private mCompilation:I

.field private mComposer:Ljava/lang/String;

.field private mDate:I

.field private mDuration:I

.field private mFileSize:J

.field private mFileType:I

.field private mGenre:Ljava/lang/String;

.field private mHasCover:Z

.field private mHasLyric:Z

.field private mHeight:I

.field private mIsDrm:Z

.field private mLastModified:J

.field private mMimeType:Ljava/lang/String;

.field private mNoMedia:Z

.field private mPath:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mTrack:I

.field private mVideoRotate:I

.field private mWidth:I

.field private mWriter:Ljava/lang/String;

.field private mYear:I

.field final synthetic this$0:Landroid/media/MediaScanner;


# direct methods
.method private constructor <init>(Landroid/media/MediaScanner;)V
    .locals 0
    .parameter

    .prologue
    .line 449
    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaScanner;Landroid/media/MediaScanner$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 449
    invoke-direct {p0, p1}, Landroid/media/MediaScanner$MyMediaScannerClient;-><init>(Landroid/media/MediaScanner;)V

    return-void
.end method

.method private clearMetadata()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 757
    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 758
    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    .line 759
    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    .line 760
    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    .line 761
    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    .line 762
    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    .line 763
    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    .line 764
    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    .line 765
    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDate:I

    .line 766
    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    .line 767
    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWriter:Ljava/lang/String;

    .line 768
    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    .line 769
    iput-boolean v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    .line 770
    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    .line 771
    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    .line 772
    iput-boolean v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHasCover:Z

    .line 773
    iput-boolean v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHasLyric:Z

    .line 774
    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoRotate:I

    .line 775
    return-void
.end method

.method private convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "input"
    .parameter "expected"

    .prologue
    .line 1007
    invoke-virtual {p0, p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->getGenreName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1008
    .local v0, output:Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1009
    const/4 v1, 0x1

    .line 1012
    :goto_0
    return v1

    .line 1011
    :cond_0
    const-string v1, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' -> \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', expected \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "path"
    .parameter "filename"

    .prologue
    const/4 v2, 0x0

    .line 1428
    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 1429
    .local v1, pathFilenameStart:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 1430
    .local v0, filenameLength:I
    invoke-virtual {p1, v1, p2, v2, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int v3, v1, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private endFile(Landroid/media/MediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;
    .locals 34
    .parameter "entry"
    .parameter "ringtones"
    .parameter "notifications"
    .parameter "alarms"
    .parameter "music"
    .parameter "podcasts"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1177
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    move-object/from16 v30, v0

    if-eqz v30, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v30

    if-nez v30, :cond_1

    .line 1178
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 1181
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner$MyMediaScannerClient;->toValues()Landroid/content/ContentValues;

    move-result-object v29

    .line 1182
    .local v29, values:Landroid/content/ContentValues;
    const-string/jumbo v30, "title"

    invoke-virtual/range {v29 .. v30}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1183
    .local v28, title:Ljava/lang/String;
    if-eqz v28, :cond_2

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_3

    .line 1184
    :cond_2
    const-string v30, "_data"

    invoke-virtual/range {v29 .. v30}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/media/MediaFile;->getFileTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1185
    const-string/jumbo v30, "title"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    :cond_3
    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    move-wide/from16 v23, v0

    .line 1208
    .local v23, rowId:J
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v30

    if-eqz v30, :cond_1a

    .line 1213
    const-string v30, "is_ringtone"

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1214
    const-string v30, "is_notification"

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1215
    const-string v30, "is_alarm"

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1216
    const-string v30, "is_music"

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1217
    const-string v30, "is_podcast"

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1270
    :cond_4
    :goto_0
    const/4 v13, 0x0

    .line 1271
    .local v13, isAudio:Z
    const/4 v15, 0x0

    .line 1272
    .local v15, isVideo:Z
    const/4 v14, 0x0

    .line 1273
    .local v14, isImage:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v30, v0

    #getter for: Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;
    invoke-static/range {v30 .. v30}, Landroid/media/MediaScanner;->access$2000(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v25

    .line 1274
    .local v25, tableUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v30, v0

    #getter for: Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;
    invoke-static/range {v30 .. v30}, Landroid/media/MediaScanner;->access$900(Landroid/media/MediaScanner;)Landroid/media/MediaInserter;

    move-result-object v12

    .line 1275
    .local v12, inserter:Landroid/media/MediaInserter;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    move/from16 v30, v0

    if-nez v30, :cond_5

    .line 1276
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v30

    if-eqz v30, :cond_1e

    .line 1277
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v30, v0

    #getter for: Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;
    invoke-static/range {v30 .. v30}, Landroid/media/MediaScanner;->access$2100(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v25

    .line 1278
    const/4 v15, 0x1

    .line 1287
    :cond_5
    :goto_1
    const/16 v22, 0x0

    .line 1288
    .local v22, result:Landroid/net/Uri;
    const/16 v20, 0x0

    .line 1289
    .local v20, needToSetSettings:Z
    const/4 v6, 0x0

    .line 1290
    .local v6, defaultNotifSound:Z
    const/16 v19, 0x0

    .line 1291
    .local v19, mmsSound:Z
    const/16 v17, 0x0

    .line 1292
    .local v17, mailSound:Z
    const/4 v5, 0x0

    .line 1294
    .local v5, calendarSound:Z
    const-wide/16 v30, 0x0

    cmp-long v30, v23, v30

    if-nez v30, :cond_26

    .line 1295
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v30, v0

    #getter for: Landroid/media/MediaScanner;->mMtpObjectHandle:I
    invoke-static/range {v30 .. v30}, Landroid/media/MediaScanner;->access$1500(Landroid/media/MediaScanner;)I

    move-result v30

    if-eqz v30, :cond_6

    .line 1296
    const-string/jumbo v30, "media_scanner_new_object_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v31, v0

    #getter for: Landroid/media/MediaScanner;->mMtpObjectHandle:I
    invoke-static/range {v31 .. v31}, Landroid/media/MediaScanner;->access$1500(Landroid/media/MediaScanner;)I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1298
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v30, v0

    #getter for: Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;
    invoke-static/range {v30 .. v30}, Landroid/media/MediaScanner;->access$2000(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v30

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_8

    .line 1299
    move-object/from16 v0, p1

    iget v11, v0, Landroid/media/MediaScanner$FileEntry;->mFormat:I

    .line 1300
    .local v11, format:I
    if-nez v11, :cond_7

    .line 1301
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-static/range {v30 .. v31}, Landroid/media/MediaFile;->getFormatCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 1303
    :cond_7
    const-string v30, "format"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1306
    .end local v11           #format:I
    :cond_8
    if-eqz v13, :cond_9

    .line 1307
    const-string/jumbo v30, "played_times"

    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1309
    :cond_9
    if-nez v15, :cond_a

    if-eqz v14, :cond_b

    .line 1310
    :cond_a
    invoke-virtual/range {v25 .. v25}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v30

    const-string v31, "forbid_generate"

    sget-object v32, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v30 .. v32}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v25

    .line 1317
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v30, v0

    #getter for: Landroid/media/MediaScanner;->mWasEmptyPriorToScan:Z
    invoke-static/range {v30 .. v30}, Landroid/media/MediaScanner;->access$2300(Landroid/media/MediaScanner;)Z

    move-result v30

    if-eqz v30, :cond_13

    .line 1318
    if-eqz p3, :cond_20

    .line 1319
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v30, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultNotificationSet:Z
    invoke-static/range {v30 .. v30}, Landroid/media/MediaScanner;->access$2400(Landroid/media/MediaScanner;)Z

    move-result v30

    if-nez v30, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v30, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Landroid/media/MediaScanner;->access$2500(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_c

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v31, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Landroid/media/MediaScanner;->access$2500(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_d

    .line 1321
    :cond_c
    const/16 v20, 0x1

    .line 1322
    const/4 v6, 0x1

    .line 1324
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v30, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultMmsSet:Z
    invoke-static/range {v30 .. v30}, Landroid/media/MediaScanner;->access$2600(Landroid/media/MediaScanner;)Z

    move-result v30

    if-nez v30, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v30, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultMmsFilename:Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Landroid/media/MediaScanner;->access$2700(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_e

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v31, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultMmsFilename:Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Landroid/media/MediaScanner;->access$2700(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_f

    .line 1326
    :cond_e
    const/16 v20, 0x1

    .line 1327
    const/16 v19, 0x1

    .line 1329
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v30, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultMailSet:Z
    invoke-static/range {v30 .. v30}, Landroid/media/MediaScanner;->access$2800(Landroid/media/MediaScanner;)Z

    move-result v30

    if-nez v30, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v30, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultMailFilename:Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Landroid/media/MediaScanner;->access$2900(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_10

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v31, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultMailFilename:Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Landroid/media/MediaScanner;->access$2900(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_11

    .line 1331
    :cond_10
    const/16 v20, 0x1

    .line 1332
    const/16 v17, 0x1

    .line 1334
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v30, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultCanlendarSet:Z
    invoke-static/range {v30 .. v30}, Landroid/media/MediaScanner;->access$3000(Landroid/media/MediaScanner;)Z

    move-result v30

    if-nez v30, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v30, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultCanlendarFilename:Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Landroid/media/MediaScanner;->access$3100(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_12

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v31, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultCanlendarFilename:Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Landroid/media/MediaScanner;->access$3100(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_13

    .line 1336
    :cond_12
    const/16 v20, 0x1

    .line 1337
    const/4 v5, 0x1

    .line 1357
    :cond_13
    :goto_2
    if-eqz v12, :cond_14

    if-eqz v20, :cond_24

    .line 1358
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v30, v0

    #getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static/range {v30 .. v30}, Landroid/media/MediaScanner;->access$600(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v22

    .line 1365
    :goto_3
    if-eqz v22, :cond_15

    .line 1366
    invoke-static/range {v22 .. v22}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v23

    .line 1367
    move-wide/from16 v0, v23

    move-object/from16 v2, p1

    iput-wide v0, v2, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    .line 1397
    :cond_15
    :goto_4
    if-eqz v20, :cond_19

    if-eqz p3, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner$Injector;->setAllSettingsIfNotSet(Landroid/media/MediaScanner;Landroid/media/MediaScanner$FileEntry;ZZZ)V

    if-eqz v19, :cond_16

    .line 1400
    const-string/jumbo v30, "mms_sound"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v25

    move-wide/from16 v3, v23

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1401
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    #setter for: Landroid/media/MediaScanner;->mDefaultMmsSet:Z
    invoke-static/range {v30 .. v31}, Landroid/media/MediaScanner;->access$2602(Landroid/media/MediaScanner;Z)Z

    .line 1403
    :cond_16
    if-eqz v17, :cond_17

    .line 1404
    const-string v30, "email_sound"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v25

    move-wide/from16 v3, v23

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1405
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    #setter for: Landroid/media/MediaScanner;->mDefaultMailSet:Z
    invoke-static/range {v30 .. v31}, Landroid/media/MediaScanner;->access$2802(Landroid/media/MediaScanner;Z)Z

    .line 1407
    :cond_17
    if-eqz v5, :cond_18

    .line 1408
    const-string v30, "calendar_sound"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v25

    move-wide/from16 v3, v23

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1409
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    #setter for: Landroid/media/MediaScanner;->mDefaultCanlendarSet:Z
    invoke-static/range {v30 .. v31}, Landroid/media/MediaScanner;->access$3002(Landroid/media/MediaScanner;Z)Z

    .line 1411
    :cond_18
    if-eqz v6, :cond_19

    .line 1412
    const-string/jumbo v30, "notification_sound"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v25

    move-wide/from16 v3, v23

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1413
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    #setter for: Landroid/media/MediaScanner;->mDefaultNotificationSet:Z
    invoke-static/range {v30 .. v31}, Landroid/media/MediaScanner;->access$2402(Landroid/media/MediaScanner;Z)Z

    .line 1424
    :cond_19
    :goto_5
    return-object v22

    .line 1218
    .end local v5           #calendarSound:Z
    .end local v6           #defaultNotifSound:Z
    .end local v12           #inserter:Landroid/media/MediaInserter;
    .end local v13           #isAudio:Z
    .end local v14           #isImage:Z
    .end local v15           #isVideo:Z
    .end local v17           #mailSound:Z
    .end local v19           #mmsSound:Z
    .end local v20           #needToSetSettings:Z
    .end local v22           #result:Landroid/net/Uri;
    .end local v25           #tableUri:Landroid/net/Uri;
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move/from16 v30, v0

    const/16 v31, 0x1f

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    move/from16 v30, v0

    if-nez v30, :cond_4

    .line 1219
    const/4 v8, 0x0

    .line 1221
    .local v8, exif:Landroid/media/ExifInterface;
    :try_start_0
    new-instance v9, Landroid/media/ExifInterface;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-direct {v9, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v8           #exif:Landroid/media/ExifInterface;
    .local v9, exif:Landroid/media/ExifInterface;
    move-object v8, v9

    .line 1225
    .end local v9           #exif:Landroid/media/ExifInterface;
    .restart local v8       #exif:Landroid/media/ExifInterface;
    :goto_6
    if-eqz v8, :cond_4

    .line 1226
    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [F

    move-object/from16 v16, v0

    .line 1227
    .local v16, latlng:[F
    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/media/ExifInterface;->getLatLong([F)Z

    move-result v30

    if-eqz v30, :cond_1b

    .line 1228
    const-string v30, "latitude"

    const/16 v31, 0x0

    aget v31, v16, v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1229
    const-string v30, "longitude"

    const/16 v31, 0x1

    aget v31, v16, v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1232
    :cond_1b
    invoke-virtual {v8}, Landroid/media/ExifInterface;->getGpsDateTime()J

    move-result-wide v26

    .line 1233
    .local v26, time:J
    const-wide/16 v30, -0x1

    cmp-long v30, v26, v30

    if-eqz v30, :cond_1d

    .line 1234
    const-string v30, "datetaken"

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1246
    :cond_1c
    :goto_7
    const-string v30, "Orientation"

    const/16 v31, -0x1

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v8, v0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v21

    .line 1248
    .local v21, orientation:I
    const/16 v30, -0x1

    move/from16 v0, v21

    move/from16 v1, v30

    if-eq v0, v1, :cond_4

    .line 1251
    packed-switch v21, :pswitch_data_0

    .line 1262
    :pswitch_0
    const/4 v7, 0x0

    .line 1265
    .local v7, degree:I
    :goto_8
    const-string/jumbo v30, "orientation"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 1240
    .end local v7           #degree:I
    .end local v21           #orientation:I
    :cond_1d
    invoke-virtual {v8}, Landroid/media/ExifInterface;->getDateTime()J

    move-result-wide v26

    .line 1241
    const-wide/16 v30, -0x1

    cmp-long v30, v26, v30

    if-eqz v30, :cond_1c

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x3e8

    mul-long v30, v30, v32

    sub-long v30, v30, v26

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->abs(J)J

    move-result-wide v30

    const-wide/32 v32, 0x5265c00

    cmp-long v30, v30, v32

    if-ltz v30, :cond_1c

    .line 1242
    const-string v30, "datetaken"

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_7

    .line 1253
    .restart local v21       #orientation:I
    :pswitch_1
    const/16 v7, 0x5a

    .line 1254
    .restart local v7       #degree:I
    goto :goto_8

    .line 1256
    .end local v7           #degree:I
    :pswitch_2
    const/16 v7, 0xb4

    .line 1257
    .restart local v7       #degree:I
    goto :goto_8

    .line 1259
    .end local v7           #degree:I
    :pswitch_3
    const/16 v7, 0x10e

    .line 1260
    .restart local v7       #degree:I
    goto :goto_8

    .line 1279
    .end local v7           #degree:I
    .end local v8           #exif:Landroid/media/ExifInterface;
    .end local v16           #latlng:[F
    .end local v21           #orientation:I
    .end local v26           #time:J
    .restart local v12       #inserter:Landroid/media/MediaInserter;
    .restart local v13       #isAudio:Z
    .restart local v14       #isImage:Z
    .restart local v15       #isVideo:Z
    .restart local v25       #tableUri:Landroid/net/Uri;
    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v30

    if-eqz v30, :cond_1f

    .line 1280
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v30, v0

    #getter for: Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;
    invoke-static/range {v30 .. v30}, Landroid/media/MediaScanner;->access$2200(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v25

    .line 1281
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 1282
    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v30

    if-eqz v30, :cond_5

    .line 1283
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v30, v0

    #getter for: Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;
    invoke-static/range {v30 .. v30}, Landroid/media/MediaScanner;->access$1400(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v25

    .line 1284
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 1339
    .restart local v5       #calendarSound:Z
    .restart local v6       #defaultNotifSound:Z
    .restart local v17       #mailSound:Z
    .restart local v19       #mmsSound:Z
    .restart local v20       #needToSetSettings:Z
    .restart local v22       #result:Landroid/net/Uri;
    :cond_20
    if-eqz p2, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v30, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z
    invoke-static/range {v30 .. v30}, Landroid/media/MediaScanner;->access$3200(Landroid/media/MediaScanner;)Z

    move-result v30

    if-nez v30, :cond_22

    .line 1340
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v30, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Landroid/media/MediaScanner;->access$3300(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_21

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v31, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Landroid/media/MediaScanner;->access$3300(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_13

    .line 1342
    :cond_21
    const/16 v20, 0x1

    goto/16 :goto_2

    .line 1344
    :cond_22
    if-eqz p4, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v30, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultAlarmSet:Z
    invoke-static/range {v30 .. v30}, Landroid/media/MediaScanner;->access$3400(Landroid/media/MediaScanner;)Z

    move-result v30

    if-nez v30, :cond_13

    .line 1345
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v30, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Landroid/media/MediaScanner;->access$3500(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_23

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v31, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Landroid/media/MediaScanner;->access$3500(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_13

    .line 1347
    :cond_23
    const/16 v20, 0x1

    goto/16 :goto_2

    .line 1359
    :cond_24
    move-object/from16 v0, p1

    iget v0, v0, Landroid/media/MediaScanner$FileEntry;->mFormat:I

    move/from16 v30, v0

    const/16 v31, 0x3001

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_25

    .line 1360
    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Landroid/media/MediaInserter;->insertwithPriority(Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto/16 :goto_3

    .line 1362
    :cond_25
    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Landroid/media/MediaInserter;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto/16 :goto_3

    .line 1371
    :cond_26
    move-object/from16 v0, v25

    move-wide/from16 v1, v23

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v22

    .line 1374
    if-nez v15, :cond_27

    if-eqz v14, :cond_28

    .line 1375
    :cond_27
    const-string/jumbo v30, "mini_thumb_magic"

    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1379
    :cond_28
    const/16 v18, 0x0

    .line 1380
    .local v18, mediaType:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_2a

    .line 1381
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v10

    .line 1382
    .local v10, fileType:I
    invoke-static {v10}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v30

    if-eqz v30, :cond_2b

    .line 1383
    const/16 v18, 0x2

    .line 1391
    :cond_29
    :goto_9
    const-string/jumbo v30, "media_type"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1394
    .end local v10           #fileType:I
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v30, v0

    #getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static/range {v30 .. v30}, Landroid/media/MediaScanner;->access$600(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v30

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    move-object/from16 v2, v29

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1384
    .restart local v10       #fileType:I
    :cond_2b
    invoke-static {v10}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v30

    if-eqz v30, :cond_2c

    .line 1385
    const/16 v18, 0x3

    goto :goto_9

    .line 1386
    :cond_2c
    invoke-static {v10}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v30

    if-eqz v30, :cond_2d

    .line 1387
    const/16 v18, 0x1

    goto :goto_9

    .line 1388
    :cond_2d
    invoke-static {v10}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v30

    if-eqz v30, :cond_29

    .line 1389
    const/16 v18, 0x4

    goto :goto_9

    .line 1415
    .end local v10           #fileType:I
    .end local v18           #mediaType:I
    :cond_2e
    if-eqz p2, :cond_2f

    .line 1416
    const-string/jumbo v30, "ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v25

    move-wide/from16 v3, v23

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1417
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    #setter for: Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z
    invoke-static/range {v30 .. v31}, Landroid/media/MediaScanner;->access$3202(Landroid/media/MediaScanner;Z)Z

    goto/16 :goto_5

    .line 1418
    :cond_2f
    if-eqz p4, :cond_19

    .line 1419
    const-string v30, "alarm_alert"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v25

    move-wide/from16 v3, v23

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1420
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    #setter for: Landroid/media/MediaScanner;->mDefaultAlarmSet:Z
    invoke-static/range {v30 .. v31}, Landroid/media/MediaScanner;->access$3402(Landroid/media/MediaScanner;Z)Z

    goto/16 :goto_5

    .line 1222
    .end local v5           #calendarSound:Z
    .end local v6           #defaultNotifSound:Z
    .end local v12           #inserter:Landroid/media/MediaInserter;
    .end local v13           #isAudio:Z
    .end local v14           #isImage:Z
    .end local v15           #isVideo:Z
    .end local v17           #mailSound:Z
    .end local v19           #mmsSound:Z
    .end local v20           #needToSetSettings:Z
    .end local v22           #result:Landroid/net/Uri;
    .end local v25           #tableUri:Landroid/net/Uri;
    .restart local v8       #exif:Landroid/media/ExifInterface;
    :catch_0
    move-exception v30

    goto/16 :goto_6

    .line 1251
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getFileTypeFromDrm(Ljava/lang/String;)I
    .locals 5
    .parameter "path"

    .prologue
    .line 1447
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #calls: Landroid/media/MediaScanner;->isDrmEnabled()Z
    invoke-static {v2}, Landroid/media/MediaScanner;->access$200(Landroid/media/MediaScanner;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1448
    const/4 v1, 0x0

    .line 1464
    :cond_0
    :goto_0
    return v1

    .line 1451
    :cond_1
    const/4 v1, 0x0

    .line 1453
    .local v1, resultFileType:I
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v2}, Landroid/media/MediaScanner;->access$3700(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1454
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    new-instance v3, Landroid/drm/DrmManagerClient;

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$3600(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    #setter for: Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v2, v3}, Landroid/media/MediaScanner;->access$3702(Landroid/media/MediaScanner;Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient;

    .line 1457
    :cond_2
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v2}, Landroid/media/MediaScanner;->access$3700(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1458
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v2}, Landroid/media/MediaScanner;->access$3700(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1459
    .local v0, drmMimetype:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1460
    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 1461
    invoke-static {v0}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method private parseDate(Ljava/lang/String;)I
    .locals 20
    .parameter "dateStr"

    .prologue
    .line 853
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 854
    const/4 v11, 0x0

    .line 948
    :goto_0
    return v11

    .line 856
    :cond_0
    const/16 v16, 0x0

    .line 857
    .local v16, year:I
    const/4 v12, 0x0

    .line 858
    .local v12, month:I
    const/4 v2, 0x0

    .line 859
    .local v2, day:I
    const/4 v7, -0x1

    .line 860
    .local v7, f:I
    const/4 v14, -0x1

    .line 861
    .local v14, s:I
    const/4 v6, -0x1

    .line 863
    .local v6, end:I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    .line 865
    .local v9, len:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v9, :cond_4

    .line 866
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->isDigit(C)Z

    move-result v18

    if-nez v18, :cond_1

    .line 867
    if-gez v7, :cond_2

    .line 868
    move v7, v8

    .line 865
    :cond_1
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 869
    :cond_2
    if-gez v14, :cond_3

    .line 870
    move v14, v8

    goto :goto_2

    .line 871
    :cond_3
    if-gez v6, :cond_4

    .line 872
    move v6, v8

    goto :goto_2

    .line 879
    :cond_4
    if-nez v7, :cond_6

    .line 947
    :cond_5
    :goto_3
    move/from16 v0, v16

    mul-int/lit16 v0, v0, 0x2710

    move/from16 v18, v0

    mul-int/lit8 v19, v12, 0x64

    add-int v18, v18, v19

    add-int v11, v18, v2

    .line 948
    .local v11, merge:I
    goto :goto_0

    .line 881
    .end local v11           #merge:I
    :cond_6
    if-gez v7, :cond_9

    .line 882
    const/16 v17, 0x0

    .line 883
    .local v17, ys:I
    const/16 v18, 0x4

    :try_start_0
    move/from16 v0, v18

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 884
    .local v15, ye:I
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 885
    if-ge v15, v9, :cond_8

    .line 886
    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 887
    .local v13, ms:I
    const/16 v18, 0x6

    move/from16 v0, v18

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 888
    .local v10, me:I
    const/16 v18, 0x6

    move/from16 v0, v18

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 889
    .local v4, ds:I
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 890
    .local v3, de:I
    if-eq v13, v10, :cond_7

    .line 892
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v12

    .line 898
    :cond_7
    :goto_4
    if-eq v4, v3, :cond_5

    .line 900
    :try_start_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v2

    goto :goto_3

    .line 894
    :catch_0
    move-exception v5

    .line 895
    .local v5, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    .line 944
    .end local v3           #de:I
    .end local v4           #ds:I
    .end local v5           #e:Ljava/lang/Exception;
    .end local v10           #me:I
    .end local v13           #ms:I
    .end local v15           #ye:I
    .end local v17           #ys:I
    :catch_1
    move-exception v5

    .line 945
    .restart local v5       #e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 902
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v3       #de:I
    .restart local v4       #ds:I
    .restart local v10       #me:I
    .restart local v13       #ms:I
    .restart local v15       #ye:I
    .restart local v17       #ys:I
    :catch_2
    move-exception v5

    .line 903
    .restart local v5       #e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 907
    .end local v3           #de:I
    .end local v4           #ds:I
    .end local v5           #e:Ljava/lang/Exception;
    .end local v10           #me:I
    .end local v13           #ms:I
    :cond_8
    const/4 v12, 0x0

    .line 908
    const/4 v2, 0x0

    goto :goto_3

    .line 910
    .end local v15           #ye:I
    .end local v17           #ys:I
    :cond_9
    if-gez v14, :cond_b

    .line 911
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 912
    add-int/lit8 v18, v7, 0x1

    move/from16 v0, v18

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 913
    .restart local v13       #ms:I
    add-int/lit8 v18, v7, 0x3

    move/from16 v0, v18

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result v10

    .line 914
    .restart local v10       #me:I
    if-eq v13, v10, :cond_a

    .line 916
    :try_start_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-result v12

    .line 921
    :cond_a
    :goto_5
    const/4 v2, 0x0

    .line 922
    goto/16 :goto_3

    .line 917
    :catch_3
    move-exception v5

    .line 918
    .restart local v5       #e:Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 923
    .end local v5           #e:Ljava/lang/Exception;
    .end local v10           #me:I
    .end local v13           #ms:I
    :cond_b
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-result v16

    .line 925
    add-int/lit8 v18, v7, 0x1

    :try_start_7
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    move-result v12

    .line 929
    :goto_6
    add-int/lit8 v18, v14, 0x1

    :try_start_8
    move/from16 v0, v18

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 931
    .restart local v4       #ds:I
    if-lez v6, :cond_c

    .line 932
    add-int/lit8 v18, v14, 0x3

    move/from16 v0, v18

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    move-result v3

    .line 936
    .restart local v3       #de:I
    :goto_7
    if-eq v4, v3, :cond_5

    .line 938
    :try_start_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    move-result v2

    goto/16 :goto_3

    .line 926
    .end local v3           #de:I
    .end local v4           #ds:I
    :catch_4
    move-exception v5

    .line 927
    .restart local v5       #e:Ljava/lang/Exception;
    :try_start_a
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 934
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v4       #ds:I
    :cond_c
    add-int/lit8 v18, v14, 0x3

    move/from16 v0, v18

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v3

    .restart local v3       #de:I
    goto :goto_7

    .line 939
    :catch_5
    move-exception v5

    .line 940
    .restart local v5       #e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_3
.end method

.method private parseSubstring(Ljava/lang/String;II)I
    .locals 8
    .parameter "s"
    .parameter "start"
    .parameter "defaultValue"

    .prologue
    const/16 v7, 0x39

    const/16 v6, 0x30

    .line 835
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 836
    .local v1, length:I
    if-ne p2, v1, :cond_0

    .line 849
    .end local p3
    :goto_0
    return p3

    .line 838
    .restart local p3
    :cond_0
    add-int/lit8 v3, p2, 0x1

    .end local p2
    .local v3, start:I
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 840
    .local v0, ch:C
    if-lt v0, v6, :cond_1

    if-le v0, v7, :cond_2

    :cond_1
    move p2, v3

    .end local v3           #start:I
    .restart local p2
    goto :goto_0

    .line 842
    .end local p2
    .restart local v3       #start:I
    :cond_2
    add-int/lit8 v2, v0, -0x30

    .line 843
    .local v2, result:I
    :goto_1
    if-ge v3, v1, :cond_5

    .line 844
    add-int/lit8 p2, v3, 0x1

    .end local v3           #start:I
    .restart local p2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 845
    if-lt v0, v6, :cond_3

    if-le v0, v7, :cond_4

    :cond_3
    move p3, v2

    goto :goto_0

    .line 846
    :cond_4
    mul-int/lit8 v4, v2, 0xa

    add-int/lit8 v5, v0, -0x30

    add-int v2, v4, v5

    move v3, p2

    .end local p2
    .restart local v3       #start:I
    goto :goto_1

    :cond_5
    move p2, v3

    .end local v3           #start:I
    .restart local p2
    move p3, v2

    .line 849
    goto :goto_0
.end method

.method private processCuePlaylist(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 49
    .parameter "path"
    .parameter "cueFilePath"
    .parameter "playlistUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 559
    new-instance v13, Landroid/media/CueHelper;

    invoke-direct {v13}, Landroid/media/CueHelper;-><init>()V

    .line 560
    .local v13, cue:Landroid/media/CueHelper;
    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/media/CueHelper;->loadCueFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 563
    invoke-virtual {v13}, Landroid/media/CueHelper;->getMusicFilePath()Ljava/lang/String;

    move-result-object v33

    .line 564
    .local v33, musicFilePath:Ljava/lang/String;
    if-eqz v33, :cond_0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_1

    .line 565
    :cond_0
    const/4 v4, 0x0

    .line 753
    .end local v33           #musicFilePath:Ljava/lang/String;
    :goto_0
    return v4

    .line 567
    .restart local v33       #musicFilePath:Ljava/lang/String;
    :cond_1
    new-instance v32, Ljava/io/File;

    invoke-direct/range {v32 .. v33}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 568
    .local v32, musicFile:Ljava/io/File;
    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 569
    const/4 v4, 0x0

    goto :goto_0

    .line 571
    :cond_2
    if-nez p3, :cond_8

    .line 572
    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 573
    const/4 v4, 0x0

    goto :goto_0

    .line 577
    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v23

    .line 578
    .local v23, key:Ljava/lang/String;
    const/4 v2, 0x0

    .line 579
    .local v2, entry:Landroid/media/MediaScanner$FileEntry;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mPlaylists:Ljava/util/Map;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$400(Landroid/media/MediaScanner;)Ljava/util/Map;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #entry:Landroid/media/MediaScanner$FileEntry;
    check-cast v2, Landroid/media/MediaScanner$FileEntry;

    .line 580
    .restart local v2       #entry:Landroid/media/MediaScanner$FileEntry;
    if-nez v2, :cond_4

    .line 581
    new-instance v2, Landroid/media/MediaScanner$FileEntry;

    .end local v2           #entry:Landroid/media/MediaScanner$FileEntry;
    const-wide/16 v3, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v5, p2

    invoke-direct/range {v2 .. v8}, Landroid/media/MediaScanner$FileEntry;-><init>(JLjava/lang/String;JI)V

    .line 584
    .restart local v2       #entry:Landroid/media/MediaScanner$FileEntry;
    :cond_4
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 585
    .local v14, cueFile:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    const-wide/16 v7, 0x3e8

    div-long v24, v4, v7

    .line 586
    .local v24, lastModified:J
    iget-wide v4, v2, Landroid/media/MediaScanner$FileEntry;->mLastModified:J

    sub-long v16, v24, v4

    .line 587
    .local v16, delta:J
    iget-boolean v4, v2, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    if-nez v4, :cond_5

    const-wide/16 v4, 0x1

    cmp-long v4, v16, v4

    if-gtz v4, :cond_5

    const-wide/16 v4, -0x1

    cmp-long v4, v16, v4

    if-ltz v4, :cond_5

    .line 588
    const/4 v4, 0x1

    goto :goto_0

    .line 591
    :cond_5
    move-wide/from16 v0, v24

    iput-wide v0, v2, Landroid/media/MediaScanner$FileEntry;->mLastModified:J

    .line 592
    const/4 v4, 0x0

    iput-boolean v4, v2, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    .line 595
    new-instance v28, Landroid/content/ContentValues;

    invoke-direct/range {v28 .. v28}, Landroid/content/ContentValues;-><init>()V

    .line 597
    .local v28, listValues:Landroid/content/ContentValues;
    iget-wide v0, v2, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    move-wide/from16 v37, v0

    .line 598
    .local v37, playlistId:J
    const-wide/16 v4, 0x0

    cmp-long v4, v37, v4

    if-nez v4, :cond_9

    .line 599
    invoke-virtual {v13}, Landroid/media/CueHelper;->getMusicFileName()Ljava/lang/String;

    move-result-object v36

    .line 601
    .local v36, name:Ljava/lang/String;
    :try_start_0
    invoke-static/range {v36 .. v36}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "cdimage"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 602
    :cond_6
    const/16 v4, 0x2f

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v26

    .line 603
    .local v26, lidx:I
    if-lez v26, :cond_7

    .line 604
    const/4 v4, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 605
    .local v18, dir:Ljava/lang/String;
    const/16 v4, 0x2f

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v26

    .line 606
    if-lez v26, :cond_7

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v4

    move/from16 v0, v26

    if-ge v0, v4, :cond_7

    .line 607
    add-int/lit8 v4, v26, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v36

    .line 614
    .end local v18           #dir:Ljava/lang/String;
    .end local v26           #lidx:I
    :cond_7
    :goto_1
    const-string/jumbo v4, "name"

    move-object/from16 v0, v28

    move-object/from16 v1, v36

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    const-string v4, "_data"

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    const-string v4, "date_modified"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 617
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$600(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-interface {v4, v5, v0}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v44

    .line 618
    .local v44, uri:Landroid/net/Uri;
    invoke-static/range {v44 .. v44}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v37

    .line 619
    const-string/jumbo v4, "members"

    move-object/from16 v0, v44

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 634
    .end local v2           #entry:Landroid/media/MediaScanner$FileEntry;
    .end local v14           #cueFile:Ljava/io/File;
    .end local v16           #delta:J
    .end local v23           #key:Ljava/lang/String;
    .end local v24           #lastModified:J
    .end local v28           #listValues:Landroid/content/ContentValues;
    .end local v36           #name:Ljava/lang/String;
    .end local v37           #playlistId:J
    .end local v44           #uri:Landroid/net/Uri;
    :cond_8
    :goto_2
    invoke-static/range {v33 .. v33}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v30

    .line 635
    .local v30, mediaFileType:Landroid/media/MediaFile$MediaFileType;
    if-nez v30, :cond_a

    .line 636
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 611
    .end local v30           #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    .restart local v2       #entry:Landroid/media/MediaScanner$FileEntry;
    .restart local v14       #cueFile:Ljava/io/File;
    .restart local v16       #delta:J
    .restart local v23       #key:Ljava/lang/String;
    .restart local v24       #lastModified:J
    .restart local v28       #listValues:Landroid/content/ContentValues;
    .restart local v36       #name:Ljava/lang/String;
    .restart local v37       #playlistId:J
    :catch_0
    move-exception v19

    .line 612
    .local v19, e:Ljava/lang/Exception;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 621
    .end local v19           #e:Ljava/lang/Exception;
    .end local v36           #name:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v4

    move-wide/from16 v0, v37

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v44

    .line 624
    .restart local v44       #uri:Landroid/net/Uri;
    const-string v4, "date_modified"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 625
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$600(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, v28

    invoke-interface {v4, v0, v1, v5, v7}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 628
    const-string/jumbo v4, "members"

    move-object/from16 v0, v44

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 629
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$600(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p3

    invoke-interface {v4, v0, v5, v7}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    .line 639
    .end local v2           #entry:Landroid/media/MediaScanner$FileEntry;
    .end local v14           #cueFile:Ljava/io/File;
    .end local v16           #delta:J
    .end local v23           #key:Ljava/lang/String;
    .end local v24           #lastModified:J
    .end local v28           #listValues:Landroid/content/ContentValues;
    .end local v37           #playlistId:J
    .end local v44           #uri:Landroid/net/Uri;
    .restart local v30       #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    :cond_a
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner$MyMediaScannerClient;->clearMetadata()V

    .line 640
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v0, v30

    iget-object v5, v0, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    #calls: Landroid/media/MediaScanner;->processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    invoke-static {v4, v0, v5, v1}, Landroid/media/MediaScanner;->access$700(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    .line 641
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_c

    .line 642
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 644
    :cond_c
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 645
    .local v11, artistFromMusic:Ljava/lang/String;
    if-eqz v11, :cond_d

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_e

    .line 646
    :cond_d
    invoke-virtual {v13}, Landroid/media/CueHelper;->getCuePerformer()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 647
    invoke-virtual {v13}, Landroid/media/CueHelper;->getCuePerformer()Ljava/lang/String;

    move-result-object v11

    .line 652
    :cond_e
    :goto_3
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    .line 653
    .local v10, albumFromMusic:Ljava/lang/String;
    if-eqz v10, :cond_f

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_10

    .line 654
    :cond_f
    invoke-virtual {v13}, Landroid/media/CueHelper;->getCueTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 655
    invoke-virtual {v13}, Landroid/media/CueHelper;->getCueTitle()Ljava/lang/String;

    move-result-object v11

    .line 660
    :cond_10
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    move-object/from16 v43, v0

    .line 661
    .local v43, titleFromMusic:Ljava/lang/String;
    if-eqz v43, :cond_11

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_12

    .line 662
    :cond_11
    invoke-virtual {v13}, Landroid/media/CueHelper;->getMusicFileName()Ljava/lang/String;

    move-result-object v43

    .line 665
    :cond_12
    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    const-wide/16 v7, 0x3e8

    div-long v34, v4, v7

    .line 666
    .local v34, musicLastModified:J
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    move/from16 v46, v0

    .line 670
    .local v46, year:I
    const/16 v39, 0x0

    .line 672
    .local v39, result:Landroid/net/Uri;
    invoke-virtual {v13}, Landroid/media/CueHelper;->getTrackCount()I

    move-result v12

    .line 673
    .local v12, count:I
    new-array v0, v12, [Landroid/content/ContentValues;

    move-object/from16 v27, v0

    .line 675
    .local v27, listItems:[Landroid/content/ContentValues;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v29

    .line 676
    .local v29, lowpath:Ljava/lang/String;
    invoke-static {}, Landroid/media/MediaScanner;->access$800()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    .line 677
    .local v31, music:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$900(Landroid/media/MediaScanner;)Landroid/media/MediaInserter;

    move-result-object v22

    .line 679
    .local v22, inserter:Landroid/media/MediaInserter;
    const/16 v20, 0x1

    .local v20, i:I
    :goto_5
    move/from16 v0, v20

    if-gt v0, v12, :cond_1e

    .line 681
    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/media/CueHelper;->makeCusForTrack(I)Ljava/lang/String;

    move-result-object v6

    .line 683
    .local v6, cusFilePath:Ljava/lang/String;
    move-object v15, v6

    .line 684
    .local v15, cusKey:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z
    invoke-static {v4}, Landroid/media/MediaScanner;->access$1000(Landroid/media/MediaScanner;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 685
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    .line 687
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mCusEntries:Ljava/util/Map;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$1100(Landroid/media/MediaScanner;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaScanner$FileEntry;

    .line 688
    .local v3, cusEntry:Landroid/media/MediaScanner$FileEntry;
    if-nez v3, :cond_14

    .line 689
    new-instance v3, Landroid/media/MediaScanner$FileEntry;

    .end local v3           #cusEntry:Landroid/media/MediaScanner$FileEntry;
    const-wide/16 v4, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Landroid/media/MediaScanner$FileEntry;-><init>(JLjava/lang/String;JI)V

    .line 690
    .restart local v3       #cusEntry:Landroid/media/MediaScanner$FileEntry;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mCusEntries:Ljava/util/Map;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$1100(Landroid/media/MediaScanner;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    :cond_14
    iget-wide v0, v3, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    move-wide/from16 v40, v0

    .line 695
    .local v40, rowId:J
    const-wide/16 v4, 0x0

    cmp-long v4, v40, v4

    if-nez v4, :cond_17

    .line 697
    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/media/CueHelper;->getTrackTag(I)Landroid/media/CueHelper$CueTrackTag;

    move-result-object v42

    .line 698
    .local v42, tag:Landroid/media/CueHelper$CueTrackTag;
    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/media/CueHelper;->getTrackInfo(I)Landroid/media/CueHelper$CueTrackInfo;

    move-result-object v21

    .line 700
    .local v21, info:Landroid/media/CueHelper$CueTrackInfo;
    new-instance v45, Landroid/content/ContentValues;

    invoke-direct/range {v45 .. v45}, Landroid/content/ContentValues;-><init>()V

    .line 702
    .local v45, values:Landroid/content/ContentValues;
    const-string v4, "_data"

    move-object/from16 v0, v45

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    const-string/jumbo v5, "title"

    move-object/from16 v0, v42

    iget-object v4, v0, Landroid/media/CueHelper$CueTrackTag;->title:Ljava/lang/String;

    if-eqz v4, :cond_1a

    move-object/from16 v0, v42

    iget-object v4, v0, Landroid/media/CueHelper$CueTrackTag;->title:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1a

    move-object/from16 v0, v42

    iget-object v4, v0, Landroid/media/CueHelper$CueTrackTag;->title:Ljava/lang/String;

    :goto_6
    move-object/from16 v0, v45

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    const-string v4, "date_modified"

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v45

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 705
    const-string v4, "_size"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v45

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 706
    const-string/jumbo v4, "mime_type"

    const-string v5, "audio/cus"

    move-object/from16 v0, v45

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mProcessGenres:Z
    invoke-static {v4}, Landroid/media/MediaScanner;->access$1200(Landroid/media/MediaScanner;)Z

    move-result v4

    if-eqz v4, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$1300(Landroid/media/MediaScanner;)Landroid/media/MediaScanner$MyMediaScannerClient;

    move-result-object v4

    iget-object v4, v4, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    if-eqz v4, :cond_15

    .line 708
    const-string v4, "genre"

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$1300(Landroid/media/MediaScanner;)Landroid/media/MediaScanner$MyMediaScannerClient;

    move-result-object v5

    iget-object v5, v5, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    move-object/from16 v0, v45

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    :cond_15
    const-string v5, "album_artist"

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1b

    move-object v4, v11

    :goto_7
    move-object/from16 v0, v45

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    const-string v5, "artist"

    move-object/from16 v0, v42

    iget-object v4, v0, Landroid/media/CueHelper$CueTrackTag;->artist:Ljava/lang/String;

    if-eqz v4, :cond_1c

    move-object/from16 v0, v42

    iget-object v4, v0, Landroid/media/CueHelper$CueTrackTag;->artist:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1c

    move-object/from16 v0, v42

    iget-object v4, v0, Landroid/media/CueHelper$CueTrackTag;->artist:Ljava/lang/String;

    :goto_8
    move-object/from16 v0, v45

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    const-string v5, "album"

    move-object/from16 v0, v42

    iget-object v4, v0, Landroid/media/CueHelper$CueTrackTag;->album:Ljava/lang/String;

    if-eqz v4, :cond_1d

    move-object/from16 v0, v42

    iget-object v4, v0, Landroid/media/CueHelper$CueTrackTag;->album:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1d

    move-object/from16 v0, v42

    iget-object v4, v0, Landroid/media/CueHelper$CueTrackTag;->album:Ljava/lang/String;

    :goto_9
    move-object/from16 v0, v45

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    const-string v4, "composer"

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$1300(Landroid/media/MediaScanner;)Landroid/media/MediaScanner$MyMediaScannerClient;

    move-result-object v5

    iget-object v5, v5, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    move-object/from16 v0, v45

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    if-eqz v46, :cond_16

    .line 715
    const-string/jumbo v4, "year"

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v45

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 717
    :cond_16
    const-string/jumbo v4, "track"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v45

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 718
    const-string v4, "duration"

    move-object/from16 v0, v21

    iget-wide v7, v0, Landroid/media/CueHelper$CueTrackInfo;->endTime:J

    move-object/from16 v0, v21

    iget-wide v0, v0, Landroid/media/CueHelper$CueTrackInfo;->startTime:J

    move-wide/from16 v47, v0

    sub-long v7, v7, v47

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v45

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 720
    const-string/jumbo v4, "played_times"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v45

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 721
    const-string v4, "has_cover"

    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHasCover:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v45

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 722
    const-string v4, "has_lyric"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v45

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 724
    const-string v4, "is_ringtone"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v45

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 725
    const-string v4, "is_notification"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v45

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 726
    const-string v4, "is_alarm"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v45

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 727
    const-string v4, "is_music"

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v45

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 728
    const-string v4, "is_podcast"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v45

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 730
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$600(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$1400(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, v45

    invoke-interface {v4, v5, v0}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v39

    .line 732
    if-eqz v39, :cond_17

    .line 733
    invoke-static/range {v39 .. v39}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v40

    .line 737
    .end local v21           #info:Landroid/media/CueHelper$CueTrackInfo;
    .end local v42           #tag:Landroid/media/CueHelper$CueTrackTag;
    .end local v45           #values:Landroid/content/ContentValues;
    :cond_17
    add-int/lit8 v4, v20, -0x1

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    aput-object v5, v27, v4

    .line 738
    add-int/lit8 v4, v20, -0x1

    aget-object v4, v27, v4

    const-string/jumbo v5, "play_order"

    add-int/lit8 v7, v20, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 739
    add-int/lit8 v4, v20, -0x1

    aget-object v4, v27, v4

    const-string v5, "audio_id"

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 679
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_5

    .line 649
    .end local v3           #cusEntry:Landroid/media/MediaScanner$FileEntry;
    .end local v6           #cusFilePath:Ljava/lang/String;
    .end local v10           #albumFromMusic:Ljava/lang/String;
    .end local v12           #count:I
    .end local v15           #cusKey:Ljava/lang/String;
    .end local v20           #i:I
    .end local v22           #inserter:Landroid/media/MediaInserter;
    .end local v27           #listItems:[Landroid/content/ContentValues;
    .end local v29           #lowpath:Ljava/lang/String;
    .end local v31           #music:Z
    .end local v34           #musicLastModified:J
    .end local v39           #result:Landroid/net/Uri;
    .end local v40           #rowId:J
    .end local v43           #titleFromMusic:Ljava/lang/String;
    .end local v46           #year:I
    :cond_18
    const-string v11, "<unknown>"

    goto/16 :goto_3

    .line 657
    .restart local v10       #albumFromMusic:Ljava/lang/String;
    :cond_19
    const-string v10, "<unknown>"

    goto/16 :goto_4

    .restart local v3       #cusEntry:Landroid/media/MediaScanner$FileEntry;
    .restart local v6       #cusFilePath:Ljava/lang/String;
    .restart local v12       #count:I
    .restart local v15       #cusKey:Ljava/lang/String;
    .restart local v20       #i:I
    .restart local v21       #info:Landroid/media/CueHelper$CueTrackInfo;
    .restart local v22       #inserter:Landroid/media/MediaInserter;
    .restart local v27       #listItems:[Landroid/content/ContentValues;
    .restart local v29       #lowpath:Ljava/lang/String;
    .restart local v31       #music:Z
    .restart local v34       #musicLastModified:J
    .restart local v39       #result:Landroid/net/Uri;
    .restart local v40       #rowId:J
    .restart local v42       #tag:Landroid/media/CueHelper$CueTrackTag;
    .restart local v43       #titleFromMusic:Ljava/lang/String;
    .restart local v45       #values:Landroid/content/ContentValues;
    .restart local v46       #year:I
    :cond_1a
    move-object/from16 v4, v43

    .line 703
    goto/16 :goto_6

    .line 710
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    goto/16 :goto_7

    :cond_1c
    move-object v4, v11

    .line 711
    goto/16 :goto_8

    :cond_1d
    move-object v4, v10

    .line 712
    goto/16 :goto_9

    .line 743
    .end local v3           #cusEntry:Landroid/media/MediaScanner$FileEntry;
    .end local v6           #cusFilePath:Ljava/lang/String;
    .end local v15           #cusKey:Ljava/lang/String;
    .end local v21           #info:Landroid/media/CueHelper$CueTrackInfo;
    .end local v40           #rowId:J
    .end local v42           #tag:Landroid/media/CueHelper$CueTrackTag;
    .end local v45           #values:Landroid/content/ContentValues;
    :cond_1e
    if-eqz v22, :cond_1f

    .line 744
    const/16 v20, 0x0

    :goto_a
    move/from16 v0, v20

    if-ge v0, v12, :cond_20

    .line 745
    aget-object v4, v27, v20

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/media/MediaInserter;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 744
    add-int/lit8 v20, v20, 0x1

    goto :goto_a

    .line 748
    :cond_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$600(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v4

    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-interface {v4, v0, v1}, Landroid/content/IContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 751
    :cond_20
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 753
    .end local v10           #albumFromMusic:Ljava/lang/String;
    .end local v11           #artistFromMusic:Ljava/lang/String;
    .end local v12           #count:I
    .end local v20           #i:I
    .end local v22           #inserter:Landroid/media/MediaInserter;
    .end local v27           #listItems:[Landroid/content/ContentValues;
    .end local v29           #lowpath:Ljava/lang/String;
    .end local v30           #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    .end local v31           #music:Z
    .end local v32           #musicFile:Ljava/io/File;
    .end local v33           #musicFilePath:Ljava/lang/String;
    .end local v34           #musicLastModified:J
    .end local v39           #result:Landroid/net/Uri;
    .end local v43           #titleFromMusic:Ljava/lang/String;
    .end local v46           #year:I
    :cond_21
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method private processImageFile(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 1088
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$1900(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1089
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$1900(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1090
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$1900(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1091
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$1900(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    .line 1092
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$1900(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1096
    :goto_0
    return-void

    .line 1093
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V
    .locals 3
    .parameter "settingName"
    .parameter "uri"
    .parameter "rowId"

    .prologue
    .line 1436
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$3600(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1439
    .local v0, existingSettingValue:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1441
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$3600(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p2, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1444
    :cond_0
    return-void
.end method

.method private testGenreNameConverter()V
    .locals 2

    .prologue
    .line 1016
    const-string v0, "2"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1017
    const-string v0, "(2)"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1018
    const-string v0, "(2"

    const-string v1, "(2"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1019
    const-string v0, "2 Foo"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1020
    const-string v0, "(2) Foo"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1021
    const-string v0, "(2 Foo"

    const-string v1, "(2 Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1022
    const-string v0, "2Foo"

    const-string v1, "2Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1023
    const-string v0, "(2)Foo"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1024
    const-string v0, "200 Foo"

    const-string v1, "Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1025
    const-string v0, "(200) Foo"

    const-string v1, "Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1026
    const-string v0, "200Foo"

    const-string v1, "200Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1027
    const-string v0, "(200)Foo"

    const-string v1, "Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1028
    const-string v0, "200)Foo"

    const-string v1, "200)Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1029
    const-string v0, "200) Foo"

    const-string v1, "200) Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1030
    return-void
.end method

.method private toValues()Landroid/content/ContentValues;
    .locals 5

    .prologue
    .line 1117
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1119
    .local v0, map:Landroid/content/ContentValues;
    const-string v2, "_data"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    const-string/jumbo v2, "title"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    const-string v2, "date_modified"

    iget-wide v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1122
    const-string v2, "_size"

    iget-wide v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileSize:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1123
    const-string/jumbo v2, "mime_type"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    const-string v2, "is_drm"

    iget-boolean v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1126
    const/4 v1, 0x0

    .line 1127
    .local v1, resolution:Ljava/lang/String;
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    if-lez v2, :cond_0

    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    if-lez v2, :cond_0

    .line 1128
    const-string/jumbo v2, "width"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1129
    const-string v2, "height"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1133
    :cond_0
    iget-boolean v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-nez v2, :cond_2

    .line 1134
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v2}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1135
    const-string v3, "artist"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    const-string v3, "album"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    const-string v2, "duration"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1140
    if-eqz v1, :cond_1

    .line 1141
    const-string/jumbo v2, "resolution"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    :cond_1
    const-string/jumbo v2, "orientation"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoRotate:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1168
    :cond_2
    :goto_2
    return-object v0

    .line 1135
    :cond_3
    const-string v2, "<unknown>"

    goto :goto_0

    .line 1137
    :cond_4
    const-string v2, "<unknown>"

    goto :goto_1

    .line 1144
    :cond_5
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v2}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1146
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v2}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1147
    const-string v3, "artist"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    :goto_3
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    const-string v3, "album_artist"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_9

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    :goto_4
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    const-string v3, "album"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_a

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    :goto_5
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    const-string v2, "composer"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    const-string v2, "genre"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    if-eqz v2, :cond_6

    .line 1156
    const-string/jumbo v2, "year"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1158
    :cond_6
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDate:I

    if-eqz v2, :cond_7

    .line 1159
    const-string v2, "date"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDate:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1161
    :cond_7
    const-string/jumbo v2, "track"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1162
    const-string v2, "duration"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1163
    const-string v2, "compilation"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1164
    const-string v2, "has_cover"

    iget-boolean v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHasCover:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1165
    const-string v2, "has_lyric"

    iget-boolean v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHasLyric:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_2

    .line 1147
    :cond_8
    const-string v2, "<unknown>"

    goto/16 :goto_3

    .line 1149
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 1151
    :cond_a
    const-string v2, "<unknown>"

    goto :goto_5
.end method


# virtual methods
.method public beginFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/media/MediaScanner$FileEntry;
    .locals 15
    .parameter "path"
    .parameter "mimeType"
    .parameter "lastModified"
    .parameter "fileSize"
    .parameter "isDirectory"
    .parameter "noMedia"

    .prologue
    .line 478
    move-object/from16 v0, p2

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 479
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 480
    move-wide/from16 v0, p5

    iput-wide v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileSize:J

    .line 482
    if-nez p7, :cond_4

    .line 483
    if-nez p8, :cond_0

    #calls: Landroid/media/MediaScanner;->isNoMediaFile(Ljava/lang/String;)Z
    invoke-static/range {p1 .. p1}, Landroid/media/MediaScanner;->access$100(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 484
    const/16 p8, 0x1

    .line 486
    :cond_0
    move/from16 v0, p8

    iput-boolean v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    .line 489
    if-eqz p2, :cond_1

    .line 490
    invoke-static/range {p2 .. p2}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 494
    :cond_1
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    if-nez v3, :cond_2

    .line 495
    invoke-static/range {p1 .. p1}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v13

    .line 496
    .local v13, mediaFileType:Landroid/media/MediaFile$MediaFileType;
    if-eqz v13, :cond_2

    .line 497
    iget v3, v13, Landroid/media/MediaFile$MediaFileType;->fileType:I

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 498
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 499
    iget-object v3, v13, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 504
    .end local v13           #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    :cond_2
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 505
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Landroid/media/CueHelper;->getCueFromMusic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 506
    .local v9, cueFilePath:Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 508
    :try_start_0
    const-string v3, "MediaScanner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "beginFile, processCuePlaylist:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v9, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->processCuePlaylist(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_3

    .line 510
    const/4 v2, 0x0

    .line 553
    .end local v9           #cueFilePath:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 512
    .restart local v9       #cueFilePath:Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 513
    .local v12, e:Landroid/os/RemoteException;
    const-string v3, "MediaScanner"

    const-string v4, "RemoteException in MyMediaScannerClient.beginFile()"

    invoke-static {v3, v4, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 518
    .end local v9           #cueFilePath:Ljava/lang/String;
    .end local v12           #e:Landroid/os/RemoteException;
    :cond_3
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #calls: Landroid/media/MediaScanner;->isDrmEnabled()Z
    invoke-static {v3}, Landroid/media/MediaScanner;->access$200(Landroid/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isDrmFileType(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 519
    invoke-direct/range {p0 .. p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->getFileTypeFromDrm(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 523
    :cond_4
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mProcessPlaylists:Z
    invoke-static {v3}, Landroid/media/MediaScanner;->access$300(Landroid/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 525
    const/4 v2, 0x0

    goto :goto_0

    .line 528
    :cond_5
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/media/MediaScanner;->makeEntryFor(Ljava/lang/String;)Landroid/media/MediaScanner$FileEntry;

    move-result-object v2

    .line 530
    .local v2, entry:Landroid/media/MediaScanner$FileEntry;
    if-eqz v2, :cond_9

    iget-wide v3, v2, Landroid/media/MediaScanner$FileEntry;->mLastModified:J

    sub-long v10, p3, v3

    .line 531
    .local v10, delta:J
    :goto_1
    const-wide/16 v3, 0x1

    cmp-long v3, v10, v3

    if-gtz v3, :cond_6

    const-wide/16 v3, -0x1

    cmp-long v3, v10, v3

    if-gez v3, :cond_a

    :cond_6
    const/4 v14, 0x1

    .line 532
    .local v14, wasModified:Z
    :goto_2
    if-eqz v2, :cond_7

    if-eqz v14, :cond_8

    .line 533
    :cond_7
    if-eqz v14, :cond_b

    .line 534
    move-wide/from16 v0, p3

    iput-wide v0, v2, Landroid/media/MediaScanner$FileEntry;->mLastModified:J

    .line 539
    :goto_3
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    .line 549
    :cond_8
    invoke-direct {p0}, Landroid/media/MediaScanner$MyMediaScannerClient;->clearMetadata()V

    .line 550
    move-object/from16 v0, p1

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    .line 551
    move-wide/from16 v0, p3

    iput-wide v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    goto :goto_0

    .line 530
    .end local v10           #delta:J
    .end local v14           #wasModified:Z
    :cond_9
    const-wide/16 v10, 0x0

    goto :goto_1

    .line 531
    .restart local v10       #delta:J
    :cond_a
    const/4 v14, 0x0

    goto :goto_2

    .line 536
    .restart local v14       #wasModified:Z
    :cond_b
    new-instance v2, Landroid/media/MediaScanner$FileEntry;

    .end local v2           #entry:Landroid/media/MediaScanner$FileEntry;
    const-wide/16 v3, 0x0

    if-eqz p7, :cond_c

    const/16 v8, 0x3001

    :goto_4
    move-object/from16 v5, p1

    move-wide/from16 v6, p3

    invoke-direct/range {v2 .. v8}, Landroid/media/MediaScanner$FileEntry;-><init>(JLjava/lang/String;JI)V

    .restart local v2       #entry:Landroid/media/MediaScanner$FileEntry;
    goto :goto_3

    .end local v2           #entry:Landroid/media/MediaScanner$FileEntry;
    :cond_c
    const/4 v8, 0x0

    goto :goto_4
.end method

.method public doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    .locals 12
    .parameter "path"
    .parameter "mimeType"
    .parameter "lastModified"
    .parameter "fileSize"
    .parameter "isDirectory"
    .parameter "scanAlways"
    .parameter "noMedia"

    .prologue
    .line 787
    const/4 v11, 0x0

    .local v11, result:Landroid/net/Uri;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move/from16 v8, p9

    .line 790
    :try_start_0
    invoke-virtual/range {v0 .. v8}, Landroid/media/MediaScanner$MyMediaScannerClient;->beginFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/media/MediaScanner$FileEntry;

    move-result-object v1

    .line 796
    .local v1, entry:Landroid/media/MediaScanner$FileEntry;
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mMtpObjectHandle:I
    invoke-static {v0}, Landroid/media/MediaScanner;->access$1500(Landroid/media/MediaScanner;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 797
    const-wide/16 v7, 0x0

    iput-wide v7, v1, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    .line 800
    :cond_0
    if-eqz v1, :cond_2

    iget-boolean v0, v1, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    if-nez v0, :cond_1

    if-eqz p8, :cond_2

    .line 801
    :cond_1
    if-eqz p9, :cond_3

    .line 802
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/media/MediaScanner$MyMediaScannerClient;->endFile(Landroid/media/MediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;

    move-result-object v11

    .line 831
    .end local v1           #entry:Landroid/media/MediaScanner$FileEntry;
    :cond_2
    :goto_0
    return-object v11

    .line 804
    .restart local v1       #entry:Landroid/media/MediaScanner$FileEntry;
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .line 805
    .local v10, lowpath:Ljava/lang/String;
    invoke-static {}, Landroid/media/MediaScanner;->access$1600()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "/ringtones/"

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_5

    :cond_4
    invoke-static {}, Landroid/media/MediaScanner;->access$1700()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_5
    const/4 v2, 0x1

    .line 808
    .local v2, ringtones:Z
    :goto_1
    const-string v0, "/notifications/"

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_a

    const/4 v3, 0x1

    .line 809
    .local v3, notifications:Z
    :goto_2
    const-string v0, "/alarms/"

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_b

    const/4 v4, 0x1

    .line 810
    .local v4, alarms:Z
    :goto_3
    const-string v0, "/podcasts/"

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_c

    const/4 v6, 0x1

    .line 811
    .local v6, podcasts:Z
    :goto_4
    invoke-static {}, Landroid/media/MediaScanner;->access$800()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    .line 814
    .local v5, music:Z
    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v0}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v0

    if-nez v0, :cond_6

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v0}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 816
    :cond_6
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #calls: Landroid/media/MediaScanner;->processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    invoke-static {v0, p1, p2, p0}, Landroid/media/MediaScanner;->access$700(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    .line 819
    :cond_7
    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v0}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 820
    invoke-direct {p0, p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->processImageFile(Ljava/lang/String;)V

    :cond_8
    move-object v0, p0

    .line 823
    invoke-direct/range {v0 .. v6}, Landroid/media/MediaScanner$MyMediaScannerClient;->endFile(Landroid/media/MediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    goto :goto_0

    .line 805
    .end local v2           #ringtones:Z
    .end local v3           #notifications:Z
    .end local v4           #alarms:Z
    .end local v5           #music:Z
    .end local v6           #podcasts:Z
    :cond_9
    const/4 v2, 0x0

    goto :goto_1

    .line 808
    .restart local v2       #ringtones:Z
    :cond_a
    const/4 v3, 0x0

    goto :goto_2

    .line 809
    .restart local v3       #notifications:Z
    :cond_b
    const/4 v4, 0x0

    goto :goto_3

    .line 810
    .restart local v4       #alarms:Z
    :cond_c
    const/4 v6, 0x0

    goto :goto_4

    .line 826
    .end local v1           #entry:Landroid/media/MediaScanner$FileEntry;
    .end local v2           #ringtones:Z
    .end local v3           #notifications:Z
    .end local v4           #alarms:Z
    .end local v10           #lowpath:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 827
    .local v9, e:Landroid/os/RemoteException;
    const-string v0, "MediaScanner"

    const-string v7, "RemoteException in MediaScanner.scanFile()"

    invoke-static {v0, v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getGenreName(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "genreTagValue"

    .prologue
    const/4 v7, 0x0

    const/16 v10, 0xff

    const/16 v9, 0x29

    .line 1034
    if-nez p1, :cond_1

    .line 1083
    :cond_0
    :goto_0
    return-object v7

    .line 1037
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 1039
    .local v4, length:I
    if-lez v4, :cond_9

    .line 1040
    const/4 v6, 0x0

    .line 1041
    .local v6, parenthesized:Z
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 1042
    .local v5, number:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .line 1043
    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 1044
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1045
    .local v0, c:C
    if-nez v3, :cond_2

    const/16 v8, 0x28

    if-ne v0, v8, :cond_2

    .line 1046
    const/4 v6, 0x1

    .line 1043
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1047
    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1048
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1053
    .end local v0           #c:C
    :cond_3
    if-ge v3, v4, :cond_6

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1054
    .local v1, charAfterNumber:C
    :goto_3
    if-eqz v6, :cond_4

    if-eq v1, v9, :cond_5

    :cond_4
    if-nez v6, :cond_9

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1057
    :cond_5
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v2

    .line 1058
    .local v2, genreIndex:S
    if-ltz v2, :cond_9

    .line 1059
    invoke-static {}, Landroid/media/MediaScanner;->access$1800()[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-ge v2, v8, :cond_7

    .line 1060
    invoke-static {}, Landroid/media/MediaScanner;->access$1800()[Ljava/lang/String;

    move-result-object v8

    aget-object v7, v8, v2

    goto :goto_0

    .line 1053
    .end local v1           #charAfterNumber:C
    .end local v2           #genreIndex:S
    :cond_6
    const/16 v1, 0x20

    goto :goto_3

    .line 1061
    .restart local v1       #charAfterNumber:C
    .restart local v2       #genreIndex:S
    :cond_7
    if-eq v2, v10, :cond_0

    .line 1063
    if-ge v2, v10, :cond_a

    add-int/lit8 v8, v3, 0x1

    if-ge v8, v4, :cond_a

    .line 1066
    if-eqz v6, :cond_8

    if-ne v1, v9, :cond_8

    .line 1067
    add-int/lit8 v3, v3, 0x1

    .line 1069
    :cond_8
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 1070
    .local v7, ret:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_0

    .end local v1           #charAfterNumber:C
    .end local v2           #genreIndex:S
    .end local v3           #i:I
    .end local v5           #number:Ljava/lang/StringBuffer;
    .end local v6           #parenthesized:Z
    .end local v7           #ret:Ljava/lang/String;
    :cond_9
    :goto_4
    move-object v7, p1

    .line 1083
    goto :goto_0

    .line 1075
    .restart local v1       #charAfterNumber:C
    .restart local v2       #genreIndex:S
    .restart local v3       #i:I
    .restart local v5       #number:Ljava/lang/StringBuffer;
    .restart local v6       #parenthesized:Z
    :cond_a
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .line 1078
    .end local v2           #genreIndex:S
    :catch_0
    move-exception v8

    goto :goto_4
.end method

.method public handleStringTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "name"
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 952
    const-string/jumbo v3, "title"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "title;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 956
    :cond_0
    iput-object p2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    .line 1004
    :cond_1
    :goto_0
    return-void

    .line 957
    :cond_2
    const-string v3, "artist"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "artist;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 958
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    goto :goto_0

    .line 959
    :cond_4
    const-string v3, "albumartist"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "albumartist;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "band"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "band;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 961
    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    goto :goto_0

    .line 962
    :cond_6
    const-string v3, "album"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "album;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 963
    :cond_7
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    goto :goto_0

    .line 964
    :cond_8
    const-string v3, "composer"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "composer;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 965
    :cond_9
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    goto :goto_0

    .line 966
    :cond_a
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mProcessGenres:Z
    invoke-static {v3}, Landroid/media/MediaScanner;->access$1200(Landroid/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "genre"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "genre;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 968
    :cond_b
    invoke-virtual {p0, p2}, Landroid/media/MediaScanner$MyMediaScannerClient;->getGenreName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    goto/16 :goto_0

    .line 969
    :cond_c
    const-string/jumbo v3, "year"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string/jumbo v3, "year;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 970
    :cond_d
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    .line 971
    invoke-direct {p0, p2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseDate(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDate:I

    goto/16 :goto_0

    .line 972
    :cond_e
    const-string/jumbo v3, "tracknumber"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string/jumbo v3, "tracknumber;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 975
    :cond_f
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v0

    .line 976
    .local v0, num:I
    iget v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    div-int/lit16 v1, v1, 0x3e8

    mul-int/lit16 v1, v1, 0x3e8

    add-int/2addr v1, v0

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    goto/16 :goto_0

    .line 977
    .end local v0           #num:I
    :cond_10
    const-string v3, "discnumber"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string/jumbo v3, "set"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string/jumbo v3, "set;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 981
    :cond_11
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v0

    .line 982
    .restart local v0       #num:I
    mul-int/lit16 v1, v0, 0x3e8

    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    rem-int/lit16 v2, v2, 0x3e8

    add-int/2addr v1, v2

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    goto/16 :goto_0

    .line 983
    .end local v0           #num:I
    :cond_12
    const-string v3, "duration"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 984
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    goto/16 :goto_0

    .line 985
    :cond_13
    const-string/jumbo v3, "writer"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    const-string/jumbo v3, "writer;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 986
    :cond_14
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWriter:Ljava/lang/String;

    goto/16 :goto_0

    .line 987
    :cond_15
    const-string v3, "compilation"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 988
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    goto/16 :goto_0

    .line 989
    :cond_16
    const-string v3, "isdrm"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 990
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_17

    :goto_1
    iput-boolean v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    goto/16 :goto_0

    :cond_17
    move v1, v2

    goto :goto_1

    .line 991
    :cond_18
    const-string v3, "hascover"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_19

    const-string v3, "hascover;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 992
    :cond_19
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_1a

    :goto_2
    iput-boolean v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHasCover:Z

    goto/16 :goto_0

    :cond_1a
    move v1, v2

    goto :goto_2

    .line 993
    :cond_1b
    const-string v3, "haslyric"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1c

    const-string v3, "haslyric;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 994
    :cond_1c
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_1d

    :goto_3
    iput-boolean v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHasLyric:Z

    goto/16 :goto_0

    :cond_1d
    move v1, v2

    goto :goto_3

    .line 995
    :cond_1e
    const-string/jumbo v1, "video_rotate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string/jumbo v1, "video_rotate;"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 996
    :cond_1f
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoRotate:I

    goto/16 :goto_0

    .line 997
    :cond_20
    const-string/jumbo v1, "width"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 998
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    goto/16 :goto_0

    .line 999
    :cond_21
    const-string v1, "height"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1000
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    goto/16 :goto_0
.end method

.method public scanFile(Ljava/lang/String;JJZZ)V
    .locals 10
    .parameter "path"
    .parameter "lastModified"
    .parameter "fileSize"
    .parameter "isDirectory"
    .parameter "noMedia"

    .prologue
    .line 782
    const/4 v2, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    move/from16 v7, p6

    move/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;

    .line 783
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 2
    .parameter "mimeType"

    .prologue
    .line 1099
    const-string v0, "audio/mp4"

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1108
    :goto_0
    return-void

    .line 1106
    :cond_0
    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 1107
    invoke-static {p1}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    goto :goto_0
.end method
