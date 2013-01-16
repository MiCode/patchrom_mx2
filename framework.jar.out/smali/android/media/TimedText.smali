.class public final Landroid/media/TimedText;
.super Ljava/lang/Object;
.source "TimedText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/TimedText$HyperText;,
        Landroid/media/TimedText$Karaoke;,
        Landroid/media/TimedText$Font;,
        Landroid/media/TimedText$Style;,
        Landroid/media/TimedText$Justification;,
        Landroid/media/TimedText$CharPos;
    }
.end annotation


# static fields
.field private static final FIRST_PRIVATE_KEY:I = 0x65

.field private static final FIRST_PUBLIC_KEY:I = 0x1

.field private static final KEY_BACKGROUND_COLOR_RGBA:I = 0x3

.field private static final KEY_DISPLAY_FLAGS:I = 0x1

.field private static final KEY_END_CHAR:I = 0x68

.field private static final KEY_FONT_ID:I = 0x69

.field private static final KEY_FONT_SIZE:I = 0x6a

.field private static final KEY_GLOBAL_SETTING:I = 0x65

.field private static final KEY_HIGHLIGHT_COLOR_RGBA:I = 0x4

.field private static final KEY_LOCAL_SETTING:I = 0x66

.field private static final KEY_SCROLL_DELAY:I = 0x5

.field private static final KEY_START_CHAR:I = 0x67

.field private static final KEY_START_TIME:I = 0x7

.field private static final KEY_STRUCT_BLINKING_TEXT_LIST:I = 0x8

.field private static final KEY_STRUCT_FONT_LIST:I = 0x9

.field private static final KEY_STRUCT_HIGHLIGHT_LIST:I = 0xa

.field private static final KEY_STRUCT_HYPER_TEXT_LIST:I = 0xb

.field private static final KEY_STRUCT_JUSTIFICATION:I = 0xf

.field private static final KEY_STRUCT_KARAOKE_LIST:I = 0xc

.field private static final KEY_STRUCT_STYLE_LIST:I = 0xd

.field private static final KEY_STRUCT_TEXT:I = 0x10

.field private static final KEY_STRUCT_TEXT_POS:I = 0xe

.field private static final KEY_STRUCT_WSTRING:I = 0x11

.field private static final KEY_STYLE_FLAGS:I = 0x2

.field private static final KEY_TEXT_COLOR_RGBA:I = 0x6b

.field private static final KEY_WRAP_TEXT:I = 0x6

.field private static final LAST_PRIVATE_KEY:I = 0x6b

.field private static final LAST_PUBLIC_KEY:I = 0x11

.field private static final TAG:Ljava/lang/String; = "TimedText"


# instance fields
.field private mBackgroundColorRGBA:I

.field private mBlinkingPosList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/TimedText$CharPos;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayFlags:I

.field private mFontList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/TimedText$Font;",
            ">;"
        }
    .end annotation
.end field

.field private mHighlightColorRGBA:I

.field private mHighlightPosList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/TimedText$CharPos;",
            ">;"
        }
    .end annotation
.end field

.field private mHyperTextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/TimedText$HyperText;",
            ">;"
        }
    .end annotation
.end field

.field private mJustification:Landroid/media/TimedText$Justification;

.field private mKaraokeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/TimedText$Karaoke;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyObjectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollDelay:I

.field private mStyleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/TimedText$Style;",
            ">;"
        }
    .end annotation
.end field

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextChars:Ljava/lang/String;

