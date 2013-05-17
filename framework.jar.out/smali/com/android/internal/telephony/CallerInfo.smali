.class public Lcom/android/internal/telephony/CallerInfo;
.super Ljava/lang/Object;
.source "CallerInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CallerInfo$Injector;
    }
.end annotation


# static fields
.field public static final PAYPHONE_NUMBER:Ljava/lang/String; = "-3"

.field public static final PRIVATE_NUMBER:Ljava/lang/String; = "-2"

.field private static final TAG:Ljava/lang/String; = "CallerInfo"

.field public static final UNKNOWN_NUMBER:Ljava/lang/String; = "-1"

.field private static final VDBG:Z


# instance fields
.field public cachedPhoto:Landroid/graphics/drawable/Drawable;

.field public cachedPhotoIcon:Landroid/graphics/Bitmap;

.field public cnapName:Ljava/lang/String;

.field public contactExists:Z

.field public contactRefUri:Landroid/net/Uri;

.field public contactRingtoneUri:Landroid/net/Uri;

.field public extAttributes:I

.field public extra:Lmiui/telephony/ExtraCallerInfo;
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_FIELD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field

.field public geoDescription:Ljava/lang/String;

.field public isCachedPhotoCurrent:Z

.field public isTimeoutRet:Z

.field private mIsEmergency:Z

.field private mIsVoiceMail:Z

.field public mzPhotoId:J

.field public mzPhotoUri:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public namePresentation:I

.field public needUpdate:Z

.field public normalizedNumber:Ljava/lang/String;

.field public numberLabel:Ljava/lang/String;

.field public numberPresentation:I

.field public numberType:I

.field public orgTag:Ljava/lang/String;

.field public person_id:J

.field public phoneLabel:Ljava/lang/String;

.field public phoneNumber:Ljava/lang/String;

.field public photoResource:I

.field public shouldSendToVoicemail:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    const-string v0, "CallerInfo"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V
    
    new-instance v1, Lmiui/telephony/ExtraCallerInfo;

    invoke-direct {v1}, Lmiui/telephony/ExtraCallerInfo;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->extra:Lmiui/telephony/ExtraCallerInfo;
    
    iput v0, p0, Lcom/android/internal/telephony/CallerInfo;->extAttributes:I

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->mIsEmergency:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->mIsVoiceMail:Z

    return-void
.end method