.field private mWrapText:I


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "parcel"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 359
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    .line 93
    iput v2, p0, Landroid/media/TimedText;->mDisplayFlags:I

    .line 94
    iput v2, p0, Landroid/media/TimedText;->mBackgroundColorRGBA:I

    .line 95
    iput v2, p0, Landroid/media/TimedText;->mHighlightColorRGBA:I

    .line 96
    iput v2, p0, Landroid/media/TimedText;->mScrollDelay:I

    .line 97
    iput v2, p0, Landroid/media/TimedText;->mWrapText:I

    .line 99
    iput-object v1, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    .line 100
    iput-object v1, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    .line 101
    iput-object v1, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    .line 102
    iput-object v1, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    .line 103
    iput-object v1, p0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    .line 104
    iput-object v1, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    .line 106
    iput-object v1, p0, Landroid/media/TimedText;->mTextBounds:Landroid/graphics/Rect;

    .line 107
    iput-object v1, p0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    .line 360
    invoke-direct {p0, p1}, Landroid/media/TimedText;->parseParcel(Landroid/os/Parcel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    iget-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 362
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "parseParcel() fails"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_0
    return-void
.end method

.method private containsKey(I)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 708
    invoke-direct {p0, p1}, Landroid/media/TimedText;->isValidKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 709
    const/4 v0, 0x1

    .line 711
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getObject(I)Ljava/lang/Object;
    .locals 3
    .parameter "key"

    .prologue
    .line 731
    invoke-direct {p0, p1}, Landroid/media/TimedText;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 734
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isValidKey(I)Z
    .locals 2
    .parameter "key"

    .prologue
    const/4 v0, 0x1

    .line 694
    if-lt p1, v0, :cond_0

    const/16 v1, 0x11

    if-le p1, v1, :cond_2

    :cond_0
    const/16 v1, 0x65

    if-lt p1, v1, :cond_1

    const/16 v1, 0x6b

    if-le p1, v1, :cond_2

    .line 696
    :cond_1
    const/4 v0, 0x0

    .line 698
    :cond_2
    return v0
.end method

.method private keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private parseParcel(Landroid/os/Parcel;)Z
    .locals 16
    .parameter "parcel"

    .prologue
    .line 395
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 396
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v13

    if-nez v13, :cond_0

    .line 397
    const/4 v13, 0x0

    .line 528
    :goto_0
    return v13

    .line 400
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 401
    .local v11, type:I
    const/16 v13, 0x66

    if-ne v11, v13, :cond_7

    .line 402
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 403
    const/4 v13, 0x7

    if-eq v11, v13, :cond_1

    .line 404
    const/4 v13, 0x0

    goto :goto_0

    .line 406
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 407
    .local v5, mStartTimeMs:I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 410
    const/16 v13, 0x10

    if-ne v11, v13, :cond_5

    .line 411
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 412
    .local v9, textLen:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .line 413
    .local v8, text:[B
    if-eqz v8, :cond_2

    array-length v13, v8

    if-nez v13, :cond_4

    .line 414
    :cond_2
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    .line 429
    .end local v5           #mStartTimeMs:I
    .end local v8           #text:[B
    .end local v9           #textLen:I
    :cond_3
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v13

    if-lez v13, :cond_a

    .line 430
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 431
    .local v3, key:I
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/media/TimedText;->isValidKey(I)Z

    move-result v13

    if-nez v13, :cond_8

    .line 432
    const-string v13, "TimedText"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Invalid timed text key found: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const/4 v13, 0x0

    goto :goto_0

    .line 416
    .end local v3           #key:I
    .restart local v5       #mStartTimeMs:I
    .restart local v8       #text:[B
    .restart local v9       #textLen:I
    :cond_4
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v8}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    goto :goto_1

    .line 418
    .end local v8           #text:[B
    .end local v9           #textLen:I
    :cond_5
    const/16 v13, 0x11

    if-ne v11, v13, :cond_6

    .line 419
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    goto :goto_1

    .line 421
    :cond_6
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 424
    .end local v5           #mStartTimeMs:I
    :cond_7
    const/16 v13, 0x65

    if-eq v11, v13, :cond_3

    .line 425
    const-string v13, "TimedText"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Invalid timed text key found: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 436
    .restart local v3       #key:I
    :cond_8
    const/4 v6, 0x0

    .line 438
    .local v6, object:Ljava/lang/Object;
    packed-switch v3, :pswitch_data_0

    .line 519
    .end local v6           #object:Ljava/lang/Object;
    :goto_2
    :pswitch_0
    if-eqz v6, :cond_3

    .line 520
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 521
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 440
    .restart local v6       #object:Ljava/lang/Object;
    :pswitch_1
    invoke-direct/range {p0 .. p1}, Landroid/media/TimedText;->readStyle(Landroid/os/Parcel;)V

    .line 441
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    .line 442
    .local v6, object:Ljava/util/List;
    goto :goto_2

    .line 445
    .local v6, object:Ljava/lang/Object;
    :pswitch_2
    invoke-direct/range {p0 .. p1}, Landroid/media/TimedText;->readFont(Landroid/os/Parcel;)V

    .line 446
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    .line 447
    .local v6, object:Ljava/util/List;
    goto :goto_2

    .line 450
    .local v6, object:Ljava/lang/Object;
    :pswitch_3
    invoke-direct/range {p0 .. p1}, Landroid/media/TimedText;->readHighlight(Landroid/os/Parcel;)V

    .line 451
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    .line 452
    .local v6, object:Ljava/util/List;
    goto :goto_2

    .line 455
    .local v6, object:Ljava/lang/Object;
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Landroid/media/TimedText;->readKaraoke(Landroid/os/Parcel;)V

    .line 456
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    .line 457
    .local v6, object:Ljava/util/List;
    goto :goto_2

    .line 460
    .local v6, object:Ljava/lang/Object;
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Landroid/media/TimedText;->readHyperText(Landroid/os/Parcel;)V

    .line 461
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    .line 463
    .local v6, object:Ljava/util/List;
    goto :goto_2

    .line 466
    .local v6, object:Ljava/lang/Object;
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Landroid/media/TimedText;->readBlinkingText(Landroid/os/Parcel;)V

    .line 467
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    .line 469
    .local v6, object:Ljava/util/List;
    goto :goto_2

    .line 472
    .local v6, object:Ljava/lang/Object;
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/media/TimedText;->mWrapText:I

    .line 473
    move-object/from16 v0, p0

    iget v13, v0, Landroid/media/TimedText;->mWrapText:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 474
    .local v6, object:Ljava/lang/Integer;
    goto :goto_2

    .line 477
    .local v6, object:Ljava/lang/Object;
    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/media/TimedText;->mHighlightColorRGBA:I

    .line 478
    move-object/from16 v0, p0

    iget v13, v0, Landroid/media/TimedText;->mHighlightColorRGBA:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 479
    .local v6, object:Ljava/lang/Integer;
    goto :goto_2

    .line 482
    .local v6, object:Ljava/lang/Object;
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/media/TimedText;->mDisplayFlags:I

    .line 483
    move-object/from16 v0, p0

    iget v13, v0, Landroid/media/TimedText;->mDisplayFlags:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 484
    .local v6, object:Ljava/lang/Integer;
    goto/16 :goto_2

    .line 488
    .local v6, object:Ljava/lang/Object;
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 489
    .local v2, horizontal:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 490
    .local v12, vertical:I
    new-instance v13, Landroid/media/TimedText$Justification;

    invoke-direct {v13, v2, v12}, Landroid/media/TimedText$Justification;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/media/TimedText;->mJustification:Landroid/media/TimedText$Justification;

    .line 492
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/TimedText;->mJustification:Landroid/media/TimedText$Justification;

    .line 493
    .local v6, object:Landroid/media/TimedText$Justification;
    goto/16 :goto_2

    .line 496
    .end local v2           #horizontal:I
    .end local v12           #vertical:I
    .local v6, object:Ljava/lang/Object;
    :pswitch_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/media/TimedText;->mBackgroundColorRGBA:I

    .line 497
    move-object/from16 v0, p0

    iget v13, v0, Landroid/media/TimedText;->mBackgroundColorRGBA:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 498
    .local v6, object:Ljava/lang/Integer;
    goto/16 :goto_2

    .line 501
    .local v6, object:Ljava/lang/Object;
    :pswitch_c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 502
    .local v10, top:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 503
    .local v4, left:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 504
    .local v1, bottom:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 505
    .local v7, right:I
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13, v4, v10, v7, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/media/TimedText;->mTextBounds:Landroid/graphics/Rect;

    goto/16 :goto_2

    .line 510
    .end local v1           #bottom:I
    .end local v4           #left:I
    .end local v7           #right:I
    .end local v10           #top:I
    :pswitch_d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/media/TimedText;->mScrollDelay:I

    .line 511
    move-object/from16 v0, p0

    iget v13, v0, Landroid/media/TimedText;->mScrollDelay:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 512
    .local v6, object:Ljava/lang/Integer;
    goto/16 :goto_2

    .line 528
    .end local v3           #key:I
    .end local v6           #object:Ljava/lang/Integer;
    :cond_a
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 438
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_0
        :pswitch_b
        :pswitch_8
        :pswitch_d
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_c
        :pswitch_a
    .end packed-switch
.end method

.method private readBlinkingText(Landroid/os/Parcel;)V
    .locals 4
    .parameter "parcel"

    .prologue
    .line 678
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 679
    .local v2, startChar:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 680
    .local v1, endChar:I
    new-instance v0, Landroid/media/TimedText$CharPos;

    invoke-direct {v0, v2, v1}, Landroid/media/TimedText$CharPos;-><init>(II)V

    .line 682
    .local v0, blinkingPos:Landroid/media/TimedText$CharPos;
    iget-object v3, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    if-nez v3, :cond_0

    .line 683
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    .line 685
    :cond_0
    iget-object v3, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 686
    return-void
.end method

.method private readFont(Landroid/os/Parcel;)V
    .locals 8
    .parameter "parcel"

    .prologue
    .line 598
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 600
    .local v0, entryCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 601
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 602
    .local v3, id:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 604
    .local v5, nameLen:I
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 605
    .local v6, text:[B
    new-instance v4, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7, v5}, Ljava/lang/String;-><init>([BII)V

    .line 607
    .local v4, name:Ljava/lang/String;
    new-instance v1, Landroid/media/TimedText$Font;

    invoke-direct {v1, v3, v4}, Landroid/media/TimedText$Font;-><init>(ILjava/lang/String;)V

    .line 609
    .local v1, font:Landroid/media/TimedText$Font;
    iget-object v7, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    if-nez v7, :cond_0

    .line 610
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    .line 612
    :cond_0
    iget-object v7, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 600
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 614
    .end local v1           #font:Landroid/media/TimedText$Font;
    .end local v3           #id:I
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #nameLen:I
    .end local v6           #text:[B
    :cond_1
    return-void
.end method

.method private readHighlight(Landroid/os/Parcel;)V
    .locals 4
    .parameter "parcel"

    .prologue
    .line 620
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 621
    .local v2, startChar:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 622
    .local v0, endChar:I
    new-instance v1, Landroid/media/TimedText$CharPos;

    invoke-direct {v1, v2, v0}, Landroid/media/TimedText$CharPos;-><init>(II)V

    .line 624
    .local v1, pos:Landroid/media/TimedText$CharPos;
    iget-object v3, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    if-nez v3, :cond_0

    .line 625
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    .line 627
    :cond_0
    iget-object v3, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 628
    return-void
.end method

.method private readHyperText(Landroid/os/Parcel;)V
    .locals 9
    .parameter "parcel"

    .prologue
    const/4 v8, 0x0

    .line 655
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 656
    .local v5, startChar:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 658
    .local v2, endChar:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 659
    .local v4, len:I
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 660
    .local v6, url:[B
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6, v8, v4}, Ljava/lang/String;-><init>([BII)V

    .line 662
    .local v7, urlString:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 663
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 664
    .local v0, alt:[B
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, v8, v4}, Ljava/lang/String;-><init>([BII)V

    .line 665
    .local v1, altString:Ljava/lang/String;
    new-instance v3, Landroid/media/TimedText$HyperText;

    invoke-direct {v3, v5, v2, v7, v1}, Landroid/media/TimedText$HyperText;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 668
    .local v3, hyperText:Landroid/media/TimedText$HyperText;
    iget-object v8, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    if-nez v8, :cond_0

    .line 669
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    .line 671
    :cond_0
    iget-object v8, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    return-void
.end method

.method private readKaraoke(Landroid/os/Parcel;)V
    .locals 8
    .parameter "parcel"

    .prologue
    .line 634
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 636
    .local v2, entryCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 637
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 638
    .local v6, startTimeMs:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 639
    .local v1, endTimeMs:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 640
    .local v5, startChar:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 641
    .local v0, endChar:I
    new-instance v4, Landroid/media/TimedText$Karaoke;

    invoke-direct {v4, v6, v1, v5, v0}, Landroid/media/TimedText$Karaoke;-><init>(IIII)V

    .line 644
    .local v4, kara:Landroid/media/TimedText$Karaoke;
    iget-object v7, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    if-nez v7, :cond_0

    .line 645
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    .line 647
    :cond_0
    iget-object v7, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 636
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 649
    .end local v0           #endChar:I
    .end local v1           #endTimeMs:I
    .end local v4           #kara:Landroid/media/TimedText$Karaoke;
    .end local v5           #startChar:I
    .end local v6           #startTimeMs:I
    :cond_1
    return-void
.end method

.method private readStyle(Landroid/os/Parcel;)V
    .locals 14
    .parameter "parcel"

    .prologue
    .line 535
    const/4 v9, 0x0

    .line 536
    .local v9, endOfStyle:Z
    const/4 v1, -0x1

    .line 537
    .local v1, startChar:I
    const/4 v2, -0x1

    .line 538
    .local v2, endChar:I
    const/4 v3, -0x1

    .line 539
    .local v3, fontId:I
    const/4 v4, 0x0

    .line 540
    .local v4, isBold:Z
    const/4 v5, 0x0

    .line 541
    .local v5, isItalic:Z
    const/4 v6, 0x0

    .line 542
    .local v6, isUnderlined:Z
    const/4 v7, -0x1

    .line 543
    .local v7, fontSize:I
    const/4 v8, -0x1

    .line 544
    .local v8, colorRGBA:I
    :goto_0
    if-nez v9, :cond_3

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v12

    if-lez v12, :cond_3

    .line 545
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 546
    .local v11, key:I
    sparse-switch v11, :sswitch_data_0

    .line 579
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v12

    add-int/lit8 v12, v12, -0x4

    invoke-virtual {p1, v12}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 580
    const/4 v9, 0x1

    goto :goto_0

    .line 548
    :sswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 549
    goto :goto_0

    .line 552
    :sswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 553
    goto :goto_0

    .line 556
    :sswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 557
    goto :goto_0

    .line 560
    :sswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 563
    .local v10, flags:I
    rem-int/lit8 v12, v10, 0x2

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    const/4 v4, 0x1

    .line 564
    :goto_1
    rem-int/lit8 v12, v10, 0x4

    const/4 v13, 0x2

    if-lt v12, v13, :cond_1

    const/4 v5, 0x1

    .line 565
    :goto_2
    div-int/lit8 v12, v10, 0x4

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2

    const/4 v6, 0x1

    .line 566
    :goto_3
    goto :goto_0

    .line 563
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 564
    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    .line 565
    :cond_2
    const/4 v6, 0x0

    goto :goto_3

    .line 569
    .end local v10           #flags:I
    :sswitch_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 570
    goto :goto_0

    .line 573
    :sswitch_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 574
    goto :goto_0

    .line 586
    .end local v11           #key:I
    :cond_3
    new-instance v0, Landroid/media/TimedText$Style;

    invoke-direct/range {v0 .. v8}, Landroid/media/TimedText$Style;-><init>(IIIZZZII)V

    .line 588
    .local v0, style:Landroid/media/TimedText$Style;
    iget-object v12, p0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    if-nez v12, :cond_4

    .line 589
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, p0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    .line 591
    :cond_4
    iget-object v12, p0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 592
    return-void

    .line 546
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x67 -> :sswitch_0
        0x68 -> :sswitch_1
        0x69 -> :sswitch_2
        0x6a -> :sswitch_4
        0x6b -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Landroid/media/TimedText;->mTextBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    return-object v0
.end method