.method static doSecondaryLookupIfNecessary(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/internal/telephony/CallerInfo;
    .locals 3
    .parameter "context"
    .parameter "number"
    .parameter "previousResult"

    .prologue
    .line 333
    iget-boolean v1, p2, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 335
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->getUsernameFromUriNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, username:Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object p2

    .line 342
    .end local v0           #username:Ljava/lang/String;
    :cond_0
    return-object p2
.end method

.method private static getAllowMemberCIs(Ljava/util/ArrayList;[J)Ljava/util/ArrayList;
    .locals 10
    .parameter
    .parameter "allowedMemIds"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/CallerInfo;",
            ">;[J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/CallerInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 713
    .local p0, ciArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/CallerInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 714
    .local v0, allowedMemberCIs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/CallerInfo;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/CallerInfo;

    .line 715
    .local v2, curCI:Lcom/android/internal/telephony/CallerInfo;
    move-object v1, p1

    .local v1, arr$:[J
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-wide v6, v1, v4

    .line 716
    .local v6, pid:J
    iget-wide v8, v2, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    cmp-long v8, v8, v6

    if-nez v8, :cond_1

    .line 717
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 715
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 721
    .end local v1           #arr$:[J
    .end local v2           #curCI:Lcom/android/internal/telephony/CallerInfo;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #pid:J
    :cond_2
    return-object v0
.end method

.method private static getCallInfosDistinctPersionId(Landroid/net/Uri;Landroid/database/Cursor;Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 20
    .parameter "contactRef"
    .parameter "cursor"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/CallerInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 750
    sget-boolean v17, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v17, :cond_0

    const-string v17, "CallerInfo"

    const-string v18, "construct callerInfo array from cursor"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 753
    .local v2, ciArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/CallerInfo;>;"
    if-nez p1, :cond_1

    .line 842
    :goto_0
    return-object v2

    .line 755
    :cond_1
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 756
    .local v5, idSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 757
    .local v4, count:I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v4, v0, :cond_2

    sget-boolean v17, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v17, :cond_2

    const-string v17, "CallerInfo"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "cursor count = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :cond_2
    const-string v17, "display_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 760
    .local v9, nameIndex:I
    invoke-static/range {p0 .. p1}, Lcom/android/internal/telephony/CallerInfo;->getColumnIndexForPersonId(Landroid/net/Uri;Landroid/database/Cursor;)I

    move-result v14

    .line 761
    .local v14, personIdIndex:I
    const-string/jumbo v17, "number"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 762
    .local v15, phoneNumberIndex:I
    const-string v17, "label"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 763
    .local v11, numberLabelIndex:I
    const-string/jumbo v17, "type"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 764
    .local v12, numberTypeIndex:I
    const-string v17, "custom_ringtone"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 765
    .local v3, contactRingtoneUriIndex:I
    const-string/jumbo v17, "send_to_voicemail"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 766
    .local v16, shouldSendToVoicemailIndex:I
    const-string/jumbo v17, "normalized_number"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 767
    .local v10, normalizeNumIndex:I
    const-string/jumbo v17, "organization_note"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 768
    .local v13, orgTagIndex:I
    const-string/jumbo v17, "photo_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 769
    .local v7, mzPhotoId:I
    const-string/jumbo v17, "photo_uri"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 772
    .local v8, mzPhotoUri:I
    :cond_3
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v17

    if-eqz v17, :cond_d

    .line 773
    new-instance v6, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v6}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    .line 781
    .local v6, info:Lcom/android/internal/telephony/CallerInfo;
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v9, v0, :cond_4

    .line 782
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 785
    :cond_4
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v7, v0, :cond_5

    .line 786
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    move-wide/from16 v0, v17

    iput-wide v0, v6, Lcom/android/internal/telephony/CallerInfo;->mzPhotoId:J

    .line 789
    :cond_5
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v8, v0, :cond_6

    .line 790
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/android/internal/telephony/CallerInfo;->mzPhotoUri:Ljava/lang/String;

    .line 794
    :cond_6
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v10, v0, :cond_7

    .line 795
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    .line 798
    :cond_7
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v14, v0, :cond_a

    .line 799
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    move-wide/from16 v0, v17

    iput-wide v0, v6, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    .line 800
    iget-wide v0, v6, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 803
    iget-wide v0, v6, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 808
    :goto_2
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_8

    .line 809
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 812
    :cond_8
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v3, v0, :cond_b

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_b

    .line 813
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    .line 818
    :goto_3
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v13, v0, :cond_9

    .line 819
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/android/internal/telephony/CallerInfo;->orgTag:Ljava/lang/String;

    .line 830
    :cond_9
    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_c

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    const/16 v17, 0x1

    :goto_4
    move/from16 v0, v17

    iput-boolean v0, v6, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemail:Z

    .line 832
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v6, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    .line 834
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v6, Lcom/android/internal/telephony/CallerInfo;->needUpdate:Z

    .line 835
    iget-object v0, v6, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/CallerInfo;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v0, v6, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v0, v6, v1}, Lmiui/telephony/ExtraCallerInfo;->getExtraCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Landroid/database/Cursor;)Lmiui/telephony/ExtraCallerInfo;

    move-result-object v0

    iput-object v0, v6, Lcom/android/internal/telephony/CallerInfo;->extra:Lmiui/telephony/ExtraCallerInfo;

    goto/16 :goto_1

    :cond_a
    const-string v17, "CallerInfo"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "person_id column missing for "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 815
    :cond_b
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    goto :goto_3

    .line 830
    :cond_c
    const/16 v17, 0x0

    goto :goto_4

    .line 841
    .end local v6           #info:Lcom/android/internal/telephony/CallerInfo;
    :cond_d
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public static getCallerId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "number"

    .prologue
    .line 362
    invoke-static {p0, p1}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 363
    .local v1, info:Lcom/android/internal/telephony/CallerInfo;
    const/4 v0, 0x0

    .line 365
    .local v0, callerID:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 366
    iget-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 368
    .local v2, name:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 369
    move-object v0, v2

    .line 375
    .end local v2           #name:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 371
    .restart local v2       #name:Ljava/lang/String;
    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method public static getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfo;
    .locals 6
    .parameter "context"
    .parameter "contactRef"

    .prologue
    const/4 v2, 0x0

    .line 277
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/internal/telephony/CallerInfo;
    .locals 11
    .parameter "context"
    .parameter "contactRef"
    .parameter "cursor"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v9, -0x1

    .line 178
    new-instance v1, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    .line 179
    .local v1, info:Lcom/android/internal/telephony/CallerInfo;
    iput v5, v1, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    .line 180
    iput-object v10, v1, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 181
    iput v5, v1, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    .line 182
    iput-object v10, v1, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    .line 183
    iput-object v10, v1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 184
    iput-boolean v5, v1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    .line 185
    iput-boolean v5, v1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    .line 187
    sget-boolean v3, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v3, :cond_0

    const-string v3, "CallerInfo"

    const-string v6, "getCallerInfo() based on cursor..."

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p2, :cond_7

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "display_name"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .local v0, columnIndex:I
    if-eq v0, v9, :cond_1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    :cond_1
    invoke-static {p1}, Lcom/android/internal/telephony/CallerInfo$Injector;->setContactRef(Landroid/net/Uri;)V

    const-string v3, "number"

    invoke-static {p2, v3}, Lcom/android/internal/telephony/CallerInfo$Injector;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    if-eq v0, v9, :cond_2

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    :cond_2
    const-string v3, "normalized_number"

    invoke-static {p2, v3}, Lcom/android/internal/telephony/CallerInfo$Injector;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    if-eq v0, v9, :cond_3

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    :cond_3
    const-string v3, "label"

    invoke-static {p2, v3}, Lcom/android/internal/telephony/CallerInfo$Injector;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    if-eq v0, v9, :cond_4

    const-string v3, "type"

    invoke-static {p2, v3}, Lcom/android/internal/telephony/CallerInfo$Injector;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .local v2, typeColumnIndex:I
    if-eq v2, v9, :cond_4

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    iget v3, v1, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    iget-object v6, v1, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    invoke-static {p0, v3, v6}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 229
    .end local v2           #typeColumnIndex:I
    :cond_4
    invoke-static {p1, p2}, Lcom/android/internal/telephony/CallerInfo;->getColumnIndexForPersonId(Landroid/net/Uri;Landroid/database/Cursor;)I

    move-result v0

    .line 230
    if-eq v0, v9, :cond_8

    .line 231
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    .line 232
    sget-boolean v3, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v3, :cond_5

    const-string v3, "CallerInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "==> got info.person_id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, v1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_5
    :goto_0
    const-string v3, "custom_ringtone"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 244
    if-eq v0, v9, :cond_9

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 245
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    .line 252
    :goto_1
    const-string/jumbo v3, "send_to_voicemail"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 253
    if-eq v0, v9, :cond_a

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v4, :cond_a

    move v3, v4

    :goto_2
    iput-boolean v3, v1, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemail:Z

    .line 255
    iput-boolean v4, v1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    .line 257
    .end local v0           #columnIndex:I
    :cond_6
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 260
    :cond_7
    iput-boolean v5, v1, Lcom/android/internal/telephony/CallerInfo;->needUpdate:Z

    .line 261
    iget-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/CallerInfo;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 262
    iput-object p1, v1, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    .line 264
    return-object v1

    .line 235
    .restart local v0       #columnIndex:I
    :cond_8
    const-string v3, "CallerInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t find person_id column for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 247
    :cond_9
    iput-object v10, v1, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    goto :goto_1

    :cond_a
    move v3, v5

    .line 253
    goto :goto_2
.end method

.method public static getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;
    .locals 4
    .parameter "context"
    .parameter "number"

    .prologue
    .line 292
    sget-boolean v2, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v2, :cond_0

    const-string v2, "CallerInfo"

    const-string v3, "getCallerInfo() based on number..."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 295
    const/4 v1, 0x0

    .line 318
    :cond_1
    :goto_0
    return-object v1

    .line 301
    :cond_2
    invoke-static {p1, p0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 302
    new-instance v2, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v2}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/CallerInfo;->markAsEmergency(Landroid/content/Context;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    goto :goto_0

    .line 303
    :cond_3
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 304
    new-instance v2, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v2}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallerInfo;->markAsVoiceMail()Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    goto :goto_0

    .line 307
    :cond_4
    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 309
    .local v0, contactUri:Landroid/net/Uri;
    invoke-static {p0, v0}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 310
    .local v1, info:Lcom/android/internal/telephony/CallerInfo;
    invoke-static {p0, p1, v1}, Lcom/android/internal/telephony/CallerInfo;->doSecondaryLookupIfNecessary(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 314
    iget-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 315
    iput-object p1, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getCallerInfoViaNumber(Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/String;Landroid/content/Context;)Lcom/android/internal/telephony/CallerInfo;
    .locals 12
    .parameter "contactRef"
    .parameter "cursor"
    .parameter "number"
    .parameter "context"

    .prologue
    const/4 v11, 0x1

    .line 676
    const/4 v7, 0x0

    .line 677
    .local v7, rejectedReason:I
    const/4 v1, 0x0

    .line 678
    .local v1, allowedMemIds:[J
    if-eqz p1, :cond_1

    .line 679
    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 680
    .local v2, bundle:Landroid/os/Bundle;
    const-string v8, "call_rejected_type"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 684
    :cond_0
    const-string v8, "call_allowed_contact_ids"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v1

    .end local v2           #bundle:Landroid/os/Bundle;
    :cond_1
    invoke-static {p0, p1, p3}, Lcom/android/internal/telephony/CallerInfo;->getCallInfosDistinctPersionId(Landroid/net/Uri;Landroid/database/Cursor;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    .local v3, candidateArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/CallerInfo;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_2

    .line 690
    new-instance v4, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v4}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    .line 691
    .local v4, ci:Lcom/android/internal/telephony/CallerInfo;
    iput v7, v4, Lcom/android/internal/telephony/CallerInfo;->extAttributes:I

    move-object v5, v4

    .line 709
    .end local v4           #ci:Lcom/android/internal/telephony/CallerInfo;
    .local v5, ci:Ljava/lang/Object;
    :goto_0
    return-object v5

    .line 695
    .end local v5           #ci:Ljava/lang/Object;
    :cond_2
    if-eqz v1, :cond_3

    array-length v8, v1

    if-lez v8, :cond_3

    .line 696
    invoke-static {v3, v1}, Lcom/android/internal/telephony/CallerInfo;->getAllowMemberCIs(Ljava/util/ArrayList;[J)Ljava/util/ArrayList;

    move-result-object v0

    .line 697
    .local v0, allowedMemArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/CallerInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_3

    move-object v3, v0

    .line 701
    .end local v0           #allowedMemArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/CallerInfo;>;"
    :cond_3
    invoke-static {v3, p2}, Lcom/android/internal/telephony/CallerInfo;->getPerfectMatchCallerInfos(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 702
    .local v6, perfectMatchArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/CallerInfo;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v8, v11, :cond_4

    .line 703
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/CallerInfo;

    .line 708
    .restart local v4       #ci:Lcom/android/internal/telephony/CallerInfo;
    :goto_1
    iput v7, v4, Lcom/android/internal/telephony/CallerInfo;->extAttributes:I

    move-object v5, v4

    .line 709
    .restart local v5       #ci:Ljava/lang/Object;
    goto :goto_0

    .line 704
    .end local v4           #ci:Lcom/android/internal/telephony/CallerInfo;
    .end local v5           #ci:Ljava/lang/Object;
    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, v11, :cond_5

    .line 705
    invoke-static {v6}, Lcom/android/internal/telephony/CallerInfo;->processCallerInfos(Ljava/util/ArrayList;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v4

    .restart local v4       #ci:Lcom/android/internal/telephony/CallerInfo;
    goto :goto_1

    .line 707
    .end local v4           #ci:Lcom/android/internal/telephony/CallerInfo;
    :cond_5
    invoke-static {v3}, Lcom/android/internal/telephony/CallerInfo;->processCallerInfos(Ljava/util/ArrayList;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v4

    .restart local v4       #ci:Lcom/android/internal/telephony/CallerInfo;
    goto :goto_1
.end method

.method private static getColumnIndexForPersonId(Landroid/net/Uri;Landroid/database/Cursor;)I
    .locals 6
    .parameter "contactRef"
    .parameter "cursor"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 496
    sget-boolean v3, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v3, :cond_0

    const-string v3, "CallerInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- getColumnIndexForPersonId: contactRef URI = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 503
    .local v2, url:Ljava/lang/String;
    const/4 v1, 0x0

    .line 504
    .local v1, columnName:Ljava/lang/String;
    const-string v3, "content://com.android.contacts/data/phones"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 507
    sget-boolean v3, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v3, :cond_1

    const-string v3, "CallerInfo"

    const-string v4, "\'data/phones\' URI; using RawContacts.CONTACT_ID"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_1
    const-string v1, "contact_id"

    .line 529
    :goto_0
    if-eqz v1, :cond_a

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 530
    .local v0, columnIndex:I
    :goto_1
    sget-boolean v3, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v3, :cond_2

    const-string v3, "CallerInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==> Using column \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' (columnIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") for person_id lookup..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0

    invoke-static {p0, v1, p2}, Lmiui/telephony/ExtraCallerInfo;->getExtraCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Landroid/database/Cursor;)Lmiui/telephony/ExtraCallerInfo;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->extra:Lmiui/telephony/ExtraCallerInfo;

    .end local v0           #columnIndex:I
    :cond_3
    const-string v3, "content://com.android.contacts/contacts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 511
    sget-boolean v3, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v3, :cond_4

    const-string v3, "CallerInfo"

    const-string v4, "URL path starts with \'contacts\' using contacts._ID"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_4
    const-string v1, "_id"

    goto :goto_0

    .line 514
    :cond_5
    const-string v3, "content://com.android.contacts/data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 517
    sget-boolean v3, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v3, :cond_6

    const-string v3, "CallerInfo"

    const-string v4, "\'data\' URI; using Data.CONTACT_ID"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_6
    const-string v1, "contact_id"

    goto :goto_0

    .line 520
    :cond_7
    const-string v3, "content://com.android.contacts/phone_lookup"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 524
    sget-boolean v3, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v3, :cond_8

    const-string v3, "CallerInfo"

    const-string v4, "\'phone_lookup\' URI; using PhoneLookup._ID"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_8
    const-string v1, "_id"

    goto :goto_0

    .line 527
    :cond_9
    const-string v3, "CallerInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected prefix for contactRef \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 529
    :cond_a
    const/4 v0, -0x1

    goto/16 :goto_1
.end method

.method private static getCurrentCountryIso(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "locale"

    .prologue
    .line 579
    const-string v2, "country_detector"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/CountryDetector;

    .line 581
    .local v1, detector:Landroid/location/CountryDetector;
    if-eqz v1, :cond_0

    .line 582
    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 588
    .local v0, countryIso:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 584
    .end local v0           #countryIso:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 585
    .restart local v0       #countryIso:Ljava/lang/String;
    const-string v2, "CallerInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No CountryDetector; falling back to countryIso based on locale: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getGeoDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "number"

    .prologue
    .line 557
    sget-boolean v3, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v3, :cond_0

    const-string v3, "CallerInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getGeoDescription(\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\')..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 560
    const/4 v1, 0x0

    .line 570
    :cond_1
    :goto_0
    return-object v1

    .line 563
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v2, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 564
    .local v2, locale:Ljava/util/Locale;
    invoke-static {p0, v2}, Lcom/android/internal/telephony/CallerInfo;->getCurrentCountryIso(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 566
    .local v0, countryIso:Ljava/lang/String;
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p1, v0, v2, v3, v4}, Landroid/pim/MzPhoneNumberUtils;->getDescriptionForNumber(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 569
    .local v1, description:Ljava/lang/String;
    sget-boolean v3, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v3, :cond_1

    const-string v3, "CallerInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- got description: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getPerfectMatchCallerInfos(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .parameter
    .parameter "number"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/CallerInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/CallerInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 725
    .local p0, ciArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/CallerInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 726
    .local v1, perfectMatchCIs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/CallerInfo;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 727
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 728
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 726
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 731
    :cond_1
    return-object v1
.end method

.method private static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "s"

    .prologue
    .line 446
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 449
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .restart local p0
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method private static processCallerInfos(Ljava/util/ArrayList;)Lcom/android/internal/telephony/CallerInfo;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/CallerInfo;",
            ">;)",
            "Lcom/android/internal/telephony/CallerInfo;"
        }
    .end annotation

    .prologue
    .line 736
    .local p0, ciArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/CallerInfo;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "CallerInfo"

    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "ciArray should not be empty here"

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    :cond_1
    const/4 v0, 0x0

    .line 739
    .local v0, i:I
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/CallerInfo;

    .line 741
    .local v1, info:Lcom/android/internal/telephony/CallerInfo;
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 742
    iget-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    if-nez v2, :cond_2

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    :goto_1
    iput-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 741
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 742
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 746
    :cond_3
    return-object v1
.end method


# virtual methods
.method copyFrom(Lcom/android/internal/telephony/CallerInfo;)V
    .locals 2
    .parameter "ci"

    .prologue
    .line 637
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 638
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 639
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    .line 640
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    .line 641
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 642
    iget v0, p1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    iput v0, p0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 643
    iget v0, p1, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    iput v0, p0, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 644
    iget-boolean v0, p1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    .line 645
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 646
    iget v0, p1, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    iput v0, p0, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    .line 647
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    .line 649
    iget-wide v0, p1, Lcom/android/internal/telephony/CallerInfo;->mzPhotoId:J

    iput-wide v0, p0, Lcom/android/internal/telephony/CallerInfo;->mzPhotoId:J

    .line 650
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->mzPhotoUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->mzPhotoUri:Ljava/lang/String;

    .line 651
    iget v0, p1, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    iput v0, p0, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    .line 652
    iget-wide v0, p1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    iput-wide v0, p0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    .line 653
    iget-boolean v0, p1, Lcom/android/internal/telephony/CallerInfo;->needUpdate:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->needUpdate:Z

    .line 654
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    .line 656
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    .line 657
    iget-boolean v0, p1, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemail:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemail:Z

    .line 658
    iget v0, p1, Lcom/android/internal/telephony/CallerInfo;->extAttributes:I

    iput v0, p0, Lcom/android/internal/telephony/CallerInfo;->extAttributes:I

    .line 665
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 666
    iget-boolean v0, p1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    .line 668
    iget-boolean v0, p1, Lcom/android/internal/telephony/CallerInfo;->mIsEmergency:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->mIsEmergency:Z

    .line 669
    iget-boolean v0, p1, Lcom/android/internal/telephony/CallerInfo;->mIsVoiceMail:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->mIsVoiceMail:Z

    .line 671
    iget-boolean v0, p1, Lcom/android/internal/telephony/CallerInfo;->isTimeoutRet:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->isTimeoutRet:Z

    .line 672
    return-void
.end method

.method public getRejectReason()I
    .locals 1

    .prologue
    .line 850
    iget v0, p0, Lcom/android/internal/telephony/CallerInfo;->extAttributes:I

    return v0
.end method

.method public isBlackMember()Z
    .locals 1

    .prologue
    .line 846
    iget v0, p0, Lcom/android/internal/telephony/CallerInfo;->extAttributes:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemail:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmergencyNumber()Z
    .locals 1

    .prologue
    .line 384
    iget-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->mIsEmergency:Z

    return v0
.end method

.method public isVoiceMailNumber()Z
    .locals 1

    .prologue
    .line 391
    iget-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->mIsVoiceMail:Z

    return v0
.end method

.method markAsEmergency(Landroid/content/Context;)Lcom/android/internal/telephony/CallerInfo;
    .locals 1
    .parameter "context"

    .prologue
    .line 407
    const v0, 0x104034b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 409
    const v0, 0x10805c3

    iput v0, p0, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    .line 410
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->mIsEmergency:Z

    .line 411
    return-object p0
.end method

.method markAsVoiceMail()Lcom/android/internal/telephony/CallerInfo;
    .locals 4

    .prologue
    .line 425
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/CallerInfo;->mIsVoiceMail:Z

    .line 428
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    .line 430
    .local v1, voiceMailLabel:Ljava/lang/String;
    iput-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    .end local v1           #voiceMailLabel:Ljava/lang/String;
    :goto_0
    return-object p0

    .line 431
    :catch_0
    move-exception v0

    .line 437
    .local v0, se:Ljava/lang/SecurityException;
    const-string v2, "CallerInfo"

    const-string v3, "Cannot access VoiceMail."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 597
    const/4 v0, 0x0

    .line 627
    .local v0, VERBOSE_DEBUG:Z
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " { "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "name "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string/jumbo v1, "null"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", phoneNumber "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string/jumbo v1, "null"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string/jumbo v1, "non-null"

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "non-null"

    goto :goto_1
.end method

.method public updateGeoDescription(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "fallbackNumber"

    .prologue
    .line 548
    iget-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 549
    .local v0, number:Ljava/lang/String;
    :goto_0
    invoke-static {p1, v0}, Lcom/android/internal/telephony/CallerInfo;->getGeoDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    .line 550
    return-void

    .line 548
    .end local v0           #number:Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_0
.end method
